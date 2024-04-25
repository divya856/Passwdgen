# Function to check password strength
check_password_strength <- function(password) {
  # Define a regular expression to check password strength
  strong_pattern <- "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$"
  
  if (grepl(strong_pattern, password)) {
    return("Strong")
  } else {
    return("Weak")
  }
}

# Example usage
password <- readline(prompt="Enter your password: ")
strength <- check_password_strength(password)
print(paste("Your password strength is:", strength))
