clc
vt = 40 // cutting speed for turning in m/min
vs = 8 // cutting speed for cutting and knurling in m/min
ft = 0.4 // feed for turning in mm/rev.
ff = 0.2 // feed for forming in mm/rev
d1 = 25 // diameter in mm
l1 = 50 // mm
N1 = 1000*vt/(%pi*d1) // spindle speed in rev./min.
time1 = l1/(ft*N1) // min.
tt = 2*time1 // total time in min.
d2 = 15 // mm
N2 = 1000*vt/(%pi*d2)// rev/min.
l2 = 30 // mm
time2 = l2/(ft*N2) // min.
eft = 0.15 // end forming time in min.
d3 = 10 // mm
N3 = 1000*vs/(%pi*d3) // rev./min.
l3 = 15 // mm
f = 1.5 // feed in min.
time3 = l3/(f*N3) // min.
N4 = 1000*vs/(%pi*d1) // rev./min.
l4 = 10 // mm
time4 = l4/(ft*N4) // min.
time5 = 0.15 // time for chamfering in min.
Dave = d1/2 // mm
N5 = 1000*vt/(%pi*Dave) // r.p.m.
time6 = Dave/(N5*ff) // min,
tmt = tt+time2+time3+time4+time5+time6+eft // total machining time in min.
t = 0.05 // min.
ht = time5+6*time6+4*t+3*t // handling time in min.
tot = ht+tmt // total handling time in min.
ct = 15*tot/100 // contingency in min.
tct = tot+ct // total cycle time in min.
st = 60 // set up time for turret lathe
p = 100 // total pieces
stp = st/p // set up time per piece in min.
tpt = tct+stp // Total production timr per piece in min.
printf("\n Total production timr per piece = %0.2f min" , tpt)
//Answers vary due to round off error
