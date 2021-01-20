local L = BigWigsAPI:NewLocale("BigWigs: Plugins", "ruRU")
if not L then return end

L.general = "Общие"
L.comma = ", "

L.positionX = "Позиция X"
L.positionY = "Позиция Y"
L.positionExact = "Точная позиция"
L.positionDesc = "Введите в поле или передвиньте якорь если вам нужно точное позиционирование."
L.width = "Ширина"
L.height = "Высота"
L.sizeDesc = "Обычно размеры меняются перемещением якоря. Если Вам необходим точный размер, можете использовать слайдер или ввести значение в поле, максимума нет."
--L.fontSizeDesc = "Adjust the font size using the slider or type the value into the box which has a much higher maximum of 200."

-----------------------------------------------------------------------
-- AltPower.lua
--

L.altPowerTitle = "Энергия"
--L.altPowerDesc = "The AltPower display will only appear for bosses that apply AltPower to players, which is extremely rare. The display measures the amount of 'Alternative Power' you and your group has, displaying it in a list. To move the display around, please use the test button below."
L.toggleDisplayPrint = "Монитор будет показан в следующий раз. Чтобы отключить его полностью, уберите галочку в настройках битв."
L.disabled = "Отключить"
L.disabledDisplayDesc = "Отключить монитор для всех модулей."
L.resetAltPowerDesc = "Сбросить все параметры, связанные с Энергией, включая позицию якоря."
--L.test = "Test"
--L.altPowerTestDesc = "Show the 'Alternative Power' display, allowing you to move it, and simulating the power changes you would see on a boss encounter."
--L.yourPowerBar = "Your Power Bar"
--L.barColor = "Bar color"
--L.barTextColor = "Bar text color"
--L.additionalWidth = "Additional Width"
--L.additionalHeight = "Additional Height"
--L.additionalSizeDesc = "Add to the size of the standard display by adjusting this slider, or type the value into the box which has a much higher maximum of 100."
--L.yourPowerTest = "Your Power: %d" -- Your Power: 42
--L.yourAltPower = "Your %s: %d" -- e.g. Your Corruption: 42
--L.player = "Player %d" -- Player 7
--L.disableAltPowerDesc = "Globally disable the AltPower display, it will never show for any boss encounter."

-----------------------------------------------------------------------
-- AutoReply.lua
--

L.autoReply = "Автоответчик"
L.autoReplyDesc = "Автоматически отвечать на приватные сообщения в бою с боссом."
L.responseType = "Тип ответа"
L.autoReplyFinalReply = "Также отвечать при выходе из боя"
L.guildAndFriends = "Гильдия и Друзья"
L.everyoneElse = "Все остальные"

L.autoReplyBasic = "Сейчас я в бою с боссом."
L.autoReplyNormal = "Сейчас я в бою с '%s'."
L.autoReplyAdvanced = "Сейчас я в бою с '%s' (%s), %d/%d игроков живо."
L.autoReplyExtreme = "Сейчас я в бою с '%s' (%s), %d/%d игроков живо: %s"

L.autoReplyLeftCombatBasic = "Я больше не в бою с боссом."
L.autoReplyLeftCombatNormalWin = "Я победил '%s'."
L.autoReplyLeftCombatNormalWipe = "Я проиграл '%s'."
L.autoReplyLeftCombatAdvancedWin = "Я победил '%s' с %d/%d живыми игроками."
L.autoReplyLeftCombatAdvancedWipe = "Я проиграл '%s' на: %s"

-----------------------------------------------------------------------
-- Bars.lua
--

L.bars = "Полосы"
L.style = "Стиль"
L.bigWigsBarStyleName_Default = "По умолчанию"
L.resetBarsDesc = "Сбросить все параметры, связанные с полосами, включая позицию якоря."

L.nameplateBars = "Полосы неймплейтов"
L.nameplateAutoWidth = "Умещать в ширину неймплейта"
L.nameplateAutoWidthDesc = "Устанавливает ширину полосы неймплейта в соответствии неймплейта, к которому он привязан."
L.nameplateOffsetY = "Смещение по Y"
L.nameplateOffsetYDesc = "Для растущих вверх полос - смещение от верха неймплейта. Для растущих полос вниз - смещение от низа неймплейта."

L.clickableBars = "Интерактивные полосы"
L.clickableBarsDesc = "Полосы BigWigs по умолчанию не реагируют на щелчки мыши в их области. Таким образом, можно выделять объекты или применять АоЕ заклинания за ними, изменять ракурс камеры и т.д., в то время, как курсор находится в области полос. |cffff4411Если вы включите полосы, реагирующие на щелчки мыши, всё это будет невозможно.|r Полосы будут перехватывать любые щелчки мыши в пределах их области.\n"
L.interceptMouseDesc = "Включает реагирование полос на щелчки мыши."
L.modifier = "Модификатор"
L.modifierDesc = "Удерживайте выбранную клавишу, чтобы разрешить нажатие по полосе таймера."
L.modifierKey = "Только с клавишей-модификатором"
L.modifierKeyDesc = "Блокирует нажатие на полосы, за исключением удерживания заданной клавиши, после чего действия мышкой, описанные ниже, будут доступны."

L.temporaryCountdownDesc = "Временно включить обратный отсчет способности для этой полосы."
L.report = "Сообщить"
L.reportDesc = "Сообщает текущий статус полосы в активный групповой чат; будь то чат подземелья, рейда, группы или гильдии."
L.remove = "Убрать"
L.removeBarDesc = "Временно убрать эту полосу."
L.removeOther = "Убрать другие"
L.removeOtherBarDesc = "Временно убрать другие полосы (кроме этой)."

L.emphasizeAt = "Увеличение на... (секунды)"
L.growingUpwards = "Рост вверх"
L.growingUpwardsDesc = "Переключение направления роста вверх или вниз от якоря."
L.texture = "Текстура"
L.emphasize = "Увеличение"
L.emphasizeMultiplier = "Множитель Размера"
L.emphasizeMultiplierDesc = "Если Вы отмените перемещение увеличенных полос к своему якорю, эта опция будет просто определять, насколько будут увеличиваться полосы по отношению к нормальным."

L.enable = "Включить"
L.move = "Перемещение"
L.moveDesc = "Перемещение увеличенных полос. Если эта опция отключена, увеличенные полосы просто будут изменять масштаб и окраску."
L.regularBars = "Обычные полосы"
L.emphasizedBars = "Увеличенные полосы"
L.align = "Выравнивание"
L.alignText = "Выравнивание текста"
L.alignTime = "Выравнивание времени"
L.left = "Влево"
L.center = "По центру"
L.right = "Вправо"
L.time = "Время"
L.timeDesc = "Показывать или скрывать остаток времени на полосах."
L.textDesc = "Показать или скрыть текст на полосах."
L.icon = "Иконка"
L.iconDesc = "Показывать или скрывать иконку полосы."
L.iconPosition = "Позиция Иконки"
L.iconPositionDesc = "Выберите, где на полосе будет находиться иконка."
L.font = "Шрифт"
L.restart = "Перезапуск"
L.restartDesc = "Перезапуск увеличенных полос так, что они стартуют с самого начала, отсчитывая от 10."
L.fill = "Заполнение"
L.fillDesc = "Заполнение полос, вместо убывания."
L.spacing = "Промежуток"
L.spacingDesc = "Изменить промежуток между полосами."
L.visibleBarLimit = "Лимит отображаемых полос"
L.visibleBarLimitDesc = "Установить максимальное количество полос, отображаемых единовременно."

L.localTimer = "Локальный"
L.timerFinished = "%s: Таймер [%s] завершен."
L.customBarStarted = "Таймер '%s' начат %s игроком %s."
L.sendCustomBar = "Отправка таймера '%s' пользователям BigWigs и DBM."

L.requiresLeadOrAssist = "Эта функция требует быть лидером рейда или помощником."
L.encounterRestricted = "Это функция не может быть использована во время битвы."
L.wrongCustomBarFormat = "Неверный формат. Правильно будет: /raidbar 20 текст"
L.wrongTime = "Неверно указанное время. <время> может быть числом в секундах, М:С парой, или Mm. Например, 5, 1:20 или 2m."

L.wrongBreakFormat = "Должно быть между 1 и 60 минутами. Например: /break 5"
L.sendBreak = "Отправка таймера перерыва пользователям BigWigs и DBM."
L.breakStarted = "Перерыв начат %s игроком %s."
L.breakStopped = "%s отменил перерыв."
L.breakBar = "Перерыв"
L.breakMinutes = "Перерыв закончится через %d |4минуту:минуты:минут;!"
L.breakSeconds = "Перерыв закончится через %d секунд!"
L.breakFinished = "Перерыв закончен!"

-----------------------------------------------------------------------
-- BossBlock.lua
--

L.bossBlock = "Фильтр событий"
L.bossBlockDesc = "Настройте вещи, которые вы хотите скрыть в течении боя с боссом."
L.movieBlocked = "Вы видели этот ролик, пропускаем его."
L.blockEmotes = "Скрыть эмоции посередине экрана"
L.blockEmotesDesc = "Некоторые боссы показывают текст для определенных способностей. Эти сообщения и слишком длинные и избыточные. Мы стараемся предоставлять более подходящие сообщения, которые не вмешиваются в ваш геймплей и не говорят вам что конкретно вы должны делать.\n\nОбратите внимание: Эмоции босса всегда будут доступны в чате, если вы захотите их прочитать."
L.blockMovies = "Скрыть повторяющиеся ролики"
L.blockMoviesDesc = "Ролики боссов будут проиграны лишь один раз (то есть вы сможете посмотреть каждый) и последующие воспроизведения будут заблокированы."
L.blockFollowerMission = "Скрыть уведомления заданий соратников"
L.blockFollowerMissionDesc = "Всплывающие сообщения соратников показывают в основном уведомление о выполнении задания.\n\nЭти уведомления могут скрыть важные части вашего интерфейса в течении боя с боссом, поэтому мы рекомендуем скрыть их."
L.blockGuildChallenge = "Скрыть уведомления о гильдейских испытаниях"
L.blockGuildChallengeDesc = "Гильдейские испытания в основном показывают информацию, когда группа людей в вашей гильдии завершает прохождение подземелья в героическом режиме или в режиме испытаний.\n\nЭти уведомления могут скрыть важные части вашего интерфейса в течении боя с боссом, поэтому мы рекомендуем скрыть их."
L.blockSpellErrors = "Скрыть сообщения о неудавшихся заклинаниях"
L.blockSpellErrorsDesc = "Сообщения, такие как \"Заклинание не готово\", которые отображаются наверху экрана, будут скрыты."
L.audio = "Звук"
L.music = "Музыка"
L.ambience = "Фоновые звуки"
L.sfx = "Звуковые эффекты"
L.disableMusic = "Выключить музыку (рекомендуется)"
L.disableAmbience = "Выключить фоновые звуки (рекомендуется)"
L.disableSfx = "Выключить звуковые эффекты (не рекомендуется)"
L.disableAudioDesc = "Во время боя с боссом '%s' будут выключены для того чтобы помочь вам сконцентрироваться на звуках предупреждений BigWigs. После выхода из боя звуки будут включены обратно."
L.blockTooltipQuests = "Заблокировать цели квестов в подсказке"
L.blockTooltipQuestsDesc = "Когда вам требуется убить босса для квеста, подсказка показывает обычно \"0/1 выполнено\", при наведении мышкой на босса. Эта опция скрывает список целей других игроков, чтобы подсказка не разрослась слишком высоко."
L.blockObjectiveTracker = "Скрыть панель отслеживания квестов"
L.blockObjectiveTrackerDesc = "Панель отслеживания квестов будет скрыта во время боя с боссом чтобы освободить место на экране.\n\nЭтого НЕ случится если вы находитесь в эпохальном+ подземелье или отслеживаете достижение."

L.subzone_grand_bazaar = "Большой базар" -- Battle of Dazar'alor raid (Battle for Azeroth)
L.subzone_port_of_zandalar = "Порт Зандалара" -- Battle of Dazar'alor raid (Battle for Azeroth)
L.subzone_eastern_transept = "Восточный трансепт" -- Auchindoun dungeon (Warlords of Draenor)

-----------------------------------------------------------------------
-- Colors.lua
--

L.colors = "Цвета"

L.text = "Текст"
L.textShadow = "Тень текста"
L.flash = "Мигание"
L.normal = "Обычные"
L.emphasized = "Увеличенные"

L.reset = "Сброс"
L.resetDesc = "Сброс цветов на стандартные значения."
L.resetAll = "Сбросить все"
L.resetAllDesc = "Если вы настроили цвета для каких-либо событий боя с боссом, эта кнопка сбросит ВСЕ такие настройки."

L.red = "Красный"
L.redDesc = "Общие оповещения боя."
L.blue = "Синий"
L.blueDesc = "Оповещение событий, касающихся непосредственно Вас, например, наложение дебаффа."
L.orange = "Оранжевый"
L.yellow = "Желтый"
L.green = "Зеленый"
L.greenDesc = "Оповещение хороших событий, например, снятие дебаффа с Вас."
L.cyan = "Циановый"
L.cyanDesc = "Оповещение о изменении статуса боя, например, переход на следующую фазу."
L.purple = "Фиолетовый"
L.purpleDesc = "Оповещение о способностях только для танков, например, стаки дебаффа на танке."

-----------------------------------------------------------------------
-- Countdown.lua
--

L.textCountdown = "Текст отсчета"
L.textCountdownDesc = "Показывать цифры во время отсчета"
L.countdownColor = "Цвет отсчета"
L.countdownVoice = "Голос отсчета"
L.countdownTest = "Тестировать отсчет"
L.countdownAt = "Отсчет с... (секунд)"
L.countdownAt_desc = "Выберите, сколько времени должно оставаться до способности босса (в секундах), когда начнется обратный отсчет."
L.countdown = "Отсчет"
L.countdownDesc = "Функция обратного отсчета включает голосовой и текстовый обратный отсчет. По умолчанию он обычно выключен, но вы можете включить его для любой способности босса при просмотре настроек боя с конкретным боссом."
L.countdownAudioHeader = "Голосовой звук отсчета"
L.countdownTextHeader = "Отображаемый текст отсчета"
L.resetCountdownDesc = "Сбрасывает все указанные выше настройки обратного отсчета на значения по умолчанию."
L.resetAllCountdownDesc = "Если вы выбрали свои голоса обратного отсчета для какого-либо боя с боссом, эта кнопка сбросит ВСЕ их, а также сбросит все указанные выше настройки обратного отсчета на значения по умолчанию."

-----------------------------------------------------------------------
-- InfoBox.lua
--

L.infoBox = "ИнфоБлок"

-----------------------------------------------------------------------
-- Messages.lua
--

L.sinkDescription = "Пути вывода сообщений. Отображение поддерживает иконки, цвета и позволяет вывести до 4х сообщений на экран. Новые сообщения будут расти в размерах, и вновь сокращаться, чтобы уведомить игрока."
L.emphasizedSinkDescription = "Пути вывода увеличенных сообщений. Отображение поддерживает текст и цвета, и позволяет вывести одно сообщение за один раз."
L.resetMessagesDesc = "Сбросить все параметры, связанные с сообщениями, включая позиции якорей сообщений."

L.bwEmphasized = "BigWigs Увеличение"
L.messages = "Сообщения"
L.normalMessages = "Обычные сообщения"
L.emphasizedMessages = "Увеличенные сообщения"
L.emphasizedDesc = "Смысл увеличенного сообщения - привлечь ваше внимание огромным сообщением в центре экрана. Оно редко включено по умолчанию, но вы можете включить его для любой способности в настройках боя с конкретным боссом."
L.output = "Вывод"
L.uppercase = "БОЛЬШИМИ БУКВАМИ"
L.uppercaseDesc = "Все увеличенные сообщения будут отображаться ЗАГЛАВНЫМИ буквами."

L.useIcons = "Использовать иконки"
L.useIconsDesc = "Показывать иконку возле сообщения."
L.classColors = "Окраска по классу"
L.classColorsDesc = "Имена игроков окрасятся в их класс."
L.chatMessages = "Сообщения в чат"
L.chatMessagesDesc = "Выводить все сообщения BigWigs в стандартное окно чата в дополнение к настройкам отображения."

L.fontSize = "Размер шрифта"
L.none = "Нет"
L.thin = "Тонкий"
L.thick = "Толстый"
L.outline = "Контур"
L.monochrome = "Монохромный"
L.monochromeDesc = "Включение монохромного флага, убирается любое сглаживание краев шрифта."
L.fontColor = "Цвет шрифта"

L.displayTime = "Время отображения"
L.displayTimeDesc = "Сколько секунд будет показываться сообщение"
L.fadeTime = "Время затухания"
L.fadeTimeDesc = "Сколько секунд будет затухать сообщение"

-----------------------------------------------------------------------
-- Proximity.lua
--

L.customRange = "Пользовательский радар"
L.proximityTitle = "%d м / %d |4игрок:игрока:игроков;"
L.proximity_name = "Радар близости"
L.soundDelay = "Задержка звука"
L.soundDelayDesc = "Определяет как долго BigWigs должен подождать между повторением заданного звука, когда кто-то слишком близко к вам."

L.proximity = "Отображение близости"
L.proximity_desc = "Показывать окно близости при соответствующей схватке, выводя список игроков, которые стоят слишком близко к вам."
L.resetProximityDesc = "Сбросить все параметры, связанные с радаром близости, включая позицию якоря."

L.close = "Закрыть"
L.closeProximityDesc = "Закрывает окно радара близости.\n\nЧтобы полностью его отключить для любого боя, вам нужно зайти в опции соответствующего босса и там отключить опцию 'Близость'."
L.lock = "Фиксировать"
L.lockDesc = "Фиксирование рамки, предотвращает перемещение и изменение размера."
L.title = "Название"
L.titleDesc = "Показать или скрыть название."
L.background = "Фон"
L.backgroundDesc = "Показать или скрыть фон."
L.toggleSound = "Переключение звука"
L.toggleSoundDesc = "Включить/выключить звуковое оповещение окна близости, когда вы находитесь слишком близко к другому игроку."
L.soundButton = "Кнопка звука"
L.soundButtonDesc = "Показать или скрыть кнопку звука."
L.closeButton = "Кнопка закрытия"
L.closeButtonDesc = "Показать или скрыть кнопку закрытия."
L.showHide = "Показ/скрыть"
L.abilityName = "Название способности"
L.abilityNameDesc = "Показывает или скрывает название способности в верхней части окна."
L.tooltip = "Подсказка"
L.tooltipDesc = "Показывает или скрывает подсказку заклинания в окне близости, если эта способность связана боссом."

-----------------------------------------------------------------------
-- Pull.lua
--

L.countdownType = "Тип обратного отсчета"
L.combatLog = "Автоматическая запись лога боя"
L.combatLogDesc = "Лог боя будет автоматически запускаться когда таймер атаки будет запущен и останавливаться по окончании боя с боссом."

L.pull = "Атака"
L.engageSoundTitle = "Воспроизвести звук, когда начинается бой с боссом"
L.pullStartedSoundTitle = "Воспроизвести звук, когда запускается таймер атаки"
L.pullFinishedSoundTitle = "Воспроизвести звук, когда завершается таймер атаки"
L.pullStarted = "Таймер атаки начат %s игроком %s."
L.pullStopped = "%s отменил таймер атаки."
L.pullStoppedCombat = "Таймер атаки  отменен, поскольку Вы вступили в бой."
L.pullIn = "Атакуем через %d сек"
L.sendPull = "Отправка таймера атаки пользователям BigWigs и DBM."
L.wrongPullFormat = "Должно быть между 1 и 60 секундами. Например: /pull 5"

-----------------------------------------------------------------------
-- RaidIcon.lua
--

L.icons = "Метки"
L.raidIconsDesc = "Некоторые скрипты событий используют рейдовые метки, чтобы помечать игроков, которые оказывают особое влияние на вашу группу. Например, такой тип эффектов как 'бомба' и контроль разума.\n\n|cffff4411Применимо, если вы Лидер рейда или помощник!|r"
L.raidIconsDescription = "Некоторые битвы могут включать способности типа 'бомба', накладываемые на определенных игроков или способности преследования. Здесь вы можете настроить рейдовые метки, используемые для обозначения таких игроков.\n\nЕсли в битве имеется только одна такая способность, будет использована первая метка. Одна метка никогда не будет использована для разных способностей, в следующий раз будет использована та же иконка.\n\n|cffff4411Помните, если игрок был отмечен вручную, BigWigs не будет менять его метку.|r"
L.primary = "Основная"
L.primaryDesc = "Первая метка рейда, которая будет использоваться скриптом события."
L.secondary = "Второстепенная"
L.secondaryDesc = "Вторая метка рейда, которая будет использоваться скриптом события."

-----------------------------------------------------------------------
-- Sound.lua
--

L.Sounds = "Звуки"
L.oldSounds = "Старые звуки"

L.Alarm = "Тревога"
L.Info = "Информация"
L.Alert = "Оповещение"
L.Long = "Долгий"
L.Warning = "Предупреждение"
L.onyou = "Заклинание, бафф или дебафф на тебе"
L.underyou = "Тебе нужно выйти из заклинания под ногами"

L.sound = "Звук"
L.soundDesc = "Сообщения могут сопровождаться звуком. Некоторым людям проще услышать звук и опознать к какому сообщению он относится, нежели читать сообщения."

L.customSoundDesc = "Воспроизводить пользовательский звук, вместо используемого в модуле."
L.resetSoundDesc = "Сбрасывает указанные выше звуки к значениям по умолчанию."
L.resetAllCustomSound = "Если вы используете свои звуки для какой-либо битвы, это кнопка спросит ВСЕ такие звуки на стандартные."

-----------------------------------------------------------------------
-- Statistics.lua
--

L.bossDefeatDurationPrint = "'%s' терпит поражение спустя %s"
L.bossWipeDurationPrint = "'%s' побеждает спустя %s"
L.newBestTime = "Рекордное убийство!"
L.bossStatistics = "Статистика боссов"
L.bossStatsDescription = "Запись статистики боссов, включает в себя количество побед, поражений, общее время сражений или самое быстрое убийство. Эта статистика видна для каждого босса в окне настроек, либо спрятана, если нет записей."
L.enableStats = "Включить Статистику"
L.chatMessages = "Сообщения в чат"
L.printBestTimeOption = "Уведомление о лучшем убийстве"
L.printDefeatOption = "Время победы"
L.printWipeOption = "Время поражения"
L.countDefeats = "Количество побед"
L.countWipes = "Количество поражений"
L.recordBestTime = "Запоминать лучшее убийство"
L.createTimeBar = "Отображать полосу 'Лучшее время'"
L.bestTimeBar = "Лучшее время"
L.printHealthOption = "Здоровье босса"
L.healthPrint = "Здоровье: %s."
L.healthFormat = "%s (%.1f%%)"

-----------------------------------------------------------------------
-- Victory.lua
--

L.Victory = "Победа"
L.victoryHeader = "Настройки действий, которые должны быть выполнены после победы над боссом."
L.victoryMessageBigWigs = "Показывать сообщение BigWigs"
L.victoryMessageBigWigsDesc = "Сообщение BigWigs - это простая надпись \"босс был побежден\"."
L.victoryMessageBlizzard = "Показывать сообщение Blizzard"
L.victoryMessageBlizzardDesc = "Сообщение Blizzard - это очень большая анимация \"босс был побежден\" в центре вашего экрана."
L.victoryMessages = "Показывать сообщения о победе над боссом"
L.victorySound = "Проигрывать звук победы над боссом"
L.defeated = "%s терпит поражение"

-----------------------------------------------------------------------
-- Wipe.lua
--

L.wipe = "Вайп"
L.wipeSoundTitle = "Проигрывать звук после вайпа"
L.respawn = "Появление босса"
L.showRespawnBar = "Показывать таймер появления"
L.showRespawnBarDesc = "Показывать таймер, который отсчитывает время до появления босса после вайпа."