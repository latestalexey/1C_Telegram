﻿
Функция Любойpost(Запрос)
	
		
	Ответ = Новый HTTPСервисОтвет(200);
	Если Запрос.ПараметрыURL["Ключ"] = Константы.КлючWebhook.Получить() Тогда
		Задания.ПолучитьUpdate();
		Задания.ОбработатьЗапросы();
		Ответ.УстановитьТелоИзСтроки("ok");
	КонецЕсли;
	
	Возврат Ответ;
КонецФункции