void main() {
  String result;
  result = isPrimeTillThis(100);
  print(result);
}

String isPrimeTillThis(int num) {
  String result = '';
  
  for (int i = 2; i <= num; i++)
{
    if (isPrime(i)) {
      result += 'The given number $i is a Prime Number\n';
    } else {
      result += 'The given number $i is Not a Prime Number\n';
    }
  }
  
  return result;
}

bool isPrime(int n) {
  if (n <= 1) return false;
  if (n <= 3) return true;
  if (n % 2 == 0 || n % 3 == 0) return false;
  
  for (int i = 5; i * i <= n; i += 6) {
    if (n % i == 0 || n % (i + 2) == 0) return false;
  }
  
  return true;
}
