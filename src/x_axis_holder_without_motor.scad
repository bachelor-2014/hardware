module x_axis_holder_without_motor() {
    baseHeight = 10;

    // The belt holder
    module belt_holder() {
        totalWidth = 50;
        totalDepth = 31;
        totalHeight = 25;

        innerWidth = totalWidth / 3;
        innerDepth = totalDepth * 2;
        innerHeight = totalHeight;

        screwX = innerWidth - pulleyBallBearingWidth + 0.5;
        screwY = totalDepth / 2;
        screwZ = totalHeight * 0.7;

        difference() {
            cube([totalWidth, totalDepth, totalHeight]);

            translate([innerWidth, -0.5, totalHeight-20]) cube([innerWidth, innerDepth, innerHeight]);
            translate([screwX, screwY, screwZ]) rotate([0, 90, 0]) pulley_holder_cutout();
        }

    }

    x_axis_holder_base();
    translate([35, 31, baseHeight]) belt_holder();
}
