$fn = 100;
translate([15, 0, 0])rotate([-5, 0, 0]) difference(){
cylinder(h = 300, r1 = 50, r2 = 100);
translate([0, 0 , 21])cylinder(h = 330, r1 = 40, r2 = 90);
translate([0, 70, 50]) rotate([90, 0, 0]) cylinder(h = 40, r = 30);
}