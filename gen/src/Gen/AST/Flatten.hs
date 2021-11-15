-- |
-- Module      : Gen.AST.Flatten
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.AST.Flatten
  ( flatten,
  )
where

import qualified Control.Lens as Lens
import qualified Control.Monad.Except as Except
import qualified Data.HashMap.Strict as HashMap
import qualified Data.HashSet as HashSet
import Gen.Prelude
import Gen.Types

flatten :: Service (Fix Schema) -> AST (Service Global)
flatten s = do
  ps <- kvTraverseMaybe globalParam (s ^. dParameters)
  rs <- HashMap.traverseWithKey (resource ps "Resource") (s ^. dResources)
  ms <- traverse (method ps "Method") (s ^. dMethods)
  _ <- HashMap.traverseWithKey globalSchema (s ^. dSchemas)

  -- The horror.
  ss <- Lens.use schemas

  reserveBranches
  reserveFields

  let d =
        (s ^. sDescription)
          { _dSchemas = HashMap.fromList $ map (join (,)) (HashMap.keys ss),
            _dParameters = ps,
            _dResources = rs,
            _dMethods = ms
          }

  pure $! s {_sDescription = d}

globalSchema :: Global -> Fix Schema -> AST Global
globalSchema g = schema g Nothing

localSchema :: Global -> Local -> Fix Schema -> AST Global
localSchema g l = schema g (Just l)

-- -- unsafe due to depth first adding of a single schema's properties.
-- let r = globalise l
-- p <- Lens.uses schemas (HashMap.member r)
-- if p
--     then schema g (Just l) s
--     else schema r Nothing  s

schema :: Global -> Maybe Local -> Fix Schema -> AST Global
schema g ml (Fix f) = go (maybe g (reference g) ml) f >>= uncurry insert
  where
    go p = \case
      SAny i a -> pure (reference p "Any", SAny i a)
      SRef i r -> pure (reference p "Ref", SRef i r)
      SLit i l -> pure (reference p "Lit", SLit i l)
      SEnm i e -> (,SEnm i e) <$> name i p ["Type", "Option"]
      SArr i a -> do
        u <- name i p ["List", "Array"]
        (u,) . SArr i <$> array u a
      SObj i o -> do
        u <- name i p ["Schema", "Object"]
        (u,) . SObj i <$> object u o

    array p (Arr e) =
      Arr <$> schema p (Just "item") (setRequired e)

    object p (Obj aps ps) =
      Obj
        <$> traverse (localSchema p "additional") aps
        <*> HashMap.traverseWithKey (localSchema p) ps

    name i p xs
      | Just x <- i ^. iId = pure x
      | otherwise = do
        r <- Lens.uses reserve (HashSet.member p)
        e <- Lens.uses schemas (HashMap.lookup p)

        case (r, e, xs) of
          (False, Nothing, _) -> pure p
          (_, _, z : zs) -> name i (reference g z) zs
          (_, Just x, []) ->
            Except.throwError $
              "Unable to generate name for: "
                ++ show g
                ++ ", "
                ++ show ml
                ++ ", "
                ++ show p
                ++ "\n"
                ++ show x
          (True, _, []) ->
            Except.throwError $
              "Unable to generate name for reserved schema: "
                ++ show g
                ++ ", "
                ++ show ml
                ++ ", "
                ++ show p

globalParam :: Local -> Param (Fix Schema) -> AST (Maybe (Param Global))
globalParam l p = case l of
  "key" -> pure Nothing
  "oauth_token" -> pure Nothing
  "prettyPrint" -> pure Nothing
  "quotaUser" -> pure Nothing
  "fields" -> pure Nothing
  "userIp" -> pure Nothing
  "alt" -> Just <$> overrideParam l (Alt alt) p
  _ -> Just <$> localParam "" l p
  where
    alt = alternate $ fromMaybe "JSON" (p ^. iDefault)

overrideParam :: Local -> Lit -> Param (Fix Schema) -> AST (Param Global)
overrideParam l v p =
  localParam "" l $ p {_pParam = Fix (SLit (p ^. info) v)}

localParam :: Global -> Local -> Param (Fix Schema) -> AST (Param Global)
localParam g l p = do
  x <- localSchema g l (_pParam p)
  pure $! p {_pParam = x}

resource ::
  HashMap Local (Param Global) ->
  Suffix ->
  Global ->
  Resource (Fix Schema) ->
  AST (Resource Global)
resource qs suf g r@Resource {..} = do
  rs <- HashMap.traverseWithKey (resource qs suf . reference g) _rResources
  ms <- traverse (method qs suf) _rMethods
  pure
    $! r
      { _rResources = rs,
        _rMethods = ms
      }

method ::
  HashMap Local (Param Global) ->
  Suffix ->
  Method (Fix Schema) ->
  AST (Method Global)
method qs suf m@Method {..} = do
  ps <- HashMap.traverseWithKey (localParam (abbreviate _mId)) _mParameters
  cn <- Lens.use sCanonicalName

  let (_, typ', _) = mname cn suf _mId

  typ <- reserveType typ'
  b <- body typ

  let params = ps <> qs
      fields' = HashMap.delete "alt" $ b (HashMap.map _pParam params)

  void $ insert typ (SObj schemaInfo (Obj Nothing fields'))
  pure $! m {_mParameters = params}
  where
    schemaInfo = emptyInfo {_iDescription = _mDescription}
    bodyInfo = requiredInfo {_iDescription = Just "Multipart request metadata."}

    body p = case _mRequest of
      Nothing -> pure id
      Just x -> do
        let f = "payload" -- localise (ref x)
        g <- localSchema p f (Fix (SRef bodyInfo x))
        pure (HashMap.insert f g)

insert :: Global -> Schema Global -> AST Global
insert g s = do
  ms <- Lens.uses schemas (HashMap.lookup g)
  n <- Lens.use sCanonicalName

  case ms of
    Just s' | s /= s' -> Except.throwError (exists n s')
    _ -> pure ()

  schemas %= HashMap.insert g s

  pure g
  where
    exists n s' =
      "Schema exists: "
        ++ show n
        ++ " - "
        ++ show n
        ++ "\n\n[Current]\n"
        ++ show s'
        ++ "\n\n[Tried]\n"
        ++ show s
        ++ "\n\n"
