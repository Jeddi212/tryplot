require "matplotcr"

rnd = Random.new(100)

n = 10
xc = Array.new(n+1) {rnd.rand*200}
yc = Array.new(n+1) {rnd.rand*100}

line = Matplotcr::LinePlot.new(xc, yc, colour="blue", linestyle="--")
depot = Matplotcr::ScatterPlot.new(xc[0..0], yc[0..0], colour="red", marker="*")
node = Matplotcr::ScatterPlot.new(xc[1..], yc[1..], colour="green")

figure = Matplotcr::Figure.new
figure.add line
figure.add depot
figure.add node
figure.save "docs/images/test_node.png"