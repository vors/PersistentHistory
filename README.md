PersistentHistory
======================
Close window and loose all commands history? Not anymore. Just install this module and you will have 
cross-session history tracking functionality like in bash.
Designed to work with mutliply tabs in powershell_ise.

Install
----------------------
Install from PSGallery:

```powershell
Find-Module PersistentHistory | Install-Module; 'Import-Module PersistentHistory' >> $profile
```

If you are customizing `prompt`, please, make sure to import module after that.
PersistentHistory adds hook to prompt function to store history file on disk.

Usage
----------------------

History is separate from [PSReadLine](https://github.com/lzybkr/PSReadLine) history.
It's available thru `#` command.

```text
C:\> #pers<Tab>
C:\> Find-Module PersistentHistory | Install-Module; 'Import-Module PersistentHistory' >> $profile
```
