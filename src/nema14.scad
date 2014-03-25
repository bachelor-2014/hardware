module nema14(){
    cube([36,36,40],true);
    translate([0,0,1])cylinder(r=12,h=42,center=true);
    translate([0,0,1])cylinder(r=3,h=38);
    translate([13,13,1])cylinder(r=1.8,h=38);
    translate([13,-13,1])cylinder(r=1.8,h=38);
    translate([-13,13,1])cylinder(r=1.8,h=38);
    translate([-13,-13,1])cylinder(r=1.8,h=38);
}
