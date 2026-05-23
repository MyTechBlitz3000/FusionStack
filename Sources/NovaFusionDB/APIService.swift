import Foundation

final class APIService {

    static let shared = APIService()

    private init() {}

    func fetchUsers() async -> [User] {

        guard let url = URL(
            string: "http://127.0.0.1:8000/users"
        ) else {
            print("❌ Invalid URL")
            return []
        }

        do {

            let (data, response) = try await URLSession.shared.data(
                from: url
            )

            guard let httpResponse = response as? HTTPURLResponse else {

                print("❌ Invalid Response")
                return []
            }

            print("📡 Status:", httpResponse.statusCode)

            let users = try JSONDecoder().decode(
                [User].self,
                from: data
            )

            return users

        } catch {

            print("❌ API Error:", error)
            return []
        }
    }
}
