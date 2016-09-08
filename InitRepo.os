Процедура ИнициализацияРепозитория()

    Если АргументыКоманднойСтроки.Количество() <> 1 Тогда
		Сообщить("Не верно заданы аргументы командной строки");
		Сообщить("Требуется задать:");
		Сообщить("<КаталогPrecommit1c>");
		ЗавершитьРаботу(1);
	КонецЕсли;

    КаталогPrecommit1c = АргументыКоманднойСтроки[0];
	
    //Инициализация
    ЗапуститьПриложение("git init", , Истина);

    //Пользователь
    ЗапуститьПриложение("git config ­­local user.name valerijbel", , Истина);
    ЗапуститьПриложение("git config ­­local user.email valerij.bel@gmail.com", , Истина);

    //Кириллица
    ЗапуститьПриложение("git config ­­local core.quotepath false", , Истина);

    //Precommit1c
    ЗапуститьПриложение("xcopy "+КаталогPrecommit1c+"\ibService \.git\hooks\ibService\ /Y /E /F", , Истина);
    ЗапуститьПриложение("xcopy "+КаталогPrecommit1c+"\pre-commit \.git\hooks\ /Y /F", , Истина);
    ЗапуститьПриложение("mkdir \.git\hooks\v8Reader", , Истина);
    ЗапуститьПриложение("xcopy "+КаталогPrecommit1c+"\v8Reader\V8Reader.epf \.git\hooks\v8Reader\ /Y /F", , Истина);
    ЗапуститьПриложение("xcopy "+КаталогPrecommit1c+"\v8files-extractor.os \.git\hooks\ /Y /F", , Истина);
    ЗапуститьПриложение("mkdir \.git\hooks\tools", , Истина);
    ЗапуститьПриложение("xcopy "+КаталогPrecommit1c+"\tools\v8unpack.exe \.git\hooks\tools\ /Y /F", , Истина);
	
    //bootstrap
    ЗапуститьПриложение("curl -o bootstrap.in-up.sh -sSL https://raw.githubusercontent.com/silverbulleters/vanessa-bootstrap/master/bootstrap.in-up.sh", , Истина);
    ЗапуститьПриложение("bootstrap.in-up.sh", , Истина);

КонецПроцедуры

ИнициализацияРепозитория()