#!/bin/csh
#/bin/cp /Volumes/HD1/hawaii-burp/invdata/ALLTHINGSDECON/dstg40t .
#/bin/cp /Volumes/HD1/hawaii-burp/invdata/ALLTHINGSDECON/refg40t .
#/bin/cp /Volumes/HD1/hawaii-burp/invdata/ALLTHINGSDECON/q330bk .


if ( -e 'BYL.HHE.sac' & -e 'BYL.HHN.sac' & -e 'BYL.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
r BYL.HHE.sac BYL.HHN.sac BYL.HHZ.sac
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 5.563770e-09 5.544398e-09 5.631226e-09
 chnhdr file 1 cmpaz 90
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 0 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r BYL.HHN.tr BYL.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'HAT.HHE.sac' & -e 'HAT.HHN.sac' & -e 'HAT.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
r HAT.HHE.sac HAT.HHN.sac HAT.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 2.286021e-09 2.268957e-09 2.280875e-09
 chnhdr file 1 cmpaz 97
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 7 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r HAT.HHN.tr HAT.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'KKO.HHE.sac' & -e 'KKO.HHN.sac' & -e 'KKO.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
 r KKO.HHE.sac KKO.HHN.sac KKO.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 5.588876e-09 5.547157e-09 5.576295e-09
 chnhdr file 1 cmpaz 89
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 359 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r KKO.HHN.tr KKO.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'NPB.HHE.sac' & -e 'NPB.HHN.sac' & -e 'NPB.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
 r NPB.HHE.sac NPB.HHN.sac NPB.HHZ.sac 
 rmean 
 rgl method runav thresh2 25 minamp 10000
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 2.257163e-09 2.304508e-09 2.268957e-09
 chnhdr file 1 cmpaz 90
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 0 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r NPB.HHN.tr NPB.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'NPT.HHE.sac' & -e 'NPT.HHN.sac' & -e 'NPT.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
 r NPT.HHE.sac NPT.HHN.sac NPT.HHZ.sac 
 rmean 
 trans from polezero s refg40t to none freq 0.002 0.01 35. 45. 
 mul 1.98625e-09
 chnhdr file 1 cmpaz 90
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 0 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r NPT.HHN.tr NPT.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'OBL.HHE.sac' & -e 'OBL.HHN.sac' & -e 'OBL.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
r OBL.HHE.sac OBL.HHN.sac OBL.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 5.489787e-09 5.638347e-09 5.612796e-09
 chnhdr file 1 cmpaz 90
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 0 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r OBL.HHN.tr OBL.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'PAU.HHE.sac' & -e 'PAU.HHN.sac' & -e 'PAU.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
 r PAU.HHE.sac PAU.HHN.sac PAU.HHZ.sac 
 rmean 
 trans from polezero s refg40t to none freq 0.002 0.01 35. 45. 
 mul 1.98625e-09
 chnhdr file 1 cmpaz 90
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 0 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r PAU.HHN.tr PAU.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'SBL.HHE.sac' & -e 'SBL.HHN.sac' & -e 'SBL.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
r SBL.HHE.sac SBL.HHN.sac SBL.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 5.573506e-09 5.573506e-09 5.573506e-09
 chnhdr file 1 cmpaz 90
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 0 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r SBL.HHN.tr SBL.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'SDH.HHE.sac' & -e 'SDH.HHN.sac' & -e 'SDH.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
r SDH.HHE.sac SDH.HHN.sac SDH.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 5.661256e-09 5.594486e-09 5.601514e-09
 chnhdr file 1 cmpaz 91
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 1 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r SDH.HHN.tr SDH.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'SRM.HHE.sac' & -e 'SRM.HHN.sac' & -e 'SRM.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
r SRM.HHE.sac SRM.HHN.sac SRM.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 2.286021e-09 2.268957e-09 2.280875e-09
 chnhdr file 1 cmpaz 88
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 358 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r SRM.HHN.tr SRM.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'UWB.HHE.sac' & -e 'UWB.HHN.sac' & -e 'UWB.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
 r UWB.HHE.sac UWB.HHN.sac UWB.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 2.265575e-09 2.296383e-09 2.280304e-09
 chnhdr file 1 cmpaz  87
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz  357 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r UWB.HHN.tr UWB.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'UWE.HHE.PT.--' & -e 'UWE.HHN.PT.--' & -e 'UWE.HHZ.PT.--' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
 r UWE.HHE.PT.-- UWE.HHN.PT.-- UWE.HHZ.PT.-- 
 rmean 
 trans from polezero s q330bk to none freq 0.002 0.01 35. 45. 
 mul 1.5895e-09
 chnhdr file 1 cmpaz  90
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz   0 
 chnhdr file 2 cmpinc 90
 w change PT.-- tr
 r UWE.HHN.tr UWE.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif

if ( -e 'WRM.HHE.sac' & -e 'WRM.HHN.sac' & -e 'WRM.HHZ.sac' ) then 
/usr/local/sac/bin/sac << SACDONE >! /dev/null 
r WRM.HHE.sac WRM.HHN.sac WRM.HHZ.sac 
 rgl method runav thresh2 25 minamp 10000
 rmean 
 trans from polezero s dstg40t to none freq 0.002 0.01 35. 45. 
 mul 2.265687e-09 2.290040e-09 2.277229e-09
 chnhdr file 1 cmpaz 87
 chnhdr file 1 cmpinc 90
 chnhdr file 2 cmpaz 357 
 chnhdr file 2 cmpinc 90
 w change sac tr
 r WRM.HHN.tr WRM.HHE.tr
 rotate to 0
 w over
 q
SACDONE
endif


