// Asynchron counting of high bits in input word
module hbitcounter #(parameter
  DATA_WIDTH = 16
) (
  input [DATA_WIDTH-1:0] din,
  output logic [$clog2(DATA_WIDTH):0] dout
);

  integer num;
  integer i;

  always @ (*) begin
    num = 0;
    for (i = 0; i < DATA_WIDTH; i = i + 1) begin // Iterate over din
      num = num + din[i]; // Incriment num
    end
  end

  assign dout = num;

endmodule // hbitcounter
