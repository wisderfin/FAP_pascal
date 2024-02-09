program AverageFractionArray;

type
  Fraction = record
    numerator: integer;   // числитель
    denominator: integer; // знаменатель
  end;

  FractionArray = array of Fraction;

function GCD(a, b: integer): integer;
begin
  // Нахождение наибольшего общего делителя (НОД)
  while b <> 0 do
  begin
    a := a mod b;
    a := a xor b;
    b := b xor a;
    a := a xor b;
  end;
  GCD := a;
end;

function SimplifyFraction(var frac: Fraction): Fraction;
var
  gcdValue: integer;
begin
  // Находим НОД числителя и знаменателя
  gcdValue := GCD(frac.numerator, frac.denominator);

  // Сокращаем дробь
  frac.numerator := frac.numerator div gcdValue;
  frac.denominator := frac.denominator div gcdValue;

  SimplifyFraction := frac;
end;

function AverageFraction(arr: FractionArray): Fraction;
var
  sum: Fraction;
  i: integer;
begin
  // Инициализируем сумму
  sum.numerator := 0;
  sum.denominator := 1;

  // Считаем сумму всех дробей
  for i := 0 to Length(arr) - 1 do
  begin
    sum.numerator := sum.numerator * arr[i].denominator + arr[i].numerator * sum.denominator;
    sum.denominator := sum.denominator * arr[i].denominator;
  end;

  // Находим среднее арифметическое
  sum.numerator := sum.numerator div Length(arr);

  // Сокращаем дробь
  AverageFraction := SimplifyFraction(sum);
end;

var
  arr: FractionArray;
  avg: Fraction;
  i: integer;

begin
  // Инициализация массива дробей
  SetLength(arr, 5);
  arr[0].numerator := 1;
  arr[0].denominator := 2;
  arr[1].numerator := 3;
  arr[1].denominator := 4;
  arr[2].numerator := 1;
  arr[2].denominator := 5;
  arr[3].numerator := 2;
  arr[3].denominator := 5;
  arr[4].numerator := 7;
  arr[4].denominator := 10;

  // Находим среднее арифметическое
  avg := AverageFraction(arr);

  // Выводим результат
  writeln('Среднее арифметическое дробей: ', avg.numerator, '/', avg.denominator);
end.
