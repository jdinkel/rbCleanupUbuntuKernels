# rbCleanupUbuntuKernels
Remove any old unused kernel installs

Turns out there is already a tool for this in the *universe* repo:

```bash
sudo aptitude install bikeshed
```

Then put this in a file in `/etc/cron.monthly/` (or `.weekly` or `.daily`, depending on how often you want it, but monthly for cleaning out the kernels should be plenty):

```bash
#!/bin/bash

#optional:
aptitude update
aptitude full-upgrade -y

purge-old-kernels -y
apt-get autoremove -y
```


If this computer does not run 24/7, install anacron to make sure the `cron.monthly` scripts get run.
