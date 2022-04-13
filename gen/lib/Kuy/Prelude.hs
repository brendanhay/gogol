-- | An intentionally limited set of prelude exports.
--
-- Please consider long and hard before adding any addtional types exports to
-- this module - they should either be in pervasive use throughout the project
-- or have zero ambiguity. If you ever are forced to disambiguate at any point,
-- it's a bad export.
--
-- Attempt to avoid non-Prelude base exports if possible, unless pervasive
-- and unambiguous.
--
-- Avoid non-base function, operator, or value-level exports.
module Kuy.Prelude
  ( -- * Text
    Text,
    TextLazy,
    TextBuilder,

    -- * Bytes
    ByteString,
    ByteStringLazy,
    ByteBuilder,

    -- * Errors
    hush,
    note,
    liftMaybe,

    -- * Re-exports
    module Export,
  )
where

import Control.Applicative as Export (Alternative ((<|>)))
import Control.Exception as Export (Exception, IOException, SomeException)
import Control.Monad as Export
import Control.Monad.Except as Export
import Control.Monad.Reader as Export
import Control.Monad.State.Strict as Export
import Control.Monad.Trans.Maybe as Export
import Data.Aeson as Export
  ( FromJSON (..),
    FromJSONKey,
    ToJSON (..),
    ToJSONKey,
    parseJSON,
    (.!=),
    (.:),
    (.:?),
  )
import Data.Bifoldable as Export (Bifoldable (bifoldMap), bifor_, bitraverse_)
import Data.Bifunctor as Export (Bifunctor (bimap, first, second))
import Data.Bitraversable as Export (Bitraversable (bitraverse), bifor)
import Data.ByteString qualified
import Data.ByteString.Builder qualified
import Data.ByteString.Lazy qualified
import Data.Coerce as Export (Coercible, coerce)
import Data.DList as Export (DList)
import Data.Either as Export
import Data.Either.Validation as Export
  ( Validation (..),
    eitherToValidation,
    validationToEither,
  )
import Data.Foldable as Export (foldl', for_, traverse_)
import Data.Function as Export ((&))
import Data.Functor as Export (($>), (<&>))
import Data.Functor.Const as Export (Const (Const), getConst)
import Data.Functor.Contravariant as Export (Contravariant (contramap))
import Data.Functor.Identity as Export (Identity (Identity), runIdentity)
import Data.Hashable as Export (Hashable (hashWithSalt))
import Data.IORef as Export (IORef)
import Data.Int as Export (Int16, Int32, Int64, Int8)
import Data.IntSet as Export (IntSet)
import Data.List.NonEmpty as Export (NonEmpty (..))
import Data.Map.Strict as Export (Map)
import Data.Maybe as Export
import Data.Ord as Export (Down (Down), comparing)
import Data.Persist as Export (Persist)
import Data.Proxy as Export (Proxy (Proxy))
import Data.Set as Export (Set)
import Data.String as Export (IsString (fromString))
import Data.Text qualified
import Data.Text.Lazy qualified
import Data.Text.Lazy.Builder qualified
import Data.Time as Export (NominalDiffTime, UTCTime)
import Data.Traversable as Export (for)
import Data.Typeable as Export (Typeable)
import Data.Void as Export (Void)
import Data.Word as Export (Word16, Word32, Word64, Word8)
import Distribution.Utils.Structured as Export (Structured)
import GHC.Exts as Export (Constraint, IsList (fromList, toList))
import GHC.Generics as Export (Generic)
import GHC.Stack as Export (HasCallStack)
import GHC.TypeLits as Export (KnownNat, KnownSymbol, Nat, Symbol, natVal, natVal', symbolVal)
import Kuy.Orphans ()
import Numeric.Natural as Export (Natural)
import System.FilePath as Export ((-<.>), (<.>), (</>))
import UnliftIO as Export (MonadUnliftIO)
import Prelude as Export hiding (foldl, head, init, last, lines, log, tail)

type Text = Data.Text.Text

type TextLazy = Data.Text.Lazy.Text

type TextBuilder = Data.Text.Lazy.Builder.Builder

type ByteString = Data.ByteString.ByteString

type ByteStringLazy = Data.ByteString.Lazy.ByteString

type ByteBuilder = Data.ByteString.Builder.Builder

-- | Suppress the 'Left' value of an 'Either'.
hush :: Either a b -> Maybe b
hush = either (const Nothing) Just

-- | Tag the 'Nothing' value of a 'Maybe'.
note :: a -> Maybe b -> Either a b
note a = maybe (Left a) Right

-- | Convert a 'Maybe' computation to 'MaybeT'.
liftMaybe :: Applicative m => Maybe b -> MaybeT m b
liftMaybe = MaybeT . pure
