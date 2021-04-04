#Область ОписаниеПеременных

&НаКлиенте
Перем Ванесса;

&НаКлиенте
Перем КешДанныеПеревода;
#КонецОбласти

#Область ЭкспортныеПроцедурыИФункции

// Делает первичную инициализацию модуля.
&НаКлиенте
Функция ИнициализацияФормы(ВладелецФормы) Экспорт
	Ванесса = ВладелецФормы;
	КешДанныеПеревода = Новый Соответствие;
КонецФункции	 

// Возвращает строку для получения ключевых слов Gherkin
&НаКлиенте
Функция КлючевыеСлова() Экспорт
	Возврат "
		|{
		|  ""af"": {
		|    ""and"": [
		|      ""En""
		|    ],
		|    ""background"": [
		|      ""Agtergrond""
		|    ],
		|    ""but"": [
		|      ""Maar""
		|    ],
		|    ""examples"": [
		|      ""Voorbeelde""
		|    ],
		|    ""feature"": [
		|      ""Funksie"",
		|      ""Besigheid Behoefte"",
		|      ""Vermoë""
		|    ],
		|    ""given"": [
		|      ""Gegewe""
		|    ],
		|    ""name"": ""Afrikaans"",
		|    ""native"": ""Afrikaans"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Voorbeeld"",
		|      ""Situasie""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Situasie Uiteensetting""
		|    ],
		|    ""then"": [
		|      ""Dan""
		|    ],
		|    ""when"": [
		|      ""Wanneer""
		|    ]
		|  },
		|  ""am"": {
		|    ""and"": [
		|      ""Եվ""
		|    ],
		|    ""background"": [
		|      ""Կոնտեքստ""
		|    ],
		|    ""but"": [
		|      ""Բայց""
		|    ],
		|    ""examples"": [
		|      ""Օրինակներ""
		|    ],
		|    ""feature"": [
		|      ""Ֆունկցիոնալություն"",
		|      ""Հատկություն""
		|    ],
		|    ""given"": [
		|      ""Դիցուք""
		|    ],
		|    ""name"": ""Armenian"",
		|    ""native"": ""հայերեն"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Օրինակ"",
		|      ""Սցենար""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Սցենարի կառուցվացքը""
		|    ],
		|    ""then"": [
		|      ""Ապա""
		|    ],
		|    ""when"": [
		|      ""Եթե"",
		|      ""Երբ""
		|    ]
		|  },
		|  ""an"": {
		|    ""and"": [
		|      ""Y"",
		|      ""E""
		|    ],
		|    ""background"": [
		|      ""Antecedents""
		|    ],
		|    ""but"": [
		|      ""Pero""
		|    ],
		|    ""examples"": [
		|      ""Eixemplos""
		|    ],
		|    ""feature"": [
		|      ""Caracteristica""
		|    ],
		|    ""given"": [
		|      ""Dau"",
		|      ""Dada"",
		|      ""Daus"",
		|      ""Dadas""
		|    ],
		|    ""name"": ""Aragonese"",
		|    ""native"": ""Aragonés"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Eixemplo"",
		|      ""Caso""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Esquema del caso""
		|    ],
		|    ""then"": [
		|      ""Alavez"",
		|      ""Allora"",
		|      ""Antonces""
		|    ],
		|    ""when"": [
		|      ""Cuan""
		|    ]
		|  },
		|  ""ar"": {
		|    ""and"": [
		|      ""و""
		|    ],
		|    ""background"": [
		|      ""الخلفية""
		|    ],
		|    ""but"": [
		|      ""لكن""
		|    ],
		|    ""examples"": [
		|      ""امثلة""
		|    ],
		|    ""feature"": [
		|      ""خاصية""
		|    ],
		|    ""given"": [
		|      ""بفرض""
		|    ],
		|    ""name"": ""Arabic"",
		|    ""native"": ""العربية"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""مثال"",
		|      ""سيناريو""
		|    ],
		|    ""scenarioOutline"": [
		|      ""سيناريو مخطط""
		|    ],
		|    ""then"": [
		|      ""اذاً"",
		|      ""ثم""
		|    ],
		|    ""when"": [
		|      ""متى"",
		|      ""عندما""
		|    ]
		|  },
		|  ""ast"": {
		|    ""and"": [
		|      ""Y"",
		|      ""Ya""
		|    ],
		|    ""background"": [
		|      ""Antecedentes""
		|    ],
		|    ""but"": [
		|      ""Peru""
		|    ],
		|    ""examples"": [
		|      ""Exemplos""
		|    ],
		|    ""feature"": [
		|      ""Carauterística""
		|    ],
		|    ""given"": [
		|      ""Dáu"",
		|      ""Dada"",
		|      ""Daos"",
		|      ""Daes""
		|    ],
		|    ""name"": ""Asturian"",
		|    ""native"": ""asturianu"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Exemplo"",
		|      ""Casu""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Esbozu del casu""
		|    ],
		|    ""then"": [
		|      ""Entós""
		|    ],
		|    ""when"": [
		|      ""Cuando""
		|    ]
		|  },
		|  ""az"": {
		|    ""and"": [
		|      ""Və"",
		|      ""Həm""
		|    ],
		|    ""background"": [
		|      ""Keçmiş"",
		|      ""Kontekst""
		|    ],
		|    ""but"": [
		|      ""Amma"",
		|      ""Ancaq""
		|    ],
		|    ""examples"": [
		|      ""Nümunələr""
		|    ],
		|    ""feature"": [
		|      ""Özəllik""
		|    ],
		|    ""given"": [
		|      ""Tutaq ki"",
		|      ""Verilir""
		|    ],
		|    ""name"": ""Azerbaijani"",
		|    ""native"": ""Azərbaycanca"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Nümunə"",
		|      ""Ssenari""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Ssenarinin strukturu""
		|    ],
		|    ""then"": [
		|      ""O halda""
		|    ],
		|    ""when"": [
		|      ""Əgər"",
		|      ""Nə vaxt ki""
		|    ]
		|  },
		|  ""bg"": {
		|    ""and"": [
		|      ""И""
		|    ],
		|    ""background"": [
		|      ""Предистория""
		|    ],
		|    ""but"": [
		|      ""Но""
		|    ],
		|    ""examples"": [
		|      ""Примери""
		|    ],
		|    ""feature"": [
		|      ""Функционалност""
		|    ],
		|    ""given"": [
		|      ""Дадено""
		|    ],
		|    ""name"": ""Bulgarian"",
		|    ""native"": ""български"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Пример"",
		|      ""Сценарий""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Рамка на сценарий""
		|    ],
		|    ""then"": [
		|      ""То""
		|    ],
		|    ""when"": [
		|      ""Когато""
		|    ]
		|  },
		|  ""bm"": {
		|    ""and"": [
		|      ""Dan""
		|    ],
		|    ""background"": [
		|      ""Latar Belakang""
		|    ],
		|    ""but"": [
		|      ""Tetapi"",
		|      ""Tapi""
		|    ],
		|    ""examples"": [
		|      ""Contoh""
		|    ],
		|    ""feature"": [
		|      ""Fungsi""
		|    ],
		|    ""given"": [
		|      ""Diberi"",
		|      ""Bagi""
		|    ],
		|    ""name"": ""Malay"",
		|    ""native"": ""Bahasa Melayu"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Senario"",
		|      ""Situasi"",
		|      ""Keadaan""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Kerangka Senario"",
		|      ""Kerangka Situasi"",
		|      ""Kerangka Keadaan"",
		|      ""Garis Panduan Senario""
		|    ],
		|    ""then"": [
		|      ""Maka"",
		|      ""Kemudian""
		|    ],
		|    ""when"": [
		|      ""Apabila""
		|    ]
		|  },
		|  ""bs"": {
		|    ""and"": [
		|      ""I"",
		|      ""A""
		|    ],
		|    ""background"": [
		|      ""Pozadina""
		|    ],
		|    ""but"": [
		|      ""Ali""
		|    ],
		|    ""examples"": [
		|      ""Primjeri""
		|    ],
		|    ""feature"": [
		|      ""Karakteristika""
		|    ],
		|    ""given"": [
		|      ""Dato""
		|    ],
		|    ""name"": ""Bosnian"",
		|    ""native"": ""Bosanski"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Primjer"",
		|      ""Scenariju"",
		|      ""Scenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Scenariju-obris"",
		|      ""Scenario-outline""
		|    ],
		|    ""then"": [
		|      ""Zatim""
		|    ],
		|    ""when"": [
		|      ""Kada""
		|    ]
		|  },
		|  ""ca"": {
		|    ""and"": [
		|      ""I""
		|    ],
		|    ""background"": [
		|      ""Rerefons"",
		|      ""Antecedents""
		|    ],
		|    ""but"": [
		|      ""Però""
		|    ],
		|    ""examples"": [
		|      ""Exemples""
		|    ],
		|    ""feature"": [
		|      ""Característica"",
		|      ""Funcionalitat""
		|    ],
		|    ""given"": [
		|      ""Donat"",
		|      ""Donada"",
		|      ""Atès"",
		|      ""Atesa""
		|    ],
		|    ""name"": ""Catalan"",
		|    ""native"": ""català"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Exemple"",
		|      ""Escenari""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Esquema de l'escenari""
		|    ],
		|    ""then"": [
		|      ""Aleshores"",
		|      ""Cal""
		|    ],
		|    ""when"": [
		|      ""Quan""
		|    ]
		|  },
		|  ""cs"": {
		|    ""and"": [
		|      ""A také"",
		|      ""A""
		|    ],
		|    ""background"": [
		|      ""Pozadí"",
		|      ""Kontext""
		|    ],
		|    ""but"": [
		|      ""Ale""
		|    ],
		|    ""examples"": [
		|      ""Příklady""
		|    ],
		|    ""feature"": [
		|      ""Požadavek""
		|    ],
		|    ""given"": [
		|      ""Pokud"",
		|      ""Za předpokladu""
		|    ],
		|    ""name"": ""Czech"",
		|    ""native"": ""Česky"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Příklad"",
		|      ""Scénář""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Náčrt Scénáře"",
		|      ""Osnova scénáře""
		|    ],
		|    ""then"": [
		|      ""Pak""
		|    ],
		|    ""when"": [
		|      ""Když""
		|    ]
		|  },
		|  ""cy-GB"": {
		|    ""and"": [
		|      ""A""
		|    ],
		|    ""background"": [
		|      ""Cefndir""
		|    ],
		|    ""but"": [
		|      ""Ond""
		|    ],
		|    ""examples"": [
		|      ""Enghreifftiau""
		|    ],
		|    ""feature"": [
		|      ""Arwedd""
		|    ],
		|    ""given"": [
		|      ""Anrhegedig a""
		|    ],
		|    ""name"": ""Welsh"",
		|    ""native"": ""Cymraeg"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Enghraifft"",
		|      ""Scenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Scenario Amlinellol""
		|    ],
		|    ""then"": [
		|      ""Yna""
		|    ],
		|    ""when"": [
		|      ""Pryd""
		|    ]
		|  },
		|  ""da"": {
		|    ""and"": [
		|      ""Og""
		|    ],
		|    ""background"": [
		|      ""Baggrund""
		|    ],
		|    ""but"": [
		|      ""Men""
		|    ],
		|    ""examples"": [
		|      ""Eksempler""
		|    ],
		|    ""feature"": [
		|      ""Egenskab""
		|    ],
		|    ""given"": [
		|      ""Givet""
		|    ],
		|    ""name"": ""Danish"",
		|    ""native"": ""dansk"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Eksempel"",
		|      ""Scenarie""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Abstrakt Scenario""
		|    ],
		|    ""then"": [
		|      ""Så""
		|    ],
		|    ""when"": [
		|      ""Når""
		|    ]
		|  },
		|  ""de"": {
		|    ""and"": [
		|      ""Und""
		|    ],
		|    ""background"": [
		|      ""Grundlage"",
		|      ""Hintergrund"",
		|      ""Voraussetzungen"",
		|      ""Vorbedingungen""
		|    ],
		|    ""but"": [
		|      ""Aber""
		|    ],
		|    ""examples"": [
		|      ""Beispiele""
		|    ],
		|    ""feature"": [
		|      ""Funktionalität"",
		|      ""Funktion""
		|    ],
		|    ""given"": [
		|      ""Angenommen"",
		|      ""Gegeben sei"",
		|      ""Gegeben seien""
		|    ],
		|    ""name"": ""German"",
		|    ""native"": ""Deutsch"",
		|    ""rule"": [
		|      ""Rule"",
		|      ""Regel""
		|    ],
		|    ""scenario"": [
		|      ""Beispiel"",
		|      ""Szenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Szenariogrundriss"",
		|      ""Szenarien""
		|    ],
		|    ""then"": [
		|      ""Dann""
		|    ],
		|    ""when"": [
		|      ""Wenn""
		|    ]
		|  },
		|  ""el"": {
		|    ""and"": [
		|      ""Και""
		|    ],
		|    ""background"": [
		|      ""Υπόβαθρο""
		|    ],
		|    ""but"": [
		|      ""Αλλά""
		|    ],
		|    ""examples"": [
		|      ""Παραδείγματα"",
		|      ""Σενάρια""
		|    ],
		|    ""feature"": [
		|      ""Δυνατότητα"",
		|      ""Λειτουργία""
		|    ],
		|    ""given"": [
		|      ""Δεδομένου""
		|    ],
		|    ""name"": ""Greek"",
		|    ""native"": ""Ελληνικά"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Παράδειγμα"",
		|      ""Σενάριο""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Περιγραφή Σεναρίου"",
		|      ""Περίγραμμα Σεναρίου""
		|    ],
		|    ""then"": [
		|      ""Τότε""
		|    ],
		|    ""when"": [
		|      ""Όταν""
		|    ]
		|  },
		|  ""em"": {
		|    ""and"": [
		|      """"
		|    ],
		|    ""background"": [
		|      """"
		|    ],
		|    ""but"": [
		|      """"
		|    ],
		|    ""examples"": [
		|      """"
		|    ],
		|    ""feature"": [
		|      """"
		|    ],
		|    ""given"": [
		|      """"
		|    ],
		|    ""name"": ""Emoji"",
		|    ""native"": """",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      """",
		|      """"
		|    ],
		|    ""scenarioOutline"": [
		|      """"
		|    ],
		|    ""then"": [
		|      """"
		|    ],
		|    ""when"": [
		|      """"
		|    ]
		|  },
		|  ""en"": {
		|    ""and"": [
		|      ""And""
		|    ],
		|    ""background"": [
		|      ""Background""
		|    ],
		|    ""but"": [
		|      ""But""
		|    ],
		|    ""examples"": [
		|      ""Examples"",
		|      ""Scenarios""
		|    ],
		|    ""feature"": [
		|      ""Feature"",
		|      ""Functionality"",
		|      ""Business Need"",
		|      ""Ability""
		|    ],
		|    ""if"": [
		|      ""If""
		|    ],
		|    ""elseif"": [
		|      ""ElseIf""
		|    ],
		|    ""else"": [
		|      ""Else""
		|    ],
		|    ""try"": [
		|      ""try""
		|    ],
		|    ""except"": [
		|      ""except""
		|    ],
		|    ""given"": [
		|      ""Given""
		|    ],
		|    ""name"": ""English"",
		|    ""native"": ""English"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Example"",
		|      ""Scenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Scenario Outline"",
		|      ""Scenario Template""
		|    ],
		|    ""then"": [
		|      ""Then""
		|    ],
		|    ""when"": [
		|      ""When""
		|    ]
		|  },
		|  ""en-Scouse"": {
		|    ""and"": [
		|      ""An""
		|    ],
		|    ""background"": [
		|      ""Dis is what went down""
		|    ],
		|    ""but"": [
		|      ""Buh""
		|    ],
		|    ""examples"": [
		|      ""Examples""
		|    ],
		|    ""feature"": [
		|      ""Feature""
		|    ],
		|    ""given"": [
		|      ""Givun"",
		|      ""Youse know when youse got""
		|    ],
		|    ""name"": ""Scouse"",
		|    ""native"": ""Scouse"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""The thing of it is""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Wharrimean is""
		|    ],
		|    ""then"": [
		|      ""Dun"",
		|      ""Den youse gotta""
		|    ],
		|    ""when"": [
		|      ""Wun"",
		|      ""Youse know like when""
		|    ]
		|  },
		|  ""en-au"": {
		|    ""and"": [
		|      ""Too right""
		|    ],
		|    ""background"": [
		|      ""First off""
		|    ],
		|    ""but"": [
		|      ""Yeah nah""
		|    ],
		|    ""examples"": [
		|      ""You'll wanna""
		|    ],
		|    ""feature"": [
		|      ""Pretty much""
		|    ],
		|    ""given"": [
		|      ""Y'know""
		|    ],
		|    ""name"": ""Australian"",
		|    ""native"": ""Australian"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Awww, look mate""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Reckon it's like""
		|    ],
		|    ""then"": [
		|      ""But at the end of the day I reckon""
		|    ],
		|    ""when"": [
		|      ""It's just unbelievable""
		|    ]
		|  },
		|  ""en-lol"": {
		|    ""and"": [
		|      ""AN""
		|    ],
		|    ""background"": [
		|      ""B4""
		|    ],
		|    ""but"": [
		|      ""BUT""
		|    ],
		|    ""examples"": [
		|      ""EXAMPLZ""
		|    ],
		|    ""feature"": [
		|      ""OH HAI""
		|    ],
		|    ""given"": [
		|      ""I CAN HAZ""
		|    ],
		|    ""name"": ""LOLCAT"",
		|    ""native"": ""LOLCAT"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""MISHUN""
		|    ],
		|    ""scenarioOutline"": [
		|      ""MISHUN SRSLY""
		|    ],
		|    ""then"": [
		|      ""DEN""
		|    ],
		|    ""when"": [
		|      ""WEN""
		|    ]
		|  },
		|  ""en-old"": {
		|    ""and"": [
		|      ""Ond"",
		|      ""7""
		|    ],
		|    ""background"": [
		|      ""Aer"",
		|      ""Ær""
		|    ],
		|    ""but"": [
		|      ""Ac""
		|    ],
		|    ""examples"": [
		|      ""Se the"",
		|      ""Se þe"",
		|      ""Se ðe""
		|    ],
		|    ""feature"": [
		|      ""Hwaet"",
		|      ""Hwæt""
		|    ],
		|    ""given"": [
		|      ""Thurh"",
		|      ""Þurh"",
		|      ""Ðurh""
		|    ],
		|    ""name"": ""Old English"",
		|    ""native"": ""Englisc"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Swa""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Swa hwaer swa"",
		|      ""Swa hwær swa""
		|    ],
		|    ""then"": [
		|      ""Tha"",
		|      ""Þa"",
		|      ""Ða"",
		|      ""Tha the"",
		|      ""Þa þe"",
		|      ""Ða ðe""
		|    ],
		|    ""when"": [
		|      ""Tha"",
		|      ""Þa"",
		|      ""Ða""
		|    ]
		|  },
		|  ""en-pirate"": {
		|    ""and"": [
		|      ""Aye""
		|    ],
		|    ""background"": [
		|      ""Yo-ho-ho""
		|    ],
		|    ""but"": [
		|      ""Avast!""
		|    ],
		|    ""examples"": [
		|      ""Dead men tell no tales""
		|    ],
		|    ""feature"": [
		|      ""Ahoy matey!""
		|    ],
		|    ""given"": [
		|      ""Gangway!""
		|    ],
		|    ""name"": ""Pirate"",
		|    ""native"": ""Pirate"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Heave to""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Shiver me timbers""
		|    ],
		|    ""then"": [
		|      ""Let go and haul""
		|    ],
		|    ""when"": [
		|      ""Blimey!""
		|    ]
		|  },
		|  ""eo"": {
		|    ""and"": [
		|      ""Kaj""
		|    ],
		|    ""background"": [
		|      ""Fono""
		|    ],
		|    ""but"": [
		|      ""Sed""
		|    ],
		|    ""examples"": [
		|      ""Ekzemploj""
		|    ],
		|    ""feature"": [
		|      ""Trajto""
		|    ],
		|    ""given"": [
		|      ""Donitaĵo"",
		|      ""Komence""
		|    ],
		|    ""name"": ""Esperanto"",
		|    ""native"": ""Esperanto"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Ekzemplo"",
		|      ""Scenaro"",
		|      ""Kazo""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Konturo de la scenaro"",
		|      ""Skizo"",
		|      ""Kazo-skizo""
		|    ],
		|    ""then"": [
		|      ""Do""
		|    ],
		|    ""when"": [
		|      ""Se""
		|    ]
		|  },
		|  ""es"": {
		|    ""and"": [
		|      ""Y"",
		|      ""E""
		|    ],
		|    ""background"": [
		|      ""Antecedentes""
		|    ],
		|    ""but"": [
		|      ""Pero""
		|    ],
		|    ""examples"": [
		|      ""Ejemplos""
		|    ],
		|    ""feature"": [
		|      ""Característica""
		|    ],
		|    ""given"": [
		|      ""Dado"",
		|      ""Dada"",
		|      ""Dados"",
		|      ""Dadas""
		|    ],
		|    ""name"": ""Spanish"",
		|    ""native"": ""español"",
		|    ""rule"": [
		|      ""Regla""
		|    ],
		|    ""scenario"": [
		|      ""Ejemplo"",
		|      ""Escenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Esquema del escenario""
		|    ],
		|    ""then"": [
		|      ""Entonces""
		|    ],
		|    ""when"": [
		|      ""Cuando""
		|    ]
		|  },
		|  ""et"": {
		|    ""and"": [
		|      ""Ja""
		|    ],
		|    ""background"": [
		|      ""Taust""
		|    ],
		|    ""but"": [
		|      ""Kuid""
		|    ],
		|    ""examples"": [
		|      ""Juhtumid""
		|    ],
		|    ""feature"": [
		|      ""Omadus""
		|    ],
		|    ""given"": [
		|      ""Eeldades""
		|    ],
		|    ""name"": ""Estonian"",
		|    ""native"": ""eesti keel"",
		|    ""rule"": [
		|      ""Reegel""
		|    ],
		|    ""scenario"": [
		|      ""Juhtum"",
		|      ""Stsenaarium""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Raamjuhtum"",
		|      ""Raamstsenaarium""
		|    ],
		|    ""then"": [
		|      ""Siis""
		|    ],
		|    ""when"": [
		|      ""Kui""
		|    ]
		|  },
		|  ""fa"": {
		|    ""and"": [
		|      ""و""
		|    ],
		|    ""background"": [
		|      ""زمینه""
		|    ],
		|    ""but"": [
		|      ""اما""
		|    ],
		|    ""examples"": [
		|      ""نمونه ها""
		|    ],
		|    ""feature"": [
		|      ""وِیژگی""
		|    ],
		|    ""given"": [
		|      ""با فرض""
		|    ],
		|    ""name"": ""Persian"",
		|    ""native"": ""فارسی"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""مثال"",
		|      ""سناریو""
		|    ],
		|    ""scenarioOutline"": [
		|      ""الگوی سناریو""
		|    ],
		|    ""then"": [
		|      ""آنگاه""
		|    ],
		|    ""when"": [
		|      ""هنگامی""
		|    ]
		|  },
		|  ""fi"": {
		|    ""and"": [
		|      ""Ja""
		|    ],
		|    ""background"": [
		|      ""Tausta""
		|    ],
		|    ""but"": [
		|      ""Mutta""
		|    ],
		|    ""examples"": [
		|      ""Tapaukset""
		|    ],
		|    ""feature"": [
		|      ""Ominaisuus""
		|    ],
		|    ""given"": [
		|      ""Oletetaan""
		|    ],
		|    ""name"": ""Finnish"",
		|    ""native"": ""suomi"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Tapaus""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Tapausaihio""
		|    ],
		|    ""then"": [
		|      ""Niin""
		|    ],
		|    ""when"": [
		|      ""Kun""
		|    ]
		|  },
		|  ""fr"": {
		|    ""and"": [
		|      ""Et que"",
		|      ""Et qu'"",
		|      ""Et""
		|    ],
		|    ""background"": [
		|      ""Contexte""
		|    ],
		|    ""but"": [
		|      ""Mais que"",
		|      ""Mais qu'"",
		|      ""Mais""
		|    ],
		|    ""examples"": [
		|      ""Exemples""
		|    ],
		|    ""feature"": [
		|      ""Fonctionnalité""
		|    ],
		|    ""given"": [
		|      ""Soit"",
		|      ""Sachant que"",
		|      ""Sachant qu'"",
		|      ""Sachant"",
		|      ""Etant donné que"",
		|      ""Etant donné qu'"",
		|      ""Etant donné"",
		|      ""Etant donnée"",
		|      ""Etant donnés"",
		|      ""Etant données"",
		|      ""Étant donné que"",
		|      ""Étant donné qu'"",
		|      ""Étant donné"",
		|      ""Étant donnée"",
		|      ""Étant donnés"",
		|      ""Étant données""
		|    ],
		|    ""name"": ""French"",
		|    ""native"": ""français"",
		|    ""rule"": [
		|      ""Règle""
		|    ],
		|    ""scenario"": [
		|      ""Exemple"",
		|      ""Scénario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Plan du scénario"",
		|      ""Plan du Scénario""
		|    ],
		|    ""then"": [
		|      ""Alors"",
		|      ""Donc""
		|    ],
		|    ""when"": [
		|      ""Quand"",
		|      ""Lorsque"",
		|      ""Lorsqu'""
		|    ]
		|  },
		|  ""ga"": {
		|    ""and"": [
		|      ""Agus""
		|    ],
		|    ""background"": [
		|      ""Cúlra""
		|    ],
		|    ""but"": [
		|      ""Ach""
		|    ],
		|    ""examples"": [
		|      ""Samplaí""
		|    ],
		|    ""feature"": [
		|      ""Gné""
		|    ],
		|    ""given"": [
		|      ""Cuir i gcás go"",
		|      ""Cuir i gcás nach"",
		|      ""Cuir i gcás gur"",
		|      ""Cuir i gcás nár""
		|    ],
		|    ""name"": ""Irish"",
		|    ""native"": ""Gaeilge"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Sampla"",
		|      ""Cás""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Cás Achomair""
		|    ],
		|    ""then"": [
		|      ""Ansin""
		|    ],
		|    ""when"": [
		|      ""Nuair a"",
		|      ""Nuair nach"",
		|      ""Nuair ba"",
		|      ""Nuair nár""
		|    ]
		|  },
		|  ""gj"": {
		|    ""and"": [
		|      ""અને""
		|    ],
		|    ""background"": [
		|      ""બેકગ્રાઉન્ડ""
		|    ],
		|    ""but"": [
		|      ""પણ""
		|    ],
		|    ""examples"": [
		|      ""ઉદાહરણો""
		|    ],
		|    ""feature"": [
		|      ""લક્ષણ"",
		|      ""વ્યાપાર જરૂર"",
		|      ""ક્ષમતા""
		|    ],
		|    ""given"": [
		|      ""આપેલ છે""
		|    ],
		|    ""name"": ""Gujarati"",
		|    ""native"": ""ગુજરાતી"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""ઉદાહરણ"",
		|      ""સ્થિતિ""
		|    ],
		|    ""scenarioOutline"": [
		|      ""પરિદ્દશ્ય રૂપરેખા"",
		|      ""પરિદ્દશ્ય ઢાંચો""
		|    ],
		|    ""then"": [
		|      ""પછી""
		|    ],
		|    ""when"": [
		|      ""ક્યારે""
		|    ]
		|  },
		|  ""gl"": {
		|    ""and"": [
		|      ""E""
		|    ],
		|    ""background"": [
		|      ""Contexto""
		|    ],
		|    ""but"": [
		|      ""Mais"",
		|      ""Pero""
		|    ],
		|    ""examples"": [
		|      ""Exemplos""
		|    ],
		|    ""feature"": [
		|      ""Característica""
		|    ],
		|    ""given"": [
		|      ""Dado"",
		|      ""Dada"",
		|      ""Dados"",
		|      ""Dadas""
		|    ],
		|    ""name"": ""Galician"",
		|    ""native"": ""galego"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Exemplo"",
		|      ""Escenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Esbozo do escenario""
		|    ],
		|    ""then"": [
		|      ""Entón"",
		|      ""Logo""
		|    ],
		|    ""when"": [
		|      ""Cando""
		|    ]
		|  },
		|  ""he"": {
		|    ""and"": [
		|      ""וגם""
		|    ],
		|    ""background"": [
		|      ""רקע""
		|    ],
		|    ""but"": [
		|      ""אבל""
		|    ],
		|    ""examples"": [
		|      ""דוגמאות""
		|    ],
		|    ""feature"": [
		|      ""תכונה""
		|    ],
		|    ""given"": [
		|      ""בהינתן""
		|    ],
		|    ""name"": ""Hebrew"",
		|    ""native"": ""עברית"",
		|    ""rule"": [
		|      ""כלל""
		|    ],
		|    ""scenario"": [
		|      ""דוגמא"",
		|      ""תרחיש""
		|    ],
		|    ""scenarioOutline"": [
		|      ""תבנית תרחיש""
		|    ],
		|    ""then"": [
		|      ""אז"",
		|      ""אזי""
		|    ],
		|    ""when"": [
		|      ""כאשר""
		|    ]
		|  },
		|  ""hi"": {
		|    ""and"": [
		|      ""और"",
		|      ""तथा""
		|    ],
		|    ""background"": [
		|      ""पृष्ठभूमि""
		|    ],
		|    ""but"": [
		|      ""पर"",
		|      ""परन्तु"",
		|      ""किन्तु""
		|    ],
		|    ""examples"": [
		|      ""उदाहरण""
		|    ],
		|    ""feature"": [
		|      ""रूप लेख""
		|    ],
		|    ""given"": [
		|      ""अगर"",
		|      ""यदि"",
		|      ""चूंकि""
		|    ],
		|    ""name"": ""Hindi"",
		|    ""native"": ""हिंदी"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""परिदृश्य""
		|    ],
		|    ""scenarioOutline"": [
		|      ""परिदृश्य रूपरेखा""
		|    ],
		|    ""then"": [
		|      ""तब"",
		|      ""तदा""
		|    ],
		|    ""when"": [
		|      ""जब"",
		|      ""कदा""
		|    ]
		|  },
		|  ""hr"": {
		|    ""and"": [
		|      ""I""
		|    ],
		|    ""background"": [
		|      ""Pozadina""
		|    ],
		|    ""but"": [
		|      ""Ali""
		|    ],
		|    ""examples"": [
		|      ""Primjeri"",
		|      ""Scenariji""
		|    ],
		|    ""feature"": [
		|      ""Osobina"",
		|      ""Mogućnost"",
		|      ""Mogucnost""
		|    ],
		|    ""given"": [
		|      ""Zadan"",
		|      ""Zadani"",
		|      ""Zadano"",
		|      ""Ukoliko""
		|    ],
		|    ""name"": ""Croatian"",
		|    ""native"": ""hrvatski"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Primjer"",
		|      ""Scenarij""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Skica"",
		|      ""Koncept""
		|    ],
		|    ""then"": [
		|      ""Onda""
		|    ],
		|    ""when"": [
		|      ""Kada"",
		|      ""Kad""
		|    ]
		|  },
		|  ""ht"": {
		|    ""and"": [
		|      ""Ak"",
		|      ""Epi"",
		|      ""E""
		|    ],
		|    ""background"": [
		|      ""Kontèks"",
		|      ""Istorik""
		|    ],
		|    ""but"": [
		|      ""Men""
		|    ],
		|    ""examples"": [
		|      ""Egzanp""
		|    ],
		|    ""feature"": [
		|      ""Karakteristik"",
		|      ""Mak"",
		|      ""Fonksyonalite""
		|    ],
		|    ""given"": [
		|      ""Sipoze"",
		|      ""Sipoze ke"",
		|      ""Sipoze Ke""
		|    ],
		|    ""name"": ""Creole"",
		|    ""native"": ""kreyòl"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Senaryo""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Plan senaryo"",
		|      ""Plan Senaryo"",
		|      ""Senaryo deskripsyon"",
		|      ""Senaryo Deskripsyon"",
		|      ""Dyagram senaryo"",
		|      ""Dyagram Senaryo""
		|    ],
		|    ""then"": [
		|      ""Lè sa a"",
		|      ""Le sa a""
		|    ],
		|    ""when"": [
		|      ""Lè"",
		|      ""Le""
		|    ]
		|  },
		|  ""hu"": {
		|    ""and"": [
		|      ""És""
		|    ],
		|    ""background"": [
		|      ""Háttér""
		|    ],
		|    ""but"": [
		|      ""De""
		|    ],
		|    ""examples"": [
		|      ""Példák""
		|    ],
		|    ""feature"": [
		|      ""Jellemző""
		|    ],
		|    ""given"": [
		|      ""Amennyiben"",
		|      ""Adott""
		|    ],
		|    ""name"": ""Hungarian"",
		|    ""native"": ""magyar"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Példa"",
		|      ""Forgatókönyv""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Forgatókönyv vázlat""
		|    ],
		|    ""then"": [
		|      ""Akkor""
		|    ],
		|    ""when"": [
		|      ""Majd"",
		|      ""Ha"",
		|      ""Amikor""
		|    ]
		|  },
		|  ""id"": {
		|    ""and"": [
		|      ""Dan""
		|    ],
		|    ""background"": [
		|      ""Dasar"",
		|      ""Latar Belakang""
		|    ],
		|    ""but"": [
		|      ""Tapi"",
		|      ""Tetapi""
		|    ],
		|    ""examples"": [
		|      ""Contoh"",
		|      ""Misal""
		|    ],
		|    ""feature"": [
		|      ""Fitur""
		|    ],
		|    ""given"": [
		|      ""Dengan"",
		|      ""Diketahui"",
		|      ""Diasumsikan"",
		|      ""Bila"",
		|      ""Jika""
		|    ],
		|    ""name"": ""Indonesian"",
		|    ""native"": ""Bahasa Indonesia"",
		|    ""rule"": [
		|      ""Rule"",
		|      ""Aturan""
		|    ],
		|    ""scenario"": [
		|      ""Skenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Skenario konsep"",
		|      ""Garis-Besar Skenario""
		|    ],
		|    ""then"": [
		|      ""Maka"",
		|      ""Kemudian""
		|    ],
		|    ""when"": [
		|      ""Ketika""
		|    ]
		|  },
		|  ""is"": {
		|    ""and"": [
		|      ""Og""
		|    ],
		|    ""background"": [
		|      ""Bakgrunnur""
		|    ],
		|    ""but"": [
		|      ""En""
		|    ],
		|    ""examples"": [
		|      ""Dæmi"",
		|      ""Atburðarásir""
		|    ],
		|    ""feature"": [
		|      ""Eiginleiki""
		|    ],
		|    ""given"": [
		|      ""Ef""
		|    ],
		|    ""name"": ""Icelandic"",
		|    ""native"": ""Íslenska"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Atburðarás""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Lýsing Atburðarásar"",
		|      ""Lýsing Dæma""
		|    ],
		|    ""then"": [
		|      ""Þá""
		|    ],
		|    ""when"": [
		|      ""Þegar""
		|    ]
		|  },
		|  ""it"": {
		|    ""and"": [
		|      ""E""
		|    ],
		|    ""background"": [
		|      ""Contesto""
		|    ],
		|    ""but"": [
		|      ""Ma""
		|    ],
		|    ""examples"": [
		|      ""Esempi""
		|    ],
		|    ""feature"": [
		|      ""Funzionalità""
		|    ],
		|    ""given"": [
		|      ""Dato"",
		|      ""Data"",
		|      ""Dati"",
		|      ""Date""
		|    ],
		|    ""name"": ""Italian"",
		|    ""native"": ""italiano"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Esempio"",
		|      ""Scenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Schema dello scenario""
		|    ],
		|    ""then"": [
		|      ""Allora""
		|    ],
		|    ""when"": [
		|      ""Quando""
		|    ]
		|  },
		|  ""ja"": {
		|    ""and"": [
		|      ""かつ""
		|    ],
		|    ""background"": [
		|      ""背景""
		|    ],
		|    ""but"": [
		|      ""しかし"",
		|      ""但し"",
		|      ""ただし""
		|    ],
		|    ""examples"": [
		|      ""例"",
		|      ""サンプル""
		|    ],
		|    ""feature"": [
		|      ""フィーチャ"",
		|      ""機能""
		|    ],
		|    ""given"": [
		|      ""前提""
		|    ],
		|    ""name"": ""Japanese"",
		|    ""native"": ""日本語"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""シナリオ""
		|    ],
		|    ""scenarioOutline"": [
		|      ""シナリオアウトライン"",
		|      ""シナリオテンプレート"",
		|      ""テンプレ"",
		|      ""シナリオテンプレ""
		|    ],
		|    ""then"": [
		|      ""ならば""
		|    ],
		|    ""when"": [
		|      ""もし""
		|    ]
		|  },
		|  ""jv"": {
		|    ""and"": [
		|      ""Lan""
		|    ],
		|    ""background"": [
		|      ""Dasar""
		|    ],
		|    ""but"": [
		|      ""Tapi"",
		|      ""Nanging"",
		|      ""Ananging""
		|    ],
		|    ""examples"": [
		|      ""Conto"",
		|      ""Contone""
		|    ],
		|    ""feature"": [
		|      ""Fitur""
		|    ],
		|    ""given"": [
		|      ""Nalika"",
		|      ""Nalikaning""
		|    ],
		|    ""name"": ""Javanese"",
		|    ""native"": ""Basa Jawa"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Skenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Konsep skenario""
		|    ],
		|    ""then"": [
		|      ""Njuk"",
		|      ""Banjur""
		|    ],
		|    ""when"": [
		|      ""Manawa"",
		|      ""Menawa""
		|    ]
		|  },
		|  ""ka"": {
		|    ""and"": [
		|      ""და""
		|    ],
		|    ""background"": [
		|      ""კონტექსტი""
		|    ],
		|    ""but"": [
		|      ""მაგრამ""
		|    ],
		|    ""examples"": [
		|      ""მაგალითები""
		|    ],
		|    ""feature"": [
		|      ""თვისება""
		|    ],
		|    ""given"": [
		|      ""მოცემული""
		|    ],
		|    ""name"": ""Georgian"",
		|    ""native"": ""ქართველი"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""მაგალითად"",
		|      ""სცენარის""
		|    ],
		|    ""scenarioOutline"": [
		|      ""სცენარის ნიმუში""
		|    ],
		|    ""then"": [
		|      ""მაშინ""
		|    ],
		|    ""when"": [
		|      ""როდესაც""
		|    ]
		|  },
		|  ""kn"": {
		|    ""and"": [
		|      ""ಮತ್ತು""
		|    ],
		|    ""background"": [
		|      ""ಹಿನ್ನೆಲೆ""
		|    ],
		|    ""but"": [
		|      ""ಆದರೆ""
		|    ],
		|    ""examples"": [
		|      ""ಉದಾಹರಣೆಗಳು""
		|    ],
		|    ""feature"": [
		|      ""ಹೆಚ್ಚಳ""
		|    ],
		|    ""given"": [
		|      ""ನೀಡಿದ""
		|    ],
		|    ""name"": ""Kannada"",
		|    ""native"": ""ಕನ್ನಡ"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""ಉದಾಹರಣೆ"",
		|      ""ಕಥಾಸಾರಾಂಶ""
		|    ],
		|    ""scenarioOutline"": [
		|      ""ವಿವರಣೆ""
		|    ],
		|    ""then"": [
		|      ""ನಂತರ""
		|    ],
		|    ""when"": [
		|      ""ಸ್ಥಿತಿಯನ್ನು""
		|    ]
		|  },
		|  ""ko"": {
		|    ""and"": [
		|      ""그리고""
		|    ],
		|    ""background"": [
		|      ""배경""
		|    ],
		|    ""but"": [
		|      ""하지만"",
		|      ""단""
		|    ],
		|    ""examples"": [
		|      ""예""
		|    ],
		|    ""feature"": [
		|      ""기능""
		|    ],
		|    ""given"": [
		|      ""조건"",
		|      ""먼저""
		|    ],
		|    ""name"": ""Korean"",
		|    ""native"": ""한국어"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""시나리오""
		|    ],
		|    ""scenarioOutline"": [
		|      ""시나리오 개요""
		|    ],
		|    ""then"": [
		|      ""그러면""
		|    ],
		|    ""when"": [
		|      ""만일"",
		|      ""만약""
		|    ]
		|  },
		|  ""lt"": {
		|    ""and"": [
		|      ""Ir""
		|    ],
		|    ""background"": [
		|      ""Kontekstas""
		|    ],
		|    ""but"": [
		|      ""Bet""
		|    ],
		|    ""examples"": [
		|      ""Pavyzdžiai"",
		|      ""Scenarijai"",
		|      ""Variantai""
		|    ],
		|    ""feature"": [
		|      ""Savybė""
		|    ],
		|    ""given"": [
		|      ""Duota""
		|    ],
		|    ""name"": ""Lithuanian"",
		|    ""native"": ""lietuvių kalba"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Pavyzdys"",
		|      ""Scenarijus""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Scenarijaus šablonas""
		|    ],
		|    ""then"": [
		|      ""Tada""
		|    ],
		|    ""when"": [
		|      ""Kai""
		|    ]
		|  },
		|  ""lu"": {
		|    ""and"": [
		|      ""an"",
		|      ""a""
		|    ],
		|    ""background"": [
		|      ""Hannergrond""
		|    ],
		|    ""but"": [
		|      ""awer"",
		|      ""mä""
		|    ],
		|    ""examples"": [
		|      ""Beispiller""
		|    ],
		|    ""feature"": [
		|      ""Funktionalitéit""
		|    ],
		|    ""given"": [
		|      ""ugeholl""
		|    ],
		|    ""name"": ""Luxemburgish"",
		|    ""native"": ""Lëtzebuergesch"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Beispill"",
		|      ""Szenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Plang vum Szenario""
		|    ],
		|    ""then"": [
		|      ""dann""
		|    ],
		|    ""when"": [
		|      ""wann""
		|    ]
		|  },
		|  ""lv"": {
		|    ""and"": [
		|      ""Un""
		|    ],
		|    ""background"": [
		|      ""Konteksts"",
		|      ""Situācija""
		|    ],
		|    ""but"": [
		|      ""Bet""
		|    ],
		|    ""examples"": [
		|      ""Piemēri"",
		|      ""Paraugs""
		|    ],
		|    ""feature"": [
		|      ""Funkcionalitāte"",
		|      ""Fīča""
		|    ],
		|    ""given"": [
		|      ""Kad""
		|    ],
		|    ""name"": ""Latvian"",
		|    ""native"": ""latviešu"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Piemērs"",
		|      ""Scenārijs""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Scenārijs pēc parauga""
		|    ],
		|    ""then"": [
		|      ""Tad""
		|    ],
		|    ""when"": [
		|      ""Ja""
		|    ]
		|  },
		|  ""mk-Cyrl"": {
		|    ""and"": [
		|      ""И""
		|    ],
		|    ""background"": [
		|      ""Контекст"",
		|      ""Содржина""
		|    ],
		|    ""but"": [
		|      ""Но""
		|    ],
		|    ""examples"": [
		|      ""Примери"",
		|      ""Сценарија""
		|    ],
		|    ""feature"": [
		|      ""Функционалност"",
		|      ""Бизнис потреба"",
		|      ""Можност""
		|    ],
		|    ""given"": [
		|      ""Дадено"",
		|      ""Дадена""
		|    ],
		|    ""name"": ""Macedonian"",
		|    ""native"": ""Македонски"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Пример"",
		|      ""Сценарио"",
		|      ""На пример""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Преглед на сценарија"",
		|      ""Скица"",
		|      ""Концепт""
		|    ],
		|    ""then"": [
		|      ""Тогаш""
		|    ],
		|    ""when"": [
		|      ""Кога""
		|    ]
		|  },
		|  ""mk-Latn"": {
		|    ""and"": [
		|      ""I""
		|    ],
		|    ""background"": [
		|      ""Kontekst"",
		|      ""Sodrzhina""
		|    ],
		|    ""but"": [
		|      ""No""
		|    ],
		|    ""examples"": [
		|      ""Primeri"",
		|      ""Scenaria""
		|    ],
		|    ""feature"": [
		|      ""Funkcionalnost"",
		|      ""Biznis potreba"",
		|      ""Mozhnost""
		|    ],
		|    ""given"": [
		|      ""Dadeno"",
		|      ""Dadena""
		|    ],
		|    ""name"": ""Macedonian (Latin)"",
		|    ""native"": ""Makedonski (Latinica)"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Scenario"",
		|      ""Na primer""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Pregled na scenarija"",
		|      ""Skica"",
		|      ""Koncept""
		|    ],
		|    ""then"": [
		|      ""Togash""
		|    ],
		|    ""when"": [
		|      ""Koga""
		|    ]
		|  },
		|  ""mn"": {
		|    ""and"": [
		|      ""Мөн"",
		|      ""Тэгээд""
		|    ],
		|    ""background"": [
		|      ""Агуулга""
		|    ],
		|    ""but"": [
		|      ""Гэхдээ"",
		|      ""Харин""
		|    ],
		|    ""examples"": [
		|      ""Тухайлбал""
		|    ],
		|    ""feature"": [
		|      ""Функц"",
		|      ""Функционал""
		|    ],
		|    ""given"": [
		|      ""Өгөгдсөн нь"",
		|      ""Анх""
		|    ],
		|    ""name"": ""Mongolian"",
		|    ""native"": ""монгол"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Сценар""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Сценарын төлөвлөгөө""
		|    ],
		|    ""then"": [
		|      ""Тэгэхэд"",
		|      ""Үүний дараа""
		|    ],
		|    ""when"": [
		|      ""Хэрэв""
		|    ]
		|  },
		|  ""ne"": {
		|    ""and"": [
		|      ""र"",
		|      ""अनी""
		|    ],
		|    ""background"": [
		|      ""पृष्ठभूमी""
		|    ],
		|    ""but"": [
		|      ""तर""
		|    ],
		|    ""examples"": [
		|      ""उदाहरण"",
		|      ""उदाहरणहरु""
		|    ],
		|    ""feature"": [
		|      ""सुविधा"",
		|      ""विशेषता""
		|    ],
		|    ""given"": [
		|      ""दिइएको"",
		|      ""दिएको"",
		|      ""यदि""
		|    ],
		|    ""name"": ""Nepali"",
		|    ""native"": ""नेपाली"",
		|    ""rule"": [
		|      ""नियम""
		|    ],
		|    ""scenario"": [
		|      ""परिदृश्य""
		|    ],
		|    ""scenarioOutline"": [
		|      ""परिदृश्य रूपरेखा""
		|    ],
		|    ""then"": [
		|      ""त्यसपछि"",
		|      ""अनी""
		|    ],
		|    ""when"": [
		|      ""जब""
		|    ]
		|  },
		|  ""nl"": {
		|    ""and"": [
		|      ""En""
		|    ],
		|    ""background"": [
		|      ""Achtergrond""
		|    ],
		|    ""but"": [
		|      ""Maar""
		|    ],
		|    ""examples"": [
		|      ""Voorbeelden""
		|    ],
		|    ""feature"": [
		|      ""Functionaliteit""
		|    ],
		|    ""given"": [
		|      ""Gegeven"",
		|      ""Stel""
		|    ],
		|    ""name"": ""Dutch"",
		|    ""native"": ""Nederlands"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Voorbeeld"",
		|      ""Scenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Abstract Scenario""
		|    ],
		|    ""then"": [
		|      ""Dan""
		|    ],
		|    ""when"": [
		|      ""Als"",
		|      ""Wanneer""
		|    ]
		|  },
		|  ""no"": {
		|    ""and"": [
		|      ""Og""
		|    ],
		|    ""background"": [
		|      ""Bakgrunn""
		|    ],
		|    ""but"": [
		|      ""Men""
		|    ],
		|    ""examples"": [
		|      ""Eksempler""
		|    ],
		|    ""feature"": [
		|      ""Egenskap""
		|    ],
		|    ""given"": [
		|      ""Gitt""
		|    ],
		|    ""name"": ""Norwegian"",
		|    ""native"": ""norsk"",
		|    ""rule"": [
		|      ""Regel""
		|    ],
		|    ""scenario"": [
		|      ""Eksempel"",
		|      ""Scenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Scenariomal"",
		|      ""Abstrakt Scenario""
		|    ],
		|    ""then"": [
		|      ""Så""
		|    ],
		|    ""when"": [
		|      ""Når""
		|    ]
		|  },
		|  ""pa"": {
		|    ""and"": [
		|      ""ਅਤੇ""
		|    ],
		|    ""background"": [
		|      ""ਪਿਛੋਕੜ""
		|    ],
		|    ""but"": [
		|      ""ਪਰ""
		|    ],
		|    ""examples"": [
		|      ""ਉਦਾਹਰਨਾਂ""
		|    ],
		|    ""feature"": [
		|      ""ਖਾਸੀਅਤ"",
		|      ""ਮੁਹਾਂਦਰਾ"",
		|      ""ਨਕਸ਼ ਨੁਹਾਰ""
		|    ],
		|    ""given"": [
		|      ""ਜੇਕਰ"",
		|      ""ਜਿਵੇਂ ਕਿ""
		|    ],
		|    ""name"": ""Panjabi"",
		|    ""native"": ""ਪੰਜਾਬੀ"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""ਉਦਾਹਰਨ"",
		|      ""ਪਟਕਥਾ""
		|    ],
		|    ""scenarioOutline"": [
		|      ""ਪਟਕਥਾ ਢਾਂਚਾ"",
		|      ""ਪਟਕਥਾ ਰੂਪ ਰੇਖਾ""
		|    ],
		|    ""then"": [
		|      ""ਤਦ""
		|    ],
		|    ""when"": [
		|      ""ਜਦੋਂ""
		|    ]
		|  },
		|  ""pl"": {
		|    ""and"": [
		|      ""Oraz"",
		|      ""I""
		|    ],
		|    ""background"": [
		|      ""Założenia""
		|    ],
		|    ""but"": [
		|      ""Ale""
		|    ],
		|    ""examples"": [
		|      ""Przykłady""
		|    ],
		|    ""feature"": [
		|      ""Właściwość"",
		|      ""Funkcja"",
		|      ""Aspekt"",
		|      ""Potrzeba biznesowa""
		|    ],
		|    ""given"": [
		|      ""Zakładając"",
		|      ""Mając"",
		|      ""Zakładając, że""
		|    ],
		|    ""name"": ""Polish"",
		|    ""native"": ""polski"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Przykład"",
		|      ""Scenariusz""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Szablon scenariusza""
		|    ],
		|    ""then"": [
		|      ""Wtedy""
		|    ],
		|    ""when"": [
		|      ""Jeżeli"",
		|      ""Jeśli"",
		|      ""Gdy"",
		|      ""Kiedy""
		|    ]
		|  },
		|  ""pt"": {
		|    ""and"": [
		|      ""E""
		|    ],
		|    ""background"": [
		|      ""Contexto"",
		|      ""Cenário de Fundo"",
		|      ""Cenario de Fundo"",
		|      ""Fundo""
		|    ],
		|    ""but"": [
		|      ""Mas""
		|    ],
		|    ""examples"": [
		|      ""Exemplos"",
		|      ""Cenários"",
		|      ""Cenarios""
		|    ],
		|    ""feature"": [
		|      ""Funcionalidade"",
		|      ""Característica"",
		|      ""Caracteristica""
		|    ],
		|    ""given"": [
		|      ""Dado"",
		|      ""Dada"",
		|      ""Dados"",
		|      ""Dadas""
		|    ],
		|    ""name"": ""Portuguese"",
		|    ""native"": ""português"",
		|    ""rule"": [
		|      ""Regra""
		|    ],
		|    ""scenario"": [
		|      ""Exemplo"",
		|      ""Cenário"",
		|      ""Cenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Esquema do Cenário"",
		|      ""Esquema do Cenario"",
		|      ""Delineação do Cenário"",
		|      ""Delineacao do Cenario""
		|    ],
		|    ""then"": [
		|      ""Então"",
		|      ""Entao""
		|    ],
		|    ""when"": [
		|      ""Quando""
		|    ]
		|  },
		|  ""ro"": {
		|    ""and"": [
		|      ""Si"",
		|      ""Și"",
		|      ""Şi""
		|    ],
		|    ""background"": [
		|      ""Context""
		|    ],
		|    ""but"": [
		|      ""Dar""
		|    ],
		|    ""examples"": [
		|      ""Exemple""
		|    ],
		|    ""feature"": [
		|      ""Functionalitate"",
		|      ""Funcționalitate"",
		|      ""Funcţionalitate""
		|    ],
		|    ""given"": [
		|      ""Date fiind"",
		|      ""Dat fiind"",
		|      ""Dată fiind"",
		|      ""Dati fiind"",
		|      ""Dați fiind"",
		|      ""Daţi fiind""
		|    ],
		|    ""name"": ""Romanian"",
		|    ""native"": ""română"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Exemplu"",
		|      ""Scenariu""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Structura scenariu"",
		|      ""Structură scenariu""
		|    ],
		|    ""then"": [
		|      ""Atunci""
		|    ],
		|    ""when"": [
		|      ""Cand"",
		|      ""Când""
		|    ]
		|  },
		|  ""ru"": {
		|    ""and"": [
		|      ""И"",
		|      ""К тому же"",
		|      ""Также""
		|    ],
		|    ""background"": [
		|      ""Предыстория"",
		|      ""Контекст""
		|    ],
		|    ""but"": [
		|      ""Но"",
		|      ""А""
		|    ],
		|    ""examples"": [
		|      ""Примеры""
		|    ],
		|    ""feature"": [
		|      ""Функция"",
		|      ""Функциональность"",
		|      ""Функционал"",
		|      ""Свойство""
		|    ],
		|    ""if"": [
		|      ""Если""
		|    ],
		|    ""elseif"": [
		|      ""ИначеЕсли""
		|    ],
		|    ""else"": [
		|      ""Иначе""
		|    ],
		|    ""try"": [
		|      ""Попытка""
		|    ],
		|    ""except"": [
		|      ""Исключение""
		|    ],
		|    ""given"": [
		|      ""Допустим"",
		|      ""Дано"",
		|      ""Пусть""
		|    ],
		|    ""name"": ""Russian"",
		|    ""native"": ""русский"",
		|    ""rule"": [
		|      ""Правило""
		|    ],
		|    ""scenario"": [
		|      ""Пример"",
		|      ""Сценарий""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Структура сценария""
		|    ],
		|    ""then"": [
		|      ""То"",
		|      ""Затем"",
		|      ""Тогда""
		|    ],
		|    ""when"": [
		|      ""Когда"",
		|      ""Если""
		|    ]
		|  },
		|  ""sk"": {
		|    ""and"": [
		|      ""A"",
		|      ""A tiež"",
		|      ""A taktiež"",
		|      ""A zároveň""
		|    ],
		|    ""background"": [
		|      ""Pozadie""
		|    ],
		|    ""but"": [
		|      ""Ale""
		|    ],
		|    ""examples"": [
		|      ""Príklady""
		|    ],
		|    ""feature"": [
		|      ""Požiadavka"",
		|      ""Funkcia"",
		|      ""Vlastnosť""
		|    ],
		|    ""given"": [
		|      ""Pokiaľ"",
		|      ""Za predpokladu""
		|    ],
		|    ""name"": ""Slovak"",
		|    ""native"": ""Slovensky"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Príklad"",
		|      ""Scenár""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Náčrt Scenáru"",
		|      ""Náčrt Scenára"",
		|      ""Osnova Scenára""
		|    ],
		|    ""then"": [
		|      ""Tak"",
		|      ""Potom""
		|    ],
		|    ""when"": [
		|      ""Keď"",
		|      ""Ak""
		|    ]
		|  },
		|  ""sl"": {
		|    ""and"": [
		|      ""In"",
		|      ""Ter""
		|    ],
		|    ""background"": [
		|      ""Kontekst"",
		|      ""Osnova"",
		|      ""Ozadje""
		|    ],
		|    ""but"": [
		|      ""Toda"",
		|      ""Ampak"",
		|      ""Vendar""
		|    ],
		|    ""examples"": [
		|      ""Primeri"",
		|      ""Scenariji""
		|    ],
		|    ""feature"": [
		|      ""Funkcionalnost"",
		|      ""Funkcija"",
		|      ""Možnosti"",
		|      ""Moznosti"",
		|      ""Lastnost"",
		|      ""Značilnost""
		|    ],
		|    ""given"": [
		|      ""Dano"",
		|      ""Podano"",
		|      ""Zaradi"",
		|      ""Privzeto""
		|    ],
		|    ""name"": ""Slovenian"",
		|    ""native"": ""Slovenski"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Primer"",
		|      ""Scenarij""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Struktura scenarija"",
		|      ""Skica"",
		|      ""Koncept"",
		|      ""Oris scenarija"",
		|      ""Osnutek""
		|    ],
		|    ""then"": [
		|      ""Nato"",
		|      ""Potem"",
		|      ""Takrat""
		|    ],
		|    ""when"": [
		|      ""Ko"",
		|      ""Ce"",
		|      ""Če"",
		|      ""Kadar""
		|    ]
		|  },
		|  ""sr-Cyrl"": {
		|    ""and"": [
		|      ""И""
		|    ],
		|    ""background"": [
		|      ""Контекст"",
		|      ""Основа"",
		|      ""Позадина""
		|    ],
		|    ""but"": [
		|      ""Али""
		|    ],
		|    ""examples"": [
		|      ""Примери"",
		|      ""Сценарији""
		|    ],
		|    ""feature"": [
		|      ""Функционалност"",
		|      ""Могућност"",
		|      ""Особина""
		|    ],
		|    ""given"": [
		|      ""За дато"",
		|      ""За дате"",
		|      ""За дати""
		|    ],
		|    ""name"": ""Serbian"",
		|    ""native"": ""Српски"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Пример"",
		|      ""Сценарио"",
		|      ""Пример""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Структура сценарија"",
		|      ""Скица"",
		|      ""Концепт""
		|    ],
		|    ""then"": [
		|      ""Онда""
		|    ],
		|    ""when"": [
		|      ""Када"",
		|      ""Кад""
		|    ]
		|  },
		|  ""sr-Latn"": {
		|    ""and"": [
		|      ""I""
		|    ],
		|    ""background"": [
		|      ""Kontekst"",
		|      ""Osnova"",
		|      ""Pozadina""
		|    ],
		|    ""but"": [
		|      ""Ali""
		|    ],
		|    ""examples"": [
		|      ""Primeri"",
		|      ""Scenariji""
		|    ],
		|    ""feature"": [
		|      ""Funkcionalnost"",
		|      ""Mogućnost"",
		|      ""Mogucnost"",
		|      ""Osobina""
		|    ],
		|    ""given"": [
		|      ""Za dato"",
		|      ""Za date"",
		|      ""Za dati""
		|    ],
		|    ""name"": ""Serbian (Latin)"",
		|    ""native"": ""Srpski (Latinica)"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Scenario"",
		|      ""Primer""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Struktura scenarija"",
		|      ""Skica"",
		|      ""Koncept""
		|    ],
		|    ""then"": [
		|      ""Onda""
		|    ],
		|    ""when"": [
		|      ""Kada"",
		|      ""Kad""
		|    ]
		|  },
		|  ""sv"": {
		|    ""and"": [
		|      ""Och""
		|    ],
		|    ""background"": [
		|      ""Bakgrund""
		|    ],
		|    ""but"": [
		|      ""Men""
		|    ],
		|    ""examples"": [
		|      ""Exempel""
		|    ],
		|    ""feature"": [
		|      ""Egenskap""
		|    ],
		|    ""given"": [
		|      ""Givet""
		|    ],
		|    ""name"": ""Swedish"",
		|    ""native"": ""Svenska"",
		|    ""rule"": [
		|      ""Regel""
		|    ],
		|    ""scenario"": [
		|      ""Scenario""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Abstrakt Scenario"",
		|      ""Scenariomall""
		|    ],
		|    ""then"": [
		|      ""Så""
		|    ],
		|    ""when"": [
		|      ""När""
		|    ]
		|  },
		|  ""ta"": {
		|    ""and"": [
		|      ""மேலும் "",
		|      ""மற்றும்""
		|    ],
		|    ""background"": [
		|      ""பின்னணி""
		|    ],
		|    ""but"": [
		|      ""ஆனால் ""
		|    ],
		|    ""examples"": [
		|      ""எடுத்துக்காட்டுகள்"",
		|      ""காட்சிகள்"",
		|      ""நிலைமைகளில்""
		|    ],
		|    ""feature"": [
		|      ""அம்சம்"",
		|      ""வணிக தேவை"",
		|      ""திறன்""
		|    ],
		|    ""given"": [
		|      ""கொடுக்கப்பட்ட""
		|    ],
		|    ""name"": ""Tamil"",
		|    ""native"": ""தமிழ்"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""உதாரணமாக"",
		|      ""காட்சி""
		|    ],
		|    ""scenarioOutline"": [
		|      ""காட்சி சுருக்கம்"",
		|      ""காட்சி வார்ப்புரு""
		|    ],
		|    ""then"": [
		|      ""அப்பொழுது""
		|    ],
		|    ""when"": [
		|      ""எப்போது""
		|    ]
		|  },
		|  ""th"": {
		|    ""and"": [
		|      ""และ""
		|    ],
		|    ""background"": [
		|      ""แนวคิด""
		|    ],
		|    ""but"": [
		|      ""แต่""
		|    ],
		|    ""examples"": [
		|      ""ชุดของตัวอย่าง"",
		|      ""ชุดของเหตุการณ์""
		|    ],
		|    ""feature"": [
		|      ""โครงหลัก"",
		|      ""ความต้องการทางธุรกิจ"",
		|      ""ความสามารถ""
		|    ],
		|    ""given"": [
		|      ""กำหนดให้""
		|    ],
		|    ""name"": ""Thai"",
		|    ""native"": ""ไทย"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""เหตุการณ์""
		|    ],
		|    ""scenarioOutline"": [
		|      ""สรุปเหตุการณ์"",
		|      ""โครงสร้างของเหตุการณ์""
		|    ],
		|    ""then"": [
		|      ""ดังนั้น""
		|    ],
		|    ""when"": [
		|      ""เมื่อ""
		|    ]
		|  },
		|  ""te"": {
		|    ""and"": [
		|      ""మరియు""
		|    ],
		|    ""background"": [
		|      ""నేపథ్యం""
		|    ],
		|    ""but"": [
		|      ""కాని""
		|    ],
		|    ""examples"": [
		|      ""ఉదాహరణలు""
		|    ],
		|    ""feature"": [
		|      ""గుణము""
		|    ],
		|    ""given"": [
		|      ""చెప్పబడినది""
		|    ],
		|    ""name"": ""Telugu"",
		|    ""native"": ""తెలుగు"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""ఉదాహరణ"",
		|      ""సన్నివేశం""
		|    ],
		|    ""scenarioOutline"": [
		|      ""కథనం""
		|    ],
		|    ""then"": [
		|      ""అప్పుడు""
		|    ],
		|    ""when"": [
		|      ""ఈ పరిస్థితిలో""
		|    ]
		|  },
		|  ""tlh"": {
		|    ""and"": [
		|      ""'ej"",
		|      ""latlh""
		|    ],
		|    ""background"": [
		|      ""mo'""
		|    ],
		|    ""but"": [
		|      ""'ach"",
		|      ""'a""
		|    ],
		|    ""examples"": [
		|      ""ghantoH"",
		|      ""lutmey""
		|    ],
		|    ""feature"": [
		|      ""Qap"",
		|      ""Qu'meH 'ut"",
		|      ""perbogh"",
		|      ""poQbogh malja'"",
		|      ""laH""
		|    ],
		|    ""given"": [
		|      ""ghu' noblu'"",
		|      ""DaH ghu' bejlu'""
		|    ],
		|    ""name"": ""Klingon"",
		|    ""native"": ""tlhIngan"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""lut""
		|    ],
		|    ""scenarioOutline"": [
		|      ""lut chovnatlh""
		|    ],
		|    ""then"": [
		|      ""vaj""
		|    ],
		|    ""when"": [
		|      ""qaSDI'""
		|    ]
		|  },
		|  ""tr"": {
		|    ""and"": [
		|      ""Ve""
		|    ],
		|    ""background"": [
		|      ""Geçmiş""
		|    ],
		|    ""but"": [
		|      ""Fakat"",
		|      ""Ama""
		|    ],
		|    ""examples"": [
		|      ""Örnekler""
		|    ],
		|    ""feature"": [
		|      ""Özellik""
		|    ],
		|    ""given"": [
		|      ""Diyelim ki""
		|    ],
		|    ""name"": ""Turkish"",
		|    ""native"": ""Türkçe"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Örnek"",
		|      ""Senaryo""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Senaryo taslağı""
		|    ],
		|    ""then"": [
		|      ""O zaman""
		|    ],
		|    ""when"": [
		|      ""Eğer ki""
		|    ]
		|  },
		|  ""tt"": {
		|    ""and"": [
		|      ""Һәм"",
		|      ""Вә""
		|    ],
		|    ""background"": [
		|      ""Кереш""
		|    ],
		|    ""but"": [
		|      ""Ләкин"",
		|      ""Әмма""
		|    ],
		|    ""examples"": [
		|      ""Үрнәкләр"",
		|      ""Мисаллар""
		|    ],
		|    ""feature"": [
		|      ""Мөмкинлек"",
		|      ""Үзенчәлеклелек""
		|    ],
		|    ""given"": [
		|      ""Әйтик""
		|    ],
		|    ""name"": ""Tatar"",
		|    ""native"": ""Татарча"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Сценарий""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Сценарийның төзелеше""
		|    ],
		|    ""then"": [
		|      ""Нәтиҗәдә""
		|    ],
		|    ""when"": [
		|      ""Әгәр""
		|    ]
		|  },
		|  ""uk"": {
		|    ""and"": [
		|      ""І"",
		|      ""А також"",
		|      ""Та""
		|    ],
		|    ""background"": [
		|      ""Передумова""
		|    ],
		|    ""but"": [
		|      ""Але""
		|    ],
		|    ""examples"": [
		|      ""Приклади""
		|    ],
		|    ""feature"": [
		|      ""Функціонал""
		|    ],
		|    ""given"": [
		|      ""Припустимо"",
		|      ""Припустимо, що"",
		|      ""Нехай"",
		|      ""Дано""
		|    ],
		|    ""name"": ""Ukrainian"",
		|    ""native"": ""Українська"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Приклад"",
		|      ""Сценарій""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Структура сценарію""
		|    ],
		|    ""then"": [
		|      ""То"",
		|      ""Тоді""
		|    ],
		|    ""when"": [
		|      ""Якщо"",
		|      ""Коли""
		|    ]
		|  },
		|  ""ur"": {
		|    ""and"": [
		|      ""اور""
		|    ],
		|    ""background"": [
		|      ""پس منظر""
		|    ],
		|    ""but"": [
		|      ""لیکن""
		|    ],
		|    ""examples"": [
		|      ""مثالیں""
		|    ],
		|    ""feature"": [
		|      ""صلاحیت"",
		|      ""کاروبار کی ضرورت"",
		|      ""خصوصیت""
		|    ],
		|    ""given"": [
		|      ""اگر"",
		|      ""بالفرض"",
		|      ""فرض کیا""
		|    ],
		|    ""name"": ""Urdu"",
		|    ""native"": ""اردو"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""منظرنامہ""
		|    ],
		|    ""scenarioOutline"": [
		|      ""منظر نامے کا خاکہ""
		|    ],
		|    ""then"": [
		|      ""پھر"",
		|      ""تب""
		|    ],
		|    ""when"": [
		|      ""جب""
		|    ]
		|  },
		|  ""uz"": {
		|    ""and"": [
		|      ""Ва""
		|    ],
		|    ""background"": [
		|      ""Тарих""
		|    ],
		|    ""but"": [
		|      ""Лекин"",
		|      ""Бирок"",
		|      ""Аммо""
		|    ],
		|    ""examples"": [
		|      ""Мисоллар""
		|    ],
		|    ""feature"": [
		|      ""Функционал""
		|    ],
		|    ""given"": [
		|      ""Агар""
		|    ],
		|    ""name"": ""Uzbek"",
		|    ""native"": ""Узбекча"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Сценарий""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Сценарий структураси""
		|    ],
		|    ""then"": [
		|      ""Унда""
		|    ],
		|    ""when"": [
		|      ""Агар""
		|    ]
		|  },
		|  ""vi"": {
		|    ""and"": [
		|      ""Và""
		|    ],
		|    ""background"": [
		|      ""Bối cảnh""
		|    ],
		|    ""but"": [
		|      ""Nhưng""
		|    ],
		|    ""examples"": [
		|      ""Dữ liệu""
		|    ],
		|    ""feature"": [
		|      ""Tính năng""
		|    ],
		|    ""given"": [
		|      ""Biết"",
		|      ""Cho""
		|    ],
		|    ""name"": ""Vietnamese"",
		|    ""native"": ""Tiếng Việt"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""Tình huống"",
		|      ""Kịch bản""
		|    ],
		|    ""scenarioOutline"": [
		|      ""Khung tình huống"",
		|      ""Khung kịch bản""
		|    ],
		|    ""then"": [
		|      ""Thì""
		|    ],
		|    ""when"": [
		|      ""Khi""
		|    ]
		|  },
		|  ""zh-CN"": {
		|    ""and"": [
		|      ""而且"",
		|      ""并且"",
		|      ""同时""
		|    ],
		|    ""background"": [
		|      ""背景""
		|    ],
		|    ""but"": [
		|      ""但是""
		|    ],
		|    ""examples"": [
		|      ""例子""
		|    ],
		|    ""feature"": [
		|      ""功能""
		|    ],
		|    ""given"": [
		|      ""假如"",
		|      ""假设"",
		|      ""假定""
		|    ],
		|    ""name"": ""Chinese simplified"",
		|    ""native"": ""简体中文"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""场景"",
		|      ""剧本""
		|    ],
		|    ""scenarioOutline"": [
		|      ""场景大纲"",
		|      ""剧本大纲""
		|    ],
		|    ""then"": [
		|      ""那么""
		|    ],
		|    ""when"": [
		|      ""当""
		|    ]
		|  },
		|  ""zh-TW"": {
		|    ""and"": [
		|      ""而且"",
		|      ""並且"",
		|      ""同時""
		|    ],
		|    ""background"": [
		|      ""背景""
		|    ],
		|    ""but"": [
		|      ""但是""
		|    ],
		|    ""examples"": [
		|      ""例子""
		|    ],
		|    ""feature"": [
		|      ""功能""
		|    ],
		|    ""given"": [
		|      ""假如"",
		|      ""假設"",
		|      ""假定""
		|    ],
		|    ""name"": ""Chinese traditional"",
		|    ""native"": ""繁體中文"",
		|    ""rule"": [
		|      ""Rule""
		|    ],
		|    ""scenario"": [
		|      ""場景"",
		|      ""劇本""
		|    ],
		|    ""scenarioOutline"": [
		|      ""場景大綱"",
		|      ""劇本大綱""
		|    ],
		|    ""then"": [
		|      ""那麼""
		|    ],
		|    ""when"": [
		|      ""當""
		|    ]
		|  },
		|  ""mr"": {
		|    ""and"": [
		|      ""आणि"",
		|      ""तसेच""
		|    ],
		|    ""background"": [
		|      ""पार्श्वभूमी""
		|    ],
		|    ""but"": [
		|      ""पण"",
		|      ""परंतु""
		|    ],
		|    ""examples"": [
		|      ""उदाहरण""
		|    ],
		|    ""feature"": [
		|      ""वैशिष्ट्य"",
		|      ""सुविधा""
		|    ],
		|    ""given"": [
		|      ""जर"",
		|      ""दिलेल्या प्रमाणे""
		|    ],
		|    ""name"": ""Marathi"",
		|    ""native"": ""मराठी"",
		|    ""rule"": [
		|      ""नियम""
		|    ],
		|    ""scenario"": [
		|      ""परिदृश्य""
		|    ],
		|    ""scenarioOutline"": [
		|      ""परिदृश्य रूपरेखा""
		|    ],
		|    ""then"": [
		|      ""मग"",
		|      ""तेव्हा""
		|    ],
		|    ""when"": [
		|      ""जेव्हा""
		|    ]
		|  }
		|}"; 
	
КонецФункции	 

// Выполняет инициализацию парсера
&НаКлиенте
Процедура ИнициализацияПарсера() Экспорт
	Ванесса.ВнешняяКомпонентаПарсерGherkin.НачатьУстановкуКлючевыеСлова(Вычислить("Новый ОписаниеОповещения"), КлючевыеСлова());
КонецПроцедуры 

// Выполняет загрузку фича файлов
&НаКлиенте
Процедура ЗагрузитьФичаФайлы(СтруктураПараметров) Экспорт
	МассивБиблиотек = Новый Массив;
	Для Каждого Элем Из Ванесса.Объект.КаталогиБиблиотек Цикл
		Если ПустаяСтрока(Элем.Значение) Тогда
			Продолжить;
		КонецЕсли;	 
		
		МассивБиблиотек.Добавить(Элем.Значение);
	КонецЦикла;	 
	
	Если Ванесса.ЭтоКаталогКомандаСистемы(СтруктураПараметров.КаталогФич) Тогда
		МассивБиблиотек.Добавить(СтруктураПараметров.КаталогФич);
		
		ТегиИсключения = Новый Массив;
		Для Каждого Элем Из Ванесса.Объект.СписокТеговИсключение Цикл
			ТегиИсключения.Добавить(Элем.Значение);
		КонецЦикла;	 
		
		ТегиФильтры = Новый Массив;
		Для Каждого Элем Из Ванесса.Объект.СписокТеговОтбор Цикл
			ТегиФильтры.Добавить(Элем.Значение);
		КонецЦикла;	 
		
		ФильтрТегов = Новый Структура;
		ФильтрТегов.Вставить("include", ТегиФильтры);
		ФильтрТегов.Вставить("exclude", ТегиИсключения);
		
		Ванесса.ВнешняяКомпонентаПарсерGherkin.НачатьВызовСканироватьПапку(Вычислить("Новый ОписаниеОповещения"),
			СтруктураПараметров.КаталогФич,
			Ванесса.ЗаписатьОбъектJSON(МассивБиблиотек),
			Ванесса.ЗаписатьОбъектJSON(ФильтрТегов)
			);
		
	Иначе
		
		//Каталог, где лежит фича файл
		Файл = Новый Файл(СтруктураПараметров.КаталогФич);
		МассивБиблиотек.Добавить(Файл.Путь);
		
		ОписаниеОповещения = Новый ОписаниеОповещения("ПолученРезультатЧтения", ЭтаФорма, СтруктураПараметров);
		Ванесса.ВнешняяКомпонентаПарсерGherkin.НачатьВызовПрочитатьФайл(ОписаниеОповещения,
			СтруктураПараметров.КаталогФич,
			Ванесса.ЗаписатьОбъектJSON(МассивБиблиотек));
		
	КонецЕсли;	 
КонецПроцедуры 

&НаКлиенте
Процедура ПолученРезультатЧтения(РезультатВызова, ПараметрыВызова, СтруктураПараметров) Экспорт
	
	ИдСтроки = -1;
	
	ТекстJSON = РезультатВызова;
	
	ЧтениеJSON = Новый ЧтениеJSON();
	ЧтениеJSON.УстановитьСтроку(ТекстJSON);
	ДанныеJSON = ПрочитатьJSON(ЧтениеJSON);
	ЧтениеJSON.Закрыть();
	
	КешСнипетовНаКлиенте = Ванесса.КешСнипетовНаКлиенте();
	СтруктураПараметров.Вставить("КоличествоФич", 0);
	СтруктураПараметров.Вставить("КоличествоСценариев", 0);
	СтруктураПараметров.Вставить("КоличествоШагов", 0);
	СтруктураПараметров.Вставить("КоличествоPending", 0);
	СтруктураПараметров.Вставить("РассчитыватьСтатистику", Истина);
	
	Дерево = Ванесса.Объект.ДеревоТестов;
	ЭлементыДерева = Дерево.ПолучитьЭлементы();
	ЭлементыДерева.Очистить();
	
	Если ДанныеJSON <> Неопределено Тогда
		Если ТипЗнч(ДанныеJSON) = Тип("Массив") Тогда
			КаталогиФичаФайлов = Новый Соответствие;
			Для Каждого ДанныеФичи Из ДанныеJSON Цикл
				ФайлФичи = Новый Файл(ДанныеФичи.filename);
				ДобавитьФичу(Дерево, ДанныеФичи, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, КаталогиФичаФайлов, СтруктураПараметров);
			КонецЦикла;	 
		Иначе	
			СтрокаИмяФайла = ЭлементыДерева.Добавить();
			ФайлФичи = Новый Файл(СтруктураПараметров.КаталогФич);
			СтрокаИмяФайла.Имя = ФайлФичи.Имя;
			СтрокаИмяФайла.Тип = "Каталог";
			СтрокаИмяФайла.ПолныйПуть = ФайлФичи.ПолноеИмя;
			ИдСтроки = ИдСтроки + 1;
			СтрокаИмяФайла.ИдСтроки = ИдСтроки;
			
			ДобавитьФичу(СтрокаИмяФайла.ПолучитьЭлементы(), ДанныеJSON, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, Неопределено, СтруктураПараметров);
		КонецЕсли;	 
	КонецЕсли;	 
	
	Ванесса.ЗавершениеЧтенияФичаФайловПарсеромИзКомпоненты(СтруктураПараметров);
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Функция СкопироватьМассивТегов(Источник)
	Результат = Новый Массив;
	
	Для Каждого Элем Из Источник Цикл
		Тег = Новый Структура;
		Тег.Вставить("Тег", НРег(Элем.text));
		Тег.Вставить("НомерСтроки", Элем.line);
		Тег.Вставить("ТегИсходный", Элем.text);
		Результат.Добавить(Тег);
	КонецЦикла;	 
	
	Возврат Результат; 
КонецФункции

&НаКлиенте
Функция СкопироватьМассивКомментариев(Источник)
	Результат = Новый Массив;
	
	Для Каждого Элем Из Источник Цикл
		Данные = Новый Структура;
		Данные.Вставить("НомерСтроки", Элем.line);
		Данные.Вставить("Комментарий", Элем.text);
		Результат.Добавить(Данные);
	КонецЦикла;	 
	
	Возврат Результат; 
КонецФункции	 

&НаКлиенте
Процедура ДобавитьФичу(ЭлементыРодителя, ДанныеФичи, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, КаталогиФичаФайлов, СтруктураПараметров)
	Если НЕ ДанныеФичи.Свойство("scenarios") Тогда
		Возврат;
	КонецЕсли;	 
	
	СтруктураПараметров.Вставить("ЯзыкФичи", ДанныеФичи.language);
	
	Если ДанныеФичи.language <> "ru" Тогда
		Если КешДанныеПеревода[ДанныеФичи.language] = Неопределено Тогда
			АдресВХранилище = Неопределено;
			Ванесса.ПеревестиТекст("", ДанныеФичи.language, АдресВХранилище);
			ДляПоискаПеревод = Новый Соответствие;
			ДляПоискаРусский = Новый Соответствие;
			ДанныеПоСнипетамПеревод(ДанныеФичи.language, АдресВХранилище, ДляПоискаПеревод, ДляПоискаРусский);
			КешДанныеПеревода.Вставить(ДанныеФичи.language, Новый Структура("ДляПоискаПеревод,ДляПоискаРусский", ДляПоискаПеревод, ДляПоискаРусский));
			
			СтруктураПараметров.Вставить("ДляПоискаПеревод", ДляПоискаПеревод);
			СтруктураПараметров.Вставить("ДляПоискаРусский", ДляПоискаРусский);
		Иначе	
			Если НЕ СтруктураПараметров.Свойство("ДляПоискаПеревод") Тогда
				ДанныеПеревода = КешДанныеПеревода[ДанныеФичи.language];
				СтруктураПараметров.Вставить("ДляПоискаПеревод", ДанныеПеревода.ДляПоискаПеревод);
				СтруктураПараметров.Вставить("ДляПоискаРусский", ДанныеПеревода.ДляПоискаРусский);
			КонецЕсли;	 
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если КаталогиФичаФайлов <> Неопределено Тогда
		Файл = Новый Файл(ДанныеФичи.filename);
		ФайлКаталог = Новый Файл(Файл.Путь);
		ЭлементКаталогФичи = КаталогФичиВДереве(Файл.Путь, ЭлементыРодителя, КаталогиФичаФайлов, СтруктураПараметров.КаталогФич, ФайлКаталог.Имя, ИдСтроки);
		СтрокаФичи = ЭлементКаталогФичи.ПолучитьЭлементы().Добавить();
	Иначе	
		СтрокаФичи = ЭлементыРодителя.Добавить();
	КонецЕсли;	 
	
	ИменаНайденныхEpfНаКлиенте = Ванесса.ИменаНайденныхEpfНаКлиенте();
	ФайлФичи = Новый Файл(ДанныеФичи.filename);
	ИмяФайлEPF  = СтрЗаменить(НРег(Ванесса.ДополнитьСлешВПуть(ФайлФичи.Путь + "step_definitions") + ФайлФичи.ИмяБезРасширения + ".epf"), "\", "/");
	Если ИменаНайденныхEpfНаКлиенте[ИмяФайлEPF] <> Неопределено Тогда
		СтрокаФичи.ФичаИмеетСвоюEPF = Истина;
	КонецЕсли;	 
	СтруктураПараметров.Вставить("ФичаИмеетСвоюEPF", СтрокаФичи.ФичаИмеетСвоюEPF);
	
	Если СтруктураПараметров.РассчитыватьСтатистику Тогда
		СтруктураПараметров.КоличествоФич = СтруктураПараметров.КоличествоФич + 1;
	КонецЕсли;	 
	
	СтрокаФичи.Имя = ДанныеФичи.feature.name;
	СтрокаФичи.ПолныйПуть = ФайлФичи.ПолноеИмя;
	СтрокаФичи.ТипКартинки = 1;
	ИдСтроки = ИдСтроки + 1;
	СтрокаФичи.ИдСтроки = ИдСтроки;
	СтрокаФичи.Тип = "Фича";
	СтрокаФичи.ПроизвольныеЗначения = Новый Структура;
	Если ДанныеФичи.feature.Свойство("description") Тогда
		СтрокаФичи.ПроизвольныеЗначения.Вставить("МассивКомментариев", СкопироватьМассивКомментариев(ДанныеФичи.feature.description));
	КонецЕсли;	 
	Если ДанныеФичи.feature.Свойство("tags") Тогда
		СтрокаФичи.ПроизвольныеЗначения.Вставить("МассивТегов", СкопироватьМассивТегов(ДанныеФичи.feature.tags));
	КонецЕсли;	 
	
	ЭлементыФичи = СтрокаФичи.ПолучитьЭлементы();

	Если ДанныеФичи.Свойство("background") Тогда
		ДобавитьСценарий(ЭлементыФичи, ДанныеФичи.background, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, Истина, СтруктураПараметров);
	КонецЕсли;	 
	
	Если ДанныеФичи.Свойство("scenarios") Тогда
		Для Каждого ДанныеСценария Из ДанныеФичи.scenarios Цикл
			ДобавитьСценарий(ЭлементыФичи, ДанныеСценария, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, Ложь, СтруктураПараметров);
		КонецЦикла;	 
	КонецЕсли;	 
КонецПроцедуры 

&НаКлиенте
Процедура ДобавитьСценарий(ЭлементыФичи, ДанныеСценария, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ЭтоКонтекст, СтруктураПараметров)
	ИмяEpfФичаФайла = СтрЗаменить(СтрЗаменить(Нрег(ФайлФичи.ПолноеИмя), "\", "/"), ".feature", ".epf");
	
	СтрокаСценария = ЭлементыФичи.Добавить();
	Если ЭтоКонтекст Тогда
		СтрокаСценария.Имя = СокрЛП(ДанныеСценария.keyword.text);
		СтрокаСценария.ДопТип = "Контекст";
	Иначе	
		СтрокаСценария.Имя = СокрЛП(ДанныеСценария.name);
		Если СтруктураПараметров.РассчитыватьСтатистику Тогда
			СтруктураПараметров.КоличествоСценариев = СтруктураПараметров.КоличествоСценариев + 1;
		КонецЕсли;	 
	КонецЕсли;	 
	СтрокаСценария.ФичаИмеетСвоюEPF = СтруктураПараметров.ФичаИмеетСвоюEPF;
	СтрокаСценария.ПолныйПуть = ФайлФичи.ПолноеИмя + ":" + XMLСтрока(ДанныеСценария.line);
	СтрокаСценария.ТипКартинки = 2;
	Если СтрокаСценария.ДопТип = "Контекст" Тогда
		СтрокаСценария.ТипКартинки = 7;
	КонецЕсли;	 
	СтрокаСценария.ПроизвольныеЗначения = Новый Структура;
	Если ДанныеСценария.Свойство("comments") Тогда
		СтрокаСценария.ПроизвольныеЗначения.Вставить("МассивКомментариев", СкопироватьМассивКомментариев(ДанныеСценария.comments));
	КонецЕсли;	 
	Если ДанныеСценария.Свойство("tags") Тогда
		СтрокаСценария.ПроизвольныеЗначения.Вставить("МассивТегов", СкопироватьМассивТегов(ДанныеСценария.tags));
	КонецЕсли;	 
	
	ИдСтроки = ИдСтроки + 1;
	СтрокаСценария.ИдСтроки = ИдСтроки;
	СтрокаСценария.Тип = "Сценарий";
	СтрокаСценария.НомерСтрокиВФиче = ДанныеСценария.line;
	
	ЭлементыСценария = СтрокаСценария.ПолучитьЭлементы();
	Если ДанныеСценария.Свойство("steps") Тогда
		Для Каждого ДанныеШага Из ДанныеСценария.steps Цикл
			ДобавитьШаг(ЭлементыСценария, ДанныеШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
		КонецЦикла;	 
	КонецЕсли;	 
	
	Если ДанныеСценария.Свойство("examples") Тогда
		СтрокаСценария.ДопТип = "СтруктураСценария";
		
		СтрокаПримеры = СтрокаСценария.ПолучитьЭлементы().Добавить();
		СтрокаПримеры.Имя = "Примеры";
		СтрокаПримеры.Тип = "Примеры";
		ИдСтроки = ИдСтроки + 1;
		СтрокаПримеры.ИдСтроки = ИдСтроки;
		СтрокаПримеры.ТипКартинки = -1;
		СтрокаПримеры.НомерСтрокиВФиче = ДанныеСценария.examples.line;
		
		Для Каждого ДанныеПараметра Из ДанныеСценария.examples.head.tokens Цикл
			СтрокаПримеры.ИменованныеПараметры.Добавить(ДанныеПараметра.text);
		КонецЦикла;	 
		
		ЭлементыПримеры = СтрокаПримеры.ПолучитьЭлементы();
		
		// Первый пример с заголовком таблицы
		СтрокаПримера = ЭлементыПримеры.Добавить();
		СтрокаПримера.Имя = СокрЛП(ДанныеСценария.examples.head.text);
		СтрокаПримера.Тип = "Пример";
		ИдСтроки = ИдСтроки + 1;
		СтрокаПримера.ИдСтроки = ИдСтроки;
		СтрокаПримера.ТипКартинки = -1;
		СтрокаПримера.НомерСтрокиВФиче = ДанныеСценария.examples.head.line;
		
		
		Для Каждого ДанныеПримера Из ДанныеСценария.examples.body Цикл
			СтрокаПримера = ЭлементыПримеры.Добавить();
			СтрокаПримера.Имя = СокрЛП(ДанныеПримера.text);
			СтрокаПримера.Тип = "Пример";
			ИдСтроки = ИдСтроки + 1;
			СтрокаПримера.ИдСтроки = ИдСтроки;
			СтрокаПримера.ТипКартинки = -1;
			СтрокаПримера.НомерСтрокиВФиче = ДанныеПримера.line;
			
			ЭлементыПримера = СтрокаПримера.ПолучитьЭлементы();
			Для Каждого ДанныеШага Из ДанныеПримера.script.steps Цикл
				ДобавитьШаг(ЭлементыПримера, ДанныеШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
			КонецЦикла;	 
			
		КонецЦикла;	 
		
	КонецЕсли;	 
	
КонецПроцедуры 

&НаКлиенте
Процедура ДобавитьШаг(ЭлементыСценария, ДанныеШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров)
	Если НЕ ДанныеШага.Свойство("snippet") Тогда
		ДобавитьГруппу(ЭлементыСценария, ДанныеШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
		Возврат;
	КонецЕсли;	 
	
	ЭтоПодсценарий = Ложь;
	Если ТипЗнч(ДанныеШага.snippet) = Тип("Структура") Тогда
		Если ДанныеШага.snippet.Свойство("steps") Тогда
			ЭтоПодсценарий = Истина;
		КонецЕсли;	 
	КонецЕсли;	 
	
	СтрокаШага = ЭлементыСценария.Добавить();
	СтрокаШага.Имя = СокрЛП(ДанныеШага.text);
	СтрокаШага.ИмяШагаБезКлючевогоСлова = СокрЛ(Сред(СтрокаШага.Имя, СтрДлина(ДанныеШага.keyword.text) + 1));
	Если ДанныеШага.Свойство("line") Тогда
		СтрокаШага.ПолныйПуть = "    " + ФайлФичи.ПолноеИмя + ":" + XMLСтрока(ДанныеШага.line);
	КонецЕсли;	 
	СтрокаШага.ТипКартинки = 3;
	СтрокаШага.ПроизвольныеЗначения = Новый Структура;
	
	Если ДанныеШага.Свойство("comments") Тогда
		СтрокаШага.ПроизвольныеЗначения.Вставить("МассивКомментариевШага", СкопироватьМассивКомментариев(ДанныеШага.comments));
	Иначе
		СтрокаШага.ПроизвольныеЗначения.Вставить("МассивКомментариевШага", Неопределено);
	КонецЕсли;	 
	Если ДанныеШага.Свойство("tags") Тогда
		СтрокаШага.ПроизвольныеЗначения.Вставить("МассивТеговШага", СкопироватьМассивТегов(ДанныеШага.tags));
	Иначе	
		СтрокаШага.ПроизвольныеЗначения.Вставить("МассивТеговШага", Неопределено);
	КонецЕсли;	 
	
	ИдСтроки = ИдСтроки + 1;
	СтрокаШага.ИдСтроки = ИдСтроки;
	СтрокаШага.Тип = "Шаг";
	Если ДанныеШага.Свойство("line") Тогда
		СтрокаШага.НомерСтрокиВФиче = ДанныеШага.line;
	КонецЕсли;	 
	СтрокаШага.Снипет = ДанныеШага.snippet;
	
	ЗаменятьПорядокПараметров = Ложь;
	ДанныеСнипета = КешСнипетовНаКлиенте[ДанныеШага.snippet];
	
	ЭтоОбычныйШагОбернутыйВУсловие = Ложь;
	Если ДанныеСнипета = Неопределено И (ДанныеШага.keyword.type = "if" ИЛИ ДанныеШага.keyword.type = "elseif")
			И НЕ ПустаяСтрока(ДанныеШага.snippet) Тогда
		НовыйIDИзStepDefinition = Неопределено;
		Если ЭтоОбычныйШагОбернутыйВУсловие(ДанныеШага.snippet, НовыйIDИзStepDefinition) Тогда
			ДанныеСнипета = КешСнипетовНаКлиенте[НовыйIDИзStepDefinition];
			Если ДанныеСнипета <> Неопределено Тогда
				ЭтоОбычныйШагОбернутыйВУсловие = Истина;
			КонецЕсли;	 
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если ДанныеСнипета = Неопределено И СтруктураПараметров.ЯзыкФичи <> "ru" Тогда
		ДанныеПоСнипетамПеревод = КешДанныеПеревода[СтруктураПараметров.ЯзыкФичи].ДляПоискаПеревод;
		ДанныеПеревода = ДанныеПоСнипетамПеревод[ДанныеШага.snippet];
		
		Если ДанныеПеревода = Неопределено И (ДанныеШага.keyword.type = "if" ИЛИ ДанныеШага.keyword.type = "elseif")
				И НЕ ПустаяСтрока(ДанныеШага.snippet) Тогда
			НовыйIDИзStepDefinition = Неопределено;
			Если ЭтоОбычныйШагОбернутыйВУсловие(ДанныеШага.snippet, НовыйIDИзStepDefinition) Тогда
				ДанныеПеревода = ДанныеПоСнипетамПеревод[НовыйIDИзStepDefinition];
				Если ДанныеПеревода <> Неопределено Тогда
					ЭтоОбычныйШагОбернутыйВУсловие = Истина;
				КонецЕсли;	 
			КонецЕсли;	 
		КонецЕсли;	 
		
		Если ДанныеПеревода <> Неопределено Тогда
			ДанныеСнипета = КешСнипетовНаКлиенте[ДанныеПеревода.СтрокаДляПоискаРусский];
			ЗаменятьПорядокПараметров = Истина;
			МассивСоответствийПозицийПараметров = ДанныеПеревода.МассивСоответствийПозицийПараметров
		КонецЕсли;	 
		
	КонецЕсли;	 
	
	Если ЭтоОбычныйШагОбернутыйВУсловие Тогда
		СтрокаШага.ПроизвольныеЗначения.Вставить("ЭтоОбычныйШагОбернутыйВУсловие", Истина);
	КонецЕсли;	 
	
	Если ДанныеСнипета <> Неопределено Тогда
		СтрокаШага.СтрокаРеальнойПроцедуры = ДанныеСнипета.СтрокаРеальнойПроцедуры;
		СтрокаШага.АдресСнипета = ДанныеСнипета.ИмяФайла;
		СтрокаШага.Снипет = ДанныеСнипета.id;
		Если ДанныеСнипета.УниверсальноеИмяEpf <> ИмяEpfФичаФайла Тогда
			СтрокаШага.ЭтоЧужойСнипет = Истина;
		КонецЕсли;	 
		СтрокаШага.ДопТип = ДанныеСнипета.ТипШагаВДереве;
		Если ЭтоОбычныйШагОбернутыйВУсловие И ДанныеШага.keyword.type = "if" Тогда
			СтрокаШага.ДопТип = "Условие";
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если ДанныеШага.keyword.type = "elseif" Тогда
		СтрокаШага.ДопТип = "УсловиеИначеЕсли";
	КонецЕсли;	 
	
	Если ДанныеШага.Свойство("steps") Тогда
		СтрокаШага.Тип = "Область";
		СтрокаШага.ЭтоЧужойСнипет = Ложь;
	ИначеЕсли ЭтоПодсценарий Тогда
		СтрокаШага.Тип = "ШагСценарий";
		СтрокаШага.АдресСнипета = ДанныеШага.snippet.filename;
		СтрокаШага.Снипет = "";
		СтрокаШага.ТипКартинки = -1;
	Иначе	
		СтрокаШага.Тип = "Шаг";
	КонецЕсли;	
	
	Если НЕ ПустаяСтрока(СтрокаШага.ДопТип) Тогда
		СтрокаШага.Тип = "Область";
	КонецЕсли;	 
	
	Если ДанныеШага.Свойство("params") Тогда
		Для Каждого ПараметрJson Из ДанныеШага.params Цикл
			ПараметрШага = СтрокаШага.ЗначенияПараметров.Добавить();
			ДанныеПараметра = Новый Структура;
			ДанныеПараметра.Вставить("Значение", ПараметрJson.text);
			
			ДанныеПараметра.Вставить("Тип", ТипПараметраJson(ПараметрJson.type, СтрокаШага.Имя));
			
			ПараметрШага.Значение = ДанныеПараметра;
		КонецЦикла;	 
		
		Если ЗаменятьПорядокПараметров Тогда
			Если МассивСоответствийПозицийПараметров.Количество() <> СтрокаШага.ЗначенияПараметров.Количество() Тогда
				ВызватьИсключение Ванесса.ПодставитьПараметрыВСтроку(
					Ванесса.Локализовать("Несоответствие числа параметров в шаге и в переводе шага <%1>: <%2> и <%3>."),
					СокрЛП(СтрокаШага.Имя), СтрокаШага.ЗначенияПараметров.Количество(), МассивСоответствийПозицийПараметров.Количество());
			КонецЕсли;	 
			
			Спс = Новый СписокЗначений;
			Для Каждого Номер Из МассивСоответствийПозицийПараметров Цикл
				Спс.Добавить(СтрокаШага.ЗначенияПараметров[Номер - 1].Значение);
			КонецЦикла;	 
			СтрокаШага.ЗначенияПараметров = Спс;
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если ДанныеШага.Свойство("multilines") Тогда
		Для Каждого ПараметрJson Из ДанныеШага.multilines Цикл
			ПараметрШага = СтрокаШага.ЗначенияПараметров.Добавить();
			ДанныеПараметра = Новый Структура;
			Массив = Новый Массив;
			Для Каждого ДанныеСтроки Из ПараметрJson.lines Цикл
				Массив.Добавить(ДанныеСтроки.text);
			КонецЦикла;	 
			ДанныеПараметра.Вставить("Значение", Ванесса.МассивВСтроку(Массив, Символы.ПС));
			
			ДанныеПараметра.Вставить("Тип", "Строка");
			
			ПараметрШага.Значение = ДанныеПараметра;
		КонецЦикла;	 
	КонецЕсли;	 
	
	Если ДанныеШага.Свойство("tables") Тогда
		СтрокаШага.ШагСПараметрамиВТаблице = Истина;
		ЭлементыШага = СтрокаШага.ПолучитьЭлементы();
		ДобавитьТаблицы(ЭлементыШага, ДанныеШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла);
	КонецЕсли;
	
	Если СтрокаШага.Тип = "Область" И ПустаяСтрока(СтрокаШага.ДопТип) Тогда
		СтрокаШага.Снипет = "";
		СтрокаШага.СтрокаРеальнойПроцедуры = "";
		СтрокаШага.АдресСнипета = "";
		СтрокаШага.ИмяШагаБезКлючевогоСлова = "";
		СтрокаШага.ПолныйПуть = "";
		СтрокаШага.ЗначенияПараметров = Неопределено;
	КонецЕсли;	 
	
	Если НЕ ДанныеШага.Свойство("tables") И НЕ ДанныеШага.Свойство("multilines") И ДанныеШага.Свойство("Steps") И ПустаяСтрока(СтрокаШага.АдресСнипета) Тогда
		//значит это группа шагов записанная как шаг
		СтрокаШага.Тип = "Область";
		СтрокаШага.Снипет = "";
		СтрокаШага.ТипКартинки = -1;
		СтрокаШага.ПолныйПуть = "";
		СтрокаШага.ИмяШагаБезКлючевогоСлова = "";
	Иначе	
		
		Если СтрокаШага.Тип = "Шаг" ИЛИ СтрокаШага.Тип = "Область" Тогда
			Если СтруктураПараметров.РассчитыватьСтатистику Тогда
				СтруктураПараметров.КоличествоШагов = СтруктураПараметров.КоличествоШагов + 1;
				Если ДанныеСнипета = Неопределено Тогда
					СтруктураПараметров.КоличествоPending = СтруктураПараметров.КоличествоPending + 1;
				КонецЕсли;	 
			КонецЕсли;	 
		КонецЕсли;	 
		
	КонецЕсли;	 
	
	Если ДанныеШага.Свойство("snippet") И ТипЗнч(ДанныеШага.snippet) = Тип("Структура") И ДанныеШага.snippet.Свойство("examples") Тогда
		// Вставка структуры сценария
		ФайлФичиПодсценария = Новый Файл(ДанныеШага.snippet.filename);
		СтрокаШага.ДопТип = "СтруктураСценария";
		
		ЭлементыШага = СтрокаШага.ПолучитьЭлементы();
		
		Для Каждого ДанныеШагаИзОпределенияСтруктурыСценария Из ДанныеШага.snippet.steps Цикл
			ДобавитьШаг(ЭлементыШага, ДанныеШагаИзОпределенияСтруктурыСценария, ФайлФичиПодсценария, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
		КонецЦикла;	 
		
		СтрокаПримеры = ЭлементыШага.Добавить();
		СтрокаПримеры.Имя = "Примеры";
		СтрокаПримеры.Тип = "Примеры";
		ИдСтроки = ИдСтроки + 1;
		СтрокаПримеры.ИдСтроки = ИдСтроки;
		СтрокаПримеры.ТипКартинки = -1;
		СтрокаПримеры.НомерСтрокиВФиче = ДанныеШага.snippet.examples.head.line;;
		
		// Первая строка таблицы примеров
		ПерваяСтрокаПримеров = СтрокаПримеры.ПолучитьЭлементы().Добавить();
		ПерваяСтрокаПримеров.Имя = СокрЛП(ДанныеШага.snippet.examples.head.text);
		ИдСтроки = ИдСтроки + 1;
		ПерваяСтрокаПримеров.ИдСтроки = ИдСтроки;
		ПерваяСтрокаПримеров.ТипКартинки = -1;
		ПерваяСтрокаПримеров.НомерСтрокиВФиче = ДанныеШага.snippet.examples.head.line;
		ПерваяСтрокаПримеров.Тип = "Пример";
		
		Для Каждого ДанныеПримераJson Из ДанныеШага.snippet.examples.body Цикл
			СтрокаПримера = СтрокаПримеры.ПолучитьЭлементы().Добавить();
			СтрокаПримера.Имя = СокрЛП(ДанныеПримераJson.text);
			ИдСтроки = ИдСтроки + 1;
			СтрокаПримера.ИдСтроки = ИдСтроки;
			СтрокаПримера.ТипКартинки = -1;
			СтрокаПримера.НомерСтрокиВФиче = ДанныеПримераJson.line;
			СтрокаПримера.ПараметрыТаблицы = Новый СписокЗначений;
			СтрокаПримера.СтрокаПараметровШагаВВидеТаблицы = Истина;
			СтрокаПримера.Тип = "Пример";
			
			Для Каждого ДанныеПараметраJSON Из ДанныеПримераJson.tokens Цикл
				ДанныеПараметра = Новый Структура;
				ДанныеПараметра.Вставить("Значение", ДанныеПараметраJSON.text);
				ДанныеПараметра.Вставить("ИмяПараметра", ДанныеПараметраJSON.text);
				ДанныеПараметра.Вставить("Тип", "Строка");
				СтрокаПримера.ПараметрыТаблицы.Добавить(ДанныеПараметра);
			КонецЦикла;
			
			ЭлементыПримера = СтрокаПримера.ПолучитьЭлементы();
			Для Каждого ДанныеПодчиненногоШага Из ДанныеПримераJson.script.steps Цикл
				ДобавитьШаг(ЭлементыПримера, ДанныеПодчиненногоШага, ФайлФичиПодсценария, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
			КонецЦикла;	 
			
		КонецЦикла;	 
		
	КонецЕсли;	 
	
	Если ДанныеШага.Свойство("steps") Тогда
		ЭлементыШага = СтрокаШага.ПолучитьЭлементы();
		Для Каждого ДанныеПодчиненногоШага Из ДанныеШага.steps Цикл
			ДобавитьШаг(ЭлементыШага, ДанныеПодчиненногоШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
		КонецЦикла;	 
	ИначеЕсли ЭтоПодсценарий И СтрокаШага.ДопТип <> "СтруктураСценария" Тогда	
		ЭлементыШага = СтрокаШага.ПолучитьЭлементы();
		ФайлФичиПодсценария = Новый Файл(ДанныеШага.snippet.filename);
		Для Каждого ДанныеПодчиненногоШага Из ДанныеШага.snippet.steps Цикл
			ДобавитьШаг(ЭлементыШага, ДанныеПодчиненногоШага, ФайлФичиПодсценария, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
		КонецЦикла;	 
	КонецЕсли;	 
	
КонецПроцедуры 

&НаКлиенте
Процедура ДобавитьГруппу(ЭлементыСценария, ДанныеШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров)
	СтрокаГруппы = ЭлементыСценария.Добавить();
	СтрокаГруппы.Имя = СокрЛП(ДанныеШага.text);
	СтрокаГруппы.ТипКартинки = -1;
	СтрокаГруппы.ПроизвольныеЗначения = Новый Структура;
	
	Если ДанныеШага.Свойство("comments") Тогда
		СтрокаГруппы.ПроизвольныеЗначения.Вставить("МассивКомментариевШага", СкопироватьМассивКомментариев(ДанныеШага.comments));
	Иначе
		СтрокаГруппы.ПроизвольныеЗначения.Вставить("МассивКомментариевШага", Неопределено);
	КонецЕсли;	 
	Если ДанныеШага.Свойство("tags") Тогда
		СтрокаГруппы.ПроизвольныеЗначения.Вставить("МассивТеговШага", СкопироватьМассивТегов(ДанныеШага.tags));
	Иначе	
		СтрокаГруппы.ПроизвольныеЗначения.Вставить("МассивТеговШага", Неопределено);
	КонецЕсли;	 
	
	ИдСтроки = ИдСтроки + 1;
	СтрокаГруппы.ИдСтроки = ИдСтроки;
	СтрокаГруппы.Тип = "Область";
	СтрокаГруппы.НомерСтрокиВФиче = ДанныеШага.line;
	
	Если ДанныеШага.Свойство("keyword") И НРег(ДанныеШага.keyword.text) = СокрЛП(НРег(ДанныеШага.text)) Тогда
		Если ДанныеШага.keyword.type = "else" Тогда
			СтрокаГруппы.ДопТип = "УсловиеИначе";
		ИначеЕсли ДанныеШага.keyword.type = "try" Тогда
			СтрокаГруппы.ДопТип = "Попытка";
		ИначеЕсли ДанныеШага.keyword.type = "except" Тогда
			СтрокаГруппы.ДопТип = "Исключение";
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если ДанныеШага.Свойство("steps") Тогда
		ЭлементыГруппы = СтрокаГруппы.ПолучитьЭлементы();
		Для Каждого ДанныеПодчиненногоШага Из ДанныеШага.steps Цикл
			ДобавитьШаг(ЭлементыГруппы, ДанныеПодчиненногоШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла, СтруктураПараметров);
		КонецЦикла;	 
	КонецЕсли;	 
	
КонецПроцедуры 

&НаКлиенте
Процедура ДобавитьТаблицы(ЭлементыШага, ДанныеШага, ФайлФичи, ИдСтроки, КешСнипетовНаКлиенте, ИмяEpfФичаФайла)
	НомерТаблицы = 0;
	Для Каждого ДанныеТаблицы Из ДанныеШага.tables Цикл
		НомерТаблицы = НомерТаблицы + 1;
		
		Если НомерТаблицы > 1 Тогда
			СтрокаТаблицы = ЭлементыШага.Добавить();
			СтрокаТаблицы.ТипКартинки = -1;
			ИдСтроки = ИдСтроки + 1;
			СтрокаТаблицы.ИдСтроки = ИдСтроки;
		КонецЕсли;	 
		
		СтрокаТаблицы = ЭлементыШага.Добавить();
		СтрокаТаблицы.Имя = СокрЛП(ДанныеТаблицы.head.text);
		СтрокаТаблицы.ПолныйПуть = "    " + ФайлФичи.ПолноеИмя + ":" + XMLСтрока(ДанныеТаблицы.head.line);
		СтрокаТаблицы.ТипКартинки = -1;
		СтрокаТаблицы.СтрокаПараметровШагаВВидеТаблицы = Истина;
		СтрокаТаблицы.НомерСтрокиВФиче = ДанныеТаблицы.head.line;
		СтрокаТаблицы.ПараметрыТаблицы = Новый СписокЗначений;
		ИдСтроки = ИдСтроки + 1;
		СтрокаТаблицы.ИдСтроки = ИдСтроки;
		
		
		ПараметрыТаблицы = СтрокаТаблицы.ПараметрыТаблицы;
		Если ДанныеТаблицы.head.Свойство("tokens") Тогда
			Для Каждого ЗначениеЯчейкиJson Из ДанныеТаблицы.head.tokens Цикл
				ЗначениеЯчейки = Новый Структура;
				ЗначениеЯчейки.Вставить("Значение", ЗначениеЯчейкиJson.text);
				ЗначениеЯчейки.Вставить("ИмяПараметра", ЗначениеЯчейкиJson.text);
				ЗначениеЯчейки.Вставить("Тип", ТипПараметраJson(ЗначениеЯчейкиJson.type, СтрокаТаблицы.Имя));
				
				ПараметрыТаблицы.Добавить(ЗначениеЯчейки);
			КонецЦикла;	 
		КонецЕсли;	 
		
		Для Каждого ДанныеСтрок Из ДанныеТаблицы.body Цикл
			СтрокаТаблицы = ЭлементыШага.Добавить();
			СтрокаТаблицы.Имя = СокрЛП(ДанныеСтрок.text);
			СтрокаТаблицы.ПолныйПуть = "    " + ФайлФичи.ПолноеИмя + ":" + XMLСтрока(ДанныеСтрок.line);
			СтрокаТаблицы.ТипКартинки = -1;
			СтрокаТаблицы.СтрокаПараметровШагаВВидеТаблицы = Истина;
			СтрокаТаблицы.НомерСтрокиВФиче = ДанныеСтрок.line;
			СтрокаТаблицы.ПараметрыТаблицы = Новый СписокЗначений;
			ИдСтроки = ИдСтроки + 1;
			СтрокаТаблицы.ИдСтроки = ИдСтроки;
			
			ПараметрыТаблицы = СтрокаТаблицы.ПараметрыТаблицы;
			Для Каждого ЗначениеЯчейкиJson Из ДанныеСтрок.tokens Цикл
				ЗначениеЯчейки = Новый Структура;
				ЗначениеЯчейки.Вставить("Значение", ЗначениеЯчейкиJson.text);
				ЗначениеЯчейки.Вставить("ИмяПараметра", ЗначениеЯчейкиJson.text);
				ЗначениеЯчейки.Вставить("Тип", ТипПараметраJson(ЗначениеЯчейкиJson.type, СтрокаТаблицы.Имя));
				
				ПараметрыТаблицы.Добавить(ЗначениеЯчейки);
			КонецЦикла;	
			
		КонецЦикла;	 
		
	КонецЦикла;	 
	
КонецПроцедуры 

&НаКлиенте
Функция ТипПараметраJson(ТипJson, Стр)
	Если ТипJson = "Param" ИЛИ ТипJson = "None" Тогда
		Возврат  "Строка";
	ИначеЕсли ТипJson = "Number" Тогда
		Возврат  "Число";
	ИначеЕсли ТипJson = "Date" Тогда
		Возврат "Дата";
	Иначе
		ВызватьИсключение Ванесса.ПодставитьПараметрыВСтроку(
		Ванесса.Локализовать("Неизвестный тип <%1> параметра в строке: <%2>."),ТипJson, Стр);
	КонецЕсли;	 
КонецФункции	 

&НаКлиенте
Функция НормализоватьПутьКФайлу(Стр)
	ТекСтр =  НРег(СтрЗаменить(Стр, "\", "/"));
	Если Прав(ТекСтр, 1) <> "/" Тогда
		ТекСтр = ТекСтр + "/";
	КонецЕсли;	 
	
	Возврат ТекСтр; 
КонецФункции	 

&НаКлиенте
Функция КаталогФичиВДереве(ИмяФайла, ЭлементыРодителя, КаталогиФичаФайлов, ОсновнойКаталогФич, ИмяКаталога, ИдСтроки)
	ПутьКФиче = НормализоватьПутьКФайлу(ИмяФайла);
	ОсновнойКаталогФич = НормализоватьПутьКФайлу(ОсновнойКаталогФич);
	
	ЭлементКаталогФичи = КаталогиФичаФайлов[ПутьКФиче];
	Если ЭлементКаталогФичи <> Неопределено Тогда
		Возврат ЭлементКаталогФичи; 
	КонецЕсли;	 
	
	Если ПутьКФиче = ОсновнойКаталогФич ИЛИ СтрДлина(ОсновнойКаталогФич) > СтрДлина(ПутьКФиче) Тогда
		ЭлементКаталогФичи = КаталогиФичаФайлов[ПутьКФиче];
		Если ЭлементКаталогФичи = Неопределено Тогда
			Если ТипЗнч(ЭлементыРодителя) = Тип("ДанныеФормыДерево") Тогда
				ЭлементКаталогФичи = ЭлементыРодителя.ПолучитьЭлементы().Добавить();
			Иначе	
				ЭлементКаталогФичи = ЭлементыРодителя.Добавить();
			КонецЕсли;	 
			
			ЭлементКаталогФичи.Имя = ИмяКаталога;
			ЭлементКаталогФичи.Тип = "Каталог";
			ИдСтроки = ИдСтроки + 1;
			ЭлементКаталогФичи.ИдСтроки = ИдСтроки;
			
			КаталогиФичаФайлов.Вставить(ПутьКФиче, ЭлементКаталогФичи);
		КонецЕсли;	 
		
		Возврат ЭлементКаталогФичи;
	КонецЕсли;	 
	
	Файл = Новый Файл(ИмяФайла);
	ПутьКФиче = НормализоватьПутьКФайлу(Файл.Путь);
	ФайлКаталог = Новый Файл(Файл.Путь);
	
	ЭлементКаталогФичи = КаталогиФичаФайлов[ПутьКФиче];
	Если ЭлементКаталогФичи = Неопределено Тогда
		ЭлементКаталогФичи = КаталогФичиВДереве(ПутьКФиче, ЭлементыРодителя, КаталогиФичаФайлов, ОсновнойКаталогФич, ФайлКаталог.Имя, ИдСтроки);
	КонецЕсли;	 
	
	Если ТипЗнч(ЭлементКаталогФичи) = Тип("ДанныеФормыДерево") ИЛИ ТипЗнч(ЭлементКаталогФичи) = Тип("ДанныеФормыЭлементДерева") Тогда
		ЭлементКаталогФичи = ЭлементКаталогФичи.ПолучитьЭлементы().Добавить();
	Иначе	
		ЭлементКаталогФичи = ЭлементКаталогФичи.Добавить();
	КонецЕсли;	 
	
	ЭлементКаталогФичи.Имя = ИмяКаталога;
	ЭлементКаталогФичи.Тип = "Каталог";
	ИдСтроки = ИдСтроки + 1;
	ЭлементКаталогФичи.ИдСтроки = ИдСтроки;
	
	КаталогиФичаФайлов.Вставить(НормализоватьПутьКФайлу(ИмяФайла), ЭлементКаталогФичи);
	
	Возврат ЭлементКаталогФичи; 
КонецФункции	 

&НаСервереБезКонтекста
Процедура ДанныеПоСнипетамПеревод(Язык, АдресВХранилище, ДляПоискаПеревод, ДляПоискаРусский)
	
	ДанныеПеревода = ПолучитьИзВременногоХранилища(АдресВХранилище);
	Для Каждого СтрокаПеревода Из ДанныеПеревода Цикл
		Данные = Новый Структура;
		Данные.Вставить("СтрокаДляПоискаРусский", СтрокаПеревода.СтрокаДляПоискаРусский);
		Данные.Вставить("СтрокаДляПоискаПеревод", СтрокаПеревода.СтрокаДляПоискаПеревод);
		Данные.Вставить("МассивСоответствийПозицийПараметров", СтрокаПеревода.МассивСоответствийПозицийПараметров);
		Данные.Вставить("ТекстПереводаШаг", СтрокаПеревода.ТекстПереводаШаг);
		
		ДляПоискаПеревод.Вставить(СтрокаПеревода.СтрокаДляПоискаПеревод, Данные);
		ДляПоискаРусский.Вставить(СтрокаПеревода.СтрокаДляПоискаРусский, Данные);
	КонецЦикла;	 
	
КонецПроцедуры

&НаКлиенте
Функция ЭтоОбычныйШагОбернутыйВУсловие(Стр, НовыйIDИзStepDefinition)
	Если Прав(Стр, 5) = "тогда" Тогда
		НовыйIDИзStepDefinition = Лев(Стр, СтрДлина(Стр) - 5);
		Возврат Истина;
	КонецЕсли;	 
	
	Если Прав(Стр, 4) = "then" Тогда
		НовыйIDИзStepDefinition = Лев(Стр, СтрДлина(Стр) - 4);
		Возврат Истина;
	КонецЕсли;	 
	
	Возврат Ложь;
КонецФункции	 

#КонецОбласти
