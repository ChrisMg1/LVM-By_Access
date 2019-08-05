

my_x <- c(3, 4, 1, 5, 7, 3, 9, 0, 6, 5)
my_y <- c(1:length(my_x))

my_x <- c(-100:100)
my_y <- 1/my_x

my_val <- c("y", "n", "n", "n", "y", "y", "y", "n", "y", "n")
my_frame <- data.frame(my_x, my_y, my_val)

print(my_frame)

ggplot(my_frame, aes(x=my_x, y=my_y)) +
  geom_point() + 
  xlab ("X") + 
  ylab("Y")


plot(my_x, my_y)

identify(my_x, my_y)

print(my_frame[5,])
print(my_frame)
