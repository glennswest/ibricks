use <fullbrick.scad>;

module thebody()
{
    difference(){
        cube([150,80,25]);
        translate([10,10.01,1]) brick(126,60);
        translate([10,80-10,1]) brick(126,60);
    }
}

module cap_part()
{
    translate([0,-30,0]) cube([150,25,10]);
    translate([0,-30+10.01+1,10]) cube([150,10,10]);
   
}
module thecap()
{
     difference(){
       translate([0,80+10,30]) rotate([90,0,0]) cap_part();
       translate([0,0,0]) thebody();
       translate([50,80-2,0]) cube([50,40,10.2]);
     }
     //translate([0,-30,0]) cube([150,30,25]);
     //difference(){
     //   translate([10,0,1]) brick(126,60);
     //   translate([10,5,1]) brick(126,60);  
    // }
}

module full_mold()
{
translate([0,100-10,0]) rotate([180,0,0]) thecap();
translate([0,0,-60]) thebody();
}

translate([-75,0,0]) rotate([90,0,0]) full_mold();