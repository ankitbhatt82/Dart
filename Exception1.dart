class WithdrawException implements Exception {
  String errorMessage() {
    return "Withdrawal amount exceeds available balance.";
  }
}

class Accounts {
  double amount;

  Accounts(this.amount);

  void makeWithdraw(double withdrawalAmount) {
    if (withdrawalAmount > amount) {
      throw WithdrawException();
    } else {
      amount -= withdrawalAmount;
      print("Withdrawn: \$${withdrawalAmount.toStringAsFixed(2)}");
    }
  }

  void creditAmount(double creditAmount) {
    if (creditAmount < 0) {
      print("Invalid credit amount.");
    } else {
      amount += creditAmount;
      print("Credited: \$${creditAmount.toStringAsFixed(2)}");
    }
  }
}

void main() {
  try {
    var account = Accounts(1000.0);
    account.makeWithdraw(200.0);
  } catch (e) {
    if (e is WithdrawException) {
      print("Error: ${e.errorMessage()}");
    } else {
      print("An unexpected error occurred.");
    }
  }
}
