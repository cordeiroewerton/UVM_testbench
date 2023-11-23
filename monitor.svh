class monitor extends uvm_monitor;  
   `uvm_component_utils(monitor)

   uvm_analysis_port #(a_tr) out;
    
   virtual a_if a_vi; 

   function new(string name, uvm_component parent);
      super.new(name, parent);
      out = new("out", this);
   endfunction: new
    
   function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      assert( uvm_config_db #(virtual a_if)::get(this, "", "a_vi", a_vi) );
   endfunction
   
   task run_phase(uvm_phase phase);
      a_tr tr;
      forever begin
         wait (a_vi.reset === 0);
         tr = a_tr::type_id::create("tr");

         @(posedge a_vi.clock iff (a_vi.valid)); // at next rising clock which has valid set
         `bvm_begin_tr(tr) // start transaction recording
         tr.a[0] = a_vi.a[0]; // get transaction property value
         tr.a[1] = a_vi.a[1]; // get transaction property value
         tr.a[2] = a_vi.a[2]; // get transaction property value
         tr.a[3] = a_vi.a[3]; // get transaction property value
         tr.a[4] = a_vi.a[4]; // get transaction property value
         tr.a[5] = a_vi.a[5]; // get transaction property value
         tr.a[6] = a_vi.a[6]; // get transaction property value
         tr.a[7] = a_vi.a[7]; // get transaction property value
         tr.a[8] = a_vi.a[8]; // get transaction property value
       
         out.write(tr);
      end
   endtask

endclass

