/* -*- c++ -*- */

#define KICKSAT2GS_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "kicksat2gs_swig_doc.i"

%{
#include "kicksat2gs/moving_max_ff.h"
%}


%include "kicksat2gs/moving_max_ff.h"
GR_SWIG_BLOCK_MAGIC2(kicksat2gs, moving_max_ff);

