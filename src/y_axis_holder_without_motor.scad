module y_axis_holder_without_motor() {
    innerHeight = 50 / 3;

    screwX = -33;
    screwY = 40.5;
    screwZ = pulleyBallBearingWidth;

    offset = 26;

    difference() {
        union() {
            mirror([1, 0, 0]) y_axis_base();
            
            difference() {
                union() {
                    translate([-38+offset, 16, -30]) cube([12, 49, 30]);

                    translate([-39+offset, 34, -innerHeight - 8]) cube([3, 13, 8]);
                    translate([-30+offset, 34, -innerHeight - 8]) cube([3, 13, 8]);
                }

                translate([-39+offset, 28, -innerHeight]) cube([14, 25, innerHeight]);
            }

            translate([-39+offset, 34, 0]) cube([3, 13, 8]);
        }

        translate([screwX+offset, screwY, screwZ]) rotate([0, 180, 0]) pulley_holder_cutout();
    }
}
