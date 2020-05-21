
inpath="GLDAS_NOAH025_3H.2.0"
outpath="GLDAS_NOAH025_D.2.0"

Startyr=1980
Endyr=2014

nday=365

yr=${Startyr}

while [ $yr -le ${Endyr} ]
do
  mkdir -p $outpath/$yr/01

  iday=1
  while [ $iday -le 9 ]
  do
     num=1
     while [ $num -le 9 ]
     do
     ncea $inpath/$yr/00${iday}/GLDAS_NOAH025_3H.A${yr}010$num.*.nc4  $outpath/$yr/01/GLDAS_NOAH025_D.A${yr}010$num.020.nc4
     num=`expr $num + 1`
     done

  iday=`expr $iday + 1`
  done

  iday=10
  while [ $iday -le 31 ]
  do
     num=10
     while [ $num -le 31 ]
     do
     ncea $inpath/$yr/0${iday}/GLDAS_NOAH025_3H.A${yr}01$num.*.nc4  $outpath/$yr/01/GLDAS_NOAH025_D.A${yr}01$num.020.nc4
     num=`expr $num + 1`
     done

  iday=`expr $iday + 1`
  done

  yr=`expr $yr + 1`
done
