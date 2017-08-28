$fn = 8;

rotate([0,90,0]) {
    rotate([0,0,45/2]) cylinder(r=100,h=75);
}

module blocks(){
translate([250,0,-100]) rotate([45,0,0]) cube(150);
translate([250,0,-200]) rotate([45,0,0]) cube(150);
translate([250,-80,-80]) cube([150,2,100]);

}

module cubie() {
    difference() {
        blocks();
        translate([248,-100,-245]) cube([155,300,150]);
        translate([248,80,-200]) cube([155,30,150]);
        translate([248,-180,-218]) cube([155,100,150]);
    }
}

color("DimGrey") cubie();