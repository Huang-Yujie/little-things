let cityNumber = 4
let city = ["A", "B", "C", "D"]
var isVisited = [true, false, false, false]
let distance =
    [
        [999, 2, 6, 5],
        [2, 999, 5, 4],
        [6, 5, 999, 2],
        [5, 4, 2, 999]
    ]
var path = "A"
var m = 1
var n = 1
var totalDistance = 0
var tempDistance: Int
for _ in 1...cityNumber-1
{
    tempDistance = 9999
    for someCity in 1...cityNumber
    {
        if isVisited[someCity-1]
        {
            continue
        }
        if distance[m-1][someCity-1] < tempDistance
        {
            n = someCity
            tempDistance = distance[m-1][n-1]
        }
    }
    isVisited[n-1] = true
    totalDistance += tempDistance
    path += city[n-1]
    m = n
}
path += "A"
totalDistance += distance[0][n-1]
print(path)
print(totalDistance)
