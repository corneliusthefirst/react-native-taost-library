@objc(TaostLibrary)
class TaostLibrary: NSObject {

  @objc(multiply:withB:withResolver:withRejecter:)
  func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    resolve(a*b)
  }

  @objc(showTaost:withResolver:withRejecter:)
  func showTaost(message: String) {
    DispatchQueue.main.async {
      let alert = UIAlertController(title: "Taost", message: message, preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
      UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
  }
}
