# OptionalKit

![Test coverage](https://img.shields.io/codecov/c/github/kevinhermawan/OptionalKit)

An extension for simplifying optional handling in Swift.

## Overview

`OptionalKit` is a Swift library that extends the `Optional` type with additional convenience methods. It simplifies the common patterns of optional handling in Swift by providing a suite of syntactic sugars.

## Installation

You can add `OptionalKit` as a dependency to your project using Swift Package Manager by adding it to the dependencies value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/kevinhermawan/OptionalKit.git", .upToNextMajor(from: "1.0.0"))
]
```

Alternatively, in Xcode:

1. Open your project in Xcode.
2. Click on `File` -> `Swift Packages` -> `Add Package Dependency...`
3. Enter the repository URL: `https://github.com/kevinhermawan/OptionalKit.git`
4. Choose the version you want to add. You probably want to add the latest version.
5. Click `Add Package`.

## Usage

```swift
import OptionalKit

// Imagine we have some optional values in our code
let optionalString: String? = "Hello, OptionalKit!"
let nilString: String? = nil

// We can use isNil to check if an optional is nil
if nilString.isNil {
    print("nilString is nil")
}

// Conversely, isNotNil can check for an existing value
if optionalString.isNotNil {
    print("optionalString has a value")
}

// Use ifNil to run a closure if the optional is nil
nilString.ifNil {
    print("This will run because nilString is indeed nil")
}

// Use ifNotNil to run a closure if the optional contains a value
optionalString.ifNotNil { value in
    print("The optionalString contains: \(value)")
}
```

## License

[MIT License](/LICENSE)
