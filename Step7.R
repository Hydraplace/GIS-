library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.2830373,lat=34.0216697,label="Leavey", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2838143,lat=34.020195,label="Doheny",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2855577,lat=34.0192106,label="Accounting",      radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2867697,lat=34.0188799,label="Hoose", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2888532,lat=34.0196468,label="ScienceEng",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2878845,lat=34.0191264,label="HelenTopping",      radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2838323,lat=34.0225646,label="Founders", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="white")
m <- addCircleMarkers(m, lng=-118.2832249,lat=34.0222982,label="Generations",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="white")
m <- addCircleMarkers(m, lng=-118.284551,lat=34.0205849,label="PrentissMemorial",      radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="white")
m <- addCircleMarkers(m, lng=-118.285167,lat=34.0203086,label="PatsyForrest", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="white")
m <- addCircleMarkers(m, lng=-118.2864936,lat=34.0234537,label="DouglasFairbanksSr",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="white")
m <- addCircleMarkers(m, lng=-118.2877165,lat=34.0186318,label="NearUSCFisher",      radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="white")
m <- addCircleMarkers(m, lng=-118.2826997,lat=34.030622,label="Me", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="yellow")
m
