import Data.List (transpose)
type Grid = [String]

grid = [ "N___________Q__"
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

-- 2: Write a func to get grid elements horizontally, vertically, and the reverse of each to search left->right, right->left, top->bottom, bottom->top
getLines :: Grid -> [String]
getLines grid =
  let horizontal = grid
      vertical = transpose grid
      lines = horizontal ++ vertical
  in lines ++ (map reverse lines)

main :: IO ()
main = do
-- 1: transpose allows us to transpose rows and columns e.g. >>> transpose [[1,2,3],[4,5,6]] returns [[1,4],[2,5],[3,6]]
-- this will allow us to search for any words written top to bottom and we can simply reverse to search bottom to top
        print (transpose grid) -- ["NWODEDISPU","________H_","__COMPTIA_","_O_____BS_","__O____MK_","___B____E_","____E__ML_","___UNREAL_","____A_E__L","___D__D___","__ANADOHS_","_R____C___","Q_____E___","______Y___","____OYEH__"]
        print (map reverse (transpose grid) -- ["UPSIDEDOWN","_H________","_AITPMOC__","_SB_____O_","_KM____O__","_E____B___","_LM__E____","_LAERNU___","L__E_A____","___D__D___","_SHODANA__","___C____R_","___E_____Q","___Y______","__HEYO____"]

        print (getLines grid) {-"N___________Q__","W__O_______R___","O_C_O_____A____","D_O__B_U_DN____","E_M___ENA_A___O","D_P____R__D___Y","I_T____EEDOCEYE",
                                "S_IBM_MA__H___H","PHASKELL__S____","U_______L______","NWODEDISPU","________H_","__COMPTIA_","_O_____BS_","__O____MK_","___B____E_",
                                "____E__ML_","___UNREAL_","____A_E__L","___D__D___","__ANADOHS_","_R____C___","Q_____E___","______Y___","____OYEH__","__Q___________N",
                                "___R_______O__W","____A_____O_C_O","____ND_U_B__O_D","O___A_ANE___M_E","Y___D__R____P_D","EYECODEE____T_I","H___H__AM_MBI_S","____S__LLEKSAHP",
                                "______L_______U","UPSIDEDOWN","_H________","_AITPMOC__","_SB_____O_","_KM____O__","_E____B___","_LM__E____","_LAERNU___","L__E_A____","___D__D___",
                                "_SHODANA__","___C____R_","___E_____Q","___Y______","__HEYO____"] -}
