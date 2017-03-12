import Foundation

struct DataManager {
  static func saveAdventure(adventurer: Adventurer) {
    UserDefaults.standard.set(adventurer.name, forKey: "adventurer_name")
  }
  
  static func loadAdventure(adventurer: Adventurer) -> Adventurer? {
    guard let name = UserDefaults.standard.string(forKey: "adventurer_name") else {
      return nil
    }
    return Adventurer(name: name)
  }
}
