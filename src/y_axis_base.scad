module y_axis_base() {
	totalWidth = 80;
    railHoleZ = 29;
	railHole1Y = (totalWidth - yAxisLinearRailDistance) / 2;
	railHole2Y = railHole1Y + yAxisLinearRailDistance;

    rb=12;
	difference(){
		// The base box
		translate([3,0])cube([35,totalWidth,40]);

		// The ball bearings
		for(i=[1:2*rb]) {
				translate([20,33,i/2])rotate([90,90,0])ball_bearing_fitting();
				translate([20,72,i/2])rotate([90,90,0])ball_bearing_fitting();
		}

		// The ball bearing screw holes
		translate([-9,30,rb-8.5])rotate([0,90,0])cylinder(r=1.8,h=50);
		translate([-9,11,rb-8.5])rotate([0,90,0])cylinder(r=1.8,h=50);

		translate([-9,69,rb-8.5])rotate([0,90,0])cylinder(r=1.8,h=50);
		translate([-9,50,rb-8.5])rotate([0,90,0])cylinder(r=1.8,h=50);

		// The linear rail screw holes
		translate([33,30,railHoleZ])rotate([90,90,0])cylinder(r=ballBearingScrewRadius,h=50);
		translate([33,105,railHoleZ])rotate([90,90,0])cylinder(r=ballBearingScrewRadius,h=50);

		translate([8,30,railHoleZ])rotate([90,90,0])cylinder(r=ballBearingScrewRadius,h=50);
		translate([8,105,railHoleZ])rotate([90,90,0])cylinder(r=ballBearingScrewRadius,h=50);

		// The linear rail holes
		translate([-100,railHole1Y,railHoleZ])rotate([0,90,0])cylinder(r=linearRailRadius,fn=30,h=250);
		translate([-100,railHole2Y,railHoleZ])rotate([0,90,0])cylinder(r=linearRailRadius,fn=30,h=250);
	}
}
