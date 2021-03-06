/*MIT License
Copyright (c) 2018 Serhii Sachov
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*/

`ifndef CURL_INTERFACE
`define CURL_INTERFACE

`include "curl_params.sv"

interface curl_if (input clk, arst_n);
	logic [`HASH_LENGTH  	- 1 : 0] curl_in_hash;
	logic [`HASH_LENGTH * 2 - 1 : 0] curl_out_hash;
	logic							 curl_first_part_hash;
	logic							 curl_second_part_hash;
	logic 							 curl_transform_finish;
endinterface : curl_if  

`endif