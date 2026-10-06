\version "2.24.0"

\header {
  title = \markup \fontsize #3 \bold "和太鼓 演奏譜"
  composer = "採譜"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4" 'landscape) % A4横向き指定
  margin = 15\mm
}

taiko = \drummode {
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 167

  \override DrumStaff.StaffSymbol.line-count = #1 % 1線譜に設定

  % --- [導入・Aメロ] ---
  \bar ".|:"
  sn4->^"面" sn8 sn sn4-> sn8 sn |
  sn8-> sn16 sn sn8 sn-> sn4 r4 |
  sn8->[ sn] sn16[ sn sn8] sn4-> sn |
  sn8 sn16 sn sn8-> sn16 sn sn4-> r4 \bar ":|." \break

  % --- [展開・Bメロ] ---
  sn16-> sn sn sn sn8-> sn sn16-> sn sn sn sn8-> sn |
  sn8->[ sn16 sn] sn8->[ sn16 sn] sn4-> r4 |
  sn16 sn sn8-> sn16 sn sn8-> sn4-> sn8-> sn |
  sn16-> sn sn sn sn8-> sn16 sn sn2-> \bar "|."
}

\score {
  \new DrumStaff {
    \clef percussion
    \taiko
  }
  \layout {
    indent = 0\mm
  }
}