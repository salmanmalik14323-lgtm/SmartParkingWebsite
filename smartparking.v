
module smartparking(
    input S1, S2, S3, S4,
    output FULL,
    output AVAILABLE,
    output [3:0] GREEN,
    output [3:0] RED
);

assign FULL = S1 & S2 & S3 & S4;
assign AVAILABLE = ~FULL;

assign GREEN = ~{S4, S3, S2, S1};
assign RED = {S4, S3, S2, S1};

endmodule
