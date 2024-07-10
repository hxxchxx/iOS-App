**import** UIKit

**import** Then

**import** SnapKit



**class** ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

 

  **let** tableView = UITableView().then{

​    $0.register(CustomTableViewCell.**self**, forCellReuseIdentifier: "cell")

​    $0.rowHeight = 100

  }



   

   

  **override** **func** viewDidLoad() {

​    **super**.viewDidLoad()

​    view.backgroundColor = .white

​    title = "제목"

​     

​    tableView.delegate = **self**

​    tableView.dataSource = **self**

​    view.addSubview(tableView)

​    tableView.snp.makeConstraints { make **in**

​      make.edges.equalToSuperview()

​    }

​    

​    

  }

   

  **func** numberOfSections(in tableView: UITableView) -> Int {

​    **return** 1

  }

   

   

  **func** tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

​    **return** 20

  }

   

  

  **func** tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

​    **let** cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) **as**! CustomTableViewCell

​    

​    cell.titleLabel.text = "title"

​    cell.contentLabel.text = "content"

​     

​    **return** cell

  }

   

  

   

   

  **func** tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

​    tableView.deselectRow(at: indexPath, animated: **true**)

​    print("Selected row: \(indexPath.row + 1)")

  }

}