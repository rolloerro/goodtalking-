import Foundation

struct PhrasesStore {
    static var all: [Phrase] = {
        var list: [Phrase] = []

        // ===== Уверенность (30) =====
        list.append(Phrase(original: "Я думаю", improved: "Я считаю", category: .confidence))
        list.append(Phrase(original: "Я не уверен", improved: "Есть нюанс, который стоит проверить", category: .confidence))
        list.append(Phrase(original: "Возможно", improved: "Вероятно", category: .confidence))
        list.append(Phrase(original: "Я не знаю", improved: "Это требует уточнения", category: .confidence))
        list.append(Phrase(original: "Как-нибудь", improved: "В определённые сроки", category: .confidence))
        list.append(Phrase(original: "Это сложно", improved: "Это задача повышенной сложности", category: .confidence))
        list.append(Phrase(original: "Может быть", improved: "Есть вероятность", category: .confidence))
        list.append(Phrase(original: "Если получится", improved: "При наличии условий выполню", category: .confidence))
        list.append(Phrase(original: "Я попробую", improved: "Приступаю", category: .confidence))
        list.append(Phrase(original: "Я не уверен, получится ли", improved: "Оцениваю риски выполнения", category: .confidence))
        list.append(Phrase(original: "Извини, что отвлекаю", improved: "Есть важный момент", category: .confidence))
        list.append(Phrase(original: "Я хотел спросить", improved: "Предлагаю обсудить", category: .confidence))
        list.append(Phrase(original: "Возможно, ошибка", improved: "Есть несоответствие", category: .confidence))
        list.append(Phrase(original: "Не уверен в правильности", improved: "Предлагаю уточнить параметры", category: .confidence))
        list.append(Phrase(original: "Я постараюсь", improved: "Сделаю максимально качественно", category: .confidence))
        list.append(Phrase(original: "Сомневаюсь", improved: "Нужна дополнительная информация", category: .confidence))
        list.append(Phrase(original: "Я боюсь, что", improved: "Есть риск, что", category: .confidence))
        list.append(Phrase(original: "Не хотелось бы", improved: "Нежелательно", category: .confidence))
        list.append(Phrase(original: "Я не знаю, как", improved: "Требуется алгоритм решения", category: .confidence))
        list.append(Phrase(original: "Наверное", improved: "Предварительно оцениваю", category: .confidence))
        list.append(Phrase(original: "Я извиняюсь", improved: "Благодарю за терпение", category: .confidence))
        list.append(Phrase(original: "Это может быть неправильно", improved: "Есть вероятность отклонения", category: .confidence))
        list.append(Phrase(original: "Я сделал, что мог", improved: "Результат выполнен в доступных условиях", category: .confidence))
        list.append(Phrase(original: "Мне кажется", improved: "По моей оценке", category: .confidence))
        list.append(Phrase(original: "Если не сложно", improved: "Прошу выполнить", category: .confidence))
        list.append(Phrase(original: "Я бы хотел", improved: "Запрашиваю", category: .confidence))
        list.append(Phrase(original: "Я не уверен, что нужно", improved: "Приоритет стоит уточнить", category: .confidence))
        list.append(Phrase(original: "Я не знаю, правильно ли понял", improved: "Проверь, корректно ли интерпретирую", category: .confidence))
        list.append(Phrase(original: "Извини, что надоедаю", improved: "Нужна синхронизация", category: .confidence))
        list.append(Phrase(original: "Не знаю, получится ли", improved: "Определю возможность выполнения", category: .confidence))

        // ===== Конфликты (30) =====
        list.append(Phrase(original: "Ты неправ", improved: "Есть альтернативное мнение", category: .conflict))
        list.append(Phrase(original: "Это глупость", improved: "Это решение требует уточнения", category: .conflict))
        list.append(Phrase(original: "Это бред", improved: "Аргументация требует корректировки", category: .conflict))
        list.append(Phrase(original: "Хватит спорить", improved: "Давай упорядочим позиции", category: .conflict))
        list.append(Phrase(original: "Прекрати", improved: "Остановимся на минуту", category: .conflict))
        list.append(Phrase(original: "Ты обязан", improved: "Важно выполнить согласно договорённости", category: .conflict))
        list.append(Phrase(original: "Почему ты не сделал?", improved: "Какие трудности возникли?", category: .conflict))
        list.append(Phrase(original: "Ты меня бесишь", improved: "Ситуация вызывает напряжение", category: .conflict))
        list.append(Phrase(original: "Ты опять ошибся", improved: "Есть точка для улучшения", category: .conflict))
        list.append(Phrase(original: "Меня это злит", improved: "Ситуация эмоционально напряжена", category: .conflict))
        list.append(Phrase(original: "Твоя вина", improved: "Разберём причины без обвинений", category: .conflict))
        list.append(Phrase(original: "Ты всегда…", improved: "Иногда возникает ситуация, когда…", category: .conflict))
        list.append(Phrase(original: "Ты никогда…", improved: "Бывают моменты, когда…", category: .conflict))
        list.append(Phrase(original: "Ты делаешь неправильно", improved: "Есть более эффективный способ", category: .conflict))
        list.append(Phrase(original: "Ты не понимаешь", improved: "Давай уточним понимание", category: .conflict))
        list.append(Phrase(original: "Ты сделал плохо", improved: "Есть возможность улучшить результат", category: .conflict))
        list.append(Phrase(original: "Не согласен!", improved: "Вижу это иначе", category: .conflict))
        list.append(Phrase(original: "Это неправильно", improved: "Есть вариант лучше", category: .conflict))
        list.append(Phrase(original: "Ты накосячил", improved: "Произошло отклонение от плана", category: .conflict))
        list.append(Phrase(original: "Это твоя проблема", improved: "Давай распределим ответственность", category: .conflict))
        list.append(Phrase(original: "Меня не устроило", improved: "Есть моменты для корректировки", category: .conflict))
        list.append(Phrase(original: "Не хочу это слушать", improved: "Давай структурируем позицию", category: .conflict))
        list.append(Phrase(original: "Ты врёшь", improved: "Информация расходится", category: .conflict))
        list.append(Phrase(original: "Мне всё надоело", improved: "Нужна пауза для перезагрузки", category: .conflict))
        list.append(Phrase(original: "У меня нет сил спорить", improved: "Давай подытожим", category: .conflict))
        list.append(Phrase(original: "Это тупик", improved: "Нужен альтернативный вариант", category: .conflict))
        list.append(Phrase(original: "Ты не слышишь", improved: "Похоже, мы сбились с синхронизации", category: .conflict))
        list.append(Phrase(original: "Ты должен понимать", improved: "Разреши пояснить мою логику", category: .conflict))
        list.append(Phrase(original: "Всё плохо", improved: "Есть сложности, но они решаемы", category: .conflict))
        list.append(Phrase(original: "Я злюсь", improved: "Эмоциональный фон повышен — давай выровняем", category: .conflict))

        // ===== Деловая речь (часть, 40 => сокращённо, добавь остальные как нужно) =====
        list.append(Phrase(original: "Давай как-нибудь", improved: "Назначим конкретное время", category: .business))
        list.append(Phrase(original: "Сделай это", improved: "Возьми, пожалуйста, на себя", category: .business))
        list.append(Phrase(original: "Что там?", improved: "Каков статус задачи?", category: .business))
        list.append(Phrase(original: "Я занят", improved: "Сейчас вне фокуса — вернусь позже", category: .business))
        list.append(Phrase(original: "Я забыл", improved: "Выпал из контекста — исправляю", category: .business))
        list.append(Phrase(original: "Потом", improved: "Переносим на конкретный срок", category: .business))
        list.append(Phrase(original: "Нужен ASAP", improved: "Нужен высокий приоритет", category: .business))
        list.append(Phrase(original: "Попробуй", improved: "Выполни с оптимальным решением", category: .business))
        list.append(Phrase(original: "Надо бы сделать", improved: "Запускаем выполнение", category: .business))
        list.append(Phrase(original: "Это не важно", improved: "Низкий приоритет", category: .business))
        // ... добавь остальные фразы здесь в том же формате

        // Placeholder: (если хочешь, я могу автоматически сгенерировать остальные записи до 200)
        return list
    }()
}
//
//  PhrasesData.swift.swift
//  goodtalking
//
//  Created by Vladimir Kopylov on 03/12/2025.
//

