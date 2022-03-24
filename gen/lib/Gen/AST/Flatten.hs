module Gen.AST.Flatten
  ( flatten,
  )
where

import Control.Lens (use, uses)
import qualified Control.Monad.Except as Except
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import Gen.Formatting
import Gen.Prelude
import Gen.Types

flatten :: Service (Fix Schema) -> AST (Service Global)
flatten s = do
  let canonical = _sCanonicalName s

  ps <- kvTraverseMaybe globalParam (s ^. dParameters)
  rs <- Map.traverseWithKey (resource canonical ps "Resource") (s ^. dResources)
  ms <- traverse (method canonical ps "Method") (s ^. dMethods)
  _ <- Map.traverseWithKey globalSchema (s ^. dSchemas)
  ss <- use schemas

  reserveBranches
  reserveFields

  let d =
        (s ^. sDescription)
          { _dSchemas = Map.fromList $ map (join (,)) (Map.keys ss),
            _dParameters = ps,
            _dResources = rs,
            _dMethods = ms
          }

  pure $! s {_sDescription = d}

globalSchema :: Global -> Fix Schema -> AST Global
globalSchema g = schema g Nothing

localSchema :: Global -> Local -> Fix Schema -> AST Global
localSchema g l = schema g (Just l)

schema :: HasCallStack => Global -> Maybe Local -> Fix Schema -> AST Global
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
        <*> Map.traverseWithKey (\k v -> localSchema (p <> "'") k v) ps

    name i p xs
      | Just x <- i ^. iId = pure x
      | otherwise = do
        r <- uses reserve (Set.member p)
        e <- uses schemas (Map.lookup p)
        case (r, e, xs) of
          (False, Nothing, _) -> pure p
          (_, _, z : zs) -> name i (reference g z) zs
          (_, Just x, []) ->
            Except.throwError $
              sformat
                ("Unable to generate name for: " % gid % ", " % shown % ", " % gid % "\n" % shown)
                g
                ml
                p
                x
          (True, _, []) ->
            Except.throwError $
              sformat
                ("Unable to generate name for reserved schema: " % gid % ", " % shown % ", " % gid)
                g
                ml
                p

globalParam :: Local -> Param (Fix Schema) -> AST (Maybe (Param Global))
globalParam l p =
  case l of
    -- Deprecated in favor of quotaUser
    "userIp" ->
      pure Nothing
    -- Default prettyPrint to False, since it's usually True.
    "prettyPrint" ->
      Just <$> localParam "" l (p & iDefault .~ Just "False")
    -- Convert alt to a Haskell value.
    "alt" ->
      Just <$> overrideParam l (Alt alt) p
    _other ->
      Just <$> localParam "" l p
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
  HasCallStack =>
  Text ->
  Map Local (Param Global) ->
  Suffix ->
  Global ->
  Resource (Fix Schema) ->
  AST (Resource Global)
resource canonical globalParams suf g r@Resource {..} = do
  rs <- Map.traverseWithKey (resource canonical globalParams suf . reference g) _rResources
  ms <- traverse (method canonical globalParams suf) _rMethods
  pure
    $! r
      { _rResources = rs,
        _rMethods = ms
      }

method ::
  HasCallStack =>
  Text ->
  Map Local (Param Global) ->
  Suffix ->
  Method (Fix Schema) ->
  AST (Method Global)
method canonical globalParams suf m@Method {..} = do
  params <- Map.traverseWithKey (localParam (abbreviate _mId)) _mParameters

  let (typ', _) = mname canonical _mId

  typ <- reserveType typ'
  b <- body typ

  let fields' = b (Map.map _pParam params)

  void $ insert typ (SObj schemaInfo (Obj Nothing fields'))

  pure $! m {_mParameters = params}
  where
    schemaInfo = emptyInfo {_iDescription = _mDescription}
    bodyInfo = requiredInfo {_iDescription = Just "Multipart request metadata."}

    body p = case _mRequest of
      Nothing -> pure id
      Just x -> do
        -- Multipart request metadata.
        let f = "meta"

        g <- localSchema p f (Fix (SRef bodyInfo x))

        pure (Map.insert f g)

insert :: Global -> Schema Global -> AST Global
insert g s = do
  -- FIXME: With the changes to auto-case-insensitive global names which were
  -- actually generating invalid type references, this will no longer detect
  -- generated property names (lowercase) would clash with top-level types.
  ms <- uses schemas (Map.lookup g)
  n <- use sCanonicalName

  case ms of
    Just s' | s /= s' -> Except.throwError (exists n s')
    _ -> pure ()

  schemas %= Map.insert g s

  pure g
  where
    exists n s' =
      sformat
        ( "Schema exists: " % stext % " - " % gid
            % "\n\n[Current]\n"
            % shown
            % "\n\n[Tried]\n"
            % shown
            % "\n\n"
        )
        n
        g
        s'
        s
