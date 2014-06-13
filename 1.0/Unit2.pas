unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    genrelist: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses main;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if form2.genrelist.ItemIndex<>-1 then
  begin
    form1.variantslist.Items.Clear;
    case form2.genrelist.ItemIndex of
      0:begin//Детектив
        form1.variantslist.Items.Add('Предательство');
        form1.variantslist.Items.Add('Убийство');
        form1.variantslist.Items.Add('Опрос свидетелей');
        form1.variantslist.Items.Add('Допрос подозреваемого');
        form1.variantslist.Items.Add('Погоня');
        form1.variantslist.Items.Add('Обыск');
        form1.variantslist.Items.Add('Красивая девушка');
        form1.variantslist.Items.Add('Обсуждение деталей дела');
        form1.variantslist.Items.Add('Поиск пропавшей вещи');
        form1.variantslist.Items.Add('Поиск улик');
        form1.variantslist.Items.Add('Перестрелка');
        form1.variantslist.Items.Add('Попытка убежать');
        form1.variantslist.Items.Add('Подозрения');
        form1.variantslist.Items.Add('Проблемы в семье');
        form1.variantslist.Items.Add('Герой вступает в брак');
        form1.variantslist.Items.Add('Герой разводится');
        form1.variantslist.Items.Add('Увольнение');
        form1.variantslist.Items.Add('Проблемы на работе');
        form1.variantslist.Items.Add('Празднование с коллегами');
        form1.variantslist.Items.Add('Размышления');
        form1.variantslist.Items.Add('Работа под прикрытием');
        form1.variantslist.Items.Add('Взрыв посреди улицы');
        form1.variantslist.Items.Add('Покушение на героя');
        form1.variantslist.Items.Add('Смертельное ранение');
        form1.variantslist.Items.Add('Гибель напарника');
        form1.variantslist.Items.Add('Новые улики');
        form1.variantslist.Items.Add('Слушание в суде');
        form1.variantslist.Items.Add('Поимка злодея');
        form1.variantslist.Items.Add('Террористический акт');
        form1.variantslist.Items.Add('Бомба замедленного действия');
        form1.variantslist.Items.Add('Галантный молодой человек');
        form1.variantslist.Items.Add('Изнасилование');
        form1.variantslist.Items.Add('Покушение на убийство');
        form1.variantslist.Items.Add('Героя подставили');
        form1.variantslist.Items.Add('Ложный свидетель');
        form1.variantslist.Items.Add('Самоубийство');
        form1.variantslist.Items.Add('Коррупция');
        form1.variantslist.Items.Add('Ревность');
        form1.variantslist.Items.Add('Месть');
        form1.variantslist.Items.Add('Неосторожное обращение с оружием');
        form1.variantslist.Items.Add('Вооруженное нападение');
        form1.variantslist.Items.Add('Малолетние преступники');
        form1.variantslist.Items.Add('Ограбление');
        form1.variantslist.Items.Add('Отравление');
        form1.variantslist.Items.Add('Связывание');
        form1.variantslist.Items.Add('Смертельная угроза');
        end;
      1:begin//Киберпанк
        form1.variantslist.Items.Add('Убийство');
        form1.variantslist.Items.Add('Подозрения');
        form1.variantslist.Items.Add('Предательство');
        form1.variantslist.Items.Add('Перестрелка');
        form1.variantslist.Items.Add('Красивая девушка');
        form1.variantslist.Items.Add('Случайные связи');
        form1.variantslist.Items.Add('Наркотики');
        form1.variantslist.Items.Add('Киберпространство');
        form1.variantslist.Items.Add('Клиническая смерть');
        form1.variantslist.Items.Add('Кража данных');
        form1.variantslist.Items.Add('Побег');
        form1.variantslist.Items.Add('Технологии');
        form1.variantslist.Items.Add('Геноцид');
        end;
      2:begin//Любовный роман
        form1.variantslist.Items.Add('Предательство');
        form1.variantslist.Items.Add('Случайная измена');
        form1.variantslist.Items.Add('Преднамеренная измена');
        form1.variantslist.Items.Add('Садомазохизм');
        form1.variantslist.Items.Add('Неразделенная любовь');
        form1.variantslist.Items.Add('Ревность');
        form1.variantslist.Items.Add('Месть');
        form1.variantslist.Items.Add('Убийство');
        form1.variantslist.Items.Add('Доминация');
        form1.variantslist.Items.Add('Влюбленность');
        form1.variantslist.Items.Add('Флирт');
        form1.variantslist.Items.Add('Признание в любли');
        form1.variantslist.Items.Add('Флирт с другим(-ой)');
        form1.variantslist.Items.Add('Секс');
        form1.variantslist.Items.Add('Связывание');
      end;
      3:begin//Роман ужасов
        form1.variantslist.Items.Add('Погоня');
        form1.variantslist.Items.Add('Попытка спрятаться');
        form1.variantslist.Items.Add('Попытка скрыться');
        form1.variantslist.Items.Add('Убийство');
        form1.variantslist.Items.Add('Расчленение');
        form1.variantslist.Items.Add('Отрезание пальцев');
        form1.variantslist.Items.Add('Отравление');
        form1.variantslist.Items.Add('Сожжение');
        form1.variantslist.Items.Add('Садизм');
        form1.variantslist.Items.Add('Подвешивание');
        form1.variantslist.Items.Add('Взрыв');
        form1.variantslist.Items.Add('Перестрелка');
        form1.variantslist.Items.Add('Подрыв духа');
        form1.variantslist.Items.Add('Паника');
        form1.variantslist.Items.Add('Депрессия');
        form1.variantslist.Items.Add('Головоломка');
        form1.variantslist.Items.Add('Необходимость спешить');
        form1.variantslist.Items.Add('Ссора');
        form1.variantslist.Items.Add('Хождение по темным лабиринтам');
        form1.variantslist.Items.Add('Встреча с ужасом лицом к лицу');
        form1.variantslist.Items.Add('Внутренняя борьба');
        form1.variantslist.Items.Add('Бой с источником ужаса');
        form1.variantslist.Items.Add('Бег в темном лесу');
        form1.variantslist.Items.Add('Туманная ночь');
        form1.variantslist.Items.Add('Потеря сознания');
        form1.variantslist.Items.Add('Отчаянный поступок');
        form1.variantslist.Items.Add('Утопление');
        form1.variantslist.Items.Add('Внезапная остановка сердца');
        form1.variantslist.Items.Add('Нейротоксин');
        form1.variantslist.Items.Add('Удушение');
        form1.variantslist.Items.Add('Страшный сон');
        form1.variantslist.Items.Add('Тайный клан заговорщиков');
        form1.variantslist.Items.Add('Диалог с коварным садистом');
        form1.variantslist.Items.Add('Драка с сумасшедшим');
        form1.variantslist.Items.Add('Нужно выбраться из клетки');
        form1.variantslist.Items.Add('Насекомые (или пауки)');
        form1.variantslist.Items.Add('Растягивание');
        form1.variantslist.Items.Add('Свихнувшийся священник');
        form1.variantslist.Items.Add('Свихнувшийся солдат');
        form1.variantslist.Items.Add('Внезапная ловушка');
        form1.variantslist.Items.Add('Связывание');
        form1.variantslist.Items.Add('Бомба с часовым механизмом');
        form1.variantslist.Items.Add('Нанесение колющих ран');
        form1.variantslist.Items.Add('Нанесение порезов');
        form1.variantslist.Items.Add('Ужас за стеклом');
        form1.variantslist.Items.Add('Смерть в душе');
      end;
      4:begin//Космическая фантастика
        form1.variantslist.Items.Add('Флирт');
        form1.variantslist.Items.Add('Флирт с инопланетянами');
        form1.variantslist.Items.Add('Космическая перестрелка');
        form1.variantslist.Items.Add('Падение метеорита');
        form1.variantslist.Items.Add('Приземление на неизведенную планету');
        form1.variantslist.Items.Add('Метеоритный дождь');
        form1.variantslist.Items.Add('Кольцо астероидов');
        form1.variantslist.Items.Add('Гравитационная аномалия');
        form1.variantslist.Items.Add('Нападение на родную планету');
        form1.variantslist.Items.Add('Штурм');
        form1.variantslist.Items.Add('Новый друг');
        form1.variantslist.Items.Add('Предательство');
        form1.variantslist.Items.Add('Правительство бессильно');
        form1.variantslist.Items.Add('Аннигиляция');
        form1.variantslist.Items.Add('Черная дыра');
        form1.variantslist.Items.Add('Поиск сокровищ');
        form1.variantslist.Items.Add('Встреча с внеземной цивилизацией');
        form1.variantslist.Items.Add('Возвращение на родную планету');
        form1.variantslist.Items.Add('Убийство лучшего друга/подруги');
        form1.variantslist.Items.Add('Заброшенная планета');
        form1.variantslist.Items.Add('Необитаемая (дикая) планета');
        form1.variantslist.Items.Add('Рождение сверхновой');
        form1.variantslist.Items.Add('Взрыв');
      end;
      5:begin//Научная фантастика
        form1.variantslist.Items.Add('Технологии');
        form1.variantslist.Items.Add('Прорыв в науке');
        form1.variantslist.Items.Add('Выступление перед публикой');
        form1.variantslist.Items.Add('Неудача');
        form1.variantslist.Items.Add('Неожиданное открытие');
        form1.variantslist.Items.Add('Тайное общество');
      end;
      6:begin//Фентези
        form1.variantslist.Items.Add('Убийство главной героини');
        form1.variantslist.Items.Add('Амнезия главного героя');
        form1.variantslist.Items.Add('Сражение со злодеем');
        form1.variantslist.Items.Add('Знакомство главных героев');
        form1.variantslist.Items.Add('Секс');
        form1.variantslist.Items.Add('Поражение в битве');
        form1.variantslist.Items.Add('Победа в битве');
        form1.variantslist.Items.Add('Взрыв моста');
        form1.variantslist.Items.Add('Поход в пещеру');
        form1.variantslist.Items.Add('Битва с чудовищем');
        form1.variantslist.Items.Add('Флирт');
        form1.variantslist.Items.Add('Легендарное оружие');
        form1.variantslist.Items.Add('Верный спутник спасает героя');
        form1.variantslist.Items.Add('Перемещение в пространстве/времени');
        form1.variantslist.Items.Add('Вызов злого духа');
        form1.variantslist.Items.Add('Призыв о помощи');
        form1.variantslist.Items.Add('Разоблачение злодея');
        form1.variantslist.Items.Add('Враг наказывается');
        form1.variantslist.Items.Add('Герой вступает в брак');
        form1.variantslist.Items.Add('Превращение');
        form1.variantslist.Items.Add('Слава');
        form1.variantslist.Items.Add('Трудная задача');
        form1.variantslist.Items.Add('Спасение заложников');
        form1.variantslist.Items.Add('Спасение людей');
        form1.variantslist.Items.Add('Оборона замка');
        form1.variantslist.Items.Add('Штурм крепости');
        form1.variantslist.Items.Add('Проникновение в стан противника');
        form1.variantslist.Items.Add('Преследование');
        form1.variantslist.Items.Add('Возвращение героя');
        form1.variantslist.Items.Add('Волшебный предмет');
        form1.variantslist.Items.Add('Волшебное животное');
        form1.variantslist.Items.Add('Враги сожгли родную деревню');
        form1.variantslist.Items.Add('Спасение принцессы/принца');
        form1.variantslist.Items.Add('Сражение с драконом');
        form1.variantslist.Items.Add('Разоблачение колдуна');
        form1.variantslist.Items.Add('Получение нового транспорта');
        form1.variantslist.Items.Add('Признание в любви');
        form1.variantslist.Items.Add('Спутник покидает героя');
        form1.variantslist.Items.Add('Короля предательски убивает советник');
        form1.variantslist.Items.Add('Садовник убивает придворную даму');
        form1.variantslist.Items.Add('Сражение с драконом');
        form1.variantslist.Items.Add('Скелет в шкафу');
        form1.variantslist.Items.Add('Магический рояль в мистических кустах');
        form1.variantslist.Items.Add('Поход на кладбище');
      end;
    end;
  end;
form1.button4.Enabled:=true;
form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
form2.genrelist.ItemIndex:=0;
end;

end.
