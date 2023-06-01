module RAM78 (CLK,A,Q);
    input CLK;
    input [7:0] A;
    output [3:0] Q;
    reg [3:0] Q;
    reg [3:0] mem[255:0] /* synthesis ram_init_file="MXBC_H_music.mif" */;
    always @(posedge CLK)
        Q<=mem[A];
endmodule