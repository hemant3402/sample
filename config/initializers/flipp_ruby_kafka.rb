# frozen_string_literal: true

require 'flipp_ruby_kafka'

FlippRubyKafka.configure do
  producers.schema_namespace 'com.flipp.my_app'
  kafkateria_url ENV['KAFKATERIA_URL']

  kafka.logger.level = Logger::INFO
#    consumer do
#      class_name 'Kafka::TestConsumer'
#      topic 'my_topic'
#      schema 'MySchema'
#      key_config field: :id
#      group_id 'test_consumer_group'
#      delivery :message
#    end

#  producer do
    # class_name 'Kafka::TestProducer'
    # topic 'my_topic'
    # schema 'MySchema'
    # key_config field: :id
#  end
end

FlippRubyKafka.configure_datadog unless %w(test development).include?(Rails.env)
