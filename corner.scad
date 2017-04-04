use <fullbrick.scad>;

module ckey(theh)
{
        halfcylinder(theh);
        translate([5,0,0]) rotate([-90,90,0]) cube([10,10,theh]);
}

module halfcylinder(theh)
{
      difference(){
        rotate([-90,90,0]) cylinder(h=theh,r=10);
        rotate([-90,90,0]) translate([0,-10,-1]) cube([20,20,theh+2]);
      }
}



module basecorner(bh,bl)
{
    cube([bl*.25,bh,10]);
    translate([10,10,10]) cube([bl*.25,bh,10]);
    rotate([0,90,0]) translate([0,0,0]) cube([bl*.75,bh,10]);
    rotate([0,90,0]) translate([10,10,10]) cube([bl*.75,bh,10]);
}

module corner(bl,bh)
{   
    difference(){
        basecorner(bh,bl);
        translate([bl*.25,-10,5]) ckey(160);
        rotate([0,90,0]) %translate([bl*.75,-10,5]) ckey(160);
        }
    
}

corner(125,60);
%translate([125*.25,0,0]) rotate([0,0,0]) brick(125,60);