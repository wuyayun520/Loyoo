//
//  TUISystemMessageCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/12.
//

import UIKit

/**
 * 【模块名称】TUISystemMessageCell
 * 【功能说明】系统消息单元
 *  用于实现系统消息的 UI 展示。常见的系统消息内容有：撤回消息、群成员变更消息、群成立与解散消息等。
 *  系统消息通常用于展示来自于 App 的通知，这类通知由系统发送，而不来自于任何用户。
 */
@objc class TUISystemMessageCell: TUIMessageCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /**
     *  系统消息单元数据源
     *  消息源中存放了系统消息的内容、消息字体以及消息颜色。
     *  详细信息请参考 Section\Chat\CellData\TalkingSystemMsgCellData.h
     */
    var systemData: TalkingSystemMsgCellData?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    override func fill(with data: TCommonCellData) {
        super.fill(with: data)
        self.systemData = data as? TalkingSystemMsgCellData
        self.messageLabel.text = self.systemData?.contentStr
        self.avatarView.isHidden = true
        self.retryView.isHidden = true
        self.indicator.stopAnimating()
        self.setNeedsLayout()
        self.updateConstraints()
        self.layoutIfNeeded()
    }
   
    
    public override class var requiresConstraintBasedLayout: Bool {
        return true
    }
    public override func updateConstraints() {
        super.updateConstraints()
        self.container.snp.remakeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.top.equalToSuperview()
        }
    }
    // MARK: - Lazy Load
    /**
     *  系统消息标签
     *  用于展示系统消息的内容。例如：“您撤回了一条消息”。
     */
    lazy var messageLabel: UILabel = {
        let lb = UILabel.init()
        lb.font = UIFont.drogueSize(fontSize: 14)
        lb.textColor = .observerShared()
        lb.textAlignment = .center
        lb.numberOfLines = 0
        lb.backgroundColor = .clear
        return lb
    }()


}

extension TUISystemMessageCell {
    // 添加视图
    private func setupSubviews() {
        self.container.addSubview(messageLabel)
        messageLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
