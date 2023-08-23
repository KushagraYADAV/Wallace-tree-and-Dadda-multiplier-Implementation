module WallaceTreeMult(
    input [3:0] A,
    input [3:0] B,
    output [7:0] out
    );
    
    
    
    wire HA11_sum,HA12_sum,FA11_sum,FA12_sum;
    wire HA11_carry,HA12_carry,FA11_carry,FA12_carry;
    //Step-1
    HalfAdder HA11 (A[1]&B[0],A[0]&B[1], HA11_sum, HA11_carry);
    FullAdder FA11 (A[2]&B[0],A[1]&B[1],A[0]&B[2], FA11_sum, FA11_carry);
    FullAdder FA12 (A[3]&B[0],A[2]&B[1],A[1]&B[2], FA12_sum, FA12_carry);
    HalfAdder HA12 (A[3]&B[1],A[2]&B[2], HA12_sum,HA12_carry);  
    
    //Step-2
    wire HA21_sum,FA21_sum,FA22_sum,FA23_sum;
    wire HA21_carry,FA21_carry,FA22_carry,FA23_carry;
    
    HalfAdder HA21 (FA11_sum,HA11_carry,HA21_sum,HA21_carry);//Checked
    FullAdder FA21 (FA12_sum,FA11_carry,A[0]&B[3],FA21_sum,FA21_carry);//Checked
    FullAdder FA22 (HA12_sum,FA12_carry,A[1]&B[3],FA22_sum,FA22_carry);//Checked    
    FullAdder FA23 (A[3]&B[2],HA12_carry,A[2]&B[3],FA23_sum,FA23_carry);//Checked
    
	
	//Step-3
	wire HA31_sum,FA31_sum,FA32_sum,FA33_sum;
	wire HA31_carry,FA31_carry,FA32_carry,FA33_carry;
	assign out[0]=A[0]&B[0];
	assign out[1]=HA11_sum;
	assign out[2]=HA21_sum;
	
    HalfAdder HA31 (FA21_sum,HA21_carry,HA31_sum,HA31_carry);
	assign out[3]=HA31_sum;
	
	FullAdder FA31(FA22_sum,FA21_carry,HA31_carry,FA31_sum,FA31_carry);
	assign out[4]=FA31_sum;
	
	FullAdder FA32(FA23_sum,FA22_carry,FA31_carry,FA32_sum,FA32_carry);
	assign out[5]=FA32_sum;
	
	FullAdder FA33(A[3]&B[3],FA23_carry,FA32_carry,FA33_sum,FA33_carry);
	assign out[6]=FA33_sum;
	assign out[7]=FA33_carry;
    
endmodule