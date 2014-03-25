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
            translate([0, 0, 0]) cube([totalX, totalY, totalZ]);

            translate([innerTranslateX, innerTranslateY, innerTranslateZ]) cube([innerX, innerY, innerZ]);
            translate([innerInnerTranslateX, innerInnerTranslateY, innerInnerTranslateZ]) cube([innerInnerX, innerInnerY, innerInnerZ]);
            translate([carriageTranslateX, carriageTranslateY, carriageTranslateZ]) carriage();
        }

        translate([0, 6, 0]) cube([totalX, 2, 4]);
        translate([0, innerY + 4, 0]) cube([totalX, 2, 4]);

        
        translate([0, -2.5, 0]) {
            difference() {
                translate([0, 20, totalZ]) cube([totalX, 40, 6]);

                translate([5, 25, totalZ]) cube([totalX - 10, 60, 3]);
                translate([10, 30, totalZ]) cube([totalX - 20, 55, 15]);
            }
        }
    }
    
}
