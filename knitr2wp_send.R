# This is my script for pushing up my initial blog post, which was on installing
# R and RStudio on ubuntu, to my wordpress blog.
#
# I pretty much obtained this script from the blog post at
#   http://yihui.name/knitr/demo/wordpress/
# although I had to modify the wordpress_login a bit since my username isn't
# a valid R keyword argument
library(RWordPress)
library(knitr)
wordpress_login = c('this_is_where_my_admin_wordpress_login_goes')
names(wordpress_login) = c('steven.troxler@gmail.com')
options(WordpressLogin = wordpress_login,
        WordpressURL = 'http://www.steventroxler.com/blog/xmlrpc.php')
knit2wp('~/blog0/islr/ch1.Rmd',
        title = 'An Introduction to Statistical Learning in R, Chapter 1: Visualizing Datasets')
