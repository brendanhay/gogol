{-# OPTIONS_GHC -fno-warn-orphans #-}

module Kuy.Orphans where

import Burrito.Internal.Type.Case qualified as Template
import Burrito.Internal.Type.Character qualified as Template
import Burrito.Internal.Type.Digit qualified as Template
import Burrito.Internal.Type.Expression qualified as Template
import Burrito.Internal.Type.Field qualified as Template
import Burrito.Internal.Type.Literal qualified as Template
import Burrito.Internal.Type.Match qualified as Template
import Burrito.Internal.Type.MaxLength qualified as Template
import Burrito.Internal.Type.Modifier qualified as Template
import Burrito.Internal.Type.Name qualified as Template
import Burrito.Internal.Type.Operator qualified as Template
import Burrito.Internal.Type.Token qualified as Template
import Burrito.Internal.Type.Variable qualified as Template
import Data.Hashable (Hashable (..))
import Data.Ord (Down (Down))
import Data.OrdPSQ (OrdPSQ)
import Data.OrdPSQ qualified as OrdPSQ
import Data.Persist (Persist (..))
import Data.Persist qualified as Persist
import Data.Word (Word16)
import Distribution.CabalSpecVersion qualified as Cabal
import Distribution.Compat.NonEmptySet qualified as Cabal
import Distribution.ModuleName qualified as Cabal
import Distribution.PackageDescription qualified as Cabal
import Distribution.SPDX qualified as Cabal.SPDX
import Distribution.Simple qualified as Cabal
import Distribution.Utils.Path qualified as Cabal
import Distribution.Utils.ShortText qualified as Cabal
import Distribution.Utils.Structured (Structured)
import Foreign.ForeignPtr qualified as ForeignPtr
import GHC.Generics (Generic)
import Language.Haskell.TH.Syntax qualified as TH
import Rock qualified
import System.IO.Unsafe qualified as IO.Unsafe
import UnliftIO (MonadUnliftIO)
import UnliftIO qualified
import Prelude

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

-- This is suboptimal, but alas.
instance (Ord k, Ord p, Ord v, Persist k, Persist p, Persist v) => Persist (OrdPSQ k p v) where
  put = put . OrdPSQ.toList
  get = OrdPSQ.fromList <$> get

-- So we can use template-haskell syntax as Query keys.

deriving anyclass instance Hashable TH.TypeFamilyHead

deriving anyclass instance Hashable TH.Type

deriving anyclass instance Hashable flag => Hashable (TH.TyVarBndr flag)

deriving anyclass instance Hashable TH.TySynEqn

deriving anyclass instance Hashable TH.TyLit

deriving anyclass instance Hashable TH.Stmt

deriving anyclass instance Hashable TH.Specificity

deriving anyclass instance Hashable TH.SourceUnpackedness

deriving anyclass instance Hashable TH.SourceStrictness

deriving anyclass instance Hashable TH.Safety

deriving anyclass instance Hashable TH.RuleMatch

deriving anyclass instance Hashable TH.RuleBndr

deriving anyclass instance Hashable TH.Role

deriving anyclass instance Hashable TH.Range

deriving anyclass instance Hashable TH.Pragma

deriving anyclass instance Hashable TH.PkgName

deriving anyclass instance Hashable TH.Phases

deriving anyclass instance Hashable TH.PatSynDir

deriving anyclass instance Hashable TH.PatSynArgs

deriving anyclass instance Hashable TH.Pat

deriving anyclass instance Hashable TH.Overlap

deriving anyclass instance Hashable TH.OccName

deriving anyclass instance Hashable TH.NameSpace

deriving anyclass instance Hashable TH.NameFlavour

deriving anyclass instance Hashable TH.Name

deriving anyclass instance Hashable TH.ModuleInfo

deriving anyclass instance Hashable TH.Module

deriving anyclass instance Hashable TH.ModName

deriving anyclass instance Hashable TH.Match

deriving anyclass instance Hashable TH.Loc

deriving anyclass instance Hashable TH.Lit

deriving anyclass instance Hashable TH.Inline

deriving anyclass instance Hashable TH.InjectivityAnn

deriving anyclass instance Hashable TH.Info

deriving anyclass instance Hashable TH.Guard

deriving anyclass instance Hashable TH.FunDep

deriving anyclass instance Hashable TH.Foreign

deriving anyclass instance Hashable TH.FixityDirection

deriving anyclass instance Hashable TH.Fixity

deriving anyclass instance Hashable TH.FamilyResultSig

deriving anyclass instance Hashable TH.Exp

deriving anyclass instance Hashable TH.DocLoc

deriving anyclass instance Hashable TH.DerivStrategy

deriving anyclass instance Hashable TH.DerivClause

deriving anyclass instance Hashable TH.DecidedStrictness

deriving anyclass instance Hashable TH.Dec

deriving anyclass instance Hashable TH.Con

deriving anyclass instance Hashable TH.Clause

deriving anyclass instance Hashable TH.Callconv

deriving anyclass instance Hashable TH.Body

deriving anyclass instance Hashable TH.Bang

deriving anyclass instance Hashable TH.AnnTarget

deriving anyclass instance Hashable TH.AnnLookup

instance Hashable TH.Bytes where
  hashWithSalt salt TH.Bytes {bytesPtr, bytesOffset, bytesSize} =
    IO.Unsafe.unsafeDupablePerformIO $
      ForeignPtr.withForeignPtr bytesPtr $ \ptr ->
        pure (salt `hashWithSalt` (ptr, bytesOffset, bytesSize))

-- Cabal has Binary instances, so these would be moot, but I can't bring myself
-- to use binary when the performance is so subpar compared to store/persist,
-- both observationaly in this project and via:
--
-- https://rawgit.com/haskell-perf/serialization/master/report.html

deriving anyclass instance Persist Cabal.PackageDescription

deriving anyclass instance Persist Cabal.PackageFlag

deriving anyclass instance Persist Cabal.PackageIdentifier

deriving anyclass instance Persist Cabal.PackageName

deriving anyclass instance (Persist a, Persist b) => Persist (Cabal.SymbolicPath a b)

deriving anyclass instance Persist Cabal.PackageDir

deriving anyclass instance Persist Cabal.SourceDir

deriving anyclass instance Persist Cabal.FlagName

deriving anyclass instance Persist Cabal.Language

deriving anyclass instance Persist Cabal.Extension

deriving anyclass instance Persist Cabal.KnownExtension

deriving anyclass instance Persist Cabal.Version

deriving anyclass instance Persist Cabal.VersionRange

deriving anyclass instance Persist Cabal.ModuleName

deriving anyclass instance Persist Cabal.UnqualComponentName

deriving anyclass instance Persist Cabal.ModuleReexport

deriving anyclass instance Persist Cabal.ShortText

deriving anyclass instance Persist Cabal.CabalSpecVersion

deriving anyclass instance Persist Cabal.SourceRepo

deriving anyclass instance Persist Cabal.RepoKind

deriving anyclass instance Persist Cabal.RepoType

deriving anyclass instance Persist Cabal.KnownRepoType

deriving anyclass instance Persist Cabal.BuildType

deriving anyclass instance Persist Cabal.SetupBuildInfo

deriving anyclass instance Persist Cabal.BuildInfo

deriving anyclass instance Persist Cabal.ForeignLib

deriving anyclass instance Persist Cabal.ForeignLibType

deriving anyclass instance Persist Cabal.ForeignLibOption

deriving anyclass instance Persist Cabal.Library

deriving anyclass instance Persist Cabal.LibraryName

deriving anyclass instance Persist Cabal.LibraryVisibility

deriving anyclass instance Persist Cabal.LibVersionInfo

deriving anyclass instance Persist Cabal.ExeDependency

deriving anyclass instance Persist Cabal.LegacyExeDependency

deriving anyclass instance Persist Cabal.PkgconfigName

deriving anyclass instance Persist Cabal.PkgconfigDependency

deriving anyclass instance Persist Cabal.PkgconfigVersion

deriving anyclass instance Persist Cabal.PkgconfigVersionRange

deriving anyclass instance Persist a => Persist (Cabal.PerCompilerFlavor a)

deriving anyclass instance Persist Cabal.Dependency

deriving anyclass instance Persist Cabal.Mixin

deriving anyclass instance Persist Cabal.IncludeRenaming

deriving anyclass instance Persist Cabal.ModuleRenaming

deriving anyclass instance Persist Cabal.TestType

deriving anyclass instance Persist Cabal.TestSuite

deriving anyclass instance Persist Cabal.TestSuiteInterface

deriving anyclass instance Persist Cabal.Executable

deriving anyclass instance Persist Cabal.ExecutableScope

deriving anyclass instance Persist Cabal.Benchmark

deriving anyclass instance Persist Cabal.BenchmarkType

deriving anyclass instance Persist Cabal.BenchmarkInterface

deriving anyclass instance Persist Cabal.License

deriving anyclass instance Persist Cabal.LicenseFile

deriving anyclass instance Persist Cabal.CompilerFlavor

deriving anyclass instance Persist Cabal.SPDX.License

deriving anyclass instance Persist Cabal.SPDX.LicenseRef

deriving anyclass instance Persist Cabal.SPDX.LicenseExpression

deriving anyclass instance Persist Cabal.SPDX.LicenseExceptionId

deriving anyclass instance Persist Cabal.SPDX.SimpleLicenseExpression

deriving stock instance Generic Cabal.LicenseFile

deriving stock instance Generic Cabal.SourceDir

deriving stock instance Generic Cabal.PackageDir

instance (Ord a, Persist a) => Persist (Cabal.NonEmptySet a) where
  put = put . Cabal.toNonEmpty
  get = Cabal.fromNonEmpty <$> get

instance Persist Cabal.SPDX.LicenseId where
  put = Persist.putBE @Word16 . fromIntegral . fromEnum
  get = do
    i <- Persist.getBE @Word16
    if i > fromIntegral (fromEnum (maxBound :: Cabal.SPDX.LicenseId))
      then fail "Too large LicenseId tag"
      else pure (toEnum (fromIntegral i))

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
