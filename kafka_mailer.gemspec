Gem::Specification.new do |s|
  s.name        = "kafka_mailer"
  s.version     = "0.0.1"
  s.author      = "Eric Hayes"
  s.email       = "eric@deployfx.com"
  s.homepage    = "http://github.com/ejhayes/kafka_mailer"
  s.summary     = "Send email to apache kafka message queue."
  s.description = "When mail is sent from your application, kafka_mailer will put the message contents in a kafka queue."

  s.files        = Dir["{lib,spec}/**/*", "[A-Z]*"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.add_runtime_dependency 'poseidon', '~> 0.0.4'
  s.add_development_dependency "rake"
  s.add_development_dependency 'simplecov', '~> 0.7.1'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'mail', '~> 2.5.0'

end
