int convertHourToMealType(int hour){
  if (hour >= 5 && hour < 10) {
    return 0; // Bữa sáng
  } else if (hour >= 10 && hour <= 14) {
    return 1; // Trưa
  } else if (hour >= 17 && hour <= 22) {
    return 2; // Tối
  } else {
    return 3; // Khác
  }
}