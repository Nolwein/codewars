def persistence(n)
    count = 0 # Initialize a variable to keep track of the number of multiplications
  while n >= 10 # Continue the loop until the number has only one digit
    n_str = n.to_s  # convertissez la valeur de n en une chaîne de caractères (string) et la stockez dans la variable n_str. Cela vous permettra d'accéder aux chiffres individuels de n.
    n = n_str.chars.map(&:to_i).reduce(:*) # Multiply the digits together using reduce and convert it back to an integer
    count +=1 # Increment the count
  end
  return count # Return the number of multiplicative persistence
end

def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
end

# .to_s : Nous convertissons n en une chaîne de caractères (String) afin de pouvoir accéder à ses chiffres individuellement. Cette étape est nécessaire pour extraire les chiffres de n.
# .chars = Vous divisez la chaîne n_str en un tableau de caractères individuels. Pour n = 349, cela deviendrait ["3", "4", "9"].
# .map(&:to_i) : utilisez la méthode map pour convertir chaque caractère en un entier. Le résultat sera un tableau d'entiers, soit [3, 4, 9].
# .reduce(:*) : Vous utilisez la méthode reduce avec l'opérateur de multiplication (*) pour multiplier tous les entiers du tableau ensemble. Dans cet exemple, cela donnera 3 * 4 * 9, soit 108.
