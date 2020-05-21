
inpath="GLDAS_NOAH025_3H.2.0"
outpath="GLDAS_NOAH025_D.2.0"

Startyr=1980
Endyr=2014

nday=366

yr=${Startyr}

while [ $yr -le ${Endyr} ]
do
  mkdir -p $outpath/$yr/04

  iday=90
  while [ $iday -le 121 ]
  do
     num=1
     while [ $num -le 9 ]
     do
     ncea -O $inpath/$yr/0${iday}/GLDAS_NOAH025_3H.A${yr}040$num.*.nc4  $outpath/$yr/04/GLDAS_NOAH025_D.A${yr}040$num.020.nc4
     num=`expr $num + 1`
     done

     num=10
     while [ $num -le 31 ]
     do
     ncea -O $inpath/$yr/0${iday}/GLDAS_NOAH025_3H.A${yr}04$num.*.nc4  $outpath/$yr/04/GLDAS_NOAH025_D.A${yr}04$num.020.nc4
     ncea -O $inpath/$yr/${iday}/GLDAS_NOAH025_3H.A${yr}04$num.*.nc4  $outpath/$yr/04/GLDAS_NOAH025_D.A${yr}04$num.020.nc4
     num=`expr $num + 1`
     done

  iday=`expr $iday + 1`
  done

  yr=`expr $yr + 1`
done
