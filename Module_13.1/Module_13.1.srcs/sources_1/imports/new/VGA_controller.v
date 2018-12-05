`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2018 10:44:21 PM
// Design Name: 
// Module Name: VGA_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_controller(
    input i_CLK,
    output o_HSYNC,
    output o_VSYNC,
    output o_VDE,
    output [9:0] o_X_COORD,
    output [9:0] o_Y_COORD
    );
    
    
    parameter v_HSYNC_START = 16;
    parameter v_HSYNC_END = 112;
    parameter v_VSYNC_START = 491;
    parameter v_VSYNC_END = 493;
    parameter v_HA_START = 160;
    parameter v_VA_START = 0;
    parameter v_HA_END = 800;
    parameter v_VA_END = 524;
    wire w_CLK;
    reg r_HSYNC = 1'd0;
    reg r_VSYNC = 1'd0;
    reg [9:0] r_HCNT = 10'd0;
    reg [9:0] r_VCNT = 10'd0;
    reg [9:0] r_X_COORD = 10'd0;
    reg [9:0] r_Y_COORD = 10'd0;
    reg r_VDE = 1'd0;
    
    assign w_CLK = i_CLK;
    assign o_HSYNC = r_HSYNC;
    assign o_VSYNC = r_VSYNC;
    assign o_VDE = r_VDE;
    assign o_X_COORD = r_X_COORD;
    assign o_Y_COORD = r_Y_COORD;
    //assign o_X_COORD = (r_HCNT >= v_HA_START) ? (r_HCNT - v_HA_START) : 0; 
   // assign o_Y_COORD = (r_VCNT >= v_VA_END) ? (v_VA_END - 1) : r_VCNT; 
    //https://timetoexplore.net/blog/arty-fpga-vga-verilog-01
    
    always@(posedge w_CLK)
    begin
        if(r_HCNT >= v_HA_START)
            r_X_COORD <= r_HCNT - v_HA_START;
        else
            r_X_COORD <= 10'd0;
    end
    
    always@(posedge w_CLK)
    begin
        if(r_VCNT >= v_VA_END)
            r_Y_COORD <= v_VA_END - 1'b1;
        else
            r_Y_COORD <= r_VCNT;
    end
    
    always@(posedge w_CLK) //PIXEL COUNT
    begin
        if(r_HCNT == v_HA_END) begin
            r_HCNT <= 10'd0;
            end
        else
            begin
            r_HCNT <= r_HCNT + 1'b1;
            end
    end
    
    always@(posedge w_CLK) //LINE COUNT
        begin
            if(r_VCNT == v_VA_END) begin
                r_VCNT <= 10'd0;
                end
            else if (r_HSYNC == 1'b1)
                begin
                r_VCNT <= r_VCNT + 1'b1;
                end
           else
                begin
                r_VCNT <= r_VCNT + 1'b0;
                end
        end
        
        always@(posedge w_CLK)
        begin
            if(r_HCNT >= v_HSYNC_START & r_HCNT <= v_HSYNC_END)
                r_HSYNC <= 1'b0;
            else
                r_HSYNC <= 1'b1;
        end
        
        always@(posedge w_CLK)
        begin
            if(r_VCNT >= v_VSYNC_START & r_VCNT <= v_VSYNC_END)
                r_VSYNC <= 1'b0;
            else
                r_VSYNC <= 1'b1;
        end
        
        always@(posedge w_CLK)
        begin
            if((r_HCNT >= v_HA_START & r_HCNT <= v_HA_END) & (r_VCNT >= v_VA_START & r_VCNT <= v_VA_END ))
                r_VDE <= 1'b1;
            else
                r_VDE <= 1'b0;
        end
endmodule
