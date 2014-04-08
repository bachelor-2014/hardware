include <variables.scad>
include <nema14.scad>
include <ball_bearing_fitting.scad>
include <pulley_holder_cutout.scad>
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

*rotate([0, 0, 0]) x_axis_holder_with_motor();
*rotate([0, 0, 0]) x_axis_holder_without_motor();
*rotate([0, 180, 0]) y_axis_holder_with_motor();
rotate([0, 180, 0]) y_axis_holder_without_motor();
*rotate([0, 180, 0]) y_axis_base();
*rotate([0, 180, 0]) y_axis_holder_without_motor();
*rotate([180, 0, 0]) carriage();
*rotate([0, 180, 0]) camera_component();

