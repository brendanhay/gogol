module Kuy.GHC
  ( -- * Names
    ModuleName,
    ModuleName.mkModuleName,
    ModuleName.moduleNameSlashes,
    ModuleName.moduleNameString,

    -- * Modules
    HsModule,
    mkModule,
    mkImport,

    -- * Extensions
    ImportDecl',
    HsDecl',

    -- * Pretty printing
    writeModuleFile,
  )
where

import GHC.Hs
import GHC.Types.SrcLoc (GenLocated (L))
import GHC.Types.SrcLoc qualified as SrcLoc
import GHC.Unit.Module.Name (ModuleName)
import GHC.Unit.Module.Name qualified as ModuleName
import GHC.Utils.Outputable qualified as PP
import GHC.Utils.Ppr qualified as PP
import Kuy.Prelude
import System.IO qualified as IO

type ImportDecl' = ImportDecl GhcPs

type HsDecl' = HsDecl GhcPs

mkModule ::
  ModuleName ->
  [ImportDecl'] ->
  [HsDecl'] ->
  HsModule
mkModule name imports decls =
  HsModule
    { hsmodAnn = EpAnnNotUsed,
      hsmodLayout = SrcLoc.NoLayoutInfo,
      hsmodName = Just (mkLocated name),
      hsmodExports = Nothing, -- fmap (mkLocated . map mkLocated) exports,
      hsmodImports = map mkLocated imports,
      hsmodDecls = map mkLocated decls,
      hsmodDeprecMessage = Nothing,
      hsmodHaddockModHeader = Nothing
    }

mkImport :: ModuleName -> ImportDecl'
mkImport name =
  (simpleImportDecl name)
    { ideclQualified = QualifiedPre
    }

writeModuleFile :: FilePath -> HsModule -> IO ()
writeModuleFile path mod =
  IO.withFile path IO.WriteMode $ \handle ->
    PP.printSDoc PP.defaultSDocContext (PP.PageMode True) handle (PP.ppr mod)

-- Utilities

mkLocated :: a -> GenLocated (SrcSpanAnn' (EpAnn ann)) a
mkLocated = L (SrcSpanAnn EpAnnNotUsed SrcLoc.generatedSrcSpan)
