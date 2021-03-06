module carriage() {
    totalX = 100;
    totalY = 70;
    totalZ = 25;

    holeX = 5;
    holeY = 0;
    holeZ = 20;

    // Ball bearing variables
    ballBearing1Y = (totalY - yAxisLinearRailDistance) / 2;
    ballBearing2Y = ballBearing1Y + yAxisLinearRailDistance;

    ballBearingRow1X = 8;
    ballBearingRow2X = totalX - ballBearingRow1X - 25;

    difference() {
        cube([totalX, totalY, totalZ]);

		// The ball bearings
		for(i=[1:24]) {
				translate([ballBearingRow1X,ballBearing1Y,i/2])rotate([0,90,0])ball_bearing_fitting();
				translate([ballBearingRow1X,ballBearing2Y,i/2])rotate([0,90,0])ball_bearing_fitting();

				translate([ballBearingRow2X,ballBearing1Y,i/2])rotate([0,90,0])ball_bearing_fitting();
				translate([ballBearingRow2X,ballBearing2Y,i/2])rotate([0,90,0])ball_bearing_fitting();
		}

        // The component holes
        component_holes();
    }
}
