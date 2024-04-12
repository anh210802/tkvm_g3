module bound_flasher (flick, clk, rst, leds);

input wire flick;
input wire clk;
input wire rst;
output reg [15:0] leds;

reg started = 0;

reg [3:0] state, next_state;
reg [3:0] led_counter;

always @(posedge clk) begin
    if (rst && !started) begin
        state <= 4'b0000;
        next_state <= 4'b0000;
        led_counter <= 0;
        started <= 1;
    end
    else if (state != 4'b0000 && !rst) begin
        state <= 4'b0000;
        next_state <= 4'b0000;
        led_counter <= 0;
    end
    state <= next_state;
    case(state)
        4'b0000: begin
            
            leds <= 16'b0;
            
            if (flick) begin
                next_state <= 4'b0001;
            end
        end
        4'b0001: begin
            
            leds[led_counter] <= 1;

            if (led_counter == 15) begin
                
                next_state <= 4'b0010;
            end
            else begin
                led_counter <= led_counter + 1;
            end
        end
        4'b0010: begin
            
            leds[led_counter] <= 0;

            if (led_counter == 5) begin
                
                next_state <= 4'b0100;
            end
            else begin
                led_counter <= led_counter - 1;
            end
        end
        4'b0011: begin
            
            leds[led_counter] <= 1;

            if (led_counter == 15) begin
                
                next_state <= 4'b0010;
            end
            else begin
                led_counter <= led_counter + 1;
            end
        end
        4'b0100: begin
            
            leds[led_counter] <= 1;

            if (led_counter == 10) begin
                
                next_state <= 4'b0101;
            end
            else begin
                led_counter <= led_counter + 1;
            end
        end
        4'b0101: begin
            
            leds[led_counter] <= 0;

            if (led_counter == 0) begin
                
                next_state <= 4'b0111;
            end
            else begin
                led_counter <= led_counter - 1;
            end
        end
        4'b0110: begin
            
            leds[led_counter] <= 1;

            if (led_counter == 10) begin
                
                next_state <= 4'b0101;
            end
            else begin
                led_counter <= led_counter + 1;
            end
        end
        4'b0111: begin
            
            leds[led_counter] <= 1;

            if (led_counter == 5) begin
                
                next_state <= 4'b1000;
            end
            else begin
                led_counter <= led_counter + 1;
            end
        end
        4'b1000: begin
            
            leds[led_counter] <= 0;

            if (led_counter == 0) begin
                
                next_state <= 4'b0000;
            end
            else begin
                led_counter <= led_counter - 1;
            end
        end
    endcase
    
    case (state)
        4'b0101: begin
            if (flick) begin
                
                if (leds[5] == 0) begin
                    next_state <= 4'b0100;
                end

                
                if (leds[0] == 0) begin
                    next_state <= 4'b0110;
                end
            end
        end
        4'b0010: begin
            if (flick && leds[5] == 0) begin
                next_state <= 4'b0011;
            end
        end
    endcase
end


endmodule
