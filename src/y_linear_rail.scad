module y_linear_rail() {
    translate([0, robotWidth, 0]) rotate([0, 90, 0])
        cylinder(r=linearRailRadius, h=(robotDepth - (2*frameWidth + 115)));
}
