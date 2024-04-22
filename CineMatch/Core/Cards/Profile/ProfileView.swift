import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .top) {
                    Image("default-pp")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .clipped()
                }
                .ignoresSafeArea(.all)
                .frame(width: 390, height: 320)
                .clipped()
                VStack(alignment: .leading, spacing: 4) {
                    HStack(alignment: .firstTextBaseline) {
                        Text("@exampleuser")
                            .font(.system(size: 29, weight: .semibold, design: .default))
                        Spacer()
                        HStack(alignment: .firstTextBaseline, spacing: 3) {
                            Image(systemName: "person.fill")
                                .symbolRenderingMode(.multicolor)
                            Text("236 Followers")
                                .foregroundStyle(.secondary)
                        }
                        .font(.system(.subheadline, weight: .medium))
                    }
                    Text("Example User")
                        .font(.system(.callout, weight: .medium))
                        .padding(.bottom, 30)
                }
                .padding(.horizontal, 24)
                .padding(.top, 12)
                VStack(alignment: .leading, spacing: 15) {
                    Text("FAVORITE GENRES")
                        .font(.system(size: 12, weight: .medium, design: .default))
                        .foregroundStyle(.secondary)
                    HStack(spacing: 9) {
                        Image(systemName: "camera.aperture")
                            .foregroundStyle(.green)
                            .frame(width: 20)
                            .clipped()
                        Text("Horror")
                        Image(systemName: "bolt")
                            .foregroundStyle(.green)
                            .frame(width: 20)
                            .clipped()
                        Text("Science")
                        Image(systemName: "heart")
                            .foregroundStyle(.green)
                            .frame(width: 20)
                            .clipped()
                        Text("Romance")
                        Spacer()
                    }
                    .font(.subheadline)
                }
                .padding(.horizontal, 24)
                VStack(spacing: 14) {
                    HStack(spacing: 4) {
                        Text("I love watching movies because they transport me to different worlds, evoke various emotions, and allow me to explore diverse perspectives and cultures")
                            .font(.caption)
                            .padding()
                        Spacer()
                    }
                    .padding(.vertical, 28)
                }
            }
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
