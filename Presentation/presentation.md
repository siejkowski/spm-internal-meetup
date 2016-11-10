# [fit] Swift 
# [fit] Package 
# [fit] Manager

---

# *Czym jest SPM?*

---

# 3 w jednym

1. build tool

### niezależny od Xcode
### command line
### zastępnik xcodebuild

^ dzięki temu może być cross-platformowy

---

# 3 w jednym

1. build tool
2. test tool

### oparty o konwencję 
### wspiera XCTest

---

# 3 w jednym

1. build tool
2. test tool
3. package distribution tool

### zastępuje Carthage / Cocoapods
### działa na Linuxie

---

# *Dlaczego mało o tym słychać?*

---

# wczesna faza projektu

- brak wsparcia dla iOS, tvOS, watchOS

### wspierane tylko aplikacje terminalowe
### bardzo ogranicza to użycie SPM w projektach

^ Can be used on iOS/watchOS/tvOS, but not officially supported (not really? you can have a lib with Xcode project and include it in iOS project)

---

# wczesna faza projektu

- brak wsparcia dla iOS, tvOS, watchOS
- brak integracji z Xcode

### można wygenerować xcodeproject

^ tutaj personal story o tym, że wygenerowanemu projektowi nie działały testy

---

# wczesna faza projektu

- brak wsparcia dla iOS, tvOS, watchOS
- brak integracji z Xcode
- słabe wsparcie dla bibliotek dynamicznych

### twórca biblioteki decyduje, jak będzie linkowana 😳

^ tutaj personal story o tym, że wygenerowanemu projektowi nie działały testy

---

# *Do czego tego używać?*

---

# gdzie nie ma klienta

- biblioteki (niezależne od systemowych)

^ nie można wyspecyfikować zależności systemowych, tj. że musi być jakaś biblioteka obecna w systemie i czekająca na podlinkowanie; na macOS po prostu linkuje domyślnie sdk, na linuxie trzeba z palca podawać
^ są providery, np. .Apt albo .Brew, ale to tylko sugestia

---

# gdzie nie ma klienta

- biblioteki
- wrappery do bibliotek w C/C++ i Objective-C/C++

---

# gdzie nie ma klienta

- biblioteki
- wrappery do bibliotek w C/C++ i Objective-C/C++
- aplikacje terminalowe

---

# gdzie nie ma klienta

- biblioteki
- wrappery do bibliotek w C/C++ i Objective-C/C++
- aplikacje terminalowe
- backend

---

# *Jak to działa?*

---

^ tutaj hand-on w konsolę i piszemy komendy

# Package.swift

^ odpowiednik Podfile / Cartfile

^ oparte o repozytorium gitowe (i tylko gitowe)
^ rozproszone, nie ma centralnego katalogu
^ ściąga
^ buduje to co ściągnął (ważne! bo można podmienić)



---

# `swift test`

---

# *Jak z tego skorzystać?*

^ jeśli bez modyfikatorów, to debug
^ jeśli z `-c release`, to relase
^ nie cleanuje z domysłu (komenda --clean=dist i --clean=build)

^ moduły
^ konwencja katalogów

---

# *Jak to wspierać?*

^ struktura katalogów
^ plik Package.swift dla dewelopera

---

# *Co z Cocoapods / Carthage?*


^ Czy można wskazać repo z Cocoapods i SPM to ściągnie? Jest jakaś integracja między nimi? -> Nie, ale to dobry pomysł na open source








fajne przykłady:
* projekt wielomodułowy i co z tego wynika w xcodeproj
* circular dependency
* graf zależności niemożliwy do spełnienia
* projekt odwołujący się do biblioteki systemowej
