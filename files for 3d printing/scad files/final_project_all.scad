$fn = 100;
translate([15, 0, 75])rotate([-5, 0, 0]) difference(){
cylinder(h = 300, r1 = 50, r2 = 100);
translate([0, 0 , 21])cylinder(h = 330, r1 = 40, r2 = 90);
translate([0, 70, 50]) rotate([90, 0, 0]) cylinder(h = 40, r = 30);
}

difference(){
union(){
translate([-140, -55, 30])rotate([-5, 0, 0]) cube([300, 300, 20]);
translate([-140, -55, 0]) cube([300, 310, 30]);
}
translate([10, 145, 5])cylinder(h = 50, r = 98);
}
translate([-140, -55, 30])rotate([-5, 0, 0]) cube([300, 100, 50]);

translate([15, 26, 420])rotate([-5, 0, 0]) cylinder(h = 30, r = 100);
translate([15, 26, 400])rotate([-5, 0, 0]) cylinder(h = 30, r = 86);
