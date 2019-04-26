/*
 * Copyright 2012, Homer Hsing <homer.hsing@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

`timescale 1ns / 1ps

// *** Main Test Bench ***
module test_aes_128;

	// Inputs
	reg clk;
	reg [127:0] state;
	reg [127:0] key;

	// Outputs
	wire [127:0] out;

	// Instantiate the Unit Under Test (UUT)
	aes_128 uut (
		.clk(clk), 
		.state(state), 
		.key(key), 
		.out(out)
	);

	initial begin
	
	$dumpfile("aes_128.vcd"); // name of the dump file
	$dumpvars(0,test_aes_128); // "0" specifies to dump all the variables in code and "Inverter_tb" is the name of module
	
	clk = 0;
	state = 0;
	key = 0;

	#100;

        /*
         * TIMEGRP "key" OFFSET = IN 6.4 ns VALID 6 ns AFTER "clk" HIGH;
         * TIMEGRP "state" OFFSET = IN 6.4 ns VALID 6 ns AFTER "clk" HIGH;
         * TIMEGRP "out" OFFSET = OUT 2.2 ns BEFORE "clk" HIGH;
         */

        @ (negedge clk);
	#2.5;
        state = 128'h3243f6a8_885a308d_313198a2_e0370734;
        key   = 128'h2b7e1516_28aed2a6_abf71588_09cf4f3c;
        #100;
        state = 128'h00112233_44556677_8899aabb_ccddeeff;
        key   = 128'h00010203_04050607_08090a0b_0c0d0e0f;
        #100;
        state = 128'h0;
        key   = 128'h0;
        #100;
        state = 128'h0;
        key   = 128'h1;
        #100;
        state = 128'h1;
        key   = 128'h0;
        $finish;
	end
      
    	always #10 clk = ~clk;
endmodule

