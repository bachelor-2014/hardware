include <variables.scad>
include <nema14.scad>
include <ball_bearing_fitting.scad>
include <pulley_holder_cutout.scad>
include <component_holes.scad>
include <frame.scad>
include <y_axis_base.scad>
include <y_axis_holder_without_motor.scad>
include <y_axis_holder_with_motor.scad>
include <y_linear_rail.scad>
include <y_belt.scad>
include <x_axis_holder_base.scad>
include <x_axis_holder_without_motor.scad>
include <x_axis_holder_with_motor.scad>
include <x_linear_rail.scad>
include <x_belt.scad>
include <carriage.scad>
include <camera_component.scad>

%frame();

// X axes
//// Holders with motor
translate([frameWidth, frameWidth, robotHeight])
    x_axis_holder_with_motor();
translate([frameWidth, frameWidth, frameWidth])
    x_axis_holder_with_motor();
translate([robotDepth - (frameWidth + 100), frameWidth, robotHeight])
    x_axis_holder_with_motor();
translate([robotDepth - (frameWidth + 100), frameWidth, frameWidth])
    x_axis_holder_with_motor();

//// Holders without motor
translate([robotDepth - (frameWidth +  100), robotWidth - frameWidth, robotHeight])
    x_axis_holder_without_motor();
translate([frameWidth, robotWidth - frameWidth, robotHeight])
    x_axis_holder_without_motor();
translate([robotDepth - (frameWidth + 100), robotWidth - frameWidth, frameWidth])
    x_axis_holder_without_motor();
translate([frameWidth, robotWidth - frameWidth, frameWidth])
    x_axis_holder_without_motor();

//// Linear rails
translate([frameWidth + 22 + linearRailRadius*2, 0, robotHeight + linearRailHolderHeight + 10])
    #x_linear_rail();
translate([frameWidth + 22 + linearRailRadius*2, 0, frameWidth + linearRailHolderHeight + 10])
    #x_linear_rail();
translate([robotDepth - (frameWidth + 100) + (22 + linearRailRadius*2), 0, robotHeight + linearRailHolderHeight + 10])
    #x_linear_rail();
translate([robotDepth - (frameWidth + 100) + (22 + linearRailRadius*2), 0, frameWidth + linearRailHolderHeight + 10])
    #x_linear_rail();

//// Belts
translate([frameWidth + 52.5, 0, robotHeight + 20])
    %x_belt();
translate([frameWidth + 52.5, 0, frameWidth + 20])
    %x_belt();
translate([robotDepth - (frameWidth + 100) + 52.5, 0, robotHeight + 20])
    %x_belt();
translate([robotDepth - (frameWidth + 100) + 52.5, 0, frameWidth + 20])
    %x_belt();

// Y axes
//// Holders with motor
translate([frameWidth + 10, robotWidth/2, robotHeight + linearRailHolderHeight])
	y_axis_holder_with_motor();

translate([frameWidth + 10, robotWidth/2, frameWidth + linearRailHolderHeight])
	y_axis_holder_with_motor();

//// Holders without motor
translate([robotDepth - (frameWidth + 50), robotWidth/2, robotHeight + linearRailHolderHeight])
	y_axis_holder_without_motor();

translate([robotDepth - (frameWidth + 50), robotWidth/2, frameWidth + linearRailHolderHeight])
	y_axis_holder_without_motor();

//// Linear rails
translate([frameWidth + 28.3 + linearRailRadius*2, -robotWidth/2 + 28, robotHeight + linearRailHolderHeight + 29])
    #y_linear_rail();
translate([frameWidth + 28.3 + linearRailRadius*2, -robotWidth/2 + 52, robotHeight + linearRailHolderHeight + 29])
    #y_linear_rail();
translate([frameWidth + 28.3 + linearRailRadius*2, -robotWidth/2 + 28, frameWidth + linearRailHolderHeight + 29])
    #y_linear_rail();
translate([frameWidth + 28.3 + linearRailRadius*2, -robotWidth/2 + 52, frameWidth + linearRailHolderHeight + 29])
    #y_linear_rail();

//// Belts
translate([frameWidth, robotWidth/2 + 33, robotHeight + 10])
    %y_belt();
translate([frameWidth, robotWidth/2 + 33, frameWidth + 10])
    %y_belt();

// Carriages
translate([robotDepth/2, robotWidth/2 + 5, robotHeight + 42])
    carriage();
translate([robotDepth/2, robotWidth/2 + 5, frameWidth + 42])
    carriage();

// Components
//// Camera
translate([robotDepth/2 + 27, robotWidth/2 - 1, frameWidth + 38])
    camera_component();
