program DrawTrain;

uses
  Graph, CRT;

const
  TrainColor = LightBlue;

procedure DrawTrain;
begin
  // Инициализация графического режима
  InitGraph;

  // Отрисовка паровоза
  SetColor(TrainColor);
  Rectangle(100, 300, 400, 450); // Основание паровоза
  Rectangle(400, 250, 500, 300); // Дымовая труба
  Rectangle(150, 250, 350, 300); // Кабина машиниста
  Rectangle(200, 200, 250, 250); // Окно кабины машиниста
  Rectangle(250, 200, 300, 250); // Окно кабины машиниста
  Rectangle(300, 200, 350, 250); // Окно кабины машиниста
  Rectangle(400, 300, 450, 400); // Котел
  Circle(500, 425, 25); // Колесо паровоза
  Circle(350, 425, 25); // Колесо паровоза
  Circle(200, 425, 25); // Колесо паровоза
  Circle(150, 425, 25); // Колесо паровоза
  Circle(100, 425, 25); // Колесо паровоза

  // Задержка перед завершением программы
  Delay(5000);

  // Закрытие графического режима
  CloseGraph;
end;

begin
  // Вызов процедуры отрисовки паровоза
  DrawTrain;
end.
