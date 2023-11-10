import UIKit

final class ImageViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
		activityIndicator.startAnimating()
		activityIndicator.hidesWhenStopped = true
		fetchImage()
    }

	private func fetchImage() {
		URLSession.shared.dataTask(with: Link.getUsers.url) { data, response, error in
			guard let data = data, let response = response else {
				print(error?.localizedDescription ?? "No error description")
				return
			}
			
			guard let image = UIImage(data: data) else { return }
			
			DispatchQueue.main.async {
				self.imageView.image = image
				self.activityIndicator.stopAnimating()
			}
			
			
			print(response)
		}.resume()
	}
}


