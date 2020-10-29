# GatherKeysIssue

Steps to reproduce:

* Run `mix setup`
* Run `mix phx.server`
* Go to `localhost:4000/resources`
* Click `New Resource`
* Type in a description - you won't be able to type more than a character before it crashes since #validate is sent on change.
* Look at the phx.server console and see the gather_keys/2 error.
