{-# OPTIONS_GHC -fno-warn-orphans #-}

module Kuy.Orphans where

import Burrito.Internal.Type.Case as Template
import Burrito.Internal.Type.Character as Template
import Burrito.Internal.Type.Digit as Template
import Burrito.Internal.Type.Expression as Template
import Burrito.Internal.Type.Field as Template
import Burrito.Internal.Type.Literal as Template
import Burrito.Internal.Type.Match as Template
import Burrito.Internal.Type.MaxLength as Template
import Burrito.Internal.Type.Modifier as Template
import Burrito.Internal.Type.Name as Template
import Burrito.Internal.Type.Operator as Template
import Burrito.Internal.Type.Token as Template
import Burrito.Internal.Type.Variable as Template
import Data.Ord (Down (Down))
import Data.OrdPSQ (OrdPSQ)
import Data.OrdPSQ qualified as OrdPSQ
import Data.Persist (Persist (..))
import Distribution.Utils.Structured (Structured)
import GHC.Generics (Generic)
import Rock qualified
import Text.Pandoc qualified as Pandoc
import UnliftIO (MonadUnliftIO)
import UnliftIO qualified
import Prelude
import Distribution.Simple qualified as Cabal
import Distribution.PackageDescription qualified as Cabal
import Distribution.CabalSpecVersion qualified as Cabal
import Distribution.ModuleName qualified as Cabal
import Distribution.Utils.Path qualified as Cabal
import Distribution.Compat.NonEmptySet qualified as Cabal
import Distribution.SPDX qualified as Cabal.SPDX
import Distribution.Utils.ShortText qualified as Cabal
import Data.Word (Word16)
import Data.Persist qualified as Persist
import Data.Binary qualified as Binary
import Data.Binary (Binary)

-- Cabal has Binary instances, consider switching modulo performance concerns.

-- deriving anyclass instance Persist Cabal.PackageDescription
-- deriving anyclass instance Persist Cabal.PackageFlag
-- deriving anyclass instance Persist Cabal.PackageIdentifier
-- deriving anyclass instance Persist Cabal.PackageName
-- deriving anyclass instance (Persist a, Persist b) => Persist (Cabal.SymbolicPath a b)
-- deriving anyclass instance Persist Cabal.PackageDir
-- deriving anyclass instance Persist Cabal.SourceDir
-- deriving anyclass instance Persist Cabal.FlagName
-- deriving anyclass instance Persist Cabal.Language
-- deriving anyclass instance Persist Cabal.Extension
-- deriving anyclass instance Persist Cabal.Version
-- deriving anyclass instance Persist Cabal.VersionRange
-- deriving anyclass instance Persist Cabal.ModuleName
-- deriving anyclass instance Persist Cabal.UnqualComponentName
-- deriving anyclass instance Persist Cabal.ModuleReexport
-- deriving anyclass instance Persist Cabal.ShortText
-- deriving anyclass instance Persist Cabal.CabalSpecVersion
-- deriving anyclass instance Persist Cabal.SourceRepo
-- deriving anyclass instance Persist Cabal.RepoKind
-- deriving anyclass instance Persist Cabal.RepoType
-- deriving anyclass instance Persist Cabal.KnownRepoType
-- deriving anyclass instance Persist Cabal.BuildType
-- deriving anyclass instance Persist Cabal.SetupBuildInfo
-- deriving anyclass instance Persist Cabal.BuildInfo
-- deriving anyclass instance Persist Cabal.ForeignLib
-- deriving anyclass instance Persist Cabal.ForeignLibType
-- deriving anyclass instance Persist Cabal.ForeignLibOption
-- deriving anyclass instance Persist Cabal.Library
-- deriving anyclass instance Persist Cabal.LibraryName
-- deriving anyclass instance Persist Cabal.LibraryVisibility
-- deriving anyclass instance Persist Cabal.LibVersionInfo
-- deriving anyclass instance Persist Cabal.ExeDependency
-- deriving anyclass instance Persist Cabal.LegacyExeDependency
-- deriving anyclass instance Persist Cabal.PkgconfigName
-- deriving anyclass instance Persist Cabal.PkgconfigDependency
-- deriving anyclass instance Persist Cabal.PkgconfigVersion
-- deriving anyclass instance Persist Cabal.PkgconfigVersionRange
-- deriving anyclass instance Persist a => Persist (Cabal.PerCompilerFlavor a)
-- deriving anyclass instance Persist Cabal.Dependency
-- deriving anyclass instance Persist Cabal.TestSuite
-- deriving anyclass instance Persist Cabal.TestSuiteInterface
-- deriving anyclass instance Persist Cabal.Executable
-- deriving anyclass instance Persist Cabal.ExecutableScope
-- deriving anyclass instance Persist Cabal.License
-- deriving anyclass instance Persist Cabal.LicenseFile
-- deriving anyclass instance Persist Cabal.CompilerFlavor
-- deriving anyclass instance Persist Cabal.SPDX.License
-- deriving anyclass instance Persist Cabal.SPDX.LicenseRef
-- deriving anyclass instance Persist Cabal.SPDX.LicenseExpression
-- deriving anyclass instance Persist Cabal.SPDX.LicenseExceptionId
-- deriving anyclass instance Persist Cabal.SPDX.SimpleLicenseExpression

instance (Ord a, Persist a) => Persist (Cabal.NonEmptySet a) where
  put = put . Cabal.toNonEmpty
  get = Cabal.fromNonEmpty <$> get


instance Persist Cabal.SPDX.LicenseId where
    -- Word16 is encoded in big endianess
    -- https://github.com/kolmodin/binary/blob/master/src/Data/Binary/Class.hs#L220-LL227
    put = Persist.putBE @Word16 . fromIntegral . fromEnum
    get = do
       i <- Persist.getBE @Word16
       if i > fromIntegral (fromEnum (maxBound :: Cabal.SPDX.LicenseId))
        then fail "Too large LicenseId tag"
        else pure (toEnum (fromIntegral i))

-- Rock has MonadBaseControl instances, but no UnliftIO.

instance MonadUnliftIO (Rock.Task f) where
  withRunInIO inner =
    Rock.Task $
      UnliftIO.withRunInIO $ \run ->
        inner $ run . Rock.unTask

-- No Ord/Hashable instances for psqeues types.

instance Structured a => Structured (Down a)

instance Persist a => Persist (Down a) where
  put (Down x) = put x
  get = Down <$> get

instance (Ord k, Ord p, Ord v) => Ord (OrdPSQ k p v) where
  compare x y =
    case (OrdPSQ.minView x, OrdPSQ.minView y) of
      (Nothing, Nothing) ->
        EQ
      (Just (xk, xp, xv, x'), (Just (yk, yp, yv, y'))) ->
        compare xk yk <> compare xp yp <> compare xv yv <> compare x' y'
      (Just {}, Nothing) ->
        GT
      (Nothing, Just {}) ->
        LT

instance (Ord k, Ord p, Ord v, Persist k, Persist p, Persist v) => Persist (OrdPSQ k p v) where
  put = put . OrdPSQ.toList
  get = OrdPSQ.fromList <$> get

-- Contain recursive definitions, so template-haskell ordering is problematic.

deriving anyclass instance Structured Pandoc.ListNumberStyle

deriving anyclass instance Structured Pandoc.ListNumberDelim

deriving anyclass instance Structured Pandoc.Inline

deriving anyclass instance Structured Pandoc.Format

deriving anyclass instance Structured Pandoc.Block

deriving anyclass instance Structured Pandoc.Caption

deriving anyclass instance Structured Pandoc.Alignment

deriving anyclass instance Structured Pandoc.ColWidth

deriving anyclass instance Structured Pandoc.TableHead

deriving anyclass instance Structured Pandoc.Row

deriving anyclass instance Structured Pandoc.RowSpan

deriving anyclass instance Structured Pandoc.ColSpan

deriving anyclass instance Structured Pandoc.TableBody

deriving anyclass instance Structured Pandoc.RowHeadColumns

deriving anyclass instance Structured Pandoc.TableFoot

deriving anyclass instance Structured Pandoc.CitationMode

deriving anyclass instance Structured Pandoc.MathType

deriving anyclass instance Structured Pandoc.Citation

deriving anyclass instance Structured Pandoc.Cell

deriving anyclass instance Structured Pandoc.QuoteType

deriving anyclass instance Structured Pandoc.MetaValue

deriving anyclass instance Structured Pandoc.Meta

deriving anyclass instance Structured Pandoc.Pandoc

deriving anyclass instance Persist Pandoc.ListNumberStyle

deriving anyclass instance Persist Pandoc.ListNumberDelim

deriving anyclass instance Persist Pandoc.Inline

deriving anyclass instance Persist Pandoc.Format

deriving anyclass instance Persist Pandoc.Block

deriving anyclass instance Persist Pandoc.Caption

deriving anyclass instance Persist Pandoc.Alignment

deriving anyclass instance Persist Pandoc.ColWidth

deriving anyclass instance Persist Pandoc.TableHead

deriving anyclass instance Persist Pandoc.Row

deriving anyclass instance Persist Pandoc.RowSpan

deriving anyclass instance Persist Pandoc.ColSpan

deriving anyclass instance Persist Pandoc.TableBody

deriving anyclass instance Persist Pandoc.RowHeadColumns

deriving anyclass instance Persist Pandoc.TableFoot

deriving anyclass instance Persist Pandoc.CitationMode

deriving anyclass instance Persist Pandoc.MathType

deriving anyclass instance Persist Pandoc.Citation

deriving anyclass instance Persist Pandoc.Cell

deriving anyclass instance Persist Pandoc.QuoteType

deriving anyclass instance Persist Pandoc.MetaValue

deriving anyclass instance Persist Pandoc.Meta

deriving anyclass instance Persist Pandoc.Pandoc

-- No Generic instances.

deriving stock instance Generic Template.Case

deriving stock instance Generic Template.Digit

deriving stock instance Generic Template.Expression

deriving stock instance Generic Template.Field

deriving stock instance Generic Template.Literal

deriving stock instance Generic Template.Match

deriving stock instance Generic Template.MaxLength

deriving stock instance Generic Template.Modifier

deriving stock instance Generic Template.Name

deriving stock instance Generic Template.Operator

deriving stock instance Generic Template.Token

deriving stock instance Generic Template.Variable

deriving stock instance Generic (Template.Character a)

deriving anyclass instance Structured Template.Case

deriving anyclass instance Structured Template.Digit

deriving anyclass instance Structured Template.Expression

deriving anyclass instance Structured Template.Field

deriving anyclass instance Structured Template.Literal

deriving anyclass instance Structured Template.Match

deriving anyclass instance Structured Template.MaxLength

deriving anyclass instance Structured Template.Modifier

deriving anyclass instance Structured Template.Name

deriving anyclass instance Structured Template.Operator

deriving anyclass instance Structured Template.Token

deriving anyclass instance Structured Template.Variable

deriving anyclass instance Structured a => Structured (Template.Character a)

deriving anyclass instance Persist Template.Case

deriving anyclass instance Persist Template.Digit

deriving anyclass instance Persist Template.Expression

deriving anyclass instance Persist Template.Field

deriving anyclass instance Persist Template.Literal

deriving anyclass instance Persist Template.Match

deriving anyclass instance Persist Template.MaxLength

deriving anyclass instance Persist Template.Modifier

deriving anyclass instance Persist Template.Name

deriving anyclass instance Persist Template.Operator

deriving anyclass instance Persist Template.Token

deriving anyclass instance Persist Template.Variable

deriving anyclass instance Persist a => Persist (Template.Character a)
