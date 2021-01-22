# frozen_string_literal: true

RSpec.describe Deimos::TestHelpers do
  after(:each) do
    kafkateria_delete_topic('my_topic')
  end

  describe "Producing and consuming with kafkateria" do
    it "A kafka message is produced by kafkateria can be consumed back by kafkateria" do
      generated_messages = kafkateria_produce_messages(topic: 'my_topic', num_messages: 1)
      consumed_messages = kafkateria_get_messages(topic: 'my_topic', num_messages: 1)
      Retriable.retriable(timeout: 10) do
        expect(generated_messages.first["payload"]).to include(consumed_messages.first["payload"])
      end
    end
  end
end
