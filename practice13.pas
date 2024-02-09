program InsertElementsAfterFirstOccurrence;

type
  ListNodePtr = ^ListNode;
  ListNode = record
    data: integer;
    next: ListNodePtr;
  end;

procedure InsertAfterFirstOccurrence(var L: ListNodePtr; E: integer);
var
  currentNode, newNode, tempNode: ListNodePtr;
begin
  // Поиск первого вхождения элемента E
  currentNode := L;
  while (currentNode <> nil) and (currentNode^.data <> E) do
    currentNode := currentNode^.next;

  // Если элемент E найден, вставляем элементы за ним
  if currentNode <> nil then
  begin
    tempNode := currentNode^.next;
    while tempNode <> nil do
    begin
      newNode := new(ListNodePtr);
      newNode^.data := tempNode^.data;
      newNode^.next := currentNode^.next;
      currentNode^.next := newNode;
      currentNode := newNode;
      tempNode := tempNode^.next;
    end;
  end;
end;

procedure PrintList(L: ListNodePtr);
begin
  while L <> nil do
  begin
    Write(L^.data, ' ');
    L := L^.next;
  end;
  Writeln;
end;

var
  L, newNode, lastNode: ListNodePtr;
  E: integer;

begin
  // Инициализация списка L
  L := nil;

  // Добавление элементов в список L
  New(newNode);
  newNode^.data := 1;
  newNode^.next := nil;
  L := newNode;

  lastNode := newNode;

  New(newNode);
  newNode^.data := 2;
  newNode^.next := nil;
  lastNode^.next := newNode;
  lastNode := newNode;

  New(newNode);
  newNode^.data := 3;
  newNode^.next := nil;
  lastNode^.next := newNode;
  lastNode := newNode;

  New(newNode);
  newNode^.data := 2;
  newNode^.next := nil;
  lastNode^.next := newNode;
  lastNode := newNode;

  // Вывод исходного списка
  Writeln('Исходный список:');
  PrintList(L);

  // Ввод элемента E
  Writeln('Введите элемент для поиска:');
  Readln(E);

  // Вызов процедуры вставки
  InsertAfterFirstOccurrence(L, E);

  // Вывод результата
  Writeln('Результат после вставки:');
  PrintList(L);
end.
