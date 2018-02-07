//*****************************************************************************
// Filename    : hello.sv                                                
// Author      : Prashanth K
//
// Description : Hello function to check C-DPI
// 
// Top level TB
//*****************************************************************************

module hello ();

import "DPI-C" function void hello ();

initial begin

$display("----- Calling hello function :: 1 ------");
hello();
$display("----- Calling hello function :: 2 ------");
hello();
$display("----- Calling hello function :: 3 ------");
hello();
$display("----- Calling hello function :: 4 ------");
hello();
$display("----- Calling hello function :: 5 ------");
hello();

$finish;

end

endmodule : hello


