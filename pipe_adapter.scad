tol = 0.2;
$fn=30;


pipeD = 21.8;

wallT = 2;
screwD = 5;
nutW = 7.95;
nutL = 9;
nutH= 3.9;//5.75;
holderH = nutH+wallT;

difference(){
union(){
cylinder(d=pipeD+wallT*2+2*tol,h=holderH+5);
translate([0,0,-holderH+tol])
cylinder(d=nutL/2+screwD+wallT*2+2*tol,h=holderH);
}//end union


translate([0,0,wallT]){
cylinder(d=pipeD+tol,h=holderH+5);
}//end translate
translate([0,0,-holderH+tol-2])
cylinder(d=screwD+tol,h=holderH+10);


translate([-nutW/2,-nutL/2,-nutH-tol-0.01]){

cube([nutW,nutL+10,nutH+tol]);
}
translate([0,0,-nutH-10]){
    rotate([0,0,30]){
cylinder($fn=6,d=nutW,h=nutH+10);
    }//end rotate
}//end translate
}//end difference