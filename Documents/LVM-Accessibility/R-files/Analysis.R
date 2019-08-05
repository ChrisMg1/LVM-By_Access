


# Rename
colnames(my_mat)[colnames(my_mat)=="MATVALUE(1007)"] <- "BeeLineMat_M1007"
colnames(my_mat)[colnames(my_mat)=="MATVALUE(1006)"] <- "PT_TravelTime_M1006"
colnames(my_mat)[colnames(my_mat)=="MATVALUE(1004)"] <- "PT_Demand_M1004"
colnames(my_mat)[colnames(my_mat)=="MATVALUE(1008)"] <- "Private_Demand_M1008"
colnames(my_mat)[colnames(my_mat)=="MATVALUE(1009)"] <- "Business_Demand_M1009"
colnames(my_mat)[colnames(my_mat)=="MATVALUE(1010)"] <- "Full_Demand_M1010"


# Filter LVM-specific PT
my_sub_mat <- my_mat[my_mat$PT_TravelTime_M1006 < 10000] # & my_mat$Full_Demand_M1010 > 0]


# Extract Bee Line from characted Import
my_sub_mat$BeeLineMat_M1007 = as.numeric(str_sub(my_sub_mat$DIRECTDIST, 1, str_length(my_sub_mat$DIRECTDIST)-2))


# Add row for Bee Line per Time [km / min]
my_sub_mat$beePERtime = my_sub_mat$BeeLineMat / my_sub_mat$PT_TravelTime_M1006




# Add row for Time per Bee Line [min / km]
# my_sub_mat$timePERline = my_sub_mat$PT_TravelTime_M1006 / my_sub_mat$BeeLineMat
