//lubricants//
//example 3.7.12//
clc
wt_oil=4.45//weight f oil saponified(gms)//
volume=2.5//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.01//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.3f mgs KOH",A);
if A<=0.1 then printf("\nOil can be used for lubrication");
else printf("\nOil cannot be used for lubrication");
    end