def count_by(x, n)
  #x est le multiple
  #n est le nombre de chiffre dans l'array
  # le premier chiffre de l'array est x
  #récupérer x et le multiplier
  (1..n).map { |i| i * x}
end

puts count_by(2,5)
