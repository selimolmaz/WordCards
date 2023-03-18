import Foundation

protocol Drawable {
    func draw()
}

protocol Soundable {
    func playSound()
}

struct Button: Drawable, Soundable {
    func draw() {
        // Button drawing implementation
    }
    
    func playSound() {
        // Button sound implementation
    }
}

/*
    Yukarıdaki örnekte, Button yapısı Drawable ve Soundable protokollerini benimsemiştir. Bu, Button yapısının hem Drawable hem de Soundable protokollerinde tanımlanmış olan özellikleri uygulayabileceği anlamına gelir. Button yapısı, draw() ve playSound() metodlarını uygulamak zorundadır.
 
    Protokol benimsemesi aynı zamanda, bir sınıfın veya yapının kendine özgü özelliklerine ek olarak belirli işlevselliği de sağlar. Örneğin, bir Rectangle sınıfı ayrıca Drawable protokolünü benimseyebilir ve draw() metodunu uygulayabilir. Bu, Rectangle nesnelerinin, Drawable protokolündeki özelliklere sahip olan diğer nesnelerle birlikte çalışabilir hale gelmesini sağlar.
 */
