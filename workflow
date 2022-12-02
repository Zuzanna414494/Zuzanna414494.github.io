
on:
  push:
  pull_request:
    types: [opened, synchronize]
jobs:
  build:
    runs-on: ubuntu-latest
    name: script/cibuild
    steps:
      - uses: actions/checkout@v2
      - uses: ruby/setup-ruby@v1
        with:
          ruby-version: 2.7
          bundler-cache: true
      - name: build
        run: script/bootstrap
      - name: test
        run: script/cibuild
