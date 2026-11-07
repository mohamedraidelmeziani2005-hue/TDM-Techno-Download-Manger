# CI

يشغّل `.github/workflows/ci.yml` على كل Pull Request وعلى التغييرات إلى `main`.

- يفحص Markdown على Windows وmacOS وLinux.
- يستخدم Flutter stable 3.47.5؛ يشغّل التحليل والاختبارات على Windows وmacOS وLinux.
- يبني تطبيق سطح المكتب الأصلي على runner المطابق، ويبني الويب وAndroid على Ubuntu.

تُثبت GitHub Actions المستخدمة بمعرّفات commit. فحوص هذه التهيئة ستظهر كنتائج PR؛ لم تُختبر محليًا بعد. مرحلة CI هذه تثبت البناء والاختبارات الأساسية فقط، ولا تثبت عمل تنزيل الملفات أو التكافؤ السلوكي بين المنصات.
