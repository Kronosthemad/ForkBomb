# Fork Bomb
  This is a simple project not meant to be run on bare metal to teach about a fork bomb

  ## Do Not Run This
```bash
    :(){:|:&};:
```

The example above is the obfuscated fork that we are trying to explane 
- : : The name of the function.
- { ... } : The function body.
- :|: : Call itself and pipe the output to another instance of itself.
- & : Put the process in the background so the caller can keep spawning more.
- ;: : End the function definition and call it for the first time.
