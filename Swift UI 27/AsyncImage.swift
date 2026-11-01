import SwiftUI

struct CachedAsyncImage : View {
    @State private var session : URLSession = {
        let config = URLSessionConfiguration.default
        config.urlCache = URLCache(
            memoryCapacity: 128 * 1024 * 1024,
            diskCapacity: 256 * 1024 * 1024,
        )
        return  URLSession(configuration: config)
    }()
    
    var body: some View {
        AsyncImage(
            url:URL(string:"https://www.marutisuzuki.com/adobe/assets/urn:aaid:aem:24e5c9ea-a61b-4bf7-aae3-c1d5aaff73f6/as/Swift_TVC_Mobile_750x1354.png?width=750&id=1&preferwebp=true")
        )
        .asyncImageURLSession(session)
    }
}
#Preview {
    CachedAsyncImage()
}
