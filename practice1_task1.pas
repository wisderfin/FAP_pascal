program CalculateFunction;

uses
  Math;

var
  x, result: real;

begin
  x := -1;
  result := (cos(x)/sin(x)) + sqrt(abs(x));
  writeln('f(x) = ', result);
end.
