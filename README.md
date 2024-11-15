## Simple accepts nested attributes example

This is just a sample repo to show case a cimple Accepts Nested Attributes For Rails example to a friend

The important bits are:

- Define `accepts_nested_attributes_for` in `app/models/dive.rb` ([link](https://github.com/jespr/accepts-nested-attributes-for/blob/main/app/models/dive.rb#L4))
- Make sure to add at least one one in the `new` action in `dives_controller.rb` (`@dive.build_dive_location`) ([link](https://github.com/jespr/accepts-nested-attributes-for/blob/main/app/controllers/dives_controller.rb#L16))
- Add it to the dive form as `form.fields_for :dive_location` ([link](https://github.com/jespr/accepts-nested-attributes-for/blob/main/app/views/dives/_form.html.erb#L25-L45))
- Accept it as part of the params in `dives_controller.rb` in `dive_params` (`dive_location_attributes`) ([link](https://github.com/jespr/accepts-nested-attributes-for/blob/main/app/controllers/dives_controller.rb#L69))
