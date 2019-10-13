
union() {

translate([0,100,0])
rotate(a=90, v=[1,0,0])
difference() {
    cylinder(h=10, r1=7, r2=2);
    translate([-50,-100,-10])
    cube([100,100,100]);
}

rotate(a=90,v=[-1,0,0])
rotate(180)
linear_extrude(height=100)
polygon(points=[[4,0],[0,4],[-4,0]]);

}