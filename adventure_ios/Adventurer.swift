import Foundation

struct Adventurer {
  var name: String
  
  // MARK: Inits
  init?(name: String) {
    guard !name.isEmpty else {
      return nil
    }
    self.name = name
  }
  
  func save() {
    DataManager.save(key: "adventure_name", data: name)
  }
  
  static func getCurrent() -> Adventurer? {
    guard let name = DataManager.load(key: "adventure_name") else {
      return nil
    }
    return Adventurer(name: name)
  }
}

