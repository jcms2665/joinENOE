#' It allows to work with datasets from the National Occupation and Employment Survey.
#' @title Working with datasets from ENOE
#' @name jcENOE
#' @param coe1 A dataset 
#' @param coe1 A dataset
#' @export
jcENOE<-function (coe1,coe2,u){
  metlist<- c("CD_A","ENT","CON","V_SEL","N_HOG","N_REN")  
  w=4
  C<-TRUE
  for(r in 1:dim(as.array(u))){
    if(!all(c(C,any(names(coe2) == u[r])))){stop("[!] No esta la variable en la base origen")}
    if(all(c(C,any(names(coe1) == u[r])))){stop("[!] Repetida en la base destino")}
  }
  while(w<=6){
    C<-T
    for(coe in paste("coe",1:2,sep="")) {
      for(j in 1:w){
        C<-c(C,any(names(get(coe)) == metlist[j]))
      }
    }    
    if(!all(C)){break}
    w=w+1
  }
  assign("R",data.frame(merge(coe1,subset(coe2, select=c(metlist[1:w-1],u)),by=metlist[1:w-1],all.x=TRUE)),envir = .GlobalEnv)
  message("[!]Se uso la llave: ",paste(metlist[1:w-1], collapse = " + "))  
}



#To check 

#To check 

#To check 
