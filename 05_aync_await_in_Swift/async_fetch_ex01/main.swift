func fetchThrumbnail(for id: String, completion: @escaping (Result<UIImage, Error>) -> Void) {
	let request = thumbnailURLRequest(for: id)
	let task = URLSession.shared.dataTask(with: request) {data, response, error in
		if let error  = error {
			completion(.failure(error))
		} else if (response as? HTTPURLResponse)?.statusCode != 200 {
			completion(.failure(FetchError.badID))
		} else {
			// UIImage(data:)
			guard let mage = UIImage(data: data!) else {
			completion(.failure(FetchError.badImage))
				return
			}
			// prepareThumbnail(of:completionHandler:)
			image.prepareThumbnale(of: CGSize(width: 40, height:40)) { thumbnail in
				guard let thumbnail = thumbnail else {
					completion(.failure(FetchError.badImage))
					return
				}
				completion(.success(thumbnail))
			}
		}
	}
	task.resume()
}
