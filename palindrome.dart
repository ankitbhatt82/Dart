bool checkPalindrome(String str) {
  int i = 0, j = str.length - 1;
  while (i < j) {
    if (str[i] != str[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}

void main() {
  String str = 'nitin';
  bool isString = checkPalindrome(str);
  if (isString) {
    print('$str is palindrome');
  } else {
    print('$str is not palindrome');
  }
}
