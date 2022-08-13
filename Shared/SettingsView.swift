import SwiftUI

struct SettingsView: View {
    @State private var name = ""
    var body: some View {
        Form {
            TextField("Name", text: $name)
        }
        .padding(5)
    }
}
