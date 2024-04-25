import SwiftUI

struct NotificationsView: View {
    @State private var searchText = ""

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HStack {
                    Text("Notifications")
                        .font(.system(.largeTitle, weight: .bold))
                    Spacer()
                }
                .padding(.horizontal)
                
                VStack(spacing: 40) {
                        VStack {
                            VStack(spacing: 7) {
                                ForEach(0..<10) { _ in
                                    HStack(spacing: 10) {
                                        VStack(alignment: .leading) {
                                            Text("Notification Title")
                                                .font(.system(size: 16, weight: .medium, design: .default))
                                            Text("Notification description!")
                                                .font(.footnote)
                                                .foregroundColor(.secondary)
                                        } .frame(height: 60)
                                        .font(.subheadline)
                                        Spacer()
                                    }
                                    Divider()
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 10)
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
