# kafka_mailer

Use [Apache Kafka](http://kafka.apache.org/) as a delivery_method in rails.

## Rails Setup

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