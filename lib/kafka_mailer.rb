require "fileutils"
require "digest/sha1"
require "cgi"
require "uri"

require "kafka_mailer/message"
require "kafka_mailer/delivery_method"
require "kafka_mailer/railtie" if defined? Rails
