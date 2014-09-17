# kafka_mailer [![Build Status](https://travis-ci.org/ejhayes/kafka_mailer.svg?branch=master)](https://travis-ci.org/ejhayes/kafka_mailer) [![Gem Version](https://badge.fury.io/rb/kafka_mailer.svg)](http://badge.fury.io/rb/kafka_mailer) [![Code Climate](https://codeclimate.com/github/ejhayes/kafka_mailer/badges/gpa.svg)](https://codeclimate.com/github/ejhayes/kafka_mailer) [![Test Coverage](https://codeclimate.com/github/ejhayes/kafka_mailer/badges/coverage.svg)](https://codeclimate.com/github/ejhayes/kafka_mailer) [![Dependency Status](https://gemnasium.com/ejhayes/kafka_mailer.svg)](https://gemnasium.com/ejhayes/kafka_mailer) 

Use [Apache Kafka](http://kafka.apache.org/) as a delivery_method in rails.

## Rails Setup

**IMPORTANT**: This is under development right now and is not yet ready for use in a production environment.

First add the gem to your development environment and run the +bundle+ command to install it.

    gem "kafka_mailer"

Then set the delivery method in `config/environments/development.rb`

    config.action_mailer.delivery_method = :kafka

Now your emails will be sent to a kafka message queue.

## Hacking on this gem

Once you have the source, you must run the following:

    bundle
    bundle exec rake spec

## TODO

Some items that will eventually need to be done:

- provide a config block that can specify the structure of the message being sent to kafka


## Thanks to

- Ryan Bates and his [letter_opener](https://github.com/ryanb/letter_opener) which was used as the base for this gem
- [poseidon](https://github.com/bpot/poseidon) gem for interacting with Apache Kafka
- [Apache kafka](http://kafka.apache.org/)