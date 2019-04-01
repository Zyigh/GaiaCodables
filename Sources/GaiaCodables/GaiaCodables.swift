import Foundation

public enum Level: Int, Codable {
    case jeunepousse, arbuste, vieuxchene
}

public struct User : Codable {
    let id: UUID?
    let email: String?
    let nickname: String?
    let password: String?
    var missions = [Mission]()
    let level: Level
    let elo : Elo

    public init(
            id: UUID?,
            email: String?,
            nickname: String?,
            password: String?,
            missions: [Mission]?,
            level: Level,
            elo : Elo
    ) {
        self.id = id
        self.email = email
        self.nickname = nickname
        self.password = password
        self.missions = missions ?? []
        self.level = level
        self.elo = elo
    }
}

public struct Mission : Codable {
    let id: UUID?
//    let duration: DateInterval?
    let duration: String?
    let description: String?
    let image: String?
    let mainSubject: String?
    let explanations: String?
    let tips : [String]?
    let elo : Elo
}

public struct Elo : Codable {
    let energy : Int
    let waste : Int
    let food : Int

    public init(
            energy: Int,
            waste: Int,
            food: Int
    ) {
        self.energy = energy
        self.waste = waste
        self.food = food
    }
}