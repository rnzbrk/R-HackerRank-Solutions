gradingStudents <- function(grades) {
  for(i  in 1:length(grades)){
  if(grades[i] < 38 ){
    grades[i] <- grades[i]
  } else if ((5-(grades[i] %% 5)) >= 3){
    grades[i] <- grades[i]
  } else  if ((5-(grades[i] %% 5)) < 3) {
    grades[i] <- grades[i] + (5-(grades[i] %% 5)) 
    }
  }
  return(grades)
}
