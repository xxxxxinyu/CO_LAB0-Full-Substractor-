`timescale 1ns / 1ps

module Full_Subtractor(
    In_A, In_B, Borrow_in, Difference, Borrow_out
    );
    input In_A, In_B, Borrow_in;
    output Difference, Borrow_out;
    
    wire diff_temp, b_out_temp1, b_out_temp2;
    
    Half_Subtractor HS1(In_A, In_B, diff_temp, b_out_temp1);
    Half_Subtractor HS2(diff_temp, Borrow_in, Difference, b_out_temp2);
    or(Borrow_out, b_out_temp1, b_out_temp2);
    // implement full subtractor circuit, your code starts from here.
    // use half subtractor in this module, fulfill I/O ports connection.
    Half_Subtractor HSUB (
        .In_A(), 
        .In_B(), 
        .Difference(), 
        .Borrow_out()
    );
    
endmodule
