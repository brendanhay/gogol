module Kuy.Driver.Error where

import Data.Dependent.Sum (DSum ((:=>)))
import Data.Dependent.HashMap qualified as DHashMap
import Data.Dependent.HashMap (DHashMap)
import Kuy.Driver.Query (Query)
import Kuy.Prelude

type Errors = DHashMap Query (Const [Error])

data Error
  = Warn Error
  | NotFound String
  | Parse String String
  | Syntax String
  deriving stock (Show, Eq)

reportErrors :: Errors -> IO Int
reportErrors =
  foldM go 0 . DHashMap.toList
  where
    -- FIXME: use renderQuery from Trace.hs
    go n ((query :: Query a) :=> Const errors) = do
      let title = "Error " ++ show query
          body = map (\e -> " - " ++ show e) errors

      putStr (unlines (title : body))

      pure $! n + length (filter (\case Warn{} -> False; _other -> True)  errors)
