module tone
(
input			[15:0]	key_in,
output	reg		[15:0]	cycle
);

//不同按键按下对应得到不同的PWM周期
//已知蜂鸣器某音节对应的蜂鸣器震荡频率为261.6Hz，系统时钟频率为12MHz
//故每个蜂鸣器震荡周期时间等于12M/261.6=45872个系统时钟的周期时间之和
//我们把按键信息译成PWM模块周期cycle对应的值，输出给PWM模块
always@(key_in) begin
	case(key_in)
		16'h0001: cycle = 16'd45872;	//L1,
		16'h0002: cycle = 16'd40858;	//L2,
		16'h0004: cycle = 16'd36408;	//L3,
		16'h0008: cycle = 16'd34364;	//L4,
		16'h0010: cycle = 16'd30612;	//L5,
		16'h0020: cycle = 16'd27273;	//L6,
		16'h0040: cycle = 16'd24296;	//L7,
		16'h0080: cycle = 16'd22931;	//M1,
		16'h0100: cycle = 16'd20432;	//M2,
		16'h0200: cycle = 16'd18201;	//M3,
		16'h0400: cycle = 16'd17180;	//M4,
		16'h0800: cycle = 16'd15306;	//M5,
		16'h1000: cycle = 16'd13636;	//M6,
		16'h2000: cycle = 16'd12148;	//M7,
		16'h4000: cycle = 16'd11478;	//H1,
		16'h8000: cycle = 16'd10215;	//H2,
		default:  cycle = 16'd0;		//cycle为0，PWM占空比为0，低电平
	endcase
end
	
endmodule
