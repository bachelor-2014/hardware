module x_axis_holder_base() {
    baseHeight = 10;
    holderDepth = 20;
    railHolderWidth = 20;
    holderHeight = linearRailHolderHeight - railHolderWidth/2;

    // The rail holder
    module linear_rail_holder() {
        union() {
            // The actual rail holder
            difference() { 
				cube([railHolderWidth, holderDepth, linearRailHolderHeight*1.6]);

				translate([railHolderWidth/2, holderDepth*1.5, linearRailHolderHeight]) rotate([90, 0, 0])
					cylinder(r=linearRailRadius, h=holderDepth*2);

				translate([8.5, -1, linearRailHolderHeight])
					cube([3, 30, 20]);

                translate([-5, holderDepth/2, linearRailHolderHeight + 10]) rotate([0, 90, 0])
                    cylinder(r=linearRailTighteningScrewRadius, h=30);
            }
        }
    }

    // A screw hole for frame screws
    module screw_hole() {
        cylinder(r=frameScrewRadius,h=baseHeight*2);
    }


    // The base plate for attaching to the frame
    module base() {
        hole1X = 10;
        hole3X = 90;
        hole2X = hole1X + ((hole3X - hole1X) / 2);
        holeY = frameWidth/2;
        holeZ = -0.5;

        difference() {
            cube([100, 69, baseHeight]);

            // Add the screw holes
            translate([hole1X, holeY, holeZ]) screw_hole();
            translate([hole2X, holeY, holeZ]) screw_hole();
            translate([hole3X, holeY, holeZ]) screw_hole();
        }
    }

    // The support plate for attaching to the other side of the frame
    module support() {
        module triangle() {
            sideLength = 59 - frameWidth;
            difference() {
                translate([90, frameWidth + 10, -sideLength])
                    cube([10, sideLength, sideLength]);

                //TODO this does not act well with changing of the frame width variable
                translate([89, frameWidth + 8, -72]) rotate([45, 0, 0])
                    cube([12, 900, 29]);
            }
        }

        hole1X = 30;
        hole2X = 70;
        holeY = frameWidth/2;
        holeZ = -0.5;

        union() {
            // The plate
            translate([0, frameWidth + baseHeight, -frameWidth]) {
                rotate([90, 0, 0]) {
                    difference() {
                        cube([100, frameWidth, baseHeight]);

                        // Add the screw holes
                        translate([hole1X, holeY, holeZ]) screw_hole();
                        translate([hole2X, holeY, holeZ]) screw_hole();
                    }
                }
            }

            //The triangles
            triangle();
            translate([-45, 0, 0]) triangle();
            translate([-90, 0, 0]) triangle();
        }
    }

    union() {
        base();
        support();
        translate([railHolderWidth, 10, baseHeight]) linear_rail_holder();
    }
}
