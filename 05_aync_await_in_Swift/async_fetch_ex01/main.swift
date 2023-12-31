func fetchThrumbnail(for id: String, completion: @escaping (UIImage?, Error?) -> Void) {
	let request = thumbnailURLRequest(for: id)
	let task = URLSession.shared.dataTask(with: request) {data, response, error in
		if let error  = error {
			completion(nil, error)
		} else if (response as? HTTPURLResponse)?.statusCode != 200 {
			completion(nil, FetchError.badID)
		} else {
			// UIImage(data:)
			guard let mage = UIImage(data: data!) else {
			completion(nil, FetchError.badImage)
				return
			}
			// prepareThumbnail(of:completionHandler:)
			image.prepareThumbnale(of: CGSize(width: 40, height:40)) { thumbnail in
				guard let thumbnail = thumbnail else {
					completion(nil, FetchError.badImage)
					return
				}
				completion(thumbnail, nil)
			}
		}
	}
	task.resume()
}
