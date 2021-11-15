-- |
-- Module      : Gen.AST.Solve
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.AST.Solve
  ( solve,
    getSolved,
  )
where

import Control.Applicative (liftA2)
import qualified Control.Lens as Lens
import qualified Control.Monad.Except as Except
import qualified Data.CaseInsensitive as CI
import qualified Data.Char as Char
import qualified Data.HashMap.Strict as HashMap
import qualified Data.HashSet as HashSet
import qualified Data.List as List
import qualified Data.Text as Text
import qualified Data.Text.Manipulate as Text.Manipulate
import Gen.Prelude
import Gen.Text
import Gen.Types

solve :: Service Global -> AST (Service Solved)
solve s = do
  ss <- HashMap.traverseWithKey (const . getSolved) (s ^. dSchemas)
  ps <- traverse param (s ^. dParameters)
  rs <- traverse resource (s ^. dResources)
  ms <- traverse method (s ^. dMethods)

  let d =
        (s ^. sDescription)
          { _dSchemas = ss,
            _dParameters = ps,
            _dResources = rs,
            _dMethods = ms
          }

  pure $! s {_sDescription = d}

param :: Param Global -> AST (Param Solved)
param = traverse getSolved

resource :: Resource Global -> AST (Resource Solved)
resource = traverse getSolved

method :: Method Global -> AST (Method Solved)
method = traverse getSolved

getSolved :: Global -> AST Solved
getSolved g =
  loc "getSolved" g $
    Solved False g
      <$> getPrefix g
      <*> getSchema g
      <*> getType g
      <*> getDerive g

getSchema :: Global -> AST (Schema Global)
getSchema g = do
  ss <- Lens.use schemas

  case HashMap.lookup g ss of
    Just x -> pure x
    Nothing ->
      Except.throwError $
        "Missing Schema: "
          ++ show g
          ++ "\n"
          ++ show (map global (HashMap.keys ss))

getType :: Global -> AST TType
getType g = loc "getType" g $ memo typed g go
  where
    go s = case s of
      SAny {} -> res (TType "JSONValue")
      --- FIXME: add natural/numeric manipulations
      SLit _ l -> res (TLit l)
      SEnm {} -> res (TType g)
      SArr _ (Arr e) -> may <$> (TList <$> getType e)
      SObj {} -> res (TType g)
      SRef _ r
        | ref r /= g -> req <$> getType (ref r)
        --            | otherwise  -> res (TType (ref r))
        | otherwise ->
          Except.throwError $
            "Ref cycle detected between: "
              ++ show g
              ++ " == "
              ++ show s
      where
        res = pure . may . rep

        may
          | required s = id
          | defaulted s = id
          | otherwise = TMaybe

        req (TMaybe x)
          | required s = x
        req x = x

        rep
          | s ^. iRepeated = TList
          | otherwise = id

getDerive :: Global -> AST [Derive]
getDerive g = loc "getDerive" g $ memo derived g go
  where
    go = \case
      SAny {} -> pure base
      SRef {} -> pure base
      SLit _ l -> pure (literal l)
      SEnm {} -> pure enum
      SArr _ (Arr e) -> mappend list . List.intersect base <$> getDerive e
      SObj _ (Obj _ ps) -> foldM props base (HashMap.elems ps)

    literal = \case
      Text -> base <> [DRead, DOrd, DIsString]
      Bool -> enum
      Time -> DRead : base
      Date -> DRead : base
      RqBody -> [DIsString, DMonoid]
      RsBody -> []
      Alt _ -> DRead : base
      JSONValue -> DRead : base
      -- FIXME: Add numeric cases
      _ -> [DRead, DNum, DIntegral, DReal] <> enum

    props ds x = List.intersect ds <$> getDerive x

    list = [DMonoid]
    enum = [DOrd, DEnum] <> base
    base = [DEq, DShow, DData, DTypeable, DGeneric]

getPrefix :: Global -> AST Prefix
getPrefix g = loc "getPrefix" g $ memo prefixed g go
  where
    go = \case
      SObj _ (Obj aps ps) -> field (isJust aps) ps
      SEnm _ (Enm vs) -> branch (map fst vs)
      _ -> pure mempty

    field aps rs = do
      p <- uniq fields (acronymPrefixes g) ks
      pure (Prefix p)
      where
        ls = HashMap.keys rs
        ks = HashSet.fromList (map (CI.mk . renameField . local) (ls ++ ["additional" | aps]))

    branch vs = do
      p <- uniq branches ps (HashSet.fromList (map (CI.mk . renameField) vs))
      pure (Prefix p)
      where
        ps
          | any (Char.isDigit . Text.head) vs = acronymPrefixes g
          | otherwise = "" : acronymPrefixes g

    uniq ::
      Lens' Memo Seen ->
      [CI Text] ->
      HashSet (CI Text) ->
      AST Text
    uniq seen [] ks = do
      s <- Lens.use seen

      let hs = acronymPrefixes g
          f x = "\n" ++ show (CI.foldedCase x) ++ " => " ++ show (HashMap.lookup x s)

      Except.throwError $
        "Error prefixing: "
          ++ show g
          ++ "\n  Fields: "
          ++ show (HashSet.toList ks)
          ++ "\n  Matches: "
          ++ foldMap f hs
    --
    uniq seen (x : xs) ks = do
      m <- Lens.uses seen (HashMap.lookup x)

      case m of
        Just ys
          | overlap ys ks ->
            uniq seen xs ks
        _ -> do
          seen %= HashMap.insertWith (<>) x ks
          pure (CI.foldedCase x)

overlap :: (Eq a, Hashable a) => HashSet a -> HashSet a -> Bool
overlap xs ys = not $ HashSet.null $ HashSet.intersection xs ys

acronymPrefixes :: Global -> [CI Text]
acronymPrefixes (global -> (renameSpecial -> g)) =
  filter (/= full) $ map CI.mk (xs ++ map suffix ys ++ zs)
  where
    -- Take the next char
    suffix x = Text.snoc x c
      where
        c
          | Text.length x >= 2 = Text.head (Text.drop 1 x)
          | otherwise = Text.head x

    full = CI.mk g

    zs = liftA2 (\n x -> Text.snoc x (List.head (show n))) ([1 ..] :: [Int]) xs

    xs = catMaybes [r1, r2, r3, r4, r5, r6]
    ys = catMaybes [r1, r2, r3, r4, r6]

    a = g
    a' = g

    limit = 3

    -- Full name if leq limit
    r1
      | Text.length g <= limit = Just g
      | otherwise = Nothing

    -- VpcPeeringInfo -> VPI
    r2 = Text.Manipulate.toAcronym a

    -- VpcPeeringInfo -> VPCPI
    r3
      | x /= r2 = x
      | otherwise = Nothing
      where
        x = Text.Manipulate.toAcronym a'

    -- SomeTestTType -> S
    r4 = Text.toUpper <$> safeHead g

    -- SomeTypes -> STS (retain pural)
    r5
      | Text.isSuffixOf "s" g = flip Text.snoc 's' <$> (r2 <|> r3)
      | otherwise = Nothing

    -- SomeTestTType -> Som
    r6 = Text.take limit <$> listToMaybe (Text.Manipulate.splitWords a)

memo ::
  Lens' Memo (HashMap Global a) ->
  Global ->
  (Schema Global -> AST a) ->
  AST a
memo l g f = do
  m <- Lens.uses l (HashMap.lookup g)

  case m of
    Just x -> pure x
    Nothing -> do
      x <- f =<< getSchema g
      l %= HashMap.insert g x
      pure x

loc :: String -> Global -> a -> a
loc _ _ = id -- trace (n ++ ": " ++ Text.unpack (global g))
