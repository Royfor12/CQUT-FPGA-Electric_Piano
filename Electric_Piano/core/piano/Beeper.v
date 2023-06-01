module Beeper
(
input					clk,
input					rst_n,
input			[15:0]	key_out,
output					beeper
);

wire [15:0]	cycle;
//将按键信息译成音节对应的周期cycle值
tone u1
(
.key_in					(key_out	),
.cycle					(cycle		)
);

//根据不同音节的周期cycle值产生对应的PWM信号
PWM #
(
.WIDTH					(16			)	//ensure that 2**WIDTH > cycle
)
u2
(
.clk					(clk		),
.rst_n					(rst_n		),
.cycle					(cycle		),	//cycle > duty
.duty					(cycle>>1	),	//duty < cycle
.pwm_out				(beeper	)
);
	
endmodule