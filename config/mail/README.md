# Restore your Mail App Configurations

## 1. Backup the following files

```sh
# MailData
.
├── RulesActiveState.plist
├── SmartMailboxesLocalProperties.plist
├── SyncedFilesInfo.plist
├── SyncedRules.plist
├── SyncedSmartMailboxes.plist
└── UnsyncedRules.plist
```

## 2. Put them back to the correct spot

```sh
cp -rf ./*.plist ~/Library/Mail/V9/MailData
```
