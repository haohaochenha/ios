import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let iconImageView = UIImageView(image: UIImage(systemName: "iphone"))
        iconImageView.tintColor = .systemBlue
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        stackView.addArrangedSubview(iconImageView)
        
        let titleLabel = UILabel()
        titleLabel.text = "iOS Demo App"
        titleLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        titleLabel.textColor = .label
        stackView.addArrangedSubview(titleLabel)
        
        let subtitleLabel = UILabel()
        subtitleLabel.text = "GitHub Actions 自动编译"
        subtitleLabel.font = UIFont.systemFont(ofSize: 16)
        subtitleLabel.textColor = .secondaryLabel
        stackView.addArrangedSubview(subtitleLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "欢迎使用 iOS 演示应用！\n\n流程：Windows → VS Code → GitHub → Actions → IPA → TrollStore"
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.textColor = .tertiaryLabel
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 280).isActive = true
        stackView.addArrangedSubview(descriptionLabel)
        
        let dateLabel = UILabel()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateLabel.text = "编译时间：\(dateFormatter.string(from: Date()))"
        dateLabel.font = UIFont.systemFont(ofSize: 12)
        dateLabel.textColor = .quaternaryLabel
        stackView.addArrangedSubview(dateLabel)
        
        let actionButton = UIButton(type: .system)
        actionButton.setTitle("点击测试", for: .normal)
        actionButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        actionButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        stackView.addArrangedSubview(actionButton)
        
        let tapCountLabel = UILabel()
        tapCountLabel.text = "点击次数：0"
        tapCountLabel.font = UIFont.systemFont(ofSize: 14)
        tapCountLabel.textColor = .secondaryLabel
        tapCountLabel.tag = 100
        stackView.addArrangedSubview(tapCountLabel)
    }
    
    @objc private func buttonTapped() {
        guard let tapCountLabel = view.viewWithTag(100) as? UILabel else { return }
        
        if let currentText = tapCountLabel.text,
           let count = Int(currentText.components(separatedBy: "：").last ?? "0") {
            let newCount = count + 1
            tapCountLabel.text = "点击次数：\(newCount)"
            
            let alert = UIAlertController(
                title: "成功!",
                message: "你已点击 \(newCount) 次",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "确定", style: .default))
            present(alert, animated: true)
        }
    }
}