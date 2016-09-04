## _A directory of fishing guides in the PNW_

### By _**Alex Zerbach and Aaron Porter**_

## Description

_A website which shows a listing of PNW fishing guides and their contact information_

## Setup/Installation Requirements

To get started with the app, clone the repo, move into it, and then install the needed gems:

```
$ bundle install
```

Import guide info:

```
$ rake db:import_guide_data
```

Next, migrate the database:

```
$ rake db:migrate
```

Finally, run RSpec to verify that everything is working correctly:

```
$ bundle exec rspec
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Known Bugs/Things to do

Lots!

## Support and contact details

...

### License

The MIT License (MIT)

Copyright (c) 2016 Alex Zerbach and Aaron Porter

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
