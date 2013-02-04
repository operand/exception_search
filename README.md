# ExceptionSearch

We all do it. You get some weird exception and you're clueless. So what do you do? Well, copy-paste into Google of course!

So the idea came to me to save a couple seconds by including a link right to Google and Stack Overflow from a backtrace. That's what this gem does.

Currently the gem integrates only with Rspec, but I'm planning on adding support for more third party libraries when it makes sense.


## Installation

Add this line to your application's Gemfile:

    gem 'exception_search'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exception_search


## Usage

Just install the gem and everything should work. When you get a failure from some exception in your Rspec tests, it will output a couple links that lead
directly to search results for your error message.

In order for the link to open your browser, it depends on your terminal application.
On the Mac OSX "Terminal" app, you can visit a link by cmd-clicking on the url.
You may have to figure out how to make the link open your browser from other terminal applications.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

I just started this gem on a whim, and obviously it's very basic so far.
If you have any great ideas for it please try your hand at editing. It shouldn't be too hard given how young the project is.
I think there's a lot of ways through configuration etc, that this can be improved.
