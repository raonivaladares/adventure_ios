import Foundation

class Adventurer {
    var name: String
    
    init?(name: String) {
      guard !name.isEmpty else {
        return nil
      }
      self.name = name
    }
}
