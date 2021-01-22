## Running integration tests
Quickly build and run integration tests on your dockerized application by running the command `./ocd int-test`. 
## Kafkateria
Sample tests for EDM applications have been added to the `integration-tests` folder for reference. These sample tests demonstrate how to use Kafkateria, which is a library that eliminates the need to build and maintain custom methods to test generating, producing, and consuming kafka messages. 

```
└── integration-tests
    └── {test_name}_spec.rb
```
To add your own topics to your node application, add the topic to `src/schemas`, along with any required consumers, producers, handlers, or controllers in the `src` folder. Samples of each have been included. 

Kafkateria also allows you to easily implement test factories with traits for quick and easy testing. Kafkateria factories, traits and trait parameters can be added to the `kafkateria/factories` folder and the corresponding schemas can be added to the `kafkateria/schemas` folder. Topics added to this folder will be loaded into your local kafkateria service, whose UI can be accessed at http://localhost:8002. For more information on using Kafkateria, view the [README](https://github.com/wishabi/flipp-kafkateria). 

```
├── app
│   └── schemas
│       └── com/flipp/{schema_name}.avsc <-- Application topic schemas go here
└── kafkateria
    ├── factories <-- Define factories for producing test data to your topic(s)
    │   └── test-factory.rb
    └── schemas 
        └── com
            └── flipp
                └── {app_name}
                    └── {schema_name}.avsc <-- Schemas need to be copied here to sync with Kafkateria
