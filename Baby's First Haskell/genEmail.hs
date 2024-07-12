-- Auto Generate Email Based on Recipient, Book Title, and Author

to recipient = "Dear " ++ recipient ++ ",\n"
body title = "Thanks for buying " ++ title ++ ".\n"
from author = "Thanks,\n" ++ author

createEmail recipient title author = to recipient ++ body title ++ from author

main :: IO()
main = do
  print "Who is the email for?"
  recipient <- getLine
  print "Book title?"
  title <- getLine
  print "Author name?"
  author <- getLine
  print (createEmail recipient title author)
