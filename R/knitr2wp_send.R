# This approach to posting I borrowed from
#   http://yihui.name/knitr/demo/wordpress/.
post_to_blog <- function (login, path_to_file, title) {
  if(!require(RWordPress)) {
    install.packages("RWordPress", repos = "http://www.omegahat.org/R", type='source')
    require(RWordPress)
  }
  library(knitr)
  wordpress_login = c(login)
  names(wordpress_login) = c('steven.troxler@gmail.com')
  options(WordpressLogin = wordpress_login,
          WordpressURL = 'http://www.steventroxler.com/blog/xmlrpc.php')
  knit2wp(path_to_file,
          title = title)
}