`timescale 1ns/1ps

module priority_encoder_4to2_tb;

    reg  [3:0] I;
    wire [1:0] Y;

    // Instantiate the Design Under Test (DUT)
    priority_encoder_4to2 DUT (
        .I(I),
        .Y(Y)
    );

    initial begin
        $dumpfile("runs/COOKIE/Simulation/WAVEFORM.vcd");
        $dumpvars(0, priority_encoder_4to2_tb);
        // Display values in the simulation
        $monitor("Time = %0t | I = %b | Y = %b", 
                 $time, I, Y);

        // Test cases
        I = 4'b0000;
        #10;

        I = 4'b0001;
        #10;

        I = 4'b0010;
        #10;

        I = 4'b0011;
        #10;

        I = 4'b0100;
        #10;

        I = 4'b0101;
        #10;

        I = 4'b0110;
        #10;

        I = 4'b0111;
        #10;

        I = 4'b1000;
        #10;

        I = 4'b1001;
        #10;

        I = 4'b1010;
        #10;

        I = 4'b1011;
        #10;

        I = 4'b1100;
        #10;

        I = 4'b1101;
        #10;

        I = 4'b1110;
        #10;

        I = 4'b1111;
        #10;

        $finish;
        
    end

endmodule