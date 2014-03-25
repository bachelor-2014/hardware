module x_axis_holder_with_motor() {
    baseHeight = 10;

    // The motor and belt holder
    module motor_belt_holder() {
        motorHeight = 25;
        motorZ = baseHeight + 18;
        diffZ = motorZ + 10;

        difference() {
            // The main box
            cube([43, 38.8, 48]);

            // The motor
            translate([19, 19, motorZ]) rotate([0, 90, 0])
                nema14();

            // The tilted box
            translate([-30, -1, diffZ])rotate([0,45,0])cube([41,42,57]);

            // The side
            *translate([-12, 10, motorHeight-18])
                cube([50, 50, 50]);
        }

        // Highlight the motor
        *translate([19, 19, motorZ]) rotate([0, 90, 0])
            nema14();
    }
    
    mirror([0, 1, 0]) {
        x_axis_holder_base();
        translate([10, 30, 0]) motor_belt_holder();
    }
}
