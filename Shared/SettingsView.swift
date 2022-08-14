import SwiftUI

struct SettingsView: View {
    @State private var accessToken = ""
    
    var body: some View {
        Form {
            TextField("GitHub Personal Access Token", text: $accessToken, onCommit: {
                UserDefaults.standard.set(self.accessToken, forKey: "GitHubPersonalAccessToken")
            })
        }
        .padding(5)
        .frame(width: 560, height: 160)
        .onAppear {
            guard let accessToken = UserDefaults.standard.value(forKey: "GitHubPersonalAccessToken") as? String else { return }
            self.accessToken = accessToken
        }
    }
}
