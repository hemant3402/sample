# frozen_string_literal: true

module Kafka
  # Sample producer.
  class TestProducer < Deimos::Producer

    # :nodoc:
    def self.send_event(object)
      publish(object.attributes)
    end
  end

end
