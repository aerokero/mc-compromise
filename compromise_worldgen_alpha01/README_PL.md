# Compromise — Worldgen alpha01

**Data:** 9 września 2026  
**Cel techniczny:** Minecraft Java 26.3-pre3, format datapacka 121  
**Status:** eksperymentalny prototyp do NOWYCH światów testowych. Nie jest to wersja gotowa do survivalu.

## Najważniejsze zastrzeżenie

Pliki zostały zbudowane i sprawdzone lokalnie, ale **nie uruchomiono ich w silniku Minecrafta**. Próba pobrania silnika nie powiodła się. Dostępna lokalnie Java 21 również nie wystarcza dla tej generacji gry, która wymaga Javy 25.

Wynik testów offline: **23 kontrole zakończone powodzeniem**. To nie oznacza, że paczka przechodzi kompletną walidację rejestrów Mojanga, poprawnie generuje wszystkie chunki ani że krajobraz ma już docelowy wygląd.

**Liczba przetestowanych seedów gry: 0.** Nie zmierzono udziału oceanów, odległości do biomów, rozmiarów kontynentów ani wydajności.

## 1. Co zawiera pierwsza wersja

Nowy rdzeń jest wydzielony pod `compromise:alpha01/`. Poprzednie funkcje pozostają w paczce, ale standardowy Overworld otrzymał nowy router, tabelę biomów i profil terenu. Dzięki temu nie trzeba stroić naraz starego i nowego systemu.

| Element | Wdrożenie w alpha01 |
|---|---|
| Lądy i wyspy | Oddzielne pola większych lądów, mniejszych wysp i warunków Mushroom Fields. To prototyp rozkładu, bez potwierdzenia docelowej geometrii kontynentów. |
| Klimat | Wspólne pola temperatury i wilgotności dla wyboru biomów oraz profili terenu. |
| Biomy | Nowa tabela: 97 scalonych przedziałów, 55 identyfikatorów z oryginału plus Dripstone Caves. |
| Niziny | Niska baza, mniejsza pagórkowatość pustyń oraz osobna ochrona klimatycznego obszaru Dark Forest/Pale Garden. |
| Beta | Wyraźny próg masywu, szybki wzrost wysokości i trójwymiarowe wnęki pod zachowanym dachem. Kształt jest prototypem, nie portem algorytmu Beta 1.7.3. |
| Windswept | Wydzielona regionalna odmiana z niższym progiem powstawania Beta i większym przewyższeniem. |
| Modern | Oddzielny obrys i grzbiet, zmienność wysokości szczytów oraz ochrona górnej bryły przed masowym wycinaniem przez jaskinie. |
| Wykluczenie stylów | Jeden wybór `style`: 0 — zwykły teren, 1 — Beta, 2 — modern. Nie ma dwóch wzajemnych zakazów. |
| Badlands | Prototyp niskiej doliny z lokalnymi mesami i płaskimi wierzchołkami. Efekt Monument Valley wymaga oceny w grze. |
| Rzeki | Wysokość doliny ogranicza teren bez górnej granicy wycinania na Y=128. Ten sam profil jest użyty w estymacji powierzchni. |
| Jaskinie | Zachowano zasadnicze funkcje jaskiń z oryginału, podłączając nowe zabezpieczenie rzek. Przywrócono niszę Dripstone; Sulfur ma ciepłą preferencję w tabeli. |
| Plaże | Oryginalna reguła materiałowa i oba szumy plaż pozostały bez zmian. Nowy router nadal do nich prowadzi. |
| Dyski | Usunięto 4 pozostałe bezpośrednie wpisy `disk_gravel`: Dappled Forest, Deep Dark, Windswept Forest, Windswept Hills. |
| Struktury vanilla | Ich definicje i loot nie zostały przerobione. W końcowej gęstości jawnie dodano `beardifier`; osadzenie struktur trzeba sprawdzić. |

### Ważne rozróżnienie dotyczące biomów

Obecność 56 identyfikatorów i osiągalność ich parametrów w testach syntetycznych **nie dowodzi**, że komplet pojawia się blisko spawnu na prawdziwym seedzie. Przedziały są sprawdzone matematycznie; ich rozkład przestrzenny wymaga silnika gry.

Tabela nie ma przecięć o dodatniej objętości. Sąsiednie przedziały stykają się na granicach; rozstrzyganie dokładnych granic po kwantyzacji oraz wizualne rozmycie biomów trzeba ocenić w Minecraftcie.

### Ważne rozróżnienie dotyczące Beta

Próg obrysu odpowiada za gwałtowne wyjście z niziny w masyw. Nie ma szerokiego pasa wymuszonego łagodnego pogórza. Trójwymiarowa funkcja wycina wnęki wewnątrz bryły, chroniąc jej niską podstawę i górną część.

Jest to pierwsza konstrukcja do oceny sylwetki. Nie twierdzimy jeszcze, że uzyskane przewieszenia odpowiadają przesłanemu screenshotowi.

## 2. Co świadomie nie jest jeszcze gotowe

Następujące wymagania pozostają w projekcie, ale nie należy uznawać ich za ukończone w alpha01:

- Docelowy udział lądu, odseparowane kontynenty, szerokość oceanów i sensowna częstotliwość wysp.
- Potwierdzenie kompletu biomów wokół faktycznego spawnu w ±2500/±3000/±4000.
- Wizualne strojenie rozmiarów Beta/Windswept, rzeźby modern i wszystkich wariantów Monument Valley.
- Samotne obeliski na nizinach.
- Nowa geologia granitu, andezytu i diorytu oraz dodatkowe podłużne żyły żelaza.
- Wyłączenie odziedziczonych Sulfur Springs, naturalne odsłonięcia Sulfur Caves i kompletna kontrola powierzchniowego spawnu Sulfur Cubes.
- Pełna kontrola dysków odziedziczonych z vanilla; `disk_grass` celowo nie został usunięty w ciemno.
- Nowe struktury, warianty vanilla, opuszczone i zakopane wioski, archeologia i loot.
- Usuwanie XP, magia ametystu/echo shards, cooking i zmiany progression.
- Overhaul Large Biomes i Amplified.

Pojedyncze wcześniejsze elementy tych mechanik mogą już istnieć w oryginale. Ta wersja ich nie rozwija ani nie usuwa.

## 3. Jak uruchomić pierwszy test

### Najprostsza ścieżka: pełna paczka

1. Utwórz osobną instancję **26.3-pre3** albo upewnij się, że testujesz dokładnie ten build.
2. Utwórz **NOWY świat**. Wybierz standardowy typ świata — Default/Normal.
3. Na ekranie datapacków dodaj `Compromise_26_3_Worldgen_alpha01_FULL.zip` i aktywuj go. Nie dodawaj jednocześnie starej kopii Compromise jako drugiego datapacka.
4. Włącz komendy, wybierz Creative lub Spectator. Na pierwszy test użyj seeda **173**. To identyfikator testowy, nie seed wybrany na podstawie dobrego wyniku.
5. Resourcepack może pozostać obecny: pliki `assets` nie zostały zmienione.
6. Po wejściu wykonaj:

```mcfunction
/function compromise:alpha01/test/info
/gamemode spectator
/time set noon
```

Samo `/reload` w starym świecie nie zastępuje utworzenia nowego świata i nie przebuduje wcześniej wygenerowanych chunków.

**Nie używaj alpha01 na istniejącym świecie survivalowym.** Nie testowaliśmy migracji, blendowania ze starym terenem ani długotrwałej zgodności zapisów.

### Wariant deweloperski: mały patch

Archiwum narzędzi zawiera także `Compromise_Worldgen_alpha01_PATCH.zip`. Jest to dodatek zależny od pełnej paczki Compromise, a nie samodzielny generator.

Musi mieć wyższy priorytet niż baza. Oryginalny `pack.mcmeta` kończył zakres na 120; w pełnej wersji rozszerzono górny zakres do 121, również w aktywnych nowszych overlayach. Przy ręcznym łączeniu patcha trzeba uwzględnić tę zmianę metadanych.

**Na pierwszy test zalecana jest pełna wersja**, żeby uniknąć pomyłek z priorytetem i formatem.

## 4. Co ocenić na początku

Najpierw sprawdzamy, czy świat w ogóle przechodzi walidację i generuje teren. Nie zaczynamy od wielogodzinnego pregenerowania.

Po poprawnym starcie szczególnie przydatne będą:

| Miejsce | Pytanie testowe |
|---|---|
| Forest/Taiga z Beta | Czy masyw wyrasta z niskiego otoczenia? Czy obok jest miejsce pod bazę i kolejkę? |
| Windswept | Czy to wyraźny, ograniczony regionalnie wariant Beta, a nie nieskończona wysoka wyżyna? |
| Modern | Czy z poziomu gracza widać szczyt i grań? Czy podstawa nie jest zbyt szeroka? |
| Dark Forest / Pale Garden | Czy wnętrze lasu rzeczywiście pozostaje niskie? |
| Badlands | Czy to oddzielne monumenty w otwartej dolinie, a nie jednolity płaskowyż? |
| Rzeka pod górą | Czy dolina pozostaje otwarta i nie ma starego dachu na granicy wysokości? |
| Wybrzeże | Czy występują nadal niskie piaskowe i żwirowe odcinki Beta? |
| Ocean i wyspy | Czy jest rzeczywista przestrzeń morska, czy tylko kanały między niemal połączonymi lądami? |

Przykładowe polecenia do pojedynczych lokalizacji:

```mcfunction
/locate biome minecraft:windswept_hills
/locate biome minecraft:jagged_peaks
/locate biome minecraft:dark_forest
/locate biome minecraft:badlands
/locate biome minecraft:dripstone_caves
```

W paczce są również zbiorcze funkcje `compromise:alpha01/test/locate_surface` oraz `compromise:alpha01/test/locate_caves`. Mogą chwilowo obciążyć grę wieloma wyszukiwaniami, więc na początek lepiej używać pojedynczych poleceń.

`/locate biome` jest pomocą w oglądaniu świata, **nie pełnym pomiarem powierzchni biomów ani pokrycia mapy**. Trafienie małego fragmentu nie zalicza naszego docelowego wymagania.

Włączony wpis debugowania `chunk_generation_stats` powinien pokazać wartości:

- `a01_C`, `a01_T`, `a01_H`, `a01_E`, `a01_W` — współrzędne klimatu;
- `a01_style` — 0/1/2, wybór rodzaju terenu;
- `a01_Beta`, `a01_Modern` — wpływy obu modułów;
- `a01_HY` — analityczny cel wysokości, nie wysokość każdej końcowej powierzchni po jaskiniach/strukturach;
- `a01_R` — wartość pola rzeki, nie odległość w blokach.

Najbardziej użyteczne zgłoszenie zawiera build gry, seed, współrzędne, screenshot z F3 i jedno zdanie opisujące problem.

Jeżeli świat nie startuje, zachowaj `logs/latest.log` z właściwej instancji. Nie obchodź błędu przez Safe Mode i nie kontynuuj wtedy testów, ponieważ aktywny generator może być już inny.

## 5. Co rzeczywiście przetestowano offline

Pełny wynik jest zapisany w `offline_tests.json`.

**Kontrole strukturalne**

- Parsowanie 99 plików JSON/metadanych patcha, bez powtórzonych kluczy.
- Kontrola własnego, ograniczonego schematu nowych density functions.
- Rozwiązanie nowych odwołań i brak cykli w grafie: 72 funkcje, 19 szumów.
- Zachowanie 55 identyfikatorów biomów z oryginału i dodanie Dripstone.
- Brak sprzecznych identycznych wpisów i brak przecięć wnętrz nowych przedziałów.
- Dokładnie jeden biom w każdej z **11 250 elementarnych komórek** specyfikacji klimatu.

**Kontrole numeryczne**

- **131 072 kontrolowane zestawy wejściowe**: brak jednoczesnego wyboru Beta i modern, brak NaN/Infinity w badanym podgrafie.
- Każdy z 56 biomów ma syntetyczny przykład wejścia przechodzący przez nowy router do odpowiedniego przedziału.
- **32 768 kontrolowanych przypadków** wnętrza Dark Forest/Pale Garden: oba style gór wyłączone; badany cel wysokości pozostaje nizinny.
- Syntetyczny przekrój progu Beta: wzrost o 64 bloki i maksymalne nachylenie około 5,12 bloku na blok poziomy przy ręcznie zadanym gradiencie pola.
- Pięć wartości pola rzeki na całym zakresie Y od −64 do 319: ograniczenie nie zatrzymuje się na Y=128.
- Kontrolowany przykład wnęki Beta z zachowaną podstawą i dachem.

To są testy **rzeczywistych zapisanych wyrażeń JSON**, ale z podstawionymi wartościami szumów. Nie odtwarzają generowania szumu Minecrafta, nie udają seedów i nie mierzą rozkładu biomów w świecie.

**Ochrona istniejącej pracy**

- Reguła materiałowa plaż i dwa szumy plaż nie są nadpisywane przez patch.
- Nowe noise settings nadal wskazują `compromise:overworld`.
- Patch nie edytuje receptur, lootów, progression, XP, jedzenia ani tekstur.
- Przy pakowaniu pełnej wersji dodatkowo porównuje się bajty wszystkich plików poza jawną listą zmian.

## 6. Narzędzia i odtwarzanie

Archiwum deweloperskie zawiera kompletne skrypty:

- `build_worldgen.py` — generuje patch z rozpakowanego oryginału.
- `validate_worldgen.py` — uruchamia opisane testy offline; wymaga NumPy.
- `smoke_server.py` — opcjonalny lokalny test z dostarczonym przez użytkownika serwerem.
- `build_manifest.json`, `offline_tests.json`, `package_manifest.json` — zakres zmian, wyniki i kontrola paczki.
- `ZALOZENIA_PROJEKTU.md` — uzgodnione wymagania oraz późniejszy backlog.

Przykład odtworzenia patcha, uruchamiany z katalogu narzędzi:

```powershell
python build_worldgen.py --original "D:\Compromise_original" --output ".\alpha01" --report ".\build_manifest.json"
python -m pip install numpy
python validate_worldgen.py --original "D:\Compromise_original" --patch ".\alpha01" --output ".\offline_tests.json"
```

### Opcjonalny test na lokalnym serwerze

Nie trzeba go uruchamiać, żeby obejrzeć świat w kliencie. Runner wymaga własnego pliku serwera **26.3-pre3**, Javy 25+ oraz Pythona 3.10+. Nie pobiera gry, nie modyfikuje istniejących światów i nie wystawia serwera na zewnętrzny interfejs.

Przeczytaj EULA Minecrafta samodzielnie. Flaga `--accept-eula` jest jawną zgodą na zapis `eula=true` wyłącznie w tworzonych katalogach testowych.

```powershell
python smoke_server.py --server-jar ".\server-26.3-pre3.jar" --pack ".\Compromise_26_3_Worldgen_alpha01_FULL.zip" --java "C:\Program Files\Java\jdk-25\bin\java.exe" --seeds 173 1729 -20260909 --accept-eula
```

Ścieżkę Javy dopasuj do swojej instalacji. Każdy seed dostaje nowy katalog. Runner zapisuje log startu, wyniki kilku wyszukiwań i sprawdza załadowanie dwóch niewielkich obszarów. **Nie jest to skan 6000×6000 ani walidacja wizualna.**

Skrypt sprawdzono składniowo, ale bez dostępnego silnika nie przeprowadzono testu end-to-end. Ewentualne błędy runnera trzeba oddzielić od błędów datapacka.

## 7. Miejsca do strojenia po pierwszych screenshotach

| Obszar | Najważniejsze funkcje |
|---|---|
| Układ lądu | `land/main`, `land/island_strength`, `land/physical` |
| Częstość/obrys Beta | `terrain/beta_threshold`, `terrain/beta_shape`, `terrain/windswept_district` |
| Bryła Beta | `terrain/beta_relief`, `terrain/beta_void` |
| Modern | `terrain/modern_envelope`, `terrain/modern_spine`, `terrain/modern_relief` |
| Badlands | `terrain/mesa_relief` |
| Niziny | `terrain/hill_amplitude`, `terrain/base_height` |
| Rzeka | `river/ceiling`, `river/distance` |
| Biomy | Funkcja `biome_at` i granice `axes` w generatorze skryptowym |

Skale szumów nie są bezpośrednimi rozmiarami biomów w blokach. Po pierwszym sprawdzeniu silnikowym stroimy jeden obszar naraz, na tych samych seedach i współrzędnych.

## 8. Dokumentacja techniczna wykorzystana przy budowie

Dokumentacja ustala składnię i zachowanie mechanizmów; nie potwierdza poprawności tej konkretnej paczki.

- Mojang, 26.3-pre3 — format datapacka 121:
  https://www.minecraft.net/en-us/article/minecraft-26-3-pre-release-3
- Mojang, 26.3 Snapshot 10 — router, cache, interpolacja, przesunięcia szumu, diagnostyka:
  https://www.minecraft.net/en-us/article/minecraft-26-3-snapshot-10
- Mojang, 26.3 Snapshot 6 — nowy format szumów, gradienty i funkcje:
  https://www.minecraft.net/en-us/article/minecraft-26-3-snapshot-6
- Mojang, 26.3 Snapshot 4 — operatory, aquifery, jawny beardifier:
  https://www.minecraft.net/en-us/article/minecraft-26-3-snapshot-4
- Mojang, 26.3 Snapshot 7 — obliczenia float32:
  https://www.minecraft.net/en-us/article/minecraft-26-3-snapshot-7
- Mojang, 26.1 — wymaganie Javy 25:
  https://www.minecraft.net/en-us/article/minecraft-java-edition-26-1
