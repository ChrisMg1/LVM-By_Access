
# Print test
print(head(my_sub_mat))
print(median(my_sub_mat$beePERtime))


print(my_sub_mat[which.max(my_sub_mat$beePERtime),])


print(my_sub_mat[my_sub_mat$beePERtime < 1])

print(my_sub_mat[which.min(abs(my_sub_mat$beePERtime-mean(my_sub_mat$beePERtime))),])

print(mean(my_sub_mat$beePERtime))

# Histogram of PT Travel Time without any further evaluation
hist(my_sub_mat$PT_TravelTime_M1006, main="Travel Time Public Transport (NO EVALUATION)", xlab="Minutes", col = "lightblue")

# Histogram of Full Demand without any further evaluation
hist(my_sub_mat$Full_Demand_M1010, main="Total Demand (NO EVALUATION)", xlab="Trips", col = "lightblue")

# Histogram of PT Speed without any further evaluation
hist(my_sub_mat$beePERtime, main="Travel Time Public Transport (BEELINE PER TIME [km / min])", xlab="Kilometer per minutes", col = "green")


# Histogram of PT Travel Time weighted with PT demand
weighted.hist(my_sub_mat$PT_TravelTime_M1006, my_sub_mat$PT_Demand_M1004, breaks=seq(0, 600, by=10), ylim=c(0,1400000), main="Travel Time Public Transport (Weighted with Demand PT)", xlab = "minutes")

# Histogram of PT Travel Time weighted with Full demand
weighted.hist(my_sub_mat$PT_TravelTime_M1006, my_sub_mat$Full_Demand_M1010, main="Travel Time Public Transport (Weighted with FULL Demand)", xlab = "minutes")




# Plot Demand, Bee Line and PT speed in 2D and 3D all together

ggplot(my_sub_mat, aes(x=Full_Demand_M1010, y=beePERtime)) +
  geom_point() + 
  xlab ("demand") + 
  ylab("PT speed")

ggplot(my_sub_mat, aes(x=Full_Demand_M1010, y=BeeLineMat_M1007)) +
  geom_point() + 
  xlab ("demand") + 
  ylab("distance")

ggplot(my_sub_mat, aes(x=beePERtime, y=BeeLineMat_M1007)) +
  geom_point() + 
  xlab ("PTspeed") + 
  ylab("distance")


scatter3d(x = my_sub_mat$Full_Demand_M1010, y = my_sub_mat$beePERtime, z = my_sub_mat$BeeLineMat_M1007, xlab = "demand", ylab = "PT speed", zlab = "distance", point.col = "blue", surface=FALSE)

scatter3d(x = my_sub_mat$Full_Demand_M1010, y = my_sub_mat$PT_TravelTime_M1006, z = my_sub_mat$BeeLineMat_M1007, xlab = "demand", ylab = "PT TravelTime", zlab = "distance", point.col = "blue", surface=FALSE)

