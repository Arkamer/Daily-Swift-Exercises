import Cocoa

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?
/*
if errorCodeString != nil {
    let theError = errorCodeString!
    print(theError)
}
*/
if let theError = errorCodeString, let errorCodeInt = Int(theError), errorCodeInt == 404 {
    //print("\(theError): \(errorCodeInt)")
    errorDescription = "\(errorCodeInt + 200): resource not found."
    }

var upCaseErrorDescription = errorDescription?.uppercased()
upCaseErrorDescription?.append(" PLEASE TRY AGAIN.")
upCaseErrorDescription
/*
let description: String
if let errorDescription = errorDescription {
    description = errorDescription
} else {
    description = "No error."
}
*/
errorDescription = nil
let description = errorDescription ?? "No error."
