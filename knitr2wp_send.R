
# You can't get RWordPress from the default repo. Here's the code to get it
#   from omegahat.
# install.packages("RWordPress", repos = "http://www.omegahat.org/R")

# This approach to posting I borrowed from
#   http://yihui.name/knitr/demo/wordpress/.
# Unfortunately, I bumped R versions to 3.2 and RWordPress isn't supported yet.
post_to_blog <- function (login, path_to_file, title) {
  library(RWordPress)
  library(knitr)
  wordpress_login = c(login)
  names(wordpress_login) = c('steven.troxler@gmail.com')
  options(WordpressLogin = wordpress_login,
          WordpressURL = 'http://www.steventroxler.com/blog/xmlrpc.php')
  knit2wp(path_to_file,
          title = title)
}