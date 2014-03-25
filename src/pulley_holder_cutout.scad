// The holes for inserting a pulley holder
module pulley_holder_cutout() {
    width = 50 / 3;
    boxSide = pulleyBallBearingInnerRadius + pulleyBallBearingOuterRadius - 1;

    union() {
        translate([0, 0, 0])
            cylinder(r=pulleyBallBearingOuterRadius, h=pulleyBallBearingWidth*2 + width);

        translate([-(boxSide/2), -(boxSide/2), pulleyBallBearingWidth*2 + width - 0.1])
            cube([boxSide, boxSide, 60]);
    }


    // Illustrate the closing mechanism with a highlighted box
    module pulley_holder_cube() {
        translate([-(boxSide/2), -(boxSide/2), pulleyBallBearingWidth*2 + width - 0.1])
            cube([boxSide, boxSide, 10]);
    }

    *pulley_holder_cube();
}
