var unsortedString = [String]();

while let line = readLine() {
    if(line.count == 0) {break;}
    unsortedString.append(line)
}

func compare(Left:String, Right:String) -> Bool {
    let L = Left.lowercased().filter({("abcdefghijklmnopqrstuvwxyz").contains($0)})
    let R =  Right.lowercased().filter({("abcdefghijklmnopqrstuvwxyz").contains($0)})
    if L < R {
        return true
    } else if L > R {
        
        return false
    }
    return true
}


func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}

var array = unsortedString
func sort() {
    for i in 0 ..< array.count - 1 {
        
        var min = i
        for n in i ..< array.count {
            if compare(Left:array[n], Right:array[min]) {
                min = n
            }
        }
        
        swap(integers: &array, firstIndex: min, secondIndex: i)
    }
}


sort()
