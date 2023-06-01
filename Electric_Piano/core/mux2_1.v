module mux2_1(a, b, s, y); //模块名、模块接口名
input [3:0]a;
input [3:0]b;
input s; // 定义输入端口
output [3:0]y; // 定义输出端口
/* s为0时，选择a输出；
s为1时，选择b输出。*/
assign y = (s == 0) ? a : b; //输出信号
endmodule
