import Foundation

final class APIService {

    static let shared = APIService()

    func fetchUsers() async throws -> [User] {

        let url = URL(
            string: "http://127.0.0.1:8000/users"
        )!

        let (data, _) = try await URLSession.shared.data(
            from: url
        )

        return try JSONDecoder().decode(
            [User].self,
            from: data
        )
    }
}
