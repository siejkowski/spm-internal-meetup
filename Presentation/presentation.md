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

- biblioteki

nie można wyspecyfikować zależności systemowych, tj. że musi być jakaś biblioteka obecna w systemie i czekająca na podlinkowanie; na macOS po prostu linkuje domyślnie sdk, na linuxie trzeba z palca podawać

są niby providery, ale to tylko sugestia

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

konwencja katalogów
oparte o repozytorium gitowe (i tylko gitowe)
rozproszeone
plik Package.swift

---

# *Jak z tego skorzystać?*

---

# *Jak to wspierać?*

---

# *Co z Cocoapods / Carthage?*


fajne przykłady:
* projekt wielomodułowy i co z tego wynika w xcodeproj
* circular dependency
* graf zależności niemożliwy do spełnienia
* projekt odwołujący się do biblioteki systemowej
