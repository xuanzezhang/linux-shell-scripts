
inpath="GLDAS_NOAH025_3H.2.0"
outpath="GLDAS_NOAH025_D.2.0"

Startyr=1981
Endyr=2014

nday=366

yr=${Startyr}

while [ $yr -le ${Endyr} ]
do
  mkdir -p $outpath/$yr/03

  iday=60
  while [ $iday -le 91 ]
  do
     num=1
     while [ $num -le 9 ]
     do
     ncea $inpath/$yr/0${iday}/GLDAS_NOAH025_3H.A${yr}030$num.*.nc4  $outpath/$yr/03/GLDAS_NOAH025_D.A${yr}030$num.020.nc4
     num=`expr $num + 1`
     done

     num=10
     while [ $num -le 31 ]
     do
     ncea $inpath/$yr/0${iday}/GLDAS_NOAH025_3H.A${yr}03$num.*.nc4  $outpath/$yr/03/GLDAS_NOAH025_D.A${yr}03$num.020.nc4
     num=`expr $num + 1`
     done

  iday=`expr $iday + 1`
  done

  yr=`expr $yr + 1`
done
