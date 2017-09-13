## Storedom

Storedom is a simplistic e-commerce application used for various lessons and tutorials at Turing.

### Setup

To get set up with the storedom application, clone it
via `git` and pull in gem dependencies with `bundler`:

```sh
$ git clone https://github.com/turingschool-examples/storedom.git
$ cd storedom
$ bundle update
```

And set up the database and included seed records:

```
bundle exec rake db:{create,setup}
```


Feature Completion

[ ] All features are functional
Process

[ ] Git history shows student uses TDD and follows red/green/refactor
[ ] App is well tested
Ruby/Rails Style

[ ] Objects used in views
[ ] No hashes used in the view
[ ] Hand built API supports non-GET requests using an external tool like Postman or cURL.
[ ] API keys are not hardcoded
[ ] Controller is not responsible for making API calls.
[ ] A service object is used for making the API call.
[ ] The model-like object is responsible for instantiating itself and not the service object.
[ ] A model-like object is referenced in the controller when consuming an external API (e.g. Thing.filter(parameter: value)). This does not mean it should be an ActiveRecord backed model. A PORO is often the better choice.
Refactoring

Passing assessments will implement all but two of the following

[ ] The model-like object is responsible for asking the service for data.
[ ] Each class is broken down into small (including width) reusable methods (SRP).
[ ] Service object is built in a way that allows portions of it to be reusable. An un-refactored example would be using string interpolation to build the API request.
[ ] Student uses a presenter or search object in addition to a model-like PORO.
