class a_tr extends uvm_sequence_item;

  rand int a[9];

  constraint a_positive { foreach(a[i]) a[i] > 0; }
  constraint a_small { foreach(a[i]) a[i] < 21; }

  `uvm_object_utils_begin(a_tr)  // needed for transaction recording
     `uvm_field_int(a[0], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[1], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[2], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[3], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[4], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[5], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[6], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[7], UVM_ALL_ON | UVM_DEC)
     `uvm_field_int(a[8], UVM_ALL_ON | UVM_DEC)
  `uvm_object_utils_end

endclass

