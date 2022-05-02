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
import GHC.Utils.Outputable qualified as Pretty
import GHC.Utils.Ppr qualified as Pretty
import Kuy.Prelude
import Ormolu qualified

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

writeModuleFile :: MonadIO m => FilePath -> HsModule -> m Text
writeModuleFile path =
  Ormolu.ormolu Ormolu.defaultConfig path
    . prettyPrint

prettyPrint :: Pretty.Outputable a => a -> String
prettyPrint =
  Pretty.renderStyle style
    . flip Pretty.runSDoc context
    . Pretty.ppr
  where
    context =
      Pretty.defaultSDocContext
        { Pretty.sdocLineLength = columns
        }

    style =
      Pretty.style
        { Pretty.mode = Pretty.PageMode True,
          Pretty.lineLength = columns
        }

    columns = 100

-- Utilities

mkLocated :: a -> GenLocated (SrcSpanAnn' (EpAnn ann)) a
mkLocated = L (SrcSpanAnn EpAnnNotUsed SrcLoc.generatedSrcSpan)
