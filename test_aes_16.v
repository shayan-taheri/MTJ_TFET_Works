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
module test_aes_16;

	// Inputs
	reg clk;
	reg [15:0] state;
	reg [15:0] key;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	aes_16 uut (
		.clk(clk), 
		.state(state), 
		.key(key), 
		.out(out)
	);

	initial begin
	
	$dumpfile("aes_16.vcd"); // name of the dump file
	$dumpvars(0,test_aes_16); // "0" specifies to dump all the variables in code and "Inverter_tb" is the name of module
	
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
        state = 16'h0734;
        key   = 16'h4f3c;
        #100;
        state = 16'hccdd;
        key   = 16'h0c0d;
        #100;
        state = 16'h0;
        key   = 16'h0;
        #100;
        state = 16'h0;
        key   = 16'h1;
        #100;
        state = 16'h1;
        key   = 16'h0;
        $finish;
	end
      
    always #10 clk = ~clk;
endmodule

