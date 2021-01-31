# Backup Scripts
scripts i use to regularly backup my workspace

Running `backup.sh` script does the following
1. copy dotfiles from corresponding folders to workspace/dotfiles
2. copy other config files or secrets like ssh config, kube config etc. to workspace/backups
3. backup workspace folder to b2 (b2 is a service similar to amazon s3, but much cheaper)
4. save the backed up time and date in a file

`backup_reminder.sh` is added to `.zshrc`. It checks if there was a successfuly ran backup that day and shows a message in terminal with the last backup date if not.
This date and time information is taken from step 4 above.

`backup.sh` can be added to cronjob as well. But I prefer to run it manually.

`backup_exclude_config.conf` defines the set of files which should be excluded from backup. I'm excluding `node_modules` folder from all directories as it takes a long time to back it up and it isn't necessary to backup anyway.
