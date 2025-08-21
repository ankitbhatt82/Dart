//Your program should have two classes – one for the ordinary books - Book, and another for the special ones – GoldenEditionBook

//Book - represents a book that holds title, author and price. A book should offer information about itself in the format shown in the output below

//GoldenEditionBook - represents a special book holds the same properties as any Book, but its price is always 30% higher
/*
Constraints:

If the author has two names and the second name is starting with a digit- give an error message: "Author not valid!"
If the title's length is less than 3 symbols - give an error message: "Title not valid!"
If the price is zero or it is negative - give an error message: "Price not valid!"

| Book |
|  - author: String |
|  - title: String  |
|  - price: Double  |
|  + Book(author, title, price) |
|  - setters        |
|  + getters        |
|  + toString       |
|  + containsDigit(String)      |


| GoldenEditionBook |
|  - price: Double  |
|  + getPrice () : double |

*/

class Book {
  String author;
  String title;
  double price;

  Book(this.author, this.title, this.price) {
    validateAuthor();
    validateTitle();
    validatePrice();
  }

  void validateAuthor() {
    if (containsDigit(author.split(" ")[1])) {
      throw "Author not valid!";
    }
  }

  void validateTitle() {
    if (title.length < 3) {
      throw "Title not valid!";
    }
  }

  void validatePrice() {
    if (price <= 0) {
      throw "Price not valid!";
    }
  }

  bool containsDigit(String input) {
    return input.runes.any((rune) => rune >= 48 && rune <= 57);
  }

  String toString() {
    return "Author: $author, $title, $price";
  }
}

class GoldenEditionBook extends Book {
  GoldenEditionBook(String author, String title, double price)
      : super(author, title, price);

  @override
  double get price => super.price * 1.3;

  double getPrice() {
    return price;
  }
}

void main() {
  try {
    Book book =
        Book("J.K. Rowling", "Harry Potter and the Sorcerer's Stone", 20);
    print(book.toString());

    GoldenEditionBook goldenBook =
        GoldenEditionBook("Dan Brown", "The Da Vinci Code", 25);
    print(goldenBook.toString());
    print("Price of Golden Edition Book: ${goldenBook.getPrice()}");
  } catch (e) {
    print(e);
  }
}
