class coverage_in extends bvm_cover #(a_tr);
   `uvm_component_utils(coverage_in)

   covergroup transaction_covergroup;  // predefined name of covergroup
      option.per_instance = 1;
      coverpoint coverage_transaction.a[0] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[1] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[2] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[3] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[4] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[5] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[6] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[7] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
      coverpoint coverage_transaction.a[8] { // coverage_transaction is predefined name of transaction instance
        bins d[2] = {[0:20]}; // create 2 bins, one for 0:9 and one for 10:20
        option.at_least = 3;  // at least 3 ocurrences in each bin
      }
   endgroup
   `bvm_cover_utils(a_tr)
    
endclass

