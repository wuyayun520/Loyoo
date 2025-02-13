import UIKit

class NormalWaitingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let bgImgV = UIImageView()
        bgImgV.image = UIImage(named: "LaunchImage")
        view.addSubview(bgImgV)
        bgImgV.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
