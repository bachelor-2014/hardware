module x_linear_rail() {
    translate([0, robotWidth, 0]) rotate([90, 0, 0])
        cylinder(r=linearRailRadius, h=robotWidth);
}
