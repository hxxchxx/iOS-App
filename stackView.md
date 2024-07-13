    import UIKit
    import Then
    import SnapKit
    
    class ViewController: UIViewController {
        let stackView = UIStackView().then {
            $0.axis = .vertical
            $0.spacing = 10
            $0.distribution = .fillEqually
        }
    }
    
    let redView = UIView().then {
        $0.backgroundColor = .red
    }
    
    let greenView = UIView().then {
        $0.backgroundColor = .green
    }
    
    let blueView = UIView().then {
        $0.backgroundColor = .blue
    }
    let orangeView = UIView().then {
        $0.backgroundColor = .orange
    }
    let violetView = UIView().then {
        $0.backgroundColor = .purple
    }
    let yellowView = UIView().then {
        $0.backgroundColor = .yellow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(stackView)
        [
            redView, greenView, blueView,orangeView,violetView,yellowView
        ].forEach { stackView.addArrangedSubview($0) }
        
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            
        }
        
    }

}