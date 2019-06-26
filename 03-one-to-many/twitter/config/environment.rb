# this file just adds requirements for different gems and our own classes that
# we'll use in a program

# if we write all these dependencies here, then we can require THIS (and only
# this) one file elsewhere and it's easier to maintain all our dependencies
require 'pry'

require_relative '../lib/tweet'
require_relative '../lib/user'