/* -*- c++ -*- */
/* 
 * Copyright 2017 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "zcz_despreading_impl.h"
#include <math.h>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <vector>
#include <complex>

namespace gr {
  namespace codetracking_despreading {

    zcz_despreading::sptr
    zcz_despreading::make(float arg , float user)
    {
      return gnuradio::get_initial_sptr
        (new zcz_despreading_impl(arg, user));
    }

    /*
     * The private constructor
     */
    zcz_despreading_impl::zcz_despreading_impl(float arg , float user)
      : gr::sync_decimator("zcz_despreading",
              gr::io_signature::make(1,1, sizeof(gr_complex)),
              gr::io_signature::make(1,1, sizeof(gr_complex)),arg)
    {
		d_decim=(int)arg;
		code_len =(int)(arg/4);
		d_user=(int)user;
    }

    /*
     * Our virtual destructor.
     */
    zcz_despreading_impl::~zcz_despreading_impl()
    {
    }

    int
    zcz_despreading_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
      gr_complex *in = (gr_complex *) input_items[0];
      gr_complex *out = (gr_complex *) output_items[0];
	int co=0;
	int offset;

	if(((offset=skip_data(noutput_items*d_decim))==0)&& check1==0)
	{
        }

        else if(no_items<8000+240)
	{ if(check1==1)
	{
           check1++;
		
           for(int j=(noutput_items*d_decim)-offset;j<noutput_items*d_decim;j++)
           {
	   in_buffer[no_items++]=in[j];
           }
	}
        else
        {
            for(int i=(no_items);i<(noutput_items*d_decim)+no_items;i++)
           {
	   in_buffer[i]=in[co++];
           }
           no_items+=noutput_items*d_decim;
        }
        
         }
       else

        {
       if(check==0)
        {      
       int OverSampleRatio=4;
       int L=code_len;

	int datalen_4_sync=30;
	gr_complex sig_4sync[(code_len)*4*(datalen_4_sync-2)];
	int tempc;
	for(int i =240; i<((code_len)*4*(datalen_4_sync-2))+240;i++)
	{
        sig_4sync[tempc++]=in_buffer[i];
	}
	int sync_pos=32;
	int d_len=(code_len)*4*(datalen_4_sync-2);

	if(d_user==1)
	{
	for(int i=0;i<64;i++)
	{
	code[i]=code1[i];
	}
	}
	else if(d_user==2)
	{
	for(int i=0;i<64;i++)
	{
	code[i]=code2[i];
	}
	}
	sync_pos=synchronization(sig_4sync,code,d_len);
	std::cout<<"the sync position is:"<<sync_pos;
	check++;
	new_sync_pos=sync_pos+240;
	while(1)
	{
	new_sync_pos+=d_decim;
	if(new_sync_pos>=no_items)
	{
	new_sync_pos-=d_decim;
	break;
	}
	
	}
	new_sync_pos=new_sync_pos-1;
	track=no_items-new_sync_pos;

		memcpy(sig,in_buffer+(new_sync_pos),(no_items-new_sync_pos)*sizeof(gr_complex));
        }
	else
	{
	int count=0;
        int coun=0;
	gr_complex temp1=0;

	memcpy(sig+track,in,(noutput_items*d_decim)*sizeof(gr_complex));

	for(int i=0;i<noutput_items;i++)
	{
	for(int j=coun;j<coun+d_decim;j+=4)
	{
	temp1+=(sig[j])*code[count++];
	}
	int te= real(temp1*conj(temp1));
	out[i]=temp1;
	temp1=0;
	count=0;
	coun+=d_decim;
	}
	for(int i=0;i<track;i++)
	{
	sig[i]=sig[(noutput_items*d_decim)+i];
	}
	}

        }

      // Do <+signal processing+>

      // Tell runtime system how many output items we produced.
      return noutput_items;
    }

	int zcz_despreading_impl::skip_data(int noutput_items)
	{
	
	initial_no_items+=noutput_items;
	if(initial_no_items<2000)
	{
	return 0;
	}
	else
	{
	check1++;
	return (initial_no_items-20000);
	}

	}
        int zcz_despreading_impl::synchronization(gr_complex sig[],float code_waveform[],int d_len)
	{
	int code_size=code_len;
	int n= floor(d_len/d_decim);
	
	std::cout<<"n:"<<n;
	gr_complex CODE2[code_size*(n-1)];
	int no=0;

	for(int i=0;i<n-1;i++)
	{
	for(int j=0;j<n-1;j++)
	{
	CODE2[j+no]=code_waveform[j];
	}
	no+=code_size;
	}
	float max_corr[d_decim];
	gr_complex temp1[(n-1)*d_decim];
	gr_complex temp2[(n-1)];
	float temp3[n-1];
	float max_c_t[d_decim][n-1];
	for(int i =0;i<d_decim;i++)
	{
	int count =0;
	for(int j=i;j<(((n-1)*d_decim)+i);j+=4)
	{
	temp1[count]=sig[j]*(CODE2[count]);
	count++;
	}
		gr_complex sum=0;
		int l=0;
		for(int j=0;j<n-1;j++)
		{
		for(int k=0;k<d_decim;k++)
		{
		sum+=temp1[k+1];
		}
		temp2[j]=sum;
		l+=d_decim;
		sum=0;
		}
		
		for(int j=0;j<n-1;j++)
		{
		temp3[j]=real(temp2[j]*conj(temp2[j]));
		max_c_t[i][j]=temp3[j];
		}	

		float sum1=0;
		for(int j=0;j<n-1;j++)
		{
		sum1+=temp3[j];
		}
		max_corr[i]=sum1;

	}
		for(int i=0;i<d_decim;i++)
		{
		std::cout<<"\npos:"<<i<<":"<<max_corr[i];
		}
		float temp=max_corr[0];
		int pos=0;
		for(int i=1;i<d_decim;i++)
		{
		if(max_corr[i]>temp)
		{
		temp=max_corr[i];
		pos=i;
		}
		}
                for (int j=0;j<n-1;j++)
		{
		std::cout<<" "<<max_c_t[pos][j]<<" ";
		}
		return pos;
	}
        
  } /* namespace codetracking_despreading */
} /* namespace gr */

