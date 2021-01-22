# frozen_string_literal: true

FactoryBot.define do
  factory :my_app, parent: :base do
    topic { 'my_topic' }
    schema { 'MySchema' }
    namespace { 'com.flipp.my_app' }
    key_config { { field: :id } }

    fields do
      {
        id: -> { CustomFaker.id },
        some_val: -> { CustomFaker.random_guid }
      }
    end
  end
end
