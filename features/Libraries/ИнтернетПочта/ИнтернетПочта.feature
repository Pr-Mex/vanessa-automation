#language: ru

@IgnoreOnCIMainBuild
@Ignore
@IgnoreOnWeb
@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@IgnoreOn8317

Функциональность: Взаимодействие с GreenMail https://greenmail-mail-test.github.io/greenmail/
Как Тестировщик
Я хочу проверить корректность отправки и получения электронных писем

Контекст:
    Допустим пользователь SMTP 'user@localhost'
    И пользователь IMAP 'user@localhost'
    # greenmail-standalone-1.6.9.jar следует предварительно вручную запустить из консоли.
    Затем Я выполняю команду системы
	| java -Dgreenmail.setup.smtps -Dgreenmail.setup.imaps -Dgreenmail.auth.disabled -Dgreenmail.verbose -jar greenmail-standalone-1.6.9.jar |

Сценарий: Работа с папками на сервере IMAP
    Когда я создаю ящик 'INBOX'
    Тогда я очищаю ящик 'INBOX' от сообщений
    Когда я создаю ящик 'SENT'
    Тогда я очищаю ящик 'SENT' от сообщений

Сценарий: Отправка и получение электронных писем
    Допустим Я отправляю письмо от имени 'user@localhost' по адресу 'user@localhost' с темой 'X-Mailer check'
    # После первого запуска Greenmail нужно некоторое время для прогрева
    И Пауза 1
    Тогда в ящике 'INBOX' есть сообщения
    И сообщения от 'user@localhost'
    И темой сообщения 'X-Mailer check'
    И заголовком сообщения 'X-Mailer: 1C:Enterprise 8.3'

    Когда я отвечаю на это сообщение
    Тогда в ящике 'INBOX' есть сообщения
    И сообщения от 'user@localhost'
    И темой сообщения 'Re: X-Mailer check'
    И заголовком сообщения 'In-Reply-To:'

    Затем я отключаюсь от почтового сервера