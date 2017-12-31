/* -*- c++ -*- */

#define CODETRACKING_DESPREADING_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "codetracking_despreading_swig_doc.i"

%{
#include "codetracking_despreading/zcz_despreading.h"
%}


%include "codetracking_despreading/zcz_despreading.h"
GR_SWIG_BLOCK_MAGIC2(codetracking_despreading, zcz_despreading);
