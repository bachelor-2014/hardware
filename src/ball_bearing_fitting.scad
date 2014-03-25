module ball_bearing_fitting(l=150){
    cylinder(r=ballBearingRadius,h=25.6);
    cylinder(r=linearRailRadius+0.3,h=l,center=true,$fn=60);
}
