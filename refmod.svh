class refmod extends uvm_component;
   `uvm_component_utils(refmod)

   uvm_get_port #(a_tr) in; 
   uvm_blocking_put_port #(a_tr) out; 

   function new(string name, uvm_component parent=null);
      super.new(name,parent);
      in  = new("in",  this);
      out = new("out", this);
   endfunction : new

   task run_phase (uvm_phase phase);

     a_tr tr_in, tr_out;

     forever begin
        in.get(tr_in);

        #10;
        `bvm_end_tr(tr_in);

        tr_out = a_tr::type_id::create("tr_out", this);
        tr_out.a[0] = tr_in.a[0] + 100;
        tr_out.a[1] = tr_in.a[1] + 100;
        tr_out.a[2] = tr_in.a[2] + 100;
        tr_out.a[3] = tr_in.a[3] + 100;
        tr_out.a[4] = tr_in.a[4] + 100;
        tr_out.a[5] = tr_in.a[5] + 100;
        tr_out.a[6] = tr_in.a[6] + 100;
        tr_out.a[7] = tr_in.a[7] + 100;
        tr_out.a[8] = tr_in.a[8] + 100;

        `bvm_begin_tr(tr_out)
        #10;
        out.put(tr_out);
     end

   endtask

endclass

