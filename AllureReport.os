﻿Процедура СформироватьИОткрытьОтчетAllure()

    Если АргументыКоманднойСтроки.Количество() <> 1 Тогда
		Сообщить("Не верно заданы аргументы командной строки");
		Сообщить("Требуется задать:");
		Сообщить("<КаталогДанныхДляОтчета>");
		ЗавершитьРаботу(1);
	КонецЕсли;

    ЗапуститьПриложение("allure generate .", АргументыКоманднойСтроки[0], Истина);

    ЗапуститьПриложение("allure report open", АргументыКоманднойСтроки[0]);

КонецПроцедуры

СформироватьИОткрытьОтчетAllure()