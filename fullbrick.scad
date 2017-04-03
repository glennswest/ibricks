

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



module basebrick(bh,bl)
{
    cube([bl,bh,10]);
    translate([10,10,10]) cube([bl,bh,10]);
}

module brick(bl,bh)
{   
    difference(){
        basebrick(bh,bl);
        translate([bl*.30,-10,5]) ckey(160);
        translate([bl*.70,-10,5]) ckey(160);
        }
    
}

brick(125,60);