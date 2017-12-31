#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/ableo/gnuradio/tutorials/modules/gr-spreading/lib
export PATH=/home/ableo/gnuradio/tutorials/modules/gr-spreading/lib:$PATH
export LD_LIBRARY_PATH=/home/ableo/gnuradio/tutorials/modules/gr-spreading/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-spreading 
