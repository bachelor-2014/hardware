module frame() {

    module frameSquare() {
        translate([0, 0, 0]) {
            cube([frameWidth, robotWidth, frameWidth]);
        }

        translate([robotDepth-frameWidth, 0, 0]) {
            cube([frameWidth, robotWidth, frameWidth]);
        }

        translate([robotDepth-frameWidth, 0, 0]) {
            rotate([0, 0, 90]) {
                cube([frameWidth, robotDepth - 2 * frameWidth, frameWidth]);
            }
        }

        translate([robotDepth-frameWidth, robotWidth-frameWidth, 0]) {
            rotate([0, 0, 90]) {
                cube([frameWidth, robotDepth - 2 * frameWidth, frameWidth]);
            }
        }
    }

    module framePillars() {

        module pillarSide() {
            pillarHeight = robotHeight - 2 * frameWidth;
            
            rotate([90, 0, 0]) {
                translate([0, 0, 0]) {
                    cube([frameWidth, pillarHeight, frameWidth]);
                }

                translate([robotDepth-frameWidth, 0, 0]) {
                    cube([frameWidth, pillarHeight, frameWidth]);
                }
            }
        }

        translate([0, 0, frameWidth]) {
            translate([0, frameWidth, 0]) {
                pillarSide();
            }

            translate([0, robotWidth, 0]) {
                pillarSide();
            }
        }
    }

    frameSquare();
    translate([0, 0, robotHeight-frameWidth]) {
        frameSquare();
    }
    framePillars();
}
