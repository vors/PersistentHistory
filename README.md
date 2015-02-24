PersistentHistory: persistent cross-session history for powershell
======================

Close window and loose all commands history? Not anymore. Just install this module and you will have 
cross-session history tracking functionality like in bash.
Designed to work with mutliply tabs in powershell_ise.

Install
----------------------
This module hasn't been published to PS galleries, yet. 
Please, clone dev version from github to try it.
Copy PersistentHistory module to your modules directory.
Add to you `$profile`:

```powershell
Import-Module -Name PersistentHistory
```

If you are customizing your `prompt`, please, make sure to import module after that.
PersistentHistory adds hook to prompt function to store history file on disk.
