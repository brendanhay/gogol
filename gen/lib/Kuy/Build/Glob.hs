{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE UndecidableInstances #-}

-- | "Glob" is the common name for a set of Bash features that match
-- or expand specific types of patterns. Some synonyms for globbing
-- (depending on the context in which it appears) are pattern matching,
-- pattern expansion, filename expansion, and so on. A glob may look like
-- @*.txt@ and, when used to match filenames, is sometimes called a
-- "wildcard".
module Kuy.Build.Glob
  ( Glob,
    arityGlob,
    parseGlob,
    renderGlob,
    -- renderGlobM,
    -- (-/-),
    -- (-.-),
    -- (-+-),
    (-%>),
    type Length,
    Tuple (..),
  )
  where

import GHC.Exts (proxy#)
import Data.SOP
import Data.SOP.NP
import Data.Kind (Type)
import Data.Text qualified as Text
import Development.Shake
import Kuy.Prelude
import System.FilePattern qualified as FilePattern
import GHC.TypeNats (type (+))

-- | A glob 'FilePattern' annotated by a type-level list, where each element in
-- the list positionally corresponds to an individual star @*@ or globstar @**@
-- match.
--
-- >>> arityGlob "foo/*/**/*.c" == 3
data Glob (a :: [Type]) = UnsafeGlob FilePattern
  deriving stock (Show, Eq)

instance KnownNat (Length a) => IsString (Glob a) where
  fromString str
    | fromIntegral (FilePattern.arity str) == len = UnsafeGlob str
    | otherwise =
        error . unwords $
             [ "unable to parse expected arity of",
                show len,
                "from pattern",
                str
             ]
   where
    len = natLength @a

arityGlob :: forall a. KnownNat (Length a) => Glob a -> Natural
arityGlob _ = natLength @a

-- | Match a typed glob pattern against a 'FilePath' using 'FilePattern.match',
-- returning the deserialised matches.
--
-- This will fails if there is no match or deserialising fails, meaning it\'s
-- intended to be used with Shake\'s '%>' (or similar) where you have a 'FilePath'
-- you know was produced by the supplied 'FilePattern'. Otherwise, you probably
-- want to use 'FilePattern.match' or '?==' directly instead.
parseGlob :: (All FromHttpApiData a, Tuple a b) => FilePath -> Glob a -> Either Text b
parseGlob path (UnsafeGlob pattern') = do
  matches <- note "failed matching glob against path" (FilePattern.match pattern' path)
  product <- note "failed parsing n-ary product from matches" (Data.SOP.NP.fromList matches)
  fmap toTuple
    . ctraverse_NP (Proxy @FromHttpApiData) (\(K s) -> parseUrlPiece (Text.pack s))
    $ product

-- | Render a glob pattern using the specified arguments @b@ in place of the
-- related wildcard patterns, producing a concrete pattern-less 'FilePath'.
renderGlob :: (All ToHttpApiData a, Tuple a b) => b -> Glob a -> FilePath
renderGlob args (UnsafeGlob pattern') =
 FilePattern.substitute pattern'
  . collapse_NP
  . cmap_NP (Proxy @ToHttpApiData) (\(I x) -> K (Text.unpack (toUrlPiece x)))
  . fromTuple
  $ args

-- renderGlobM ::
--   (Applicative f,
--    All ToHttpApiData a,
--    Tuple a b
--   ) =>
--   f (Glob a) ->
--   b ->
--   f FilePath
-- renderGlobM f x =
--   renderGlob <$> f <*> pure x

-- infixr 5 -/-
-- infixr 6 -+-
-- infixr 7 -.-

-- -- | Combine two file patterns with a path separator using '</>'.
-- (-/-) :: Glob a -> Glob b -> Glob (a ++ b)
-- (-/-) (UnsafeGlob a) (UnsafeGlob b) = UnsafeGlob (a </> b)

-- -- | Concatenate two file patterns using '++'.
-- (-+-) :: Glob a -> Glob b -> Glob (a ++ b)
-- (-+-) (UnsafeGlob a) (UnsafeGlob b) = UnsafeGlob (a ++ b)

-- -- | Add an extension, even if there is already one there, using '<.>'.
-- (-.-) :: Glob a -> Glob '[] -> Glob a
-- (-.-) (UnsafeGlob a) (UnsafeGlob b) = UnsafeGlob (a <.> b)

-- | Variant of '%>' which takes a typed filepattern and yields any parsed captures.
(-%>) ::
  ( All FromHttpApiData a,
    Tuple a b
  ) =>
  Rules (Glob a) ->
  (b -> FilePath -> Action ()) ->
  Rules ()
(-%>) test action = do
  glob@(UnsafeGlob pattern') <- test

  pattern' %> \path ->
    case parseGlob path glob of
      Left err -> fail $ "unable to parse path from " ++ show (glob, path, err)
      Right ok -> action ok path

-- | Length of a type-level list, as a type-level natural number.
type family Length xs where
    Length '[] = 0
    Length (x ': xs) = 1 + (Length xs)

natLength :: forall xs. KnownNat (Length xs) => Natural
natLength = fromIntegral $ natVal' (proxy# @(Length xs))

-- | Concatenate type-level lists.
type family (++) (as :: [k]) (bs :: [k]) :: [k] where
  '[] ++ bs = bs
  (a ': as) ++ bs = a ': (as ++ bs)

-- | Utility class to convert between n-ary products and tuples.
class Tuple a b | a -> b, b -> a where
  toTuple :: NP I a -> b
  fromTuple :: b -> NP I a

instance Tuple '[] () where
  toTuple _ = ()
  fromTuple _ = Nil

instance Tuple '[a] (Solo a) where
  toTuple = \case
    I a :* Nil -> Solo a
  fromTuple = \case
    Solo a -> I a :* Nil

instance Tuple '[a, b] (a, b) where
  toTuple = \case
    I a :* I b :* Nil -> (a, b)
  fromTuple = \case
    (a, b) -> I a :* I b :* Nil

instance Tuple '[a, b, c] (a, b, c) where
  toTuple = \case
    I a :* I b :* I c :* Nil -> (a, b, c)
  fromTuple = \case
    (a, b, c) -> I a :* I b :* I c :* Nil
