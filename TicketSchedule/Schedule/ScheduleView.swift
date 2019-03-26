//
//  ScheduleView.swift
//  TicketSchedule
//
//  Created by Takaki Otsu on 2019/03/26.
//  Copyright © 2019 Takaki Otsu. All rights reserved.
//

import UIKit

class ScheduleView: UIView {
    
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
