import Foundation

class Adventurer {
  var name: String
  
  // MARK: Inits
  init?(name: String) {
    guard !name.isEmpty else {
      return nil
    }
    self.name = name
  }
}
