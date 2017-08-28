

module asus_z170_pro_gaming_pcb() {
    color("Green") cube([305, 244, 1.6]);
}

module asus_z170_pro_gaming_through_holes() {
    $fn = 100;

    translate([16.5,6.5,-0.2]) cylinder(r=2,2);
    translate([125+16.5,6.5,-0.2]) cylinder(r=2,2);
    translate([280+16.5,6.5,-0.2]) cylinder(r=2,2);

    translate([16.5,72.5+6.5,-0.2]) cylinder(r=2,2);
    translate([125+16.5,72.5+6.5,-0.2]) cylinder(r=2,2);
    translate([280+16.5,72.5+6.5,-0.2]) cylinder(r=2,2);

    translate([16.5,234,-0.2]) cylinder(r=2,2);
    translate([125+16.5,234,-0.2]) cylinder(r=2,2);
    translate([280+16.5,234,-0.2]) cylinder(r=2,2);
}

module asus_z170_pro_gaming_backplate() {
    color("Silver") {
        cube([164,48,0.1]);
        translate([2.5,2,-3.1]) cube([159,44,3]);
    }
}

module asus_z170_pro_gaming_pciex16() {
    color("DimGrey") {
        rotate([0,0,90])
        difference() {
            cube([100,8.3,12]);
            translate([2,3.1,2]) cube([96,2,12]);
        }
    }
}

module asus_z170_pro_gaming_board() {
    difference() {
        asus_z170_pro_gaming_pcb();
        asus_z170_pro_gaming_through_holes();
    }
    translate([145,246,-5]) rotate([90,0,0]) asus_z170_pro_gaming_backplate();
    translate([25,102,1.6]) asus_z170_pro_gaming_pciex16();
    translate([64,102,1.6]) asus_z170_pro_gaming_pciex16();
    translate([126,102,1.6]) asus_z170_pro_gaming_pciex16();
}


