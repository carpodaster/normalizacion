# Normalizacion [![Build Status](https://travis-ci.org/carpodaster/normalizacion.svg?branch=master)](https://travis-ci.org/carpodaster/normalizacion)

This gem provides a [Refinement](http://ruby-doc.org/core-2.1.1/doc/syntax/refinements_rdoc.html) for the `String` class. It adds `String#normalize` which transliterates non-ASCII characters using a static collation table. It also replaces whitespaces with `-` and optionally downcases the string value.

It is very similar to what `ActiveSupport`'s `#parameterize` does, only more customizable (and without depending on ActiveSupport).

## Installation

Add this line to your application's Gemfile:

    gem 'normalizacion'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install normalizacion

## Usage

```ruby
class YourClass
  using Normalizacion

  def to_s
    "Schöneberger Straße"
  end
end

YourClass.new.to_s # => "Schoenberger-Strasse"
```

## .plan
* support custom collation hash
* support more special chars by default
* handle punctuation marks

## Changelog
### v1.0.0
* Uses Ruby 2.1 idioms: Keyword Arguments and Refinments
* Renamed gem

#### v0.3.0
* Added `#normalize!` for in-place normalization
* Adds downcase option

### v0.2.0
* Normalization can now be customized via an options hash.

---

Copyright (c) 2010-2016 Carsten Zimmermann, released under a BSD-type license
