# Test application for playing with ActiveBeans

Quick Start
-----------

Clone this Rails application:

	git clone git@github.com/woolf/active_beans_rails_test.git

Run bundle

	cd active_beans_rails_test; bundle

Start application

	rails s

Start `beantalkd` queue daemon

	beantalkd &

Start `active_beans_worker`

	cd active_beans_rails_test; active_beans_worker

Browse to `http://localhost:3000`

To make async tests you will need to start several workers, you can play with workers count, but you need at least one to be started.

Start `htop` and look at processes, in direct methods your webserver will consume CPU, on async methods - workers.
Change User model method `User.hello`, increase `200000.times` loop, or write your own high load code.
