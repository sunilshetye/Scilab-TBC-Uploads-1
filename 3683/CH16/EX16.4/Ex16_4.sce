Df=100//in mm
bf=1250//in mm
bw=250//in mm
d=650//in mm
Ast=2800//in sq mm
fy=415//in MPa
fck=20//in MPa
Asf=round(0.36*fck*bf*Df/0.87/fy)//area of steel required for flange, in sq mm
//as Ast>Asf, Xu>Df
Xu=round((0.87*fy*Ast-0.446*fck*(bf-bw)*Df)/0.36/fck/bw)//in mm
//but Xu<Df; this indicates that stress in the flange is not uniform, hence replace Df by yf
Xu=(0.87*fy*Ast-0.446*fck*(bf-bw)*0.65*Df)/(0.36*fck*bw+0.446*fck*(bf-bw)*0.15)//in mm
Xc=0.479*d//Xc>Xu; hence OK
a=0.43*Xu//as Df>0.43 Xu, stress in flange is not uniform
yf=0.15*Xu+0.65*Df//in mm
Mu=(0.36*fck*bw*Xu*(d-0.416*Xu)+0.446*fck*(bf-bw)*yf*(d-yf/2))/10^6//in kN-m
mprintf("Moment of resistance of T-beam=%f kN-m",Mu)
//answer in textbook is incorrect
