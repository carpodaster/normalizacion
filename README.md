# Normalizacion [![Build Status](https://travis-ci.org/carpodaster/normalizacion.svg?branch=master)](https://travis-ci.org/carpodaster/normalizacion)

## Simplifying the non-ASCII world

This gem adds `String#normalize` to easily retrieve a normalized representation
of your String instance.

## Installation

Add this line to your application's Gemfile:

    gem 'normalizacion'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install normalizacion

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
