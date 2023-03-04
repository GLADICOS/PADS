

/*
     Design name : Felipe Fernandes da Costa
     Simple description: Simple Desing pad aimed to generic tests under initial design conception, may be could be done using buf, but assign could be good for now.
     
     switch_mode_pad --> 1'b1 means we wish drive data from outside to IP
     switch_mode_pad --> 1'b0 means we wish drive data from IP to outside 
     
     Brazil -- 04/03/2023 -- initial code pad 
     
*/

module PADV1(
        input switch_mode_pad,
        input data_in_internal,
        output data_out_internal,
        inout data_external
      );


  assign data_out_internal = (switch_mode_pad)?data_external:1'bz;
  assign data_external = (!switch_mode_pad)?data_in_internal:1'bz;

endmodule
