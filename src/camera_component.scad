module camera_component_plate() {
    totalX = 46.5;
    totalY = 82;
    totalZ = 35;

    cube([totalX, totalY + 30, 6]);

    module screw_hole() {
        cylinder(r=1.5,h=20);
    }

    edgeDistance = 6;

    translate([edgeDistance, edgeDistance, -2]) screw_hole();
    translate([totalX - edgeDistance, edgeDistance, -2]) screw_hole();
    translate([edgeDistance, totalY - edgeDistance + 30, -2]) screw_hole();
    translate([totalX - edgeDistance, totalY - edgeDistance + 30, -2]) screw_hole();
}

module camera_component() {
    totalX = 46.5;
    totalY = 82;
    totalZ = 35;

    innerX = 80;
    innerY = 70;
    innerZ = 55;

    innerInnerX = 80;
    innerInnerY = 45;
    innerInnerZ = 55;

    innerTranslateX = -15;
    innerTranslateY = 6;
    innerTranslateZ = -38;

    innerInnerTranslateX = -15;
    innerInnerTranslateY = 18.5;
    innerInnerTranslateZ = -26;

    carriageTranslateX = -25;
    carriageTranslateY = innerTranslateY;
    carriageTranslateZ = innerTranslateZ + 42;

    union() {
        difference () {
            union() {
                translate([0, 0, 0]) cube([totalX, totalY, totalZ]);
                translate([0, -15, totalZ - innerTranslateY]) camera_component_plate();
            }

            translate([innerTranslateX, innerTranslateY, innerTranslateZ+12]) cube([innerX, innerY, innerZ]);
            translate([innerInnerTranslateX, innerInnerTranslateY, innerInnerTranslateZ]) cube([innerInnerX, innerInnerY, innerInnerZ]);
            translate([carriageTranslateX, carriageTranslateY, carriageTranslateZ]) carriage();
            translate([-1.5, 6, 20]) component_holes();
        }

        translate([0, 6, 0]) cube([totalX, 2, 4]);
        translate([0, innerY + 4, 0]) cube([totalX, 2, 4]);
    }
    
}
