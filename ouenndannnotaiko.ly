\version "2.24.0"

\header {
  title = \markup \bold "和太鼓 演奏譜（YouTube冒頭太鼓パート追加版）"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4" 'landscape)
  margin = 12\mm
}

\score {
  \new DrumStaff {
    \clef percussion
    \numericTimeSignature
    \time 4/4
    \tempo 4 = 112
    \override Staff.StaffSymbol.line-count = #1

    \drummode {
      % === [追加パート] YouTube動画の太鼓リズム ===
      sn4->^"ソレー!" sn4-> sn4-> sn4-> |
      sn8-> sn16 sn sn8-> sn16 sn sn8-> sn sn4-> |
      sn4->^"パン!" sn8 sn sn4->^"パン!" sn8 sn |
      sn16 sn sn sn  sn8-> sn16 sn  sn2-> \bar "||" \break

      % === [既存パート] 0:00~ 導入：ドン・ドン ===
      sn4->^"面" sn4-> r2 |
      sn16 sn sn sn  sn16 sn sn sn  sn16 sn sn sn  sn16 sn sn sn |
      
      % === [既存パート] 0:05~ 掛け声「ハイ！ハイ！」パート ===
      \repeat volta 2 {
        sn4->^"ハイ!" sn4->^"ハイ!"  sn8-> sn16 sn  sn8-> sn16 sn |
        sn16 sn sn sn  sn8-> sn  sn4-> r4 |
        sn4->^"ハイ!" sn4->^"ハイ!"  sn4->^"ハイ!" sn4->^"ハイ!" |
        sn16 sn sn sn  sn8-> sn16 sn  sn2-> |
      }

      % === [既存パート] 0:18~ 展開パート ===
      sn8->^"ハッ!" sn16 sn  sn8->^"ハッ!" sn16 sn  sn8-> sn16 sn  sn4-> |
      sn16 sn sn sn  sn16 sn sn sn  sn4-> r4 |
      sn4->^"ハッ!" sn4->^"ハッ!"  sn4->^"ハッ!" sn4->^"ハッ!" |
      sn16 sn sn sn  sn8-> sn16 sn  sn2-> \bar "|."
    }
  }

  \layout {
    indent = 0\mm
  }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 112 4)
    }
  }
}