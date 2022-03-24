module Gen.AST.Solve
  ( solve,
    getSolved,
  )
where

import Control.Lens (use, uses)
import qualified Control.Monad.Except as Except
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import Gen.Formatting hiding (list)
import Gen.Prelude
import Gen.Text
import Gen.Types

solve :: Service Global -> AST (Service Solved)
solve s = do
  ss <- Map.traverseWithKey (const . getSolved) (s ^. dSchemas)
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
  ss <- use schemas
  case Map.lookup g ss of
    Just x -> pure x
    Nothing ->
      Except.throwError $
        sformat
          ("Missing Schema: " % gid % "\n" % shown)
          g
          (map global (Map.keys ss))

getType :: Global -> AST TType
getType g = loc "getType" g $ memo Gen.Types.typed g go
  where
    go s =
      case s of
        SAny {} ->
          result (TLit JSONValue)
        --
        SLit _ l ->
          result (TLit l)
        --
        SEnm {} ->
          result (TType g)
        --
        SArr _ (Arr e) ->
          optional . TList <$> getType e
        --
        SObj {} ->
          result (TType g)
        --
        SRef _ r
          | ref r /= g -> require <$> getType (ref r)
          | otherwise ->
            Except.throwError $
              sformat ("Ref cycle detected between: " % gid % " == " % shown) g s
      where
        result = pure . optional . repeated

        optional
          | required s = id
          | defaulted s = id
          | otherwise = TMaybe

        require = \case
          TMaybe x | required s -> x
          x -> x

        repeated
          | s ^. iRepeated = TList
          | otherwise = id

getDerive :: Global -> AST [Derive]
getDerive g = loc "getDerive" g $ memo Gen.Types.derived g go
  where
    go = \case
      SAny {} -> pure base
      SRef {} -> pure base
      SLit _ l -> pure (literal l)
      SEnm {} -> pure enum
      SArr _ (Arr e) -> mappend list . List.intersect base <$> getDerive e
      SObj _ (Obj _ ps) -> foldM props base (Map.elems ps)

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
    base = [DEq, DShow, DGeneric]

getPrefix :: Global -> AST Prefix
getPrefix g = loc "getPrefix" g $ memo Gen.Types.prefixed g go
  where
    go =
      pure . \case
        SObj {} -> Prefix (renameSpecial (global g))
        SEnm {} -> Prefix (renameSpecial (global g))
        _ -> mempty

memo ::
  Lens' Memo (Map Global a) ->
  Global ->
  (Schema Global -> AST a) ->
  AST a
memo l g f = do
  m <- uses l (Map.lookup g)
  case m of
    Just x -> pure x
    Nothing -> do
      x <- f =<< getSchema g
      l %= Map.insert g x
      pure x

loc :: String -> Global -> a -> a
loc _ _ = id -- trace (n ++ ": " ++ Text.unpack (global g))
