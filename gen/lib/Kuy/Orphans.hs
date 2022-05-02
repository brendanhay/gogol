{-# OPTIONS_GHC -fno-warn-orphans #-}

module Kuy.Orphans where

import Language.Haskell.TH.Syntax qualified as TH
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
import Data.Binary (Binary (..))
import Data.HashPSQ (HashPSQ)
import Data.HashPSQ qualified as HashPSQ
import Data.Hashable (Hashable (..))
import Data.Ord (Down)
import Development.Shake.Classes (NFData)
import Distribution.CabalSpecVersion qualified as Cabal
import Distribution.Compat.NonEmptySet qualified as Cabal
import Distribution.ModuleName qualified as Cabal
import Distribution.PackageDescription qualified as Cabal
import Distribution.SPDX qualified as Cabal.SPDX
import Distribution.Simple qualified as Cabal
import Distribution.Utils.Path qualified as Cabal
import Distribution.Utils.ShortText qualified as Cabal
import GHC.Generics (Generic)
import Prelude
import Foreign.ForeignPtr qualified as ForeignPtr
import System.IO.Unsafe qualified as IO.Unsafe

deriving anyclass instance Hashable Cabal.PackageDescription

deriving anyclass instance Hashable Cabal.PackageFlag

deriving anyclass instance Hashable Cabal.PackageIdentifier

deriving anyclass instance Hashable Cabal.PackageName

deriving anyclass instance (Hashable a, Hashable b) => Hashable (Cabal.SymbolicPath a b)

deriving anyclass instance Hashable Cabal.PackageDir

deriving anyclass instance Hashable Cabal.SourceDir

deriving anyclass instance Hashable Cabal.FlagName

deriving anyclass instance Hashable Cabal.Language

deriving anyclass instance Hashable Cabal.Extension

deriving anyclass instance Hashable Cabal.KnownExtension

deriving anyclass instance Hashable Cabal.Version

deriving anyclass instance Hashable Cabal.VersionRange

deriving anyclass instance Hashable Cabal.ModuleName

deriving anyclass instance Hashable Cabal.UnqualComponentName

deriving anyclass instance Hashable Cabal.ModuleReexport

deriving anyclass instance Hashable Cabal.ShortText

deriving anyclass instance Hashable Cabal.CabalSpecVersion

deriving anyclass instance Hashable Cabal.SourceRepo

deriving anyclass instance Hashable Cabal.RepoKind

deriving anyclass instance Hashable Cabal.RepoType

deriving anyclass instance Hashable Cabal.KnownRepoType

deriving anyclass instance Hashable Cabal.BuildType

deriving anyclass instance Hashable Cabal.SetupBuildInfo

deriving anyclass instance Hashable Cabal.BuildInfo

deriving anyclass instance Hashable Cabal.ForeignLib

deriving anyclass instance Hashable Cabal.ForeignLibType

deriving anyclass instance Hashable Cabal.ForeignLibOption

deriving anyclass instance Hashable Cabal.Library

deriving anyclass instance Hashable Cabal.LibraryName

deriving anyclass instance Hashable Cabal.LibraryVisibility

deriving anyclass instance Hashable Cabal.LibVersionInfo

deriving anyclass instance Hashable Cabal.ExeDependency

deriving anyclass instance Hashable Cabal.LegacyExeDependency

deriving anyclass instance Hashable Cabal.PkgconfigName

deriving anyclass instance Hashable Cabal.PkgconfigDependency

deriving anyclass instance Hashable Cabal.PkgconfigVersion

deriving anyclass instance Hashable Cabal.PkgconfigVersionRange

deriving anyclass instance Hashable a => Hashable (Cabal.PerCompilerFlavor a)

deriving anyclass instance Hashable Cabal.Dependency

deriving anyclass instance Hashable Cabal.Mixin

deriving anyclass instance Hashable Cabal.IncludeRenaming

deriving anyclass instance Hashable Cabal.ModuleRenaming

deriving anyclass instance Hashable Cabal.TestType

deriving anyclass instance Hashable Cabal.TestSuite

deriving anyclass instance Hashable Cabal.TestSuiteInterface

deriving anyclass instance Hashable Cabal.Executable

deriving anyclass instance Hashable Cabal.ExecutableScope

deriving anyclass instance Hashable Cabal.Benchmark

deriving anyclass instance Hashable Cabal.BenchmarkType

deriving anyclass instance Hashable Cabal.BenchmarkInterface

deriving anyclass instance Hashable Cabal.License

deriving anyclass instance Hashable Cabal.LicenseFile

deriving anyclass instance Hashable Cabal.CompilerFlavor

deriving anyclass instance Hashable Cabal.SPDX.License

deriving anyclass instance Hashable Cabal.SPDX.LicenseRef

deriving anyclass instance Hashable Cabal.SPDX.LicenseExpression

deriving anyclass instance Hashable Cabal.SPDX.LicenseExceptionId

deriving anyclass instance Hashable Cabal.SPDX.SimpleLicenseExpression

deriving stock instance Eq Cabal.LicenseFile

deriving stock instance Generic Cabal.LicenseFile

deriving stock instance Eq Cabal.SourceDir

deriving stock instance Generic Cabal.SourceDir

deriving stock instance Eq Cabal.PackageDir

deriving stock instance Generic Cabal.PackageDir

instance Hashable a => Hashable (Cabal.NonEmptySet a) where
  hashWithSalt salt = hashWithSalt salt . Cabal.toNonEmpty

instance Hashable Cabal.SPDX.LicenseId where
  hashWithSalt salt = hashWithSalt salt . fromEnum

-- No Ord/Hashable instances for psqeues types.

instance Binary a => Binary (Down a)

instance Hashable a => Hashable (Down a)

-- instance (Ord k, Ord p, Ord v) => Ord (HashPSQ k p v) where
--   compare x y =
--     case (HashPSQ.minView x, HashPSQ.minView y) of
--       (Nothing, Nothing) ->
--         EQ
--       (Just (xk, xp, xv, x'), (Just (yk, yp, yv, y'))) ->
--         compare xk yk <> compare xp yp <> compare xv yv <> compare x' y'
--       (Just {}, Nothing) ->
--         GT
--       (Nothing, Just {}) ->
--         LT

-- This is suboptimal, but alas.
instance (Ord k, Hashable k, Ord p, Hashable p, Hashable v) => Hashable (HashPSQ k p v) where
  hashWithSalt salt = hashWithSalt salt . HashPSQ.toList

instance (Ord k, Hashable k, Ord p, Hashable p, Ord v, Binary k, Binary p, Binary v) => Binary (HashPSQ k p v) where
  put = put . HashPSQ.toList
  get = HashPSQ.fromList <$> get

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

-- No useful instances for URI template types

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

deriving anyclass instance NFData Template.Case

deriving anyclass instance NFData Template.Digit

deriving anyclass instance NFData Template.Expression

deriving anyclass instance NFData Template.Field

deriving anyclass instance NFData Template.Literal

deriving anyclass instance NFData Template.Match

deriving anyclass instance NFData Template.MaxLength

deriving anyclass instance NFData Template.Modifier

deriving anyclass instance NFData Template.Name

deriving anyclass instance NFData Template.Operator

deriving anyclass instance NFData Template.Token

deriving anyclass instance NFData Template.Variable

deriving anyclass instance NFData a => NFData (Template.Character a)

deriving anyclass instance Hashable Template.Case

deriving anyclass instance Hashable Template.Digit

deriving anyclass instance Hashable Template.Expression

deriving anyclass instance Hashable Template.Field

deriving anyclass instance Hashable Template.Literal

deriving anyclass instance Hashable Template.Match

deriving anyclass instance Hashable Template.MaxLength

deriving anyclass instance Hashable Template.Modifier

deriving anyclass instance Hashable Template.Name

deriving anyclass instance Hashable Template.Operator

deriving anyclass instance Hashable Template.Token

deriving anyclass instance Hashable Template.Variable

deriving anyclass instance Hashable a => Hashable (Template.Character a)

deriving anyclass instance Binary Template.Case

deriving anyclass instance Binary Template.Digit

deriving anyclass instance Binary Template.Expression

deriving anyclass instance Binary Template.Field

deriving anyclass instance Binary Template.Literal

deriving anyclass instance Binary Template.Match

deriving anyclass instance Binary Template.MaxLength

deriving anyclass instance Binary Template.Modifier

deriving anyclass instance Binary Template.Name

deriving anyclass instance Binary Template.Operator

deriving anyclass instance Binary Template.Token

deriving anyclass instance Binary Template.Variable

deriving anyclass instance Binary a => Binary (Template.Character a)
