import Foundation

struct DataManager {
  static func save(key: String, data: String) {
    UserDefaults.standard.set(data, forKey: key)
  }
  
  static func load(key: String) -> String? {
    guard let data = UserDefaults.standard.string(forKey: key) else {
      return nil
    }
    return data
  }
}
