module register_file(clk, write_enable, write_address, read_address1, read_address2, write_data, read_data1, read_data2); 
    input logic clk; 
    input logic write_enable; 
    input logic [4:0] write_address; 
    input logic [4:0] read_address1;
    input logic [4:0] read_address2;
    input logic [31:0] write_data; 
    output logic [31:0] read_data1; 
    output logic [31:0] read_data2;  

    logic [31:0] registers [0:31];

    assign read_data1 = registers[read_address1]; 
    assign read_data2 = registers[read_address2]; 

    always_ff @( posedge clk ) begin
        if (write_enable && write_address != 5'b00000) begin  
            registers[write_address] <= write_data
        end 
    end
    
endmodule

 