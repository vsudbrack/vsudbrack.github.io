library(NLMR)
library(landscapetools)
library(landscapemetrics)
library(raster)
library(rgdal)

FCS    <- c( 0.7,  0.6,  0.5,  0.4,  0.3, 0.25,  0.2,  0.1, 0.05)
LABELS <- c("70", "60", "50", "40", "30", "25", "20", "10", "05")
METHOD <- c("mpd")

for(mm in METHOD){
  
  for(i in c(1:2000)){
    
    nlm <- raster(paste0("/home/vsud/Fragmentation/Neutral Landscapes/",mm,"/lands_",mm,"/lands/",i,".asc"))
    lscp <- util_binarize(nlm, FCS)
    
    for (j in c(1:9) ){
      x = lscp[[j]]-1
      
      check_landscape(x)
      
      ### Calculate specific metrics ###
      cohesion   <- lsm_c_cohesion(x)
      enn        <- lsm_c_enn_mn(x)
      np         <- lsm_c_np(x)
      area       <- lsm_c_area_mn(x)
      cai        <- lsm_c_cai_mn(x)
      ed         <- lsm_c_ed(x)
      gyrate     <- lsm_c_gyrate_mn(x)
      lpi        <- lsm_c_lpi(x)
      clumpy     <- lsm_c_clumpy(x)
      circle     <- lsm_c_circle_mn(x)
      para       <- lsm_c_para_mn(x)
      div        <- lsm_c_division(x)
      pd         <- lsm_c_pd(x)
      
      cat(sprintf("%d\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e", i,cohesion$value[1], enn$value[1], np$value[1], area$value[1], cai$value[1], ed$value[1], gyrate$value[1], lpi$value[1], circle$value[1], para$value[1], div$value[1], pd$value[1], clumpy$value[1]), file=paste0("/home/vsud/Fragmentation/Neutral Landscapes/",mm,"/",LABELS[[j]],"_patchmetrics.dat"), sep="\n", append=TRUE)
    }
    
  }

}
#show_landscape(lscp[[1]])


