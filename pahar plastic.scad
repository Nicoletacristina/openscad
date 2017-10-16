module pahar_plastic(inaltime_pahar,raza_baza_pahar,raza_sus_pahar,raza_buza,inaltime_buza,grosime_perete)
{
    difference(){
        union(){
      cylinder (h=inaltime_pahar, r1=15, r2=30);
        translate([0,0,60]) cylinder(h=inaltime_buza,r=raza_buza);
        }
 translate([0,0,grosime_perete]) cylinder (h=inaltime_pahar+ inaltime_buza,r1=raza_baza_pahar, r2=raza_sus_pahar);
    }        
}

pahar_plastic(60,15,30,32,2,1);