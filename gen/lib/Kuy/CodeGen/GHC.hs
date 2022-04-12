module Kuy.CodeGen.GHC
  ( -- * Names
    ModuleName,
    ModuleName.mkModuleName,
    ModuleName.moduleNameSlashes,
    ModuleName.moduleNameString,
    -- ModuleName.moduleNameFS,

    -- * FastString

    -- FastString.fastStringToShortByteString,

    -- * Modules
    HsModule,
    module',
    qualifiedImport,

    -- * Utilities
    writeModuleFile,
    unsafeConvertDecls,
  )
where

-- import GHC.Data.FastString qualified as FastString

import GHC.Hs
import GHC.ThToHs qualified as ThToHs
import GHC.Types.Basic (Origin (Generated))
import GHC.Types.SrcLoc (GenLocated (L))
import GHC.Types.SrcLoc qualified as SrcLoc
import GHC.Unit.Module.Name (ModuleName)
import GHC.Unit.Module.Name qualified as ModuleName
import GHC.Utils.Outputable qualified as PP
import GHC.Utils.Ppr qualified as PP
import Kuy.Prelude
import Language.Haskell.TH.Syntax qualified as TH
import System.IO qualified as IO

module' ::
  ModuleName ->
  [ImportDecl GhcPs] ->
  [HsDecl GhcPs] ->
  HsModule
module' name imports decls =
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

qualifiedImport :: ModuleName -> ImportDecl GhcPs
qualifiedImport name =
  (simpleImportDecl name)
    { ideclQualified = QualifiedPre
    }

-- Utilities

writeModuleFile :: FilePath -> HsModule -> IO ()
writeModuleFile path mod =
  IO.withFile path IO.WriteMode $ \handle ->
    PP.printSDoc PP.defaultSDocContext (PP.PageMode True) handle (PP.ppr mod)

unsafeConvertDecls :: [TH.Dec] -> [HsDecl GhcPs]
unsafeConvertDecls decs =
  case ThToHs.convertToHsDecls Generated SrcLoc.generatedSrcSpan decs of
    Left err -> error (PP.showSDocUnsafe err)
    Right ok -> map SrcLoc.unLoc ok

mkLocated :: a -> GenLocated (SrcSpanAnn' (EpAnn ann)) a
mkLocated = L (SrcSpanAnn EpAnnNotUsed SrcLoc.generatedSrcSpan)
