# String Normalizr [![Build Status](https://travis-ci.org/carpodaster/string_normalizr.svg?branch=master)](https://travis-ci.org/carpodaster/string_normalizr)

## Simplifying the non-ASCII world

This gem adds `String#normalize` to easily retrieve a normalized representation
of your String instance.

## Installation

```
gem install string_normalizr
```

Or use it as a plugin with your Rails app:

```
ruby script/plugin install git://github.com/carpodaster/string_normalizr.git
```

## Usage
 "hellö world".normalize

## .plan
* support custom collation hash
* support more special chars by default
* handle punctuation marks

## Changelog
* 0.3: Added normalize! for in-place normalization and activated downcase option
* 0.2: Normalization can now be customized via an options hash.
* 0.1: Initial version

---

Copyright (c) 2010 Carsten Zimmermann, released under a BSD-type license
