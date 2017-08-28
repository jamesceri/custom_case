module gtx1070_8gb_edge_connector() {
    color("Yellow") {
        translate([45, -5, 0]) cube([84, 6, 1.6]);
    }
}

module gtx1070_8gb_pcb_main() {
    color("Green") {
        cube([285, 125, 1.6]);
    }
}

module cutouts() {
    
    // Edge connector
    translate([56, -5.1, -0.2]) cube([2,8,2]);
    translate([129, -5.1, -0.2]) cube([2,8,2]);

    // 1st
    translate([15, -0.1, -0.2]) cube([18,8.1,2]);

    // 2nd
    translate([41, -0.1,-0.2]) cube([4, 8, 2]);

    // 3rd
    translate([144, -0.1, -0.2]) cube([142,10,2]);
}

module gtx1070_8gb_pcb() {
    gtx1070_8gb_pcb_main();
    gtx1070_8gb_edge_connector();
}

module gtx1070_8gb_backplate() {
    color("Silver") {
        rotate([90,0,90])
        cube([100,40,1]);
    }
}


// MAIN FUNCTION //
module gtx1070_8gb_board() {

    difference() {
        gtx1070_8gb_pcb();
        cutouts();
    }

    gtx1070_8gb_backplate();
}





