# Result

```bash
$ swift run MyCLIAddArg_parser
Fetching https://github.com/apple/example-package-figlet from cache
Fetched https://github.com/apple/example-package-figlet (0.54s)
Fetching https://github.com/apple/swift-argument-parser
Fetched https://github.com/apple/swift-argument-parser (1.33s)
Computing version for https://github.com/apple/swift-argument-parser
Computed https://github.com/apple/swift-argument-parser at 1.3.0 (0.11s)
Computed https://github.com/apple/swift-argument-parser at 1.3.0 (0.00s)
Creating working copy for https://github.com/apple/example-package-figlet
Working copy of https://github.com/apple/example-package-figlet resolved at main
Creating working copy for https://github.com/apple/swift-argument-parser
Working copy of https://github.com/apple/swift-argument-parser resolved at 1.3.0
Building for debugging...
[65/65] Linking MyCLIAddArg_parser
Build complete! (1.78s)
  _   _          _   _                 ____               _    __   _     _
 | | | |   ___  | | | |   ___         / ___|  __      __ (_)  / _| | |_  | |
 | |_| |  / _ \ | | | |  / _ \        \___ \  \ \ /\ / / | | | |_  | __| | |
 |  _  | |  __/ | | | | | (_) |  _     ___) |  \ V  V /  | | |  _| | |_  |_|
 |_| |_|  \___| |_| |_|  \___/  ( )   |____/    \_/\_/   |_| |_|    \__| (_)
                                |/                                   
```

```bash
$ swift package init --name MyCLIAddArg_parser --type executable

Creating executable package: MyCLIAddArg_parser
Creating Package.swift
Creating .gitignore
Creating Sources/
Creating Sources/main.swift
```
