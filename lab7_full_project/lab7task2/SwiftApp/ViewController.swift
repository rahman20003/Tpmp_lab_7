import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureIndicator: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        gestureIndicator.isUserInteractionEnabled = true
        gestureIndicator.textAlignment = .center
        gestureIndicator.numberOfLines = 2
        gestureIndicator.text = "Используйте жесты"
        gestureIndicator.backgroundColor = .yellow
    }

    @IBAction func tap(_ sender: Any) {
        gestureIndicator.text = "Жест: касание\nЦвет: зеленый"
        gestureIndicator.backgroundColor = .green
    }

    @IBAction func pinch(_ sender: Any) {
        gestureIndicator.text = "Жест: масштабирование\nЦвет: красный"
        gestureIndicator.backgroundColor = .red
    }

    @IBAction func rotation(_ sender: Any) {
        gestureIndicator.text = "Жест: вращение\nЦвет: синий"
        gestureIndicator.backgroundColor = .blue
    }

    @IBAction func swipe(_ sender: Any) {
        gestureIndicator.text = "Жест: смахивание\nЦвет: серый"
        gestureIndicator.backgroundColor = .lightGray
    }

    @IBAction func longPress(_ sender: Any) {
        gestureIndicator.text = "Жест: долгое нажатие\nЦвет: оранжевый"
        gestureIndicator.backgroundColor = .orange
    }
}
