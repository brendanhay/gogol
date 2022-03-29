{-# OPTIONS_GHC -Wno-missing-fields #-}

-- | Taken from ormolu.
module Kuy.GHC.DynFlags
  ( dynFlags,
  )
where

import GHC.Driver.Session qualified as GHC
import GHC.Platform qualified as GHC
import GHC.Settings qualified as GHC
import GHC.Settings.Config qualified as GHC
import GHC.Utils.Fingerprint qualified as GHC
import Kuy.Prelude 

dynFlags :: GHC.DynFlags
dynFlags =
  foldl' GHC.xopt_set (GHC.setGeneralFlag' GHC.Opt_Haddock base) exts
  where
    base = GHC.lang_set (GHC.defaultDynFlags settings llvm) (Just lang)
    lang = GHC.Haskell2010
    llvm = GHC.LlvmConfig [] []
    exts = [minBound .. maxBound]

settings :: GHC.Settings
settings =
  GHC.Settings
    { GHC.sGhcNameVersion =
        GHC.GhcNameVersion
          { GHC.ghcNameVersion_programName = "ghc",
            GHC.ghcNameVersion_projectVersion = GHC.cProjectVersion
          },
      GHC.sFileSettings = GHC.FileSettings {},
      GHC.sTargetPlatform =
        GHC.Platform
          { GHC.platformArchOS =
              GHC.ArchOS
                { GHC.archOS_arch = GHC.ArchUnknown,
                  GHC.archOS_OS = GHC.OSUnknown
                },
            GHC.platformWordSize = GHC.PW8,
            GHC.platformUnregisterised = True,
            GHC.platformByteOrder = GHC.LittleEndian,
            GHC.platformHasGnuNonexecStack = False,
            GHC.platformHasIdentDirective = False,
            GHC.platformHasSubsectionsViaSymbols = False,
            GHC.platformIsCrossCompiling = False,
            GHC.platformLeadingUnderscore = False,
            GHC.platformTablesNextToCode = False,
            GHC.platform_constants = Nothing
          },
      GHC.sPlatformMisc = GHC.PlatformMisc {},
      GHC.sToolSettings =
        GHC.ToolSettings
          { GHC.toolSettings_opt_P_fingerprint = GHC.fingerprint0,
            GHC.toolSettings_pgm_F = ""
          }
    }
