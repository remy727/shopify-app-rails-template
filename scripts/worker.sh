#! /usr/bin/env bash

bundle exec sidekiq -C config/sidekiq.yml
