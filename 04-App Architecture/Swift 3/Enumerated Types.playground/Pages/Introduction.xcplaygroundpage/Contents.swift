//: ![banner](banner-with-plym.png)
//:
//: # Enumerated Types
//:
//:
//: Enumerated types are commonly found in other languages. They promote type-safety and readability.
//: Swift enumerated types are far more powerful than those found in older languages such as C. For certain use-cases they can be a natural replacment for a class or structure. Like structures and unlike classes, enumerated types are also value-types.
//:
//: Let's begin with a look at an example:
enum ResponseType {
   case disagree
   case slightlyDisagree
   case slightlyAgree
   case agree
}
//: Here an enumerated type variable has been defined. Equally, we could write the different cases as a comma separated list:
/*:
    enum ResponseType {
        case disagree, slightlyDisagree, slightlyAgree, agree
    }
*/
var response : ResponseType
//: Creates an instance of the new type
response = ResponseType.agree
//: Assigns a new value
response = .slightlyAgree
//: This is the shorthand notation. 
//: - Note: For the C programmers among you, do not assume these types are automatically assigned integer raw values. They can be specified however (see [Raw Values](RawValues) later)

//: ## Matching enumerated types with conditional statements
//: For a simple enumerated type such as this, you can match equivalent values with the `==` operator as you would other types.
if response == .agree {
   print("Great - glad we agree")
} else if response == .disagree {
   print("Ok, I wont bother you with this any more")
} else {
   print("Ok, maybe think about it")
}
//: Using an enumerated type in this way makes for very readable code. It is also type-safe. 
//: - Note: [Later](AssociatedValues) you will see more complex cases where `==` cannot be used

//: ## Matching with switch-case
//: `if` statements require care and can be prone to mistakes. For example, if you added another enumerated case in your code, you might forget to cover it in all the relevant `if` statements. A `switch-case` is a more robust (and safer) alternative which *requires* that all cases are covered:
switch response {
case .agree:
   print("Glad we agree")
case .disagree:
   print("Ok, I wont bother you with this any more")
case .slightlyAgree, .slightlyDisagree:
   print("Ok, maybe think about it")
}
//: - Experiment: Try commenting out one of the cases - what happens?
//:
//: Some key points here:
//: * `switch` requires full coverage to compile - Missing a case will result in a compiler error. This is an error that occurs BEFORE you run the code (preferable to a run-time error).
//: * No fall-through - If you're aware of `switch-case` in other languagues such as C, you might expect to see `break` statements for each case. In contrast, Swift code does not automatically fall-through into the next case, so there is no need for `break` statements. Given how easy it is to forget to write such `break` statements, so the Swift way is considered safer. However, in Swift you can stil force a fall-through by explicitly writing `fallthrough`.
//: * Combining cases - Note how multiple cases (`.slightlyAgree` and `.slightlyDisagree`) are managed in this example using a comma separated list.

//: ## Using default
//: In the following example, `default` is used to catch all cases not explicitly covered. Some care is needed when using this as the switch will always have full coverage. Therefore if you add a new case and forget to handle it, no compiler error will occur.
switch response {
case .agree:
   print("Glad we agree")
   
case .disagree:
   print("Ok, I wont bother you with this any more")
   
default:
   print("Ok, maybe think about it")
}
//: Next we look at how each enumerated case can be assigned a raw value.
//:
//: ----
//:
//: [Next - raw values](@next)
