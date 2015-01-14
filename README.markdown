# rspec-pride

Take pride in your test output!

Mimics the functionality of minitest/pride for RSpec 3

![Prideful Tests](https://github.com/ferrous26/rspec-pride/blob/master/resources/pride.png)


## How to use Rspec-pride

To use rspec-pride, you need to call `rspec` kind of like this:

    rspec --require rspec/pride --format PrideFormatter

Or put those options in your `.rspec` file.

## Tests

The tests are a lie! They don't test rspec-pride directly, they just
produce enough output so that you can visually verify that everything
is working. This was much faster than writing actual tests and works
just as well in this case.

## Contributing to Rspec-pride

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Mark Rada. See LICENSE.txt for further details.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/ferrous26/rspec-pride/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

