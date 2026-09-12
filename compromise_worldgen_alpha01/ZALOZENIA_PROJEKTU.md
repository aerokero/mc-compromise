# Compromise — uzgodnione założenia projektu

**Stan uzgodnień:** 9 września 2026  
To specyfikacja kierunku i backlog, **nie lista ukończonych funkcji alpha01**.

## Cel i ograniczenia

Minecraft Java 26.3. Datapack + resourcepack mają poprawić progression, przybliżyć charakter świata do Beta 1.7.3 i zachować wybrane zalety nowych wersji. Mniej grindu i zależności od AFK farms. Gracz ma regularnie widzieć miejsca inspirujące do budowania, nie tylko pokonywać przeszkody.

Na razie używamy wyłącznie istniejących identyfikatorów biomów vanilla. Własne funkcje generatora i przyszłe struktury są dopuszczalne. Unikamy implementowania custom items przez przebieranie spawn eggs lub przypadkowych niepowiązanych bloków.

## Lądy, klimat i dostępność biomów

Większe nieregularne lądy, rzeczywiste morza pomiędzy nimi, zatoki, półwyspy i mniejsze wyspy, w tym Mushroom Fields. Lądu ma być więcej niż wody, ale oceany nie mogą przypominać wyłącznie kanałów. Około 60/40 jest punktem wyjścia do testów, nie obiecaną proporcją.

Kontynenty podporządkowane są dostępności biomów. Jeden większy kontynent może zawierać kilka regionów klimatycznych. Nie rozdzielamy całych klimatów na odległe, jednolite kontynenty.

Dostępność wszystkich wymaganych biomów Overworldu mierzymy od faktycznego spawnu: preferowane ±2500 w X/Z, roboczo ±3000, awaryjnie ±4000. Oznacza to odpowiednio kwadraty 5000, 6000 i 8000 bloków szerokości. Wynik wokół 0,0 jest dodatkową informacją, nie zamiennikiem.

Biomy mają być rozpoznawalnymi obszarami, nie mikrołatami służącymi zaliczeniu obecności. Sąsiedztwo ma być spójne klimatycznie. Rozmiar biomu, regionu klimatu i formacji terenu kontrolujemy osobno.

## Beta Mountains

Wyraziste masywy, nagłe zejścia do nizin, strome kamienne ściany, półki, przewieszenia i miejscowe naturalne przejścia. Bez obowiązkowego szerokiego pasa łagodnego pogórza. Unikamy prostych pionowych szwów wyglądających jak granica maski.

W zwykłych lasach i tajgach są to przestrzennie ograniczone, regularnie spotykane dominanty. Nie mają być atrakcją napotykaną dopiero raz na kilka tysięcy bloków. Obok powinien być rzeczywiście użyteczny niski teren, także zalesiony, który można wykarczować.

Masywy nadają się pod wieże, latarnie, bazy w skale i tunele kolejowe. Nie cały korpus ma być rozbity na przypadkowe dziury lub wiszące kawałki.

Windswept to główna regionalna odmiana Beta. Same biomy mogą być mniejsze, ale formacje w ich wnętrzu powinny być znaczące i dominujące, z dolinami lub nizinami w pobliżu.

Na pustyniach bardzo rzadkie formacje Beta są dopuszczalne.

## Modern Mountains

Krótsze, zwarte, stylizowane i nieco karykaturalne pasma. Wyraźna grań, szczyty, siodła, boczne grzbiety i doliny, z asymetrią. Mniejszy zasięg podstawy niż rozlane góry vanilla. Częstsze spotkania z czytelną sylwetką zamiast kilku olbrzymich monotonnych regionów.

Beta i modern nigdy nie działają razem w danej kolumnie X/Z. Jeden system wyboru, a nie dwa wzajemne zakazy. Zwykła dolina może rozdzielać style i zaczynać się bezpośrednio pod urwiskiem Beta.

## Niziny i tożsamość biomów

Plains i desert przeważnie niskie i płaskie lub łagodnie pofałdowane. Lasy i tajgi również muszą mieć dużo niskiego podłoża.

Dark Forest i Pale Garden są chronionymi biomami nizinnymi. Bez Beta i bez przejmowania wysokiej bazy modern. Pale Garden jest mniejszym wariantem ciemnego lasu.

Dappled Forest to pełnoprawny, większy jesienny las. Silna preferencja sąsiedztwa Forest → Dappled Forest → Taiga, bez obowiązkowych pasów i bez bezwzględnego zakazu kontaktu z plains.

Badlands we wszystkich wariantach mają konsekwentnie przypominać Monument Valley: niskie otwarte przestrzenie pomiędzy mesami i ostańcami. Warianty różnią się smukłością, stopniem rozczłonkowania i roślinnością, ale nie porzucają tej tożsamości.

Bardzo rzadki samotny skalny obelisk może stanowić dominantę we wnętrzu rozległej niziny. Ma mieć niewielką podstawę i mocną sylwetkę, bez przeobrażania całej okolicy w góry.

## Wybrzeża i rzeki

Zachować istniejący charakter plaż Beta, zarówno piaskowych, jak i żwirowych. Usuwanie dysków na dnie nie może usuwać plaż.

Usunąć niepożądane powierzchniowe wodne dyski piasku, żwiru, gliny i podobne plamy. Nie usuwać w ciemno wszystkich zasobów gliny/żwiru ani funkcji o podobnych nazwach. Sprawdzić także źródła odziedziczone z vanilla.

Naprawić potwierdzony błąd pozostawiania dachu nad rzeką przy końcu pionowego zakresu wycinania. Oddzielić dolinę, koryto i jaskinie. Nizinne rzeki otwarte; w górach dopuszczalne kontrolowane przełomy. Lokalny naturalny łuk Beta nie jest tym samym co systemowy dach nad długą rzeką.

## Podziemia i geologia

Dripstone Caves muszą występować. Sulfur Caves preferują cieplejszy klimat, Lush Caves wilgotniejszy. Deep Dark zachowuje własną rolę podziemną.

Wyłączyć generowane Sulfur Springs. Zamiast nich bardzo rzadkie naturalne odsłonięcia Sulfur Caves na powierzchni. Sulfur Cubes nie mają naturalnie spawnować na otwartej powierzchni. To nie zakaz wyjścia/przeniesienia moba z jaskini.

Granit, andezyt i dioryt: zrezygnować z wszechobecnych przypadkowych blobs na rzecz lokalnych, spójnych pasm, soczewek lub rozgałęzionych złóż. Stone pozostaje dominujący. Znalezienie większego złoża ma pozwalać świadomie założyć miejsce wydobycia; nie wymuszać wydobywania tych skał na każdym kroku. Złoże ma mieć objętość wewnątrz skały, a nie być wyłącznie dekoracją ściany.

Chronić estetykę kamiennych urwisk przed masowym pokryciem kontrastowymi skałami dekoracyjnymi.

Przyszłe większe, podłużne żyły we wnętrzach wybranych Beta Mountains mogą zachęcać do drążenia baz i tuneli. Nie każda góra ma je zawierać. Okazjonalne odsłonięcie iron ore i rzadkiego raw iron block jest dopuszczalne; stuprocentowe ukrycie nie jest wymagane.

## Późniejszy etap: struktury i lore

Cywilizacja dawno zaginęła; lore to osobista reinterpretacja vanilla.

Zamieszkane wioski z villagerami będą znacznie rzadsze. Opuszczone wioski na powierzchni dużo częstsze.

Trail Ruins mają zostać zastąpione nową strukturą zakopanych podziemnych wiosek w stylu prostszych budynków sprzed 1.14 — nawiązanie do klasycznych wersji. Loot suspicious sand/gravel zostanie przebudowany.

Dodamy własne struktury i warianty oraz zmodyfikujemy wybrane struktury vanilla. Ich osadzenie nie powinno niszczyć charakterystycznej rzeźby masywów.

## Późniejszy etap: progression, magia i jedzenie

Experience zostaje funkcjonalnie usunięte jako waluta progression. Większość rzeczy wymagających XP będzie zdobywana lub craftowana. W paczce istnieją już początki tego kierunku. Ewentualne inne użycie paska XP pozostaje nieustalone.

Ametyst ma otrzymać magiczne właściwości. Echo shards będą dostępne w różnych miejscach, nie wyłącznie w Deep Dark; możliwe związki z żywiołami, krainami i mobami oraz odpowiadające im zastosowania.

Idea lore: Deep Dark wpływa na cały świat. Bardzo rzadkie pojedyncze bloki sculk w określonych miejscach mogą stanowić wskazówkę, ale to jeszcze nie zatwierdzony mechanizm.

Jedzenie i gotowanie inspirowane The Legend of Zelda: Breath of the Wild. Dotychczasowe eksperymenty będą rozwijane.

Znacznie ograniczyć grind i zależność od AFK farms. Zmiany worldgenu nie mogą przypadkowo zniszczyć dostępności surowców potrzebnych do dalszego progression.

## Zasady pracy i testowania

Budujemy etapami, na kopii. Nie rozszerzamy zakresu pierwszej iteracji worldgenu o cały późniejszy backlog.

Oddzielamy: poprawność JSON, własne testy matematyczne, walidację silnikową, generację chunków, testy wizualne i pomiary na seedach. Jedna kategoria nie zastępuje pozostałych.

Ważna jest perspektywa gracza na ziemi, nie tylko mapa z lotu ptaka. Docelowy test pyta, czy gracz widzi miejsce i ma pomysł na budowlę lub eksplorację.

Alpha01 jest początkiem implementacji tych założeń, nie ich zakończeniem.
