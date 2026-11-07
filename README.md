# Techno Download Manger

مدير تنزيلات مفتوح المصدر قيد البناء، يهدف إلى تنظيم تنزيل الملفات من روابط مباشرة في واجهة واحدة.
موجّه للأفراد الذين يريدون واجهة عربية أولًا مع التبديل إلى الإنجليزية، على Windows وmacOS وLinux والويب وAndroid.

## الحالة

**المرحلة 1 قيد التنفيذ.** يحتوي المستودع الآن على هيكل Flutter أولي وشاشة تأسيسية؛ لا توجد ميزة تنزيل منفذة بعد.

## التشغيل محليًا

يتطلب Flutter stable **3.47.5**. بعد إعداد أدوات المنصة، شغّل:

```sh
flutter pub get
flutter run -d windows
```

يمكن اختيار `macos` أو `linux` أو `chrome` أو جهاز Android بدل `windows` عند توفر أدوات المنصة المناسبة. لم تُجرّب كل هذه الأهداف يدويًا بعد.

## الفحوص

```sh
flutter analyze --fatal-infos
flutter test
```

يبني GitHub Actions هدف سطح المكتب على runner مطابق لكل نظام، ويبني الويب وAndroid. راجع [تفاصيل CI](docs/CI.md)، [PRD](docs/PRD.md)، [المعمارية](docs/ARCHITECTURE.md)، [خارطة الطريق](docs/ROADMAP.md)، و[قواعد المساهمة](AGENTS.md).
