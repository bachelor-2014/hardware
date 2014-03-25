module y_axis_holder_with_motor() {
    difference() {
        difference(){
            union(){
                y_axis_base();
                translate([-36,20,0])cube([40,40,40]);
            }
            translate([-15,40,24])mirror([0,0,1])nema14();
        }
    translate([-66,19,31])rotate([0,45,0])cube([41,42,57]);
    }

	*translate([-15,40,24])mirror([0,0,1])nema14();
}
