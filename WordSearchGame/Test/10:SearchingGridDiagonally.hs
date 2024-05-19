
import Data.List (transpose)
type Grid = [String]

outputGrid :: Grid -> IO()
outputGrid grid = putStrLn (formatGrid grid)

formatGrid :: Grid -> String
formatGrid = unlines

grid = [ "N_T_________Q__"
       , "W__O_______R___"
       , "O_C_O_____A____"
       , "D_O__B_U_DN____"
       , "E_M___ENA_A___O"
       , "D_P____R__D___Y"
       , "I_T____EEDOCEYE"
       , "S_IBM_MA__H___H"
       , "PHASKELL__S____"
       , "U_______L______"
       ]

{- we wnat to seach for diagonal words present in the grid, here we have the words: \REBOOT, /QRADAR, and \LLM
   to search for words written / (simply reverse for \), we can skew the grid by prepending each line with an additional char to enable us to read it top->bottom and vice versa e.g. 
"N___________Q__"
"_W__O_______R___"
"__O_C_O_____A____"
"___D_O__B_U_DN____"
"____E_M___ENA_A___O"
"_____D_P____R__D___Y"
"______I_T____EEDOCEYE"
"_______S_IBM_MA__H___H"
"________PHASKELL__S____"
"_________U_______L______"
-}

skew :: Grid -> Grid
skew [] = []
skew (l:ls) = l : skew (map indent ls)
       where indent line = 'x' : line

main :: IO ()
main = do
        outputGrid (skew grid)
        {- 
        N___________Q__
        xW__O_______R___
        xxO_C_O_____A____
        xxxD_O__B_U_DN____
        xxxxE_M___ENA_A___O
        xxxxxD_P____R__D___Y
        xxxxxxI_T____EEDOCEYE
        xxxxxxxS_IBM_MA__H___H
        xxxxxxxxPHASKELL__S____
        xxxxxxxxxU_______L______
        -}

        -- can can transpose skewed list to extract words
        outputGrid (transpose (skew grid))
        {-
        Nxxxxxxxxx
        _Wxxxxxxxx
        __Oxxxxxxx
        ___Dxxxxxx
        _OC_Exxxxx
        ___O_Dxxxx
        __O_M_Ixxx
        _____P_Sxx
        ___B__T_Px
        _______IHU
        ___UE__BA_
        ____N__MS_
        QRADAR__K_
        ___N__EME_
        ____A_EAL_
        ____DD_L_
        ____O___
        ___CH_L
        O_E_S_
        YY___
        E___
        H__
        __
        _
        -}

        outputGrid (skew (reverse grid))
        outputGrid (transpose (skew (reverse grid)))
        {-
        U_______L______
        xPHASKELL__S____
        xxS_IBM_MA__H___H
        xxxI_T____EEDOCEYE
        xxxxD_P____R__D___Y
        xxxxxE_M___ENA_A___O
        xxxxxxD_O__B_U_DN____
        xxxxxxxO_C_O_____A____
        xxxxxxxxW__O_______R___
        xxxxxxxxxN_T_________Q__
        
        Uxxxxxxxxx
        _Pxxxxxxxx
        _HSxxxxxxx
        _A_Ixxxxxx
        _SI_Dxxxxx
        _KBT_Exxxx
        _EM_P_Dxxx
        _L___M_Oxx
        LLM___O_Wx
        __A____C_N
        ___E______
        _S_EREBOOT
        __HD_N____
        ___O_AU___
        ___CD_____
        __E_AD___
        HY__N___
        E___A__
        Y_____
        O__R_
        ____
        __Q
        __
        _
        -}
