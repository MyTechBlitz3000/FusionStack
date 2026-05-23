import SwiftUI

struct ContentView: View {

    @State private var users: [User] = []

    var body: some View {

        NavigationStack {

            List(users) { user in

                VStack(alignment: .leading) {

                    Text(user.username)
                        .font(.headline)

                    Text(user.email)
                        .foregroundStyle(.secondary)
                }
            }
            .navigationTitle("NovaFusionDB")
            .task {
                await loadUsers()
            }
        }
    }

    func loadUsers() async {

        do {
            users = try await APIService.shared.fetchUsers()
        } catch {
            print(error)
        }
    }
}
