# Unit tests

There is no reason for you to edit this repository except for these two:

- you updated a type in usuba making these tests irrelevant because the equality check will always fail
- you improved a pass and it changed its output and the bench testing approved your PR so you need to change the expected outputs from the unit tests

When updating it, do it from your usuba branch in the `unit_tests` submodule.

## Updating

Updating this repository is then done in two steps:
- From your branch, execute:
   ```sh
   ./scripts/run-selected.sh -- -dump-steps ast -dump-steps-dir unit_tests/rsc
   ```
   This will populate the `rsc` dir
- Go in `unit_tests` and execute:
   ```sh
   ./generate.sh --steps-dir rsc
   ```

## Checking

Now check that everything went well by executing

```sh
dune build @runtest
```
