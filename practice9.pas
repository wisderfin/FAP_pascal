program PrintDuplicateLetters;

const
  MAX_LENGTH = 1000; // Максимальная длина текста

var
  text: string;
  letterCounts: array['a'..'z'] of integer;
  ch: char;

begin
  // Инициализация массива счетчиков
  for ch := 'a' to 'z' do
    letterCounts[ch] := 0;

  // Ввод текста
  writeln('Введите текст из строчных латинских букв, заканчивающийся точкой:');
  readln(text);

  // Подсчет количества каждой буквы в тексте
  for ch in text do
  begin
    if (ch >= 'a') and (ch <= 'z') then
      Inc(letterCounts[ch]);
  end;

  // Печать букв, встречающихся не менее двух раз
  writeln('Буквы, встречающиеся не менее двух раз:');
  for ch := 'a' to 'z' do
  begin
    if letterCounts[ch] >= 2 then
      writeln(ch);
  end;
end.
