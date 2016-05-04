//: Playground - noun: a *place* where people can play

import UIKit

var str = "Hello, playground"
var str2 : String = "Hello"
str2 = "Goodbye"

let anInt = 5
anInt + 3
anInt - 5

let plane = "✈️"
let train = "choo choo"

let a = 5, b = 3, c = 6

if anInt > 3 && anInt < 200
{
    print("It is greater than 3!")
}
else{
    
}

if anInt == 0
{
    print("It equals 0!")
}

let something = 3.0
let anotherThing : Float32 = 3.0
let aBool = true

var anOptionalInt : Int? = 3
anOptionalInt = nil
var aNonOptionalInt = 3
aNonOptionalInt += 3

/*anOptionalInt = nil
anOptionalInt! += 4*/

anOptionalInt = 1
if anOptionalInt != nil
{
    anOptionalInt! + 1
}

if let unwrappedInt = anOptionalInt
{
    unwrappedInt + 5
}

anOptionalInt?.description
anOptionalInt = nil
anOptionalInt?.description

var meatArray = ["chicken","beef","pork"]
meatArray[0]
meatArray.append("fish")
meatArray.insert("venison", atIndex: 0)
meatArray.removeAtIndex(3)
meatArray

var translations = ["Hello":"Bon Jour","Goodbye":"toodles"]
//var meatDict = [0:"chicken",1:"beef",2:"pork"]
//meatDict[0]

translations["Hello"]
translations["I love Swift"] = "Iay ovelay wiftsay"
translations["turkey"]

if let hello = translations["Hello"]
{
    // do stuff in here
}
//translations["Hello"] = nil
//translations.removeValueForKey("Goodbye")

let status = (404, "File Not Found")
status.0
let error500 = (statusCode : 500, errorMessage : "Server Error")
error500.statusCode
error500.0

let primes = (2,3,5,7,11,13,17)
primes.3

var i = 0
i += 1

for meat in meatArray
{
    print("Tasty: \(meat)")
}
for (key, object) in translations
{
    print("\(key) translates to \(object)")
}
for (index, meat) in meatArray.enumerate()
{
    print("\(meat) is at position \(index)")
}
var end = 7
for index in (0..<end).reverse()
{
    print(index)
    if index == 3
    {
        end = -5
    }
}

var gameOver = false
while !gameOver
{
    // play the game
    gameOver = true
}

repeat {
    // do something
}
while !gameOver

for index in 0...9
{
    if index == 5
    {
        break
    }
    print("looping")
}
for index in 0...3
{
    if index == 1
    {
        continue
    }
    print("looping")
}

outerLoop: for index in 1...5
{
    for jindex in 1...5
    {
        if jindex == 3 && index == 2
        {
            break outerLoop
        }
        print("loop! \(index) \(jindex)")
    }
}

enum Drink {
    case CocaCola
    case Sprite
    case Fanta
    case Water
//    case Tea(milk: Bool, sugars : Int)
//    case Coffee(milk: Bool, sugars : Int)
}

let drink = Drink.CocaCola

switch drink {
case .CocaCola:
    print ("Adds life")
case .Sprite:
    print ("LEMONADE")
case .Fanta:
    print ("those weird ads with the CGI people")
//case .Tea(milk: false, sugars: _):
//    print ("it's tea without milk")
//case .Tea(milk: true, let sugars):
//    print ("it's tea with milk and \(sugars) sugars")
//case .Tea:
//    print ("it's tea. pretty regular tea.")
default:
    break
}

//let drink = "Coca Cola"
//
//switch drink {
//case "Coca Cola":
//    print("Adds life")
//default:
//    print("Some generic brand. Probably bad.")
//}



func hello() {
    print("Hello from within a function!")
}

hello()

//func loadData(dataType : String, location : String) {
//    
//}
//
//loadData("secret files", location: "the internet")

func addNumber(
    number : Int,
    _ anotherNumber : Int
    ) -> Int {
    
    return number + anotherNumber
}

addNumber(1, 2)

func addNumbersAndMultiply(multiplicand: Int, numbers : Int...) -> Int {
    var i = 0
    for number in numbers {
        i += number
    }
    return i
}

addNumbersAndMultiply(2, numbers: 1,2,3,4,5)

var myFunc = addNumber

myFunc(2,3)


func multiplyNumbers(a: Int, _ b: Int) -> Int {
    return a * b
}

myFunc = multiplyNumbers

myFunc(2,3)

myFunc = {
    $0 / $1
}

myFunc(4,2)

typealias TwoNumberFunc = (Int, Int) -> Int

var myOtherFunc : TwoNumberFunc = { $0 - $1 }

typealias OneNumberFunc = (Int) -> Int

func doSomethingToANumber(number : Int, thing : OneNumberFunc) -> Int {
    
    return thing(number)
    
}

doSomethingToANumber(5, thing: { $0 + 1 })

func makeAdder(value : Int) -> (Int) -> Int {
    return { $0 + value }
}

let addFive = makeAdder(5)

addFive(1)



let source = [ 1, 2, 4, 8 ]

let doubled = source.map( { $0 * 2 } )

let sum = source.reduce(0, combine: { $0 + $1 } )


let appendedString = source.reduce("", combine: {
    $0.stringByAppendingString($1.description)
})

let onlyDividedByFour = source.filter({ (item) -> Bool in
    return item % 4 == 0
})

let sorted = source.sort {
    $0 > $1
}

sorted

var firstInt = 5
var secondInt = firstInt
firstInt += 3
secondInt

var firstView = UIView(frame: CGRect(x: 1, y: 1, width: 100, height: 100))
firstView.backgroundColor = UIColor.redColor()
var secondView = firstView
secondView.backgroundColor = UIColor.blueColor()
firstView
if firstView === secondView
{
    print("They are the same object")
}

struct Rectangle
{
    var width = 100
    var height = 100
    
    func area() -> Int
    {
        return width * height
    }
}

var rectangle = Rectangle(width: 30, height: 100)
rectangle.height = 30
var rectangle2 = rectangle
rectangle2.height = 100
rectangle.height
rectangle.area()

class Lightbulb
{
    var brightness = 1

    var colour = UIColor.yellowColor()
    
    func turnOff()
    {
        self.brightness = 0
    }
    func turnOn()
    {
        self.brightness = 1
    }
}

class LEDLightBulb : Lightbulb
{
    var numberOfIndiviudalLights = 5
    
    override func turnOff() {
        if self.brightness > 0
        {
            self.brightness = 0
        }
    }
}
let ledLight = LEDLightBulb()
ledLight.brightness
ledLight.turnOff()
ledLight.brightness

extension Int
{
    func square() -> Int
    {
        return self * self
    }
}
6.square()

class EquilateralTriangle
{
    var sideLength : Double
    
    init()
    {
        self.sideLength = 32.0
    }
}

let triangle = EquilateralTriangle()

class FileSaver
{
    var file = "~/Desktop/importantThing.json"
}

class DataWrangler
{
    lazy var fileSaver = FileSaver()
    var data = [String]()
}
let wrangler = DataWrangler()
wrangler.data.append("Something secret")
wrangler
wrangler.fileSaver
wrangler

struct Square
{
    var sideLength = 10.0
    var area : Double {
        get {
            return sideLength * sideLength
        }
        set
        {
            self.sideLength = sqrt(newValue)
        }
    }
}
var square = Square(sideLength: 5)
square.area
square.area = 100
square.sideLength

class Counter
{
    var count : Int = 0 {
        willSet(newCount){
            print("changing the counter to \(newCount)")
        }
        didSet {
            if count > oldValue
            {
                print("added more to the counter")
            }
            else
            {
                print("removed from the counter")
            }
        }
    }
}
let counter = Counter()
counter.count = 3

struct Music
{
    static var systemVolume = 1
    var currentVolume : Int = 0 {
        didSet {
            if self.currentVolume > Music.systemVolume
            {
                Music.systemVolume = self.currentVolume
            }
        }
    }
}

var song = Music()
song.currentVolume = 3

var anotherSong = Music()
anotherSong.currentVolume = 1

Music.systemVolume

class Colour
{
    var red, green, blue : Double
    
    init ()
    {
        red = 1
        blue = 1
        green = 1
    }
    
    init (red: Double, blue: Double, green: Double)
    {
        self.red = red
        self.blue = blue
        self.green = green
    }
}
let green = Colour(red: 0, blue: 0, green: 1)

struct Metre
{
    var distance : Double
    init (_ metre: Double)
    {
        self.distance = metre
    }
}
let twoMetres = Metre(2)//Metre(distance: 2)

class Meat
{
    var name : String
    var isTasty : Bool
    
    init (name: String, isTasty: Bool)
    {
        self.name = name
        self.isTasty = isTasty
    }
    convenience init (name : String)
    {
        self.init(name: name, isTasty: true)
    }
    
    deinit {
        print("I ate it")
    }
}
/*var steak : Meat? = Meat(name: "Porterhouse")
steak?.isTasty
steak = nil*/

func doStuff()
{
    var steak : Meat? = Meat(name: "Porterhouse")
    steak?.isTasty
}
doStuff()

protocol Huggable
{
    func hug()
    var awkwardness : Int {get set}
}

class TeddyBear : Huggable
{
    var awkwardness: Int = 1
    func hug()
    {
        print("Oh dear it made a terrifying squeel")
        self.awkwardness = 4
    }
    func picnic()
    {
        print("woo")
    }
}
let edward = TeddyBear()
edward.hug()
edward.picnic()

let huggingMachine : Huggable = edward
huggingMachine.hug()
huggingMachine.awkwardness

class Tree <T : Equatable> {
    
    var data : T
    
    var children : [Tree] = []
    
    init (data : T) {
        self.data = data
    }
    
    func addChild(data : T) -> Tree {
        let newNode = Tree(data: data)
        children.append(newNode)
        return newNode
    }
    
    func search(data : T) -> Tree? {
        if self.data == data {
            return self
        }
        
        for child in self.children {
            let result = child.search(data)
            if result != nil {
                return result
            }
        }
        
        return nil
    }
}

let topNode = Tree(data: 3)
topNode.addChild(5)

let topNodeString = Tree(data: "Hello")


topNodeString.data

func isBiggerThan(first : Int, _ second : Int) -> Bool {
    
    
    return first > second
}

func isBiggerThan<T : Comparable>(first : T, _ second : T) -> Bool {
    
    if first is Int {
        print ("btw first is an Int")
    }
    
    return first > second
}

isBiggerThan(2, 3)

func timesFive(number : Int) -> Int {
    
    return number * 5
    
}

func isEven(number : Int) -> Bool {
    return number % 2 == 0
}

func compose<T, U, V>( firstFunction : T -> U, _ secondFunction : U -> V ) -> T -> V {
    
    return { secondFunction(firstFunction($0)) }
    
}

let isEvenWhenTimesFive = compose(timesFive, isEven)

isEvenWhenTimesFive(3)

func numberOfCharacters(str : String) -> Int {
    return str.characters.count
}

let isNumberOfCharactersEven = compose(numberOfCharacters, isEven)

func loadDataFromURL(url : String) {
    
    guard url.hasPrefix("http") else {
        print ("error")
        return
    }
    
    print("downloading from \(url)")
    
}

func drawSomething() -> UIImage {
    
    UIGraphicsBeginImageContext(CGSize(width: 100, height: 100))
    
    defer {
        UIGraphicsEndImageContext()
    }
    
    let circle = UIBezierPath(ovalInRect: CGRect(x: 0, y: 0, width: 100, height: 100))
    
    circle.fill()
    
    return UIGraphicsGetImageFromCurrentImageContext()
    
}

drawSomething()

extension String : ErrorType { }

func enjoyADrink(beverage : Drink) throws -> String {
    
    guard beverage != Drink.Fanta else {
        
        // Fanta is gross
        throw "problem"
        
    }
    
    switch (beverage) {
    case .CocaCola:
        return "nice"
    default:
        return "it's ok"
    }
    
}

struct Foo : CustomStringConvertible, CustomDebugStringConvertible {

    var description : String {
        return "foo"
    }
    
    var debugDescription: String {
        return "this is the minutely technical description"
    }

}

Foo().description



let result = try! enjoyADrink(Drink.CocaCola)

do {
    try enjoyADrink(Drink.Fanta)
    
    print ("Ahhhhh")
    
} catch let error as String {
    print ("Encountered a string error: \(error)")
} catch let error {
    print ("Encountered some other type of error")
}

func addNumberInPlace(number : Int, inout targetNumber : Int) {
    targetNumber += number
}

var num = 5
addNumberInPlace(10, targetNumber: &num)
num

let data = NSMutableData(capacity: 2048)

























