module Kuy.Driver.Error where

import Data.Dependent.HashMap (DHashMap)
import Kuy.Driver.Query (Query)
import Kuy.Prelude

type Errors = DHashMap Query (Const [Error])

data Error
  = NotFound String
  | Parse String String
  | Syntax String
  deriving stock (Show, Eq)

-- type ErrorBag = Bag Error

-- -- | A non-empty list modelled after 'GHC.Data.Bag' and 'Data.DList'.
-- data Bag a
--   = Empty
--   | Unit a
--   | Both (Bag a) (Bag a)
--   | List (NonEmpty a)
--   deriving stock (Show, Eq, Ord, Functor)

-- cons :: a -> Bag a -> Bag a
-- cons x xs = Unit a <> xs

-- snoc :: Bag a -> a -> Bag a
-- snoc xs x = xs <> Unit a

-- instance Semigroup (Bag a) where
--   (<>) a Empty = a
--   (<>) Empty b = b
--   (<>) a b = Both a b

-- instance Monoid (Bag a) where
--   mempty = Empty

-- instance Foldable Bag where
--   foldr k z = \case
--     Empty    -> z
--     Unit x   -> k x z
--     Both a b -> foldr k (foldr k z b) a
--     List xs  -> foldr k z xs

-- instance Traversable Bag where
--   traverse f = \case
--     Empty      -> pure Empty
--     Unit x     -> Unit <$> f x
--     Both a b -> Both <$> traverse f a <*> traverse f b
--     List xs    -> List <$> traverse f xs

-- instance IsList (Bag a) where
--   type Item (Bag a) = a

--   toList = foldr (:) []
--   fromList = \case
--     [] -> Empty
--     x : xs -> List (x :| xs)

-- instance Applicative Bag where
--   pure = Unit
--   (<*>) = ap

-- instance Monad Bag where
--   m >>= k = foldr (mappend . k) Empty m
