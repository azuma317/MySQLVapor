import FluentMySQL
import Vapor

final class User: MySQLModel {
    var id: Int?
    var username: String
    var image: String?
    
    init(id: Int? = nil, username: String, image: String? = nil) {
        self.id = id
        self.username = username
        self.image = image
    }
}
extension User: Content {}
extension User: Migration {}
