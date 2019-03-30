import Foundation

enum Level: Int, Codable {
    case jeunepousse, arbuste, vieuxchene
}

struct User : Codable {
    let id: UUID?
    let email: String?
    let nickname: String?
    let password: String?
    var missions = [Mission]()
    let level: Level
    let elo : Elo
}

struct Mission : Codable {
    let id: UUID?
    let duration: DateInterval?
    let description: String?
    let image: String?
    let mainSubject: String?
    let explanations: String?
    let tips : [String]?
    let elo : Elo
}

struct Elo : Codable {
    let energy : Int
    let waste : Int
    let food : Int
}
