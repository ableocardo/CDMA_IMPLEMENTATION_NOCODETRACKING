#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/ableo/gnuradio/tutorials/modules/gr-spreading/python
export PATH=/home/ableo/gnuradio/tutorials/modules/gr-spreading/python:$PATH
export LD_LIBRARY_PATH=/home/ableo/gnuradio/tutorials/modules/gr-spreading/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/ableo/gnuradio/tutorials/modules/gr-spreading/swig:$PYTHONPATH
/usr/bin/python2 /home/ableo/gnuradio/tutorials/modules/gr-spreading/python/qa_zcz_spreading.py 
