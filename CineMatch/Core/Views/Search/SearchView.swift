import SwiftUI

struct SearchView: View {
    
    @State var search = ""
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                HStack {
                    Text("Search")
                        .font(.system(.largeTitle, weight: .bold))
                        .padding(.leading)
                    Spacer()
                }
                TextField("Search...", text: $search)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .padding()
                Spacer()
                    .frame(height: 15)
                    .clipped()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        HStack {
                            Image(systemName: "popcorn.fill")
                            Text("Movies")
                        }
                        .foregroundStyle(Color.white)
                        .padding(12)
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundStyle(.primary)
                        }
                        .font(.system(.footnote, weight: .medium))
                        .foregroundStyle(Color.black)
                        HStack {
                            Image(systemName: "person.fill")
                            Text("Users")
                        }
                        .padding(12)
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundStyle(Color(.systemFill))
                        }
                        .font(.system(.footnote, weight: .medium))
                        HStack {
                            Image(systemName: "newspaper.fill")
                            Text("Trailers")
                        }
                        .padding(12)
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundStyle(Color(.systemFill))
                        }
                        .font(.system(.footnote, weight: .medium))
                        HStack {
                            Image(systemName: "rectangle.grid.3x2.fill")
                            Text("Other")
                        }
                        .padding(12)
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundStyle(Color(.systemFill))
                        }
                        .font(.system(.footnote, weight: .medium))
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom, 30)
                HStack {
                    Text("3 New Movie")
                    Spacer()
                }
                .padding(.horizontal)
                .font(.system(.title3, weight: .bold))
                VStack(spacing: 24) {
                    HStack {
                        VStack(spacing: 0) {
                            Image("avengers")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .mask {
                                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                                }
                                .frame(height: 225, alignment: .bottom)
                                .clipped()
                            Text("Avengers")
                                .font(.system(.footnote, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .padding(.top, 16)
                            HStack(alignment: .firstTextBaseline, spacing: 4) {
                                Image(systemName: "cloud.fill")
                                    .foregroundStyle(Color(.tertiaryLabel))
                                Text("TODAY")
                                    .foregroundStyle(.secondary)
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .font(.callout)
                            }
                            .padding(.top, 5)
                            .font(.system(.caption2, weight: .semibold))
                        }
                        .frame(width: 160)
                        .clipped()
                        .shadow(color: Color(.sRGB, red: 0/255, green: 0/255, blue: 0/255).opacity(0.12), radius: 8, x: 0, y: 4)
                        Spacer()
                        VStack(spacing: 0) {
                            Image("avengers")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .mask {
                                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                                }
                                .frame(height: 225, alignment: .bottom)
                                .clipped()
                            Text("Avengers")
                                .font(.system(.footnote, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .padding(.top, 16)
                            HStack(alignment: .firstTextBaseline, spacing: 4) {
                                Text("TODAY")
                                    .foregroundStyle(.secondary)
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .font(.callout)
                            }
                            .padding(.top, 5)
                            .font(.system(.caption2, weight: .semibold))
                        }
                        .frame(width: 160)
                        .clipped()
                        .shadow(color: Color(.sRGB, red: 0/255, green: 0/255, blue: 0/255).opacity(0.1), radius: 8, x: 0, y: 4)
                    }
                    .padding(.horizontal)
                    HStack {
                        VStack(spacing: 0) {
                            Image("avengers")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .mask {
                                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                                }
                                .frame(height: 225, alignment: .bottom)
                                .clipped()
                            Text("Avengers")
                                .font(.system(.footnote, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .padding(.top, 16)
                            HStack(alignment: .firstTextBaseline, spacing: 4) {
                                Text("NEW")
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, 5)
                                    .padding(.vertical, 1)
                                    .background {
                                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                                            .foregroundStyle(.red)
                                    }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .font(.callout)
                            }
                            .padding(.top, 3)
                            .font(.system(.caption2, weight: .semibold))
                        }
                        .frame(width: 160)
                        .clipped()
                        .shadow(color: Color(.sRGB, red: 0/255, green: 0/255, blue: 0/255).opacity(0.1), radius: 8, x: 0, y: 4)
                        Spacer()
                        VStack(spacing: 0) {
                            Image("avengers")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .mask {
                                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                                }
                                .frame(height: 225, alignment: .bottom)
                                .clipped()
                            Text("Avengers")
                                .font(.system(.footnote, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .padding(.top, 16)
                            HStack(alignment: .firstTextBaseline, spacing: 4) {
                                Text("NEW")
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, 5)
                                    .padding(.vertical, 1)
                                    .background {
                                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                                            .foregroundStyle(.red)
                                    }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .font(.callout)
                            }
                            .padding(.top, 3)
                            .font(.system(.caption2, weight: .semibold))
                        }
                        .frame(width: 160)
                        .clipped()
                        .shadow(color: Color(.sRGB, red: 0/255, green: 0/255, blue: 0/255).opacity(0.1), radius: 8, x: 0, y: 4)
                    }
                    .padding(.horizontal)
                    HStack {
                        VStack(spacing: 0) {
                            Image("avengers")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .mask {
                                    RoundedRectangle(cornerRadius: 6, style: .continuous)
                                }
                                .frame(height: 225, alignment: .bottom)
                                .clipped()
                            Text("Avengers")
                                .font(.system(.footnote, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .padding(.top, 16)
                            HStack(alignment: .firstTextBaseline, spacing: 4) {
                                Text("NEW")
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, 5)
                                    .padding(.vertical, 1)
                                    .background {
                                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                                            .foregroundStyle(.red)
                                    }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .font(.callout)
                            }
                            .padding(.top, 3)
                            .font(.system(.caption2, weight: .semibold))
                        }
                        .frame(width: 160)
                        .clipped()
                        .shadow(color: Color(.sRGB, red: 0/255, green: 0/255, blue: 0/255).opacity(0.1), radius: 8, x: 0, y: 4)
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 20)
            }
            Spacer()
                .frame(height: 108)
                .clipped()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
