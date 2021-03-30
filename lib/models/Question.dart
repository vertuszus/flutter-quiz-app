import 'package:flutter/material.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(title: 'Кем ты хочешь стать?', answers: [
      {
        'answer': 'Ведущим "Орла и Решки". Хочу повидать мир!',
      },
      {
        'answer': 'Врачом! Спасать людей - мое призвание',
      },
      {'answer': 'Пародистом, чтобы куражиться над всеми!', 'isCorrect': 1},
      {
        'answer': 'Мастером на все руки',
      },
    ]),
    Question(title: 'Продолжи фразу: "Сегодня я...', answers: [
      {
        'answer': 'Хороший человек',
      },
      {
        'answer': 'Счастливый работник',
      },
      {'answer': 'Циничный злодей', 'isCorrect': 1},
      {
        'answer': 'Фотограф',
      },
    ]),
    Question(title: 'Какое место больше предпочитаешь?', answers: [
      {
        'answer': 'Уютную квартирку в центре города',
      },
      {'answer': 'Темные местечки природы', 'isCorrect': 1},
      {
        'answer': 'В лес и еще раз в лес, на красивую опушку',
      },
      {
        'answer': 'Библиотека - дом родной',
      },
    ]),
    Question(title: 'Как относишься к людям?', answers: [
      {
        'answer': 'Испытываю к ним "несварения" моего характера',
      },
      {'answer': 'Терпеть не могу людишек', 'isCorrect': 1},
      {
        'answer': 'Люблю людей и мир во всем мире',
      },
      {
        'answer': 'Ни так и ни сяк',
      },
    ]),
    Question(title: 'Какой цвет выберешь?', answers: [
      {
        'answer': 'Белый универсал',
      },
      {
        'answer': 'Цвет настроения - синий',
      },
      {'answer': 'Зеленый, дягилевый, болотный цвет', 'isCorrect': 1},
      {
        'answer': 'Люблю все розовое',
      },
    ]),
    Question(
        title: 'Лягушку прижало камнем.\nУ нее застряла лапка.\nВаши действия?',
        answers: [
          {
            'answer': 'Пройдешь мимо, как будто тебя это не касается',
          },
          {
            'answer': 'Освободишь бедняжку',
          },
          {
            'answer': 'Найдешь менее брезгливого, попросишь его',
            'isCorrect': 1
          },
          {
            'answer': 'Сморщу носик и уйду прочь, пофыркивая!',
          },
        ]),
    Question(title: 'Кого ты терпеть не можешь?', answers: [
      {'answer': 'Слишком умных и любопытных', 'isCorrect': 1},
      {
        'answer': 'Плохишей, они меня обижают...',
      },
      {
        'answer': 'Людей',
      },
      {
        'answer': 'Врагов народа',
      },
    ]),
    Question(title: 'А что на обед любишь?', answers: [
      {
        'answer': 'Овсянку',
      },
      {'answer': 'Шашлык', 'isCorrect': 1},
      {
        'answer': 'Окрошку',
      },
      {
        'answer': 'Борщ',
      },
    ]),
    Question(title: 'Кто твой любимый сказочный герой?', answers: [
      {
        'answer': 'Серый волк',
      },
      {
        'answer': 'Василиса Премудрая',
      },
      {'answer': 'Баба Яга', 'isCorrect': 1},
      {
        'answer': 'Кто ученый, который ходит по цепи кругом',
      },
    ]),
  ];

  List<Question> get questions => [..._data];
}
