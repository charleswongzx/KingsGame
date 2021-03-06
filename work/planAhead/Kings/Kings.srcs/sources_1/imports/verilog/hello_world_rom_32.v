/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module text_rom_32 (
    input [5:0] selector,
    input [6:0] address,
    output reg [7:0] letter
  );
  
  
  
  localparam TEXT0 = 640'h546865206e65696768626f7572696e67206b696e67646f6d20686173206265656e207765616b656e65642e20496e7661646520746865206e65696768626f7572696e67206b696e67646f6d3f20202020;
  
  reg [40959:0] rom;
  
  always @* begin
    rom[0+639-:640] = 640'h202020203f6d6f64676e696b20676e6972756f62686769656e2065687420656461766e49202e64656e656b616577206e65656220736168206d6f64676e696b20676e6972756f62686769656e20656854;
    letter = rom[(selector)*640+(address)*8+7-:8];
  end
endmodule
