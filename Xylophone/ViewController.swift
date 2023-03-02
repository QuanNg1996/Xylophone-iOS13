import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(resource: String) {
        let url = Bundle.main.url(forResource: resource, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }

    
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.layer.opacity = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.layer.opacity = 1
        }
        
        playSound(resource: sender.currentTitle!)
    }
}

