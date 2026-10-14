
module smartparking_tb;

reg S1, S2, S3, S4;
wire FULL, AVAILABLE;
wire [3:0] GREEN, RED;

smartparking uut(
    .S1(S1), .S2(S2), .S3(S3), .S4(S4),
    .FULL(FULL), .AVAILABLE(AVAILABLE),
    .GREEN(GREEN), .RED(RED)
);

initial begin
    $dumpfile("smartparking.vcd");
    $dumpvars(0, smartparking_tb);

    $monitor("S1=%b S2=%b S3=%b S4=%b | FULL=%b AVAILABLE=%b GREEN=%b RED=%b",
             S1,S2,S3,S4,FULL,AVAILABLE,GREEN,RED);

    S1=0; S2=0; S3=0; S4=0; #10;
    S1=1; S2=0; S3=0; S4=0; #10;
    S1=1; S2=1; S3=0; S4=0; #10;
    S1=1; S2=1; S3=1; S4=0; #10;
    S1=1; S2=1; S3=1; S4=1; #10;
    S1=0; S2=1; S3=0; S4=1; #10;

    $finish;
end

endmodule
