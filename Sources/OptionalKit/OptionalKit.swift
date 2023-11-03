import Foundation

public extension Optional {
    /// A Boolean value indicating whether the optional is `nil`.
    ///
    /// Use this property to check quickly if a value is `nil` instead of using equality check.
    ///
    ///     let optionalValue: Int? = nil
    ///     print(optionalValue.isNil) // Prints "true"
    var isNil: Bool {
        self == nil
    }
    
    /// A Boolean value indicating whether the optional is not `nil`.
    ///
    /// Use this property to check if there is a value present in the optional.
    ///
    ///     let optionalValue: Int? = 941
    ///     print(optionalValue.isNotNil) // Prints "true"
    var isNotNil: Bool {
        self != nil
    }
}

public extension Optional {
    /// Executes the provided closure if the optional is `nil`.
    ///
    /// Use this method to perform an action when an `Optional` instance is `nil`.
    ///
    ///     let optionalValue: String? = nil
    ///     optionalValue.ifNil {
    ///         print("The value is nil.")
    ///     }
    func ifNil(_ action: () -> Void) {
        if self == nil {
            action()
        }
    }
    
    /// Executes the provided closure with the unwrapped value if the optional is not `nil`.
    ///
    /// Use this method to perform an action with the unwrapped value when an `Optional` instance is not `nil`.
    ///
    ///     let optionalValue: String? = "Hello"
    ///     optionalValue.ifNotNil { value in
    ///         print("The value is \(value)")
    ///     }
    func ifNotNil(_ action: (Wrapped) -> Void) {
        if let value = self {
            action(value)
        }
    }
}
