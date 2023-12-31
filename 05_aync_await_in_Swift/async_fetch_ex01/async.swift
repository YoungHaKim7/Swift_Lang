func fetchThrumbnail(for id: String) async throws -> UIImage {
	let request = thumbnailURLRequest(for: id)
	let (data, response) = try await URLSession.shared.data(for: request)
	guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badID}
	// UIImage(data:)
	let maybeImage = UIImage(data: data)
	guard let thumbnail = await maybeImage?.thumnail else { throw FetchError.badImage}
	// thumbnail
	return thumbnail
}

extension UIImage {
	var thumnail: UIImage? {
		get async {
			let size = CGSize(width: 40, height: 40)
			return await self.byPreparingThumbnail(ofSize: size)
		}
	}
}

for await id in staticImageIDsURL.lines {
	let thumnail = await fetchThumbnail(for: id)
	collage.add(thumnail)
}
let result = await collage.draw() 
