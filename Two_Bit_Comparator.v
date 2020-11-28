// Sankatmochan Bot : Task 1 A : 4Bit Comparator
/*
Instructions
-------------------
Students are not allowed to make any changes in the Module declaration.
This file is used to design 2 bit comparator.

Recommended Quartus Version : 19.1
The submitted project file must be 19.1 compatible as the evaluation will be done on Quartus Prime Lite 19.1.

Warning: The error due to compatibility will not be entertained.
			Do not make any changes to Test_Bench_Vector.txt file. Violating will result into Disqualification.
-------------------
*/

//2 bit comparator design
//Inputs (2 bit): A1,A0,B1,B0
//Outputs : A_Greater (A>B), Equal (A=B), B_Greater (A<B)

//////////////////DO NOT MAKE ANY CHANGES IN MODULE//////////////////
module Two_Bit_Comparator(
	input		A1,               //MSB OF INPUT A   
	input		A0,					//LSB OF INPUT A
	input		B1,					//MSB OF INPUT B
	input		B0,					//LSB OF INPUT B					
	output	A_Greater,			//OUTPUT BIT A>B
	output	Equal,				//OUTPUT BIT A=B
	output	B_Greater			//OUTPUT BIT A<B
);

////////////////////////WRITE YOUR CODE FROM HERE//////////////////// 
	
	wire tmp0,tmp1,tmp2,tmp3,tmp4,tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11;  
	
 // A = B output   
 assign tmp0 = A0 & B0;  
 assign tmp9 = A1 & B1;  
 assign tmp10 = ~A0 & ~B0; 
 assign tmp11 = ~A1 & ~B1;  
   
 assign Equal= (tmp0 | tmp10) & (tmp9 | tmp11);
 
 // A less than B output   
 assign tmp3 = ~A0 & ~A1 & B0;  
 assign tmp4 = ~A1 & B1;  
 assign tmp5 = ~A0 & B1 & B0;  
 assign B_Greater = tmp3 | tmp4 | tmp5;  
 
 
 // A greater than B output   
 assign tmp6 = ~B0 & ~B1 & A0;  
 assign tmp7 = ~B1 & A1;  
 assign tmp8 = ~B0 & A1 & A0;  
 assign A_Greater = tmp6 | tmp7 | tmp8;  
	
	

////////////////////////YOUR CODE ENDS HERE//////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////