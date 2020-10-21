# Complete the staircase function below.
def staircase(n)
  1.upto(n) do |i|
    print " " * (n-i)
    puts '#' * i
  end
end

staircase(4)