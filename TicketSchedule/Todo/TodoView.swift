import UIKit

class TodoView: UIView {

    // コードから生成した時の初期化処理
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    // ストーリーボードで配置した時の初期化処理
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }

}
