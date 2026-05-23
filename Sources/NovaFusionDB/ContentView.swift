import SwiftUI

struct ContentView: View {

    @State private var users: [User] = []

    var body: some View {

        NavigationStack {

            Group {

                if users.isEmpty {

                    VStack(spacing: 12) {

                        Image(systemName: "person.3")

                        Text("No Users Found")
                    }

                } else {

                    List(users) { user in

                        VStack(alignment: .leading) {

                            Text(user.username)
                                .font(.headline)

                            Text(user.email)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("FusionStack")
            .task {

                users = await APIService.shared.fetchUsers()
            }
        }
    }
}

#Preview {

    ContentView()
}
