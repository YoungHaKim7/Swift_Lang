# Result

- init
```bash
swift package init --name MyCLI --type executable
```

```bash
$ swift package init --name MyCLI --type executable
Creating executable package: MyCLI
Creating Package.swift
Creating .gitignore
Creating Sources/
Creating Sources/main.swift

$ ls
Package.swift  Sources

$ swift run MyCLI

Building for debugging...
[6/6] Linking MyCLI
Build complete! (0.81s)

Hello, world!
  
```

- ```swift run```

```
swift run MyCLI
```
