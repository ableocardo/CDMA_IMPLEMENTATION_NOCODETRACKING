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

#ifndef INCLUDED_CODETRACKING_DESPREADING_ZCZ_DESPREADING_IMPL_H
#define INCLUDED_CODETRACKING_DESPREADING_ZCZ_DESPREADING_IMPL_H

#include <codetracking_despreading/zcz_despreading.h>
#include <fstream>
#include <stdio.h>
#include <complex>

namespace gr {
  namespace codetracking_despreading {

    class zcz_despreading_impl : public zcz_despreading
    {
     private:
      // Nothing to declare in this block.

     public:
      zcz_despreading_impl(float arg , float user);
      ~zcz_despreading_impl();
int check=0;
int c=0;
int track=0;
int check1;
float reg_err[2]={0,0};
int fast_cnt=0;
int late_cnt=0;
float delta=0;
float sig_ad[256],sig_mid[256],sig_re[256];
float delta_stp=.25;
int adj_th =100;
float a=.8;
float code[64];
int flag1=0;
int new_sync_pos;
int initial_no_items=0;
int no_items=0;
int cnt_1stop=0;
int cnt_plus1=0;
int cnt4=0;
float code1[64]={1,1,-1,-1,-1,-1,-1,-1,-1,1,-1,1,1,-1,-1,1,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,1,1,-1,-1,1,1,1,1,-1,1,-1,1,-1,1,1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
float code2[64]={-1,1,1,-1,1,-1,1,-1,1,1,-1,1,1,-1,-1,1,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,1,1,-1,-1,1,1,1,1,-1,1,-1,1,-1,1,1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }; //change code2
std::fstream mystorefile;
int d_decim;
int code_len;
gr_complex* in_buffer = new gr_complex[12000];
gr_complex* sig = new gr_complex[10000];
int d_user;      
// Where all the action really happens
      int work(int noutput_items,
         gr_vector_const_void_star &input_items,
         gr_vector_void_star &output_items);
      int skip_data(int noutput_items);
      int synchronization(gr_complex sig[],float code_waveform[],int d_len);

    };

  } // namespace codetracking_despreading
} // namespace gr

#endif /* INCLUDED_CODETRACKING_DESPREADING_ZCZ_DESPREADING_IMPL_H */

