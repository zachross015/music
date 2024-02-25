\header {
    title = "Rabbit Hole"
    composer = "Patio"
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

fill = 
#(define-music-function
    (dur)
    (ly:duration?)
    #{
        \drummode {
            \improvisationOn
                sn$dur ^\markup\italic "Fill"
            \improvisationOff
        }
    #}
)

rep =
#(define-music-function
    (count)
    (string)
    #{
        s1^\markup\bold #count
    #}
)

motif = \drummode {
    \hit 8. \hit 16 r8 \hit 8 r4 \hit 8 \hit 8
}

slashes = 
#(define-music-function
    (count)
    (index?)
    #{
        \improvisationOn
        \omit Stem
        \repeat unfold $count {b4}
        \improvisationOff
        \undo \omit Stem    
    #}
)

\drums {
        \tempo 4 = 84

    \compressMMRests {

        \repeat unfold 4 {\hit 8} \hit 4 \hit 4

        \pp \<
        \hit 2 \repeat unfold 8 {\hit 8} 
        \!
        \f \hit 8 r4. 

        \bar "||"^"hh pocket shuffle"

        \mf \repeat percent 3 {\slashes 4} \slashes 2 \hit 4 r4

        \bar "||"

        \mark "V1"

        \repeat percent 3 {\slashes 4} \slashes 2 \tuplet 3/2 {\hit 8 \hit 8 \hit 8}
        \slashes 7 \tuplet 3/2 {\hit 8 \hit 8 \hit 8} \tuplet 3/2 {\hit 8 \hit 8 \hit 8}
        r4 \hit 4 \slashes 6

        \bar "||"

        \motif
        \slashes 4
        \motif 
        \slashes 4
        \motif 
        \repeat unfold 4 {r8 \hit 8 \hit 8 \hit 8}
        r1

        \bar "||"

        \mf \repeat percent 3 {\slashes 4} \slashes 2 \hit 4 r4

        \bar "||"

        \mark "V2"

        \repeat percent 3 {\slashes 4} \slashes 2 \tuplet 3/2 {\hit 8 \hit 8 \hit 8} 
        {\slashes 7} \tuplet 3/2 {\hit 8 \hit 8 \hit 8} \tuplet 3/2 {\hit 8 \hit 8 \hit 8}
        r4 \hit 4 \slashes 6

        \bar "||"

        \slashes 4

        \hit 4 \hit 4 r2

        \bar "||"^"crashes / time"

        \repeat percent 4 {\hit 4 r2.}

        \bar "|"^"start chugging thomas"

        \p \< \repeat percent 7 {\hit 4 \slashes 3} \! \f
        \slashes 2 \hit 4 r4

        \bar "||"

        \mark "S"

        s1^\markup \bold 16

        \repeat percent 4 {\hit 4 \hit 4 \hit 4 \hit 4}

        \time 5/4

        \hit 8. \hit 16 r8 \hit 8 r4 r4 r8 \hit 8

        \time 4/4

        \slashes 4

        \motif 

        \slashes 4

        \motif 

        \slashes 4
        \motif 
        \slashes 4
        \motif 
        \slashes 4
        \motif 
        \slashes 4
        \motif 
        \repeat unfold 4 {r8 \hit 8 \hit 8 \hit 8}
    }
}