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
                            Text("New".uppercased())
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(.subheadline, weight: .medium).width(.expanded))
                                .foregroundColor(.pink)
                                .padding(.bottom)
                            VStack(spacing: 7) {
                                ForEach(0..<10) { _ in
                                    HStack(spacing: 10) {
                                        VStack(alignment: .leading) {
                                            Text("Movie Name")
                                                .font(.system(size: 16, weight: .medium, design: .default))
                                            Text("August 8th")
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
