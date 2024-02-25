\header {
    title = "Addicted to U"
    composer = "Patio"
}

verse = \drummode {
    bd4.-"hh" ss4. 
}

interlude = \drummode {
    bd4.-"hh" sn4. 
}

chorus = \drummode {
    bd4.-"ride" sn4. 
}

build = \drummode {
    bd4.-"hho" sn4. 
}

hit = 
#(define-music-function
    (dur)
    (ly:duration?)
    #{
        \drummode {
            \improvisationOn
                sn$dur
            \improvisationOff
        }
    #}
)

\drums {
        \time 6/8
        \tempo 4. = 66

    \compressMMRests {

        R2.*8^"Piano"

        R2.*7^"Vocals"

        \hit 2.

        \repeat volta 2 {

            \interlude s2.^\markup \bold "x7"

            \mark \markup \bold "V"
            \bar "||"
            \verse s2.^\markup \bold "x7" s2.^\markup \bold "x8"

            \mark \markup \bold "C"
            \bar "||"
            \chorus s2.^\markup \bold "x7" s2.^\markup \bold "x7" \hit2.
        }
        \mark \markup \bold "B"
        \build-"build to solo" s2.^\markup \bold "x7"

        \mark \markup \bold "S"
        \bar "||"
        \chorus s2.^\markup \bold "x7" s2.^\markup \bold "x7" \hit2.

        \bar "||"
        R2.*8

    }
}