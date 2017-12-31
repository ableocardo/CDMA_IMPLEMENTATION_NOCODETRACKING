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
#include "zcz_spreading_impl.h"



namespace gr
{
namespace spreading
{


    zcz_spreading::sptr
    zcz_spreading::make(float arg , float user)
    {
      return gnuradio::get_initial_sptr
        (new zcz_spreading_impl(arg, user));
    }

    /*
     * The private constructor
     */
    zcz_spreading_impl::zcz_spreading_impl(float arg , float user)
      : gr::sync_interpolator("zcz_spreading",
              gr::io_signature::make(1,1, sizeof(gr_complex)),
              gr::io_signature::make(1,1, sizeof(gr_complex)),arg)
    {
	
	d_inter=(int)arg;
	d_user=(int)user;
	
	
    }

    /*
     * Our virtual destructor.
     */
    zcz_spreading_impl::~zcz_spreading_impl()
    {
    }

void
zcz_spreading_impl::spreading1(float code1[],float out[],float in[],int noutput_items)
{
	int no=0;

	for(int i=0;i<noutput_items/d_inter;i++)
	{
		for(int j=0;j<d_inter;j++)
		{
			out[j+no] = in[i]*code1[j];
		}
		
		no+=d_inter;

	}

	no=no-d_inter;

}

    int
    zcz_spreading_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
      float *in = (float *) input_items[0];
      float *out = (float *) output_items[0];

      // Do <+signal processing+>
        int j=0;
	int size=d_inter;
        float code1[64]={1,1,-1,-1,-1,-1,-1,-1,-1,1,-1,1,1,-1,-1,1,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,1,1,-1,-1,1,1,1,1,-1,1,-1,1,-1,1,1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
        float code2[64]={-1,1,1,-1,1,-1,1,-1,1,1,-1,1,1,-1,-1,1,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,1,1,-1,-1,1,1,1,1,-1,1,-1,1,-1,1,1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }; //change code2
float code[64];
 if(d_user==1)
{
	for(int i=0;i<64;i++)
	{
		code[i]=code1[i];
	}
}
else
{
	for(int i=0;i<64;i++)
	{
		code[i]=code2[i];
	}	
}
	
	spreading1(code,out,in,noutput_items);

      // Tell runtime system how many output items we produced.
      return noutput_items;
    }

  
  } // namespace spreading
} // namespace gr

