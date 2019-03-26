import UIKit

extension UIView {
    func loadNib() {
        let view = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    // xibファイルを読み込んでviewに重ねる
    func nibInit(nibName: String) {
        guard let view = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth] 
        self.addSubview(view)
    }
}
