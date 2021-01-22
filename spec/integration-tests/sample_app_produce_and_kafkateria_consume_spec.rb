# frozen_string_literal: true

RSpec.describe Kafka::TestProducer do
  after(:each) do
    kafkateria_delete_topic('my_topic')
  end

  describe "Producing with app and consuming with kafkateria" do
    describe "WHEN: A kafka message is produced by the app" do
      payload = {
          'id' => rand(1..1000),
          'some_val' => 'hello-world'
      }
      described_class.publish(payload)
      it "THEN: Gets published and can be consumed with kafkateria" do
        messages = kafkateria_get_messages(topic: 'my_topic', num_messages: 1)
        Retriable.retriable(timeout: 10) do
          expect(messages.first["payload"]).to eql(payload)
        end
      end
    end
  end
end
