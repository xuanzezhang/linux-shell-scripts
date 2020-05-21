
inpath="GLDAS_NOAH025_3H.2.0"
outpath="GLDAS_NOAH025_D.2.0"

Startyr=1985
Endyr=2014

nday=366

yr=${Startyr}

while [ $yr -le ${Endyr} ]
do
  mkdir -p $outpath/$yr/02

  iday=32
  while [ $iday -le 40 ]
  do
     num=1
     while [ $num -le 9 ]
     do
     ncea -O $inpath/$yr/0${iday}/GLDAS_NOAH025_3H.A${yr}020$num.*.nc4  $outpath/$yr/02/GLDAS_NOAH025_D.A${yr}020$num.020.nc4
     num=`expr $num + 1`
     done

  iday=`expr $iday + 1`
  done

  iday=41
  while [ $iday -le 60 ]
  do
     num=10
     while [ $num -le 29 ]
     do
     ncea -O $inpath/$yr/0${iday}/GLDAS_NOAH025_3H.A${yr}02$num.*.nc4  $outpath/$yr/02/GLDAS_NOAH025_D.A${yr}02$num.020.nc4
     num=`expr $num + 1`
     done

  iday=`expr $iday + 1`
  done

  yr=`expr $yr + 1`
done
