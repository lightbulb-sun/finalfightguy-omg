norom

!OH_MY_GOD_SAMPLE_START     = $56310
!OH_MY_GOD_SAMPLE_LENGTH    = $13c2
!OH_MY_GOD_SAMPLE_END      #= !OH_MY_GOD_SAMPLE_START+!OH_MY_GOD_SAMPLE_LENGTH
!OH_MY_GOD_PITCH            = $7a

; copy sample from japanese version
org !OH_MY_GOD_SAMPLE_START
incbin "finalfightguy-jp.sfc":!OH_MY_GOD_SAMPLE_START..!OH_MY_GOD_SAMPLE_END

; fix pitch
org $40a60
        db      !OH_MY_GOD_PITCH

; fix on-screen text
org $140e
        db      "GOD"
