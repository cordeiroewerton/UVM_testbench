module dut (a_if.inp in,
            a_if.outp out);

  always_ff @(posedge in.clock)
     if (in.reset) begin
        out.valid <= 0;
        out.a[0] <= 0;
        out.a[1] <= 0;
        out.a[2] <= 0;
        out.a[3] <= 0;
        out.a[4] <= 0;
        out.a[5] <= 0;
        out.a[6] <= 0;
        out.a[7] <= 0;
        out.a[8] <= 0;
     end
     else if(in.valid) begin
        out.valid <= 1;
        out.a[0] <= in.a[0] + 100;
        out.a[1] <= in.a[1] + 100;
        out.a[2] <= in.a[2] + 100;
        out.a[3] <= in.a[3] + 100;
        out.a[4] <= in.a[4] + 100;
        out.a[5] <= in.a[5] + 100;
        out.a[6] <= in.a[6] + 100;
        out.a[7] <= in.a[7] + 100;
        out.a[8] <= in.a[8] + 100;
     end
     else out.valid <= 0;

endmodule

