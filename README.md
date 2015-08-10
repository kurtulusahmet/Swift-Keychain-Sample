## Usage

Add `import KeychainSwift` to your source code if you used Carthage or CocoaPods setup methods.

```Swift
KeychainSwift.set("hello world", forKey: "my key")

KeychainSwift.get("my key")

KeychainSwift.delete("my key")

KeychainSwift.clear() // delete everything from app's Keychain
```

In addition to strings one can set/get `NSData` objects.

```Swift
KeychainSwift.set(nsDataObject, forKey: "my key")

KeychainSwift.getData("my key")
```

## Advanced options

### Keychain item access

Use `withAccess` parameter to specify the security level of the keychain storage.
By default the `.AccessibleWhenUnlocked` option is used. It is one of the most restrictive options and provides good data protection.

```
KeychainSwift.set("Hello world", forKey: "key 1", withAccess: .AccessibleWhenUnlocked)
```

You can use `.AccessibleAfterFirstUnlock` if you need your app to access the keychain item while in the background.  It may be needed for the Apple Watch apps. Note that it is less secure than the `.AccessibleWhenUnlocked` option.

Thanks:

https://github.com/exchangegroup/keychain-swift
https://gist.github.com/s-aska/e7ad24175fb7b04f78e7
