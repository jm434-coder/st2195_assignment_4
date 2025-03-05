# Radius
r <- 2

# Function to compute the volume of a sphere with radius r
volume <- function(r, rho){
  4/3 * pi * r^3
}

# Function to compute the volumes of the spheres with radius r, r^2 and r^3
volume_vector <- function(r){
  rs <- c(r, r^2, r^3)
  volumes <- numeric(length(rs))
  for (i in seq_along(rs)){
    volumes[i] <- volume(rs[i])
  }
  return(volumes)
}

# Run volume_vector(r) and print the volumes of the spheres with radius r, r^2 and r^3
print(volume_vector(r))