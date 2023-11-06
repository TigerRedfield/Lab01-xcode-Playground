/*
 Vasilev, 403 group
 */

import UIKit

print("Vasilev")

var tx1:Float = 2.5;
var tx2:Float = 2.45;

print(tx1 + tx2);

print(tx1*tx2);

print(tx1-tx2);

print(tx1/tx2);

var str:String = "Hello";

print("\(str), first \(tx1) and second \(tx2)");

/* roots Discriminant*/

import UIKit

var rx1:Float = 2.0;
var rx2:Float = 7.0;
var rx3:Float = -4.0;

var Dx = rx2 * rx2 - 4.0 * rx1 * rx3;
print("Dx = \(Dx)");

if(Dx < 0)
{
    print("no roots");
}
else if (Dx == 0)
{
    let kx1:Float = -rx2/(2.0 * rx1);
    print("kx1 = \(kx1)");
}
else
{
    let kx1:Float = (-rx2 - sqrt(Dx))/(2.0 * rx1);
    let kx2:Float = (-rx2 + sqrt(Dx))/(2.0*rx1);
    
    print("kx1 = \(kx1), kx2 = \(kx2)");
}

/* Point in Rectangle */
var x0:Float = 5.0;
var y0:Float = 5.0;

var x1:Float = 5.0;
var y1:Float = 5.0;

var px:Float = 6.0;
var py:Float = 5.0;

print("x0 = \(x0), y0 = \(y0)")
print("x1 = \(x1), y1 = \(y1)")


if(px > x0 && px < x1 && py > y0 && py < y1)
{
    print("px = \(px), py = \(py)");
    print("Point in Rectangle - Lower-Left");
}
else if (px < x0 && px > x1 && py > y0 && py < y1)
{
    print("px = \(px), py = \(py)");
    print("Point in Rectangle - Upper-Left");
}
else if (px < x0 && px > x1 && py < y0 && py > y1)
{
    print("px = \(px), py = \(py)");
    print("Point in Rectangle - Upper-Right");
}
else if (px > x0 && px < x1 && py < y0 && py > y1)
{
    print("px = \(px), py = \(py)");
    print("Point in Rectangle - Lower-Right");
}
else if (px == x0 && px == x1 && py == y0 && py == y1)
{
    let cpx:Float = px/2;
    let cpy:Float = py/2;
    print("cpx = \(cpx), cpy = \(cpy)");
    print("Point in Rectangle - Center");
}
else
{
    print("Point Rectangle - Miss")
}

/* Numbers From 2 To 4 Multiplied by 3  */
for i in 2...4
{
    let mult:Int = i * 3;
    print("\(i): \(mult)");
}

var Arstr:[String] = []

Arstr.append("Persona 1");
Arstr.append("Persona 2");
Arstr.append("Persona 2-1");
Arstr.append("Persona 2-2");
Arstr.append("Persona 3");

for i in 0...(Arstr.count - 1)
{
    print("\(i):", Arstr[i]);
}

Arstr.remove(at: 1);
Arstr.remove(at: 3);

for r in Arstr
{
    print(r);
}


var ar:[Int] = []
for n in 1...8
{
    ar.append(Int.random(in: -5...15))
}
print(ar);

print("Min: \(ar.min()!)");
print("Max: \(ar.max()!)");

var minNum = ar[0]
var maxNum = ar[0]

for n in ar {
    if minNum > n {
        minNum = n;
    }
    else if maxNum < n {
        maxNum = n;
    }
}

print("Min: \(minNum)");
print("Max: \(maxNum)");

var sum = 0;
var count = 0;

for n in ar {
    sum += n;
    count += 1;
}

var average = Double(sum)/Double(count);
print("Average: \(average)");

ar.sort();
print("funcSort: \(ar)");

for i in 0..<ar.count {
    for j in 0..<ar.count-i-1{
        if ar[j] > ar[j+1] {
            let temp = ar[j]
            ar[j] = ar[j+1]
            ar[j+1] = temp
        }
    }
}


print("SortBubble: \(ar)");


