module component_holes() {
    totalX = 100;
    totalY = 70;
    totalZ = 25;

    holeX = 5;
    holeY = 0;
    holeZ = 20;

    // Component hole variables
    distanceFromSide = 8.5;

    // A hole for attaching a component
    module component_hole() {
        translate([6, 0, -holeZ + 1])
        cylinder(r=3,h=holeZ);
    }

    // The component holes
    for (j=[1:2]) {
        for (i=[0:7]) {
            if (j == 1) {
                translate([i * (totalX / 8), distanceFromSide, totalZ])
                    component_hole();
            } else {
                translate([i * (totalX / 8), totalY - distanceFromSide - holeY, totalZ])
                    component_hole();
            }
        }
    }
}
