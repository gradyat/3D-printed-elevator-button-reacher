stick_length = 100;
stick_width = 8;
stick_height = 4;

handle_radius = 12;
button_pusher_radius = 6;


union() {

// cone for the button-pusher
translate([0,stick_length,0])
rotate(a=90, v=[1,0,0])
// subtract a cube from a cylender(cone) to get a flat side
difference() {
    cylinder(h=button_pusher_radius*2, r1=button_pusher_radius, r2=0);
   
    // the subtracted cube to get the flat side is 100x100x100; this should work fine as long as the cone is smaller than this.
    translate([-50,-100,-10])
    cube([100,100,100]);
}


// first cone for the handle
rotate(a=90, v=[1,0,0])
rotate(a=180, v=[0,1,0])
// subtract a cube from a cylender(cone) to get a flat side
difference() {
    cylinder(h=handle_radius*0.3, r1=handle_radius, r2=0);
    translate([-50,-100,-10])
    cube([100,100,100]);
}

// second cone for the handle
rotate(a=90, v=[1,0,0])
rotate(a=180, v=[0,1,0])
// subtract a cube from a cylender(cone) to get a flat side
difference() {
    cylinder(h=handle_radius*0.6, r1=handle_radius*0.7, r2=0);
    translate([-50,-100,-10])
    cube([100,100,100]);
}


// triangle stick
rotate(a=90,v=[-1,0,0])
rotate(180)
linear_extrude(height=stick_length)
polygon(points=[[stick_width/2,0],[0,stick_height],[-stick_width/2,0]]);

}