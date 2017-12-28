stack level too deep
====

### Ruby trunk in Alpine Linux 3.7

```
$ docker build -t ruby:trunk-alpine3.7-sltd -f trunk/Dockerfile .
$ docker container run --rm -it ruby:trunk-alpine3.7-sltd
Inspecting 1 file


0 files inspected, no offenses detected
Traceback (most recent call last):
        272: from /usr/local/bundle/bin/rubocop:23:in `<main>'
        271: from /usr/local/bundle/bin/rubocop:23:in `load'
        270: from /usr/local/bundle/gems/rubocop-0.52.1/bin/rubocop:12:in `<top (required)>'
        269: from /usr/local/lib/ruby/2.6.0/benchmark.rb:308:in `realtime'
        268: from /usr/local/bundle/gems/rubocop-0.52.1/bin/rubocop:13:in `block in <top (required)>'
        267: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cli.rb:38:in `run'
        266: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cli.rb:78:in `execute_runners'
        265: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cli.rb:150:in `execute_runner'
         ... 260 levels...
          4: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/ast/node.rb:172:in `each'
          3: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/ast/node.rb:174:in `block in each_child_node'
          2: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cop/variable_force.rb:103:in `block in process_children'
          1: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cop/variable_force.rb:85:in `process_node'
/usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cop/variable_force.rb:85:in `catch': stack level too deep (SystemStackError)
```

### Ruby 2.5.0 in Alpine Linux 3.7

```
$ docker build -t ruby:2.5.0-alpine3.7-sltd -f 2.5.0/Dockerfile .
$ docker container run --rm -it ruby:2.5.0-alpine3.7-sltd
Inspecting 1 file


0 files inspected, no offenses detected
Traceback (most recent call last):
        272: from /usr/local/bundle/bin/rubocop:23:in `<main>'
        271: from /usr/local/bundle/bin/rubocop:23:in `load'
        270: from /usr/local/bundle/gems/rubocop-0.52.1/bin/rubocop:12:in `<top (required)>'
        269: from /usr/local/lib/ruby/2.5.0/benchmark.rb:308:in `realtime'
        268: from /usr/local/bundle/gems/rubocop-0.52.1/bin/rubocop:13:in `block in <top (required)>'
        267: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cli.rb:38:in `run'
        266: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cli.rb:78:in `execute_runners'
        265: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cli.rb:150:in `execute_runner'
         ... 260 levels...
          4: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/ast/node.rb:172:in `each'
          3: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/ast/node.rb:174:in `block in each_child_node'
          2: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cop/variable_force.rb:102:in `block in process_children'
          1: from /usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cop/variable_force.rb:369:in `scanned_node?'
/usr/local/bundle/gems/rubocop-0.52.1/lib/rubocop/cop/variable_force.rb:369:in `any?': stack level too deep (SystemStackError)
```

### Ruby 2.4.3 in Alpine Linux 3.7

```
$ docker build -t ruby:2.4.3-alpine3.7-sltd -f 2.4.3/Dockerfile .
$ docker container run --rm -it ruby:2.4.3-alpine3.7-sltd
Inspecting 1 file
C

Offenses:

ample.rb:3:1: C: Metrics/BlockLength: Block has too many lines. [27/25]
RSpec.describe MyClass do ...
^^^^^^^^^^^^^^^^^^^^^^^^^
ample.rb:20:33: C: Style/MethodCallWithoutArgsParentheses: Do not use parentheses for method calls with no arguments.
                          c: C.c()
                                ^

1 file inspected, 2 offenses detected
```
