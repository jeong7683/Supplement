apply_packages <- function (pkgs) {
  tt <- sapply(pkgs, require, character.only=T)
  
  for(i in 1:length(tt)) {
    if(tt[i]==FALSE) {
      install.packages(names(tt)[i])
    }
  }
  
  sapply(pkgs, require, character.only=T)
}
