module mux2_2(a, b, s, y); //模块名、模块接口名
input a, b, s; // 定义输入端口
output y; // 定义输出端口
/* s为0时，选择a输出；
s为1时，选择b输出。*/
assign y = (s == 0) ? a : b; //输出信号
endmodule 