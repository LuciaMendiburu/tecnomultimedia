boolean clickBotonOK() {
  if (mouseX > width/2) {
    return true;
  }
  return false;
}

boolean clickBotonKO() {
  if (mouseX < width/2) {
    return true;
  }
  return false;
}
