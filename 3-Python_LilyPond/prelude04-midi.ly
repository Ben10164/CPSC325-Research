% Lily was here -- automatically converted by midi2ly from prelude04.mid
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove Note_heads_engraver
    \consists Completion_heads_engraver
    \remove Rest_engraver
    \consists Completion_rest_engraver
  }
}

trackAchannelA = {


  \key g \major
    
  \time 1/4 
  

  \key g \major
  
  \tempo 4 = 56 
  
  \set Staff.instrumentName = "Prelude No. 4"
  
  % [TEXT_EVENT] Frederic Chopin
  \skip 4 
  | % 2
  
  \time 4/4 
  \skip 8 
  \tempo 4 = 57 
  \skip 4. 
  \tempo 4 = 58 
  \skip 4 
  \tempo 4 = 57 
  \skip 4 
  | % 3
  
  \tempo 4 = 56 
  \skip 4*183/256 
  \tempo 4 = 58 
  \skip 4*329/256 
  \tempo 4 = 59 
  \skip 4 
  \tempo 4 = 58 
  \skip 4 
  | % 4
  
  \tempo 4 = 57 
  \skip 4 
  \tempo 4 = 59 
  \skip 4 
  \tempo 4 = 60 
  \skip 4 
  \tempo 4 = 59 
  \skip 4 
  | % 5
  
  \tempo 4 = 58 
  \skip 4. 
  \tempo 4 = 59 
  \skip 4. 
  \tempo 4 = 57 
  \skip 8*5 
  \tempo 4 = 58 
  \skip 8*7 
  \tempo 4 = 60 
  \skip 4. 
  \tempo 4 = 58 
  \skip 1 
  | % 8
  
  \tempo 4 = 60 
  \skip 8*7 
  \tempo 4 = 59 
  \skip 2 
  \tempo 4 = 58 
  \skip 2 
  \tempo 4 = 57 
  \skip 8*9 
  \tempo 4 = 58 
  \skip 8*5 
  \tempo 4 = 57 
  \skip 4. 
  | % 12
  
  \tempo 4 = 56 
  \skip 8*7 
  \tempo 4 = 54 
  \skip 8*5 
  \tempo 4 = 58 
  \skip 8*9 
  \tempo 4 = 59 
  \skip 2 
  \tempo 4 = 58 
  \skip 2 
  | % 16
  
  \tempo 4 = 57 
  \skip 2 
  \tempo 4 = 59 
  \skip 8*5 
  \tempo 4 = 52 
  \skip 8 
  \tempo 4 = 59 
  \skip 8 
  \tempo 4 = 61 
  \skip 4 
  \tempo 4 = 63 
  \skip 8 
  \tempo 4 = 64 
  \skip 4 
  \tempo 4 = 66 
  \skip 4. 
  \tempo 4 = 65 
  \skip 4*383/256 
  \tempo 4 = 64 
  \skip 4*513/256 
  \tempo 4 = 63 
  \skip 4 
  \tempo 4 = 61 
  \skip 4 
  \tempo 4 = 60 
  \skip 8*11 
  \tempo 4 = 59 
  \skip 8*7 
  \tempo 4 = 58 
  \skip 8*5 
  \tempo 4 = 57 
  \skip 4. 
  \tempo 4 = 56 
  \skip 4 
  \tempo 4 = 55 
  \skip 4 
  \tempo 4 = 54 
  \skip 4 
  \tempo 4 = 48 
  
  \time 5/4 
  \skip 4*5 
  | % 25
  
  \tempo 4 = 38 
  
  \time 4/4 
  \skip 1 
  | % 26
  
  \time 6/4 
  \skip 4*1/256 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "Piano"
  \skip 4*26548/256 
}

trackBchannelB = \relative c {
  b'4*195/256 r4*61/256 <g b e >8 <g b e > <g b e > <g b e > <g b e > 
  <g b e > <g b e > <g b e >4*121/256 r4*7/256 <fis a e' >8 <fis a e' > 
  | % 2
  <fis a e' > <fis a e' > <fis a dis > <fis a dis > <fis a dis > 
  <fis a dis > <f a dis > <f a dis > <f a dis > <f a dis > <f a d > 
  <f a d > 
  | % 3
  <f gis d' > <f gis d' > <e gis d' > <e gis d' > <e gis d' > 
  <e gis d' > <e g d' > <e g d' > <e g cis > <e g cis > <e g c > 
  <e g c > 
  | % 4
  <e g c > <e g c > <e fis c' > <e fis c' > <e fis c' > <e fis c' > 
  <e fis c' > <e fis c' > <e fis c' > <e fis c' > <dis fis c' > 
  <dis fis c' > 
  | % 5
  <dis fis c' > <dis fis c' > <d fis c' > <d fis c' > <d fis c' > 
  <d fis c' > <d fis c' > <d fis c' > <d fis c' > <d fis c' > <d f c' > 
  <d f c' > 
  | % 6
  <d f c' > <d f c' > <d f b > <d f b > <d f b > <d f b > <c e b' > 
  <c e b' > <c e a > <c e a > <c e a > <c e a > 
  | % 7
  <c e a > <c e a > <b e a > <b e a > <b dis a' > <b dis a' > 
  <c e a > <c e a > <c e a > <c e a > <b dis a' > <b dis a' > 
  | % 8
  <b dis a' > <b dis a' > <c e a > <c e a > <c e a > <c e a > 
  g''4*123/256 r4*5/256 fis4*130/256 r4*126/256 b,4*130/256 r4*126/256 fis'4*130/256 
  r4*83/256 c'64*5 r4*5/256 b4*86/256 <g, b e >8 <g b e > <g b e > 
  <g b e > <g b e > <g b e > <g b e > <g b e > <fis a e' > <fis a e' > 
  <fis a e' > <fis a e' > <f a dis > <f a dis > <f a dis > <f a dis > 
  <f gis dis' > <f gis dis' > <f gis d' > <f gis d' > <e gis d' > 
  <e gis d' > <e gis d' > 
  | % 11
  <e gis d' > <e g d' > <e g d' > <e g cis > <e g cis > <cis e ais > 
  <cis e ais > <c e a > <c e a > <b, b' > <a'' c fis a > <a c fis a > 
  | % 12
  <dis' a, c fis a > <g,, b dis fis > <g b e > <g b e > <g b e > 
  <a c e > <a c e > e''4*86/256 r4*42/256 <e,, fis c' >8 <b e b' > 
  <b e b' > <c e a > 
  | % 13
  <c e a > <b e b' > <b e b' > <b e b' > <b e b' > <c e a > <c e a > 
  <c e a > <c e a > <b e b' > <b e b' > <b e b' > 
  | % 14
  <b e b' > <b dis b' > <b dis b' > <b dis a' > <b dis a' > <c e g > 
  <c e g > <c e g > <c e g > <c e ais > <c e ais > <c e a > 
  | % 15
  <c e a > <b e a > <b e a > <b e gis > <b e gis > <b e g > <b e g > 
  <b e g > <b e g > <e' ais,, c g' >2 r2. <b,, b' >2 <dis' b, fis' b >4*522/256 
}

trackBchannelBvoiceB = \relative c {
  \voiceOne
  r8. b''4*60/256 r4*4/256 b4*783/256 r4*241/256 b4*783/256 r4*241/256 b4*783/256 
  r4*241/256 b4*783/256 r4*241/256 a4*783/256 r4*241/256 a4*783/256 
  r4*241/256 a4*783/256 r4*177/256 a16 a4*783/256 r4*497/256 a4*130/256 
  r4*126/256 d4*130/256 r4*126/256 e,4*130/256 r4*126/256 fis4*729/256 
  r4*39/256 a4*261/256 r4*751/256 b4*12/256 a4*247/256 r4*9/256 <b,, dis a' >4 
  c'4*130/256 r4*126/256 dis4*130/256 r4*126/256 d'4*86/256 r4*170/256 b4*783/256 
  r4*241/256 b4*783/256 r4*241/256 b4*783/256 r4*241/256 b4*195/256 
  r4*61/256 ais4*195/256 b4*61/256 g'4*261/256 r4*187/256 e16 e4*130/256 
  r4*126/256 c'4*130/256 r4*126/256 dis,4*130/256 r4*126/256 g4*130/256 
  r4*126/256 d4*130/256 r4*126/256 a,,8 r4*42/256 a''4*87/256 r4*383/256 a4*130/256 
  r4*753/256 b4*13/256 a4*247/256 r4*9/256 fis4*979/256 r4*45/256 e2. 
  fis4 e2. fis4 r4*5 
  | % 16
  e,4*522/256 r4*2/256 fis4*510/256 
}

trackBchannelBvoiceC = \relative c {
  \voiceThree
  r1 c''4*261/256 r4*763/256 c4*261/256 r4*763/256 c4*261/256 r4*763/256 ais4*261/256 
  r4*763/256 b4*261/256 r4*763/256 b4*261/256 r4*763/256 b4*195/256 
  r4*829/256 gis4*522/256 r4*118/256 b4*130/256 r4*126/256 c4*130/256 
  r4*126/256 a4*130/256 r4*1022/256 fis4*729/256 r4*2087/256 c'4*261/256 
  r4*763/256 c4*261/256 r4*763/256 c4*261/256 r4*187/256 ais16 
  r64*13 ais32. r4 fis'4*195/256 r4*189/256 dis4*130/256 r4*382/256 e4*130/256 
  r4*126/256 b4*130/256 r4*126/256 c4*130/256 r4*83/256 e,4*86/256 
  r4*85/256 fis4*391/256 r4*121/256 fis4*729/256 r4*1255/256 e4*60/256 
  r64*209 fis,4*500/256 r64. b128*61 <e, g b e e,,, e' >4*1459/256 
}

trackBchannelBvoiceD = \relative c {
  \voiceTwo
  r4*16095/256 a''4*33/256 r128*995 b,128*61 r4*36/256 dis4*485/256 
}

trackBchannelBvoiceE = \relative c {
  \voiceFour
  r4*24100/256 e'4*485/256 
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelBvoiceB
  \context Voice = voiceD \trackBchannelBvoiceC
  \context Voice = voiceE \trackBchannelBvoiceD
  \context Voice = voiceF \trackBchannelBvoiceE
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
