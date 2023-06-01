module F_CODE (INX,CODE,H,TO);
input [3:0]INX;//输入音符
output [3:0]CODE;//输出当前音调
output H;//高音标志
output [10:0]TO;//输出音频的频率
reg [10:0] TO;//音频预制数的寄存器
reg [3:0]CODE;
reg H;
always @(INX)
    begin
        case (INX)
            0:begin TO<=11'H7ff;CODE<=0;H<=0;end
            1:begin TO<=11'H305;CODE<=1;H<=0;end
            2:begin TO<=11'H390;CODE<=2;H<=0;end
            3:begin TO<=11'H40c;CODE<=3;H<=0;end
            4:begin TO<=11'H443;CODE<=4;H<=0;end
            5:begin TO<=11'H4ac;CODE<=5;H<=0;end
            6:begin TO<=11'H50a;CODE<=6;H<=0;end
            7:begin TO<=11'H55c;CODE<=7;H<=0;end
            8:begin TO<=11'H582;CODE<=1;H<=1;end
            9:begin TO<=11'H5c8;CODE<=2;H<=1;end
            10:begin TO<=11'H606;CODE<=3;H<=1;end
            11:begin TO<=11'H622;CODE<=4;H<=1;end
            12:begin TO<=11'H656;CODE<=5;H<=1;end
            13:begin TO<=11'H684;CODE<=6;H<=1;end
            14:begin TO<=11'H699;CODE<=7;H<=1;end
            15:begin TO<=11'H6c0;CODE<=1;H<=1;end
            default:begin TO<=11'H6c0;CODE<=1;H<=1; end
        endcase
    end
endmodule