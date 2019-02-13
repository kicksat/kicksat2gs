#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2019 Zac Manchester.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

from numpy import *
from gnuradio import gr

class sliding_window_min_ff(gr.sync_block):
    """
    docstring for block sliding_window_min
    """
    def __init__(self, length):
        gr.sync_block.__init__(self,
            name="sliding_window_min",
            in_sig=[float32],
            out_sig=[float32])
	
	self.set_history(length)
	self._length = length

    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]
	
	k = 0	
	while k < len(in0):
		out0[k] = amin(in0[k:k+self._length])
		k+=1

        return len(output_items[0])

