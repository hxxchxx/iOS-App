import UIKit
import SnapKit
import Then

class ViewController: UIViewController {

    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let umLabel = UILabel().then {
        $0.text = "엄"
    }
    let mathJjangLabel = UILabel().then {
        $0.text = "내가 매스짱이다 !"
    }
    let jiMinLabel = UILabel().then {
        $0.text = "지지지지ㅣ지지지지ㅣㄱ지직민"
    }
    let taegyuSunbaeLabel = UILabel().then {
        $0.text = "내가 하얀친구가 있어요"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubView()
        setLayout()
    }
    
    func addSubView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [
            umLabel,
            mathJjangLabel,
            jiMinLabel,
            taegyuSunbaeLabel
        ].forEach { contentView.addSubview($0) }
        
    }
    
    func setLayout() {
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView.contentLayoutGuide)
            $0.height.greaterThanOrEqualTo(view.snp.height).priority(.low)
            $0.width.equalTo(scrollView.snp.width)
            $0.height.equalTo(1200)
        }
        umLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.centerX.equalToSuperview()
        }
        mathJjangLabel.snp.makeConstraints {
            $0.top.equalTo(umLabel.snp.bottom).offset(100)
            $0.centerX.equalToSuperview()
        }
        jiMinLabel.snp.makeConstraints {
            $0.top.equalTo(mathJjangLabel.snp.bottom).offset(100)
            $0.centerX.equalToSuperview()
        }
        taegyuSunbaeLabel.snp.makeConstraints {
            $0.top.equalTo(jiMinLabel.snp.bottom).offset(100)
            $0.centerX.equalToSuperview()
        }
    }
}

