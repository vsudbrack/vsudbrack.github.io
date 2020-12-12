library(NLMR)
library(landscapetools)
library(landscapemetrics)
library(raster)
library(rgdal)


FCS    <- c( 0.7,  0.6,  0.5,  0.4,  0.3, 0.25,  0.2,  0.1, 0.05)
LABELS <- c("70", "60", "50", "40", "30", "25", "20", "10", "05")

for(i in c(1:2000)){
 	rn <- runif(n=1,min=0,max=1)
	nlm <- NLMR::nlm_mpd(ncol = 512, nrow = 512, roughness = rn )
	
	writeRaster(nlm, filename=paste0("./mpd/lands/",i,".asc"))
	
	lscp <- util_binarize(nlm, FCS)

	jpeg(paste0("./mpd/",i,".jpg"), width=480, height=450)
	plot(lscp, col = c("#FFCC99", "#006600"), axes=FALSE, legend=FALSE)
	dev.off()
	

	for (j in c(1:9) ){
	  x = lscp[[j]]-1
	  
  	check_landscape(x)

  	### Calculate specific metrics ###
  	cohesion   <- lsm_l_cohesion(x)
  	enn        <- lsm_l_enn_mn(x)
  	np         <- lsm_l_np(x)
  	area       <- lsm_l_area_mn(x)
  	cai        <- lsm_l_cai_mn(x)
  	ed         <- lsm_l_ed(x)
  	gyrate     <- lsm_l_gyrate_mn(x)
  	lpi        <- lsm_l_lpi(x)
  	circle     <- lsm_l_circle_mn(x)
  	para       <- lsm_l_para_mn(x)
  	pafrac     <- lsm_l_pafrac(x)
  	mutinf     <- lsm_l_mutinf(x)
  	
  	cat(sprintf("%d\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e\t%e", i, rn, cohesion$value, enn$value, np$value, area$value, cai$value, ed$value, gyrate$value, lpi$value, circle$value, para$value, pafrac$value, mutinf$value), file=paste0("./mpd/",LABELS[[j]],"_metrics.dat"), sep="\n", append=TRUE)
    }
	
	}

#show_landscape(lscp[[1]])


