{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}

-- Module      : Gen.Syntax
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Syntax where

import Control.Lens hiding (iso, mapping, op, pre, strict)
import Data.Either
import Data.Foldable (foldl', foldr')
import qualified Data.HashMap.Strict as Map
import Data.List (delete, nub)
import Data.Maybe
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Text.Manipulate
import Gen.Text
import Gen.Types
import Language.Haskell.Exts.Build
  ( app,
    appFun,
    infixApp,
    lamE,
    listE,
    name,
    noBinds,
    paren,
    patBind,
    pvar,
    sfun,
    strE,
    sym,
    var,
  )
import Language.Haskell.Exts.Syntax hiding (Alt, Int, Lit)

serviceSig :: Name () -> Decl ()
serviceSig n = TypeSig () [n] (TyCon () "ServiceConfig")

serviceDecl :: Service a -> Name () -> Decl ()
serviceDecl s n = sfun n [] (UnGuardedRhs () rhs) noBinds
  where
    rhs =
      appFun
        (var "defaultService")
        [ app (var "ServiceId") (str (s ^. dId)),
          str . stripSuffix "/" $ stripPrefix "https://" (s ^. dRootUrl)
        ]

scopeSig :: Name () -> Text -> Decl ()
scopeSig n v =
  TypeSig () [n] $
    TyApp () (TyCon () "Proxy") $
      TyPromoted () $
        PromotedList
          ()
          True
          [ TyPromoted () $ PromotedString () (Text.unpack v) (Text.unpack v)
          ]

scopeDecl :: Name () -> Decl ()
scopeDecl n = sfun n [] (UnGuardedRhs () (var "Proxy")) noBinds

apiAlias :: Name () -> [Name ()] -> Decl ()
apiAlias n ls = TypeDecl () (DHead () n) alias
  where
    alias = case map (TyCon () . UnQual ()) ls of
      [] -> unit_tycon ()
      x : xs -> foldl' (\l r -> TyInfix () l ((UnpromotedName () . UnQual ()) (sym ":<|>")) r) x xs

verbAlias :: HasDescription a s => a -> Name () -> Method Solved -> Decl ()
verbAlias d n m = TypeDecl () (DHead () n) $ servantOr meta (catMaybes [down, up])
  where
    meta = path $ metadataAlias m
    down = path <$> downloadAlias m
    up = uploadAlias root m

    path = flip servantSub root

    root = subPaths (d ^. dServicePath) ++ requestPath m (_mPath m)

metadataAlias :: Method Solved -> Type ()
metadataAlias m = servantSub (jsonVerb m) (params ++ media)
  where
    params = requestQuery m (requestQueryParams m)
    media = case _mRequest m of
      Nothing -> []
      Just b ->
        [ TyApp
            ()
            (TyApp () (TyCon () "ReqBody") jsonMedia)
            (tycon (ref b))
        ]

downloadAlias :: Method Solved -> Maybe (Type ())
downloadAlias m
  | _mSupportsMediaDownload m = Just download
  | otherwise = Nothing
  where
    download = servantSub (downloadVerb m) (params ++ [downloadParam])

    params = requestQuery m . Map.delete "alt" $ requestQueryParams m

uploadAlias :: [Type ()] -> Method Solved -> Maybe (Type ())
uploadAlias sub m
  | _mSupportsMediaUpload m = Just upload
  | otherwise = Nothing
  where
    upload = servantSub (jsonVerb m) (path ++ params ++ media)

    params = requestQuery m (requestQueryParams m)

    path = case _mMediaUpload m of
      Nothing -> sub
      Just u -> requestPath m (_muSimplePath u)

    media = case _mRequest m of
      Just b ->
        [ multipartParam,
          TyApp
            ()
            (TyApp () (TyCon () "MultipartRelated") jsonMedia)
            (tycon (ref b))
        ]
      Nothing ->
        [ mediaParam,
          TyCon () "AltMedia"
        ]

requestPath :: Method Solved -> Text -> [Type ()]
requestPath m = map go . extractPath
  where
    go (Left t) = sing t
    go (Right (l, c)) = case Map.lookup l (_mParameters m) of
      Nothing -> error $ "Unable to find path parameter " ++ show l
      Just x -> case c of
        Nothing
          | x ^. iRepeated ->
            TyApp
              ()
              ( TyApp
                  ()
                  (TyCon () "Captures")
                  (sing (local l))
              )
              (terminalType (_type (_pParam x)))
        Nothing ->
          TyApp
            ()
            ( TyApp
                ()
                (TyCon () "Capture")
                (sing (local l))
            )
            (terminalType (_type (_pParam x)))
        Just y ->
          TyApp
            ()
            ( TyApp
                ()
                ( TyApp
                    ()
                    (TyCon () "CaptureMode")
                    (sing (local l))
                )
                (sing y)
            )
            (terminalType (_type (_pParam x)))

requestQuery :: Method Solved -> Map Local (Param Solved) -> [Type ()]
requestQuery m xs =
  mapMaybe go $
    orderParams fst (Map.toList xs) (_mParameterOrder m)
  where
    go (k, x) = case _pLocation x of
      Query
        | x ^. iRepeated ->
          Just $ TyApp () (TyApp () (TyCon () "QueryParams") n) t
      Query -> Just $ TyApp () (TyApp () (TyCon () "QueryParam") n) t
      Path -> Nothing
      where
        t = terminalType (_type (_pParam x))
        n = sing (local k)

requestQueryParams :: Method a -> Map Local (Param a)
requestQueryParams = Map.filter ((/= Path) . _pLocation) . _mParameters

servantOr, servantSub :: Type () -> [Type ()] -> Type ()
servantOr = foldl' (\l r -> TyInfix () l ((UnpromotedName () . UnQual ()) (sym ":<|>")) r)
servantSub = foldr' (\l r -> TyInfix () l ((UnpromotedName () . UnQual ()) (sym ":>")) r)

jsonVerb :: Method a -> Type ()
jsonVerb m =
  TyApp () (TyApp () (httpMethod m) jsonMedia) $
    maybe (TyCon () "()") (tycon . ref) (_mResponse m)

downloadVerb :: Method a -> Type ()
downloadVerb m =
  TyApp
    ()
    (TyApp () (httpMethod m) streamMedia)
    (TyCon () "Stream")

httpMethod :: Method a -> Type ()
httpMethod = TyCon () . unqual . Text.unpack . Text.toTitle . _mHttpMethod

subPaths :: Text -> [Type ()]
subPaths = map sing . filter (not . Text.null) . Text.split (== '/')

jsonMedia, streamMedia :: Type ()
jsonMedia = tylist ["JSON"]
streamMedia = tylist ["OctetStream"]

downloadParam :: Type ()
downloadParam =
  TyApp
    ()
    (TyApp () (TyCon () "QueryParam") (sing "alt"))
    (TyCon () "AltMedia")

mediaParam :: Type ()
mediaParam =
  TyApp
    ()
    (TyApp () (TyCon () "QueryParam") (sing "uploadType"))
    (TyCon () "AltMedia")

multipartParam :: Type ()
multipartParam =
  TyApp
    ()
    (TyApp () (TyCon () "QueryParam") (sing "uploadType"))
    (TyCon () "Multipart")

pattern' :: Integer -> Method a -> Pat ()
pattern' n m = case (n, down, up) of
  (1, True, True) -> infixOr go (infixOr wild wild)
  (2, True, True) -> infixOr wild (infixOr go wild)
  (_, True, True) -> infixOr wild (infixOr wild go)
  (1, True, _) -> infixOr go wild
  (_, True, _) -> infixOr wild go
  (1, _, True) -> infixOr go wild
  (_, _, True) -> infixOr wild go
  (_, _, _) -> go
  where
    down = _mSupportsMediaDownload m
    up = _mSupportsMediaUpload m

    go = pvar "go"
    wild = PWildCard ()

    infixOr l = PInfixApp () l (UnQual () (sym ":<|>"))

metadataPat, downloadPat, uploadPat :: Method a -> Pat ()
metadataPat = pattern' 1
downloadPat = pattern' 2
uploadPat = pattern' 3

downloadDecl ::
  Global ->
  Prefix ->
  Name () ->
  Name () ->
  [Local] ->
  Method Solved ->
  Decl ()
downloadDecl n pre api url fs m =
  googleRequestDecl (TyParen () ty) [rs, ss] [alt] pre api url m pat prec
  where
    ty = TyApp () (TyCon () "MediaDownload") (tycon n)

    rs = InsType () (TyApp () (TyCon () "Rs") ty) (TyCon () "Stream")

    ss =
      InsType () (TyApp () (TyCon () "Scopes") ty) $
        TyApp () (TyCon () "Scopes") (tycon n)

    alt = app (var "Just") (var "AltMedia")
    pat = downloadPat m

    prec =
      PApp
        ()
        (UnQual () "MediaDownload")
        [ PRec () (UnQual () (dname' n)) [PFieldWildcard () | not (null fs)]
        ]

uploadDecl ::
  Global ->
  Prefix ->
  Name () ->
  Name () ->
  [Local] ->
  Method Solved ->
  Decl ()
uploadDecl n pre api url fs m =
  googleRequestDecl (TyParen () ty) [rs, ss] extras pre api url m pat prec
  where
    ty = TyApp () (TyCon () "MediaUpload") (tycon n)

    rs =
      InsType () (TyApp () (TyCon () "Rs") ty) $
        maybe (unit_tycon ()) (tycon . ref) (_mResponse m)

    ss =
      InsType () (TyApp () (TyCon () "Scopes") ty) $
        TyApp () (TyCon () "Scopes") (tycon n)

    extras = maybeToList alt ++ [upl] ++ payload ++ [var media]
      where
        upl =
          app (var "Just") $
            if isJust (_mRequest m)
              then var "Multipart"
              else var "AltMedia"

        alt =
          app (var "Just") . var . name . Text.unpack . alternate
            <$> (Map.lookup "alt" (_mParameters m) >>= view iDefault)

        payload
          | isJust (_mRequest m) = [var (fname pre "payload")]
          | otherwise = []

    pat = uploadPat m

    prec =
      PApp
        ()
        (UnQual () "MediaUpload")
        [ PRec () (UnQual () (dname' n)) [PFieldWildcard () | not (null fs)],
          PVar () media
        ]

    media = name "body"

requestDecl ::
  Global ->
  Prefix ->
  Name () ->
  Name () ->
  [Local] ->
  Method Solved ->
  Decl ()
requestDecl n pre api url fs m =
  googleRequestDecl (tycon n) [rs, ss] extras pre api url m pat prec
  where
    rs :: InstDecl ()
    rs =
      InsType () (TyApp () (TyCon () "Rs") (tycon n)) $
        maybe (unit_tycon ()) (tycon . ref) (_mResponse m)

    ss :: InstDecl ()
    ss =
      InsType () (TyApp () (TyCon () "Scopes") (tycon n)) $
        TyPromoted () $
          PromotedList () True $
            map (\m' -> TyPromoted () (PromotedString () (Text.unpack m') "Scopes")) (_mScopes m)

    extras = catMaybes [alt, payload]
      where
        alt =
          app (var "Just") . var . name . Text.unpack . alternate
            <$> (Map.lookup "alt" (_mParameters m) >>= view iDefault)

        payload
          | isJust (_mRequest m) = Just $ var (fname pre "payload")
          | otherwise = Nothing

    pat = metadataPat m

    prec = PRec () (UnQual () (dname' n)) [PFieldWildcard () | not (null fs)]

googleRequestDecl ::
  Type () ->
  [InstDecl ()] ->
  [Exp ()] ->
  Prefix ->
  Name () ->
  Name () ->
  Method Solved ->
  Pat () ->
  Pat () ->
  Decl ()
googleRequestDecl n assoc extras pre api url m pat prec =
  InstDecl () Nothing (instrule "GoogleRequest" n) (Just (assoc ++ [request]))
  where
    request = InsDecl () (FunBind () [match])

    match = Match () (name "requestClient") [prec] rhs (Just decls)

    decls =
      BDecls
        ()
        [ patBind pat $
            appFun
              (var "buildClient")
              [ ExpTypeSig () (var "Proxy") $
                  TyApp () (TyCon () "Proxy") (TyCon () (UnQual () api)),
                var "mempty"
              ]
        ]

    rhs = UnGuardedRhs () . appFun (var "go") $ map go fs ++ extras ++ [var url]
      where
        go l = case Map.lookup l ps of
          Just p
            | _pLocation p == Query,
              defaulted p,
              p ^. iRepeated ->
              v l
          Just p
            | _pLocation p == Query,
              not (required p),
              p ^. iRepeated ->
              infixApp (v l) "^." (var "_Default")
          Just p
            | _pLocation p == Query,
              not (p ^. iRepeated),
              parameter p || defaulted p ->
              app (var "Just") (v l)
          _ -> v l

        ps = _mParameters m
        v = var . fname pre

    fs =
      delete "alt"
        . orderParams id (Map.keys (_mParameters m))
        . nub
        $ map fst (rights (extractPath (_mPath m))) ++ _mParameterOrder m

jsonDecls :: Global -> Prefix -> Map Local Solved -> [Decl ()]
jsonDecls g p (Map.toList -> rs) = [from', to']
  where
    from' =
      InstDecl
        ()
        Nothing
        (instrule "FromJSON" (tycon g))
        ( Just
            [ funD "parseJSON" $
                app (app (var "withObject") (dstr g)) $
                  lamE [pvar "o"] $
                    ctorE g (map decode rs)
            ]
        )

    decode (l, s)
      | _additional s = app (var "parseJSONObject") (var "o")
      | Just x <- def s = defJS l x
      | required s = reqJS l
      | monoid s = defJS l (var "mempty")
      | otherwise = optJS l

    to' = case rs of
      [(k, v)]
        | _additional v ->
          InstDecl
            ()
            Nothing
            (instrule "ToJSON" (tycon g))
            ( Just
                [ wildcardD "toJSON" g head emptyObj [app (var "toJSON") (var (fname p k))]
                ]
            )
      _ ->
        InstDecl
          ()
          Nothing
          (instrule "ToJSON" (tycon g))
          ( Just
              [ wildcardD "toJSON" g omit emptyObj (map encode rs)
              ]
          )

    omit =
      app (var "object")
        . app (var "catMaybes")
        . listE

    emptyObj = var "emptyObject"

    encode (l, s)
      | text && optional = infixApp (infixApp (paren (app n o)) "." (var "AsText")) "<$>" a
      | optional = infixApp (paren (app n o)) "<$>" a
      | text = var "Just" `app` infixApp n ".=" (var "AsText" `app` a)
      | otherwise = var "Just" `app` infixApp n ".=" a
      where
        n = fstr l
        o = var ".="
        a = var (fname p l)

        text = textual (_type s)

        optional =
           case _type s of
             TMaybe {} -> True
             _other  -> False

wildcardD ::
  String ->
  Global ->
  ([Exp ()] -> Exp ()) ->
  Exp () ->
  [Exp ()] ->
  InstDecl ()
wildcardD f n enc x = \case
  [] -> constD f x
  xs -> InsDecl () (FunBind () [match prec xs])
  where
    match p es =
      Match () (name f) [p] (UnGuardedRhs () (enc es)) noBinds

    prec = PRec () (UnQual () (dname' n)) [PFieldWildcard ()]

defJS :: Local -> Exp () -> Exp ()
defJS n = infixApp (infixApp (var "o") ".:?" (fstr n)) ".!="

reqJS :: Local -> Exp ()
reqJS = infixApp (var "o") ".:" . fstr

optJS :: Local -> Exp ()
optJS = infixApp (var "o") ".:?" . fstr

funD :: String -> Exp () -> InstDecl ()
funD f = InsDecl () . patBind (pvar (name f))

constD :: String -> Exp () -> InstDecl ()
constD f x =
  InsDecl () $
    sfun (name f) [] (UnGuardedRhs () (app (var "const") x)) noBinds

ctorE :: Global -> [Exp ()] -> Exp ()
ctorE n = seqE (var (dname' n)) . map paren

seqE :: Exp () -> [Exp ()] -> Exp ()
seqE l [] = app (var "pure") l
seqE l (r : rs) = infixApp l "<$>" (infixE r "<*>" rs)

objDecl :: Global -> Map Local Solved -> Decl ()
objDecl n rs =
  DataDecl () arity Nothing (DHead () (dname n)) [con] []
  where
    arity
      | Map.size rs == 1 = NewType ()
      | otherwise = DataType ()

    con = QualConDecl () Nothing Nothing (ConDecl () (dname' n) [])

objDerive :: [Derive] -> Deriving ()
objDerive = Deriving () Nothing . map (unqualrule . drop 1 . show)

objFields :: Prefix -> Map Local Solved -> [Field]
objFields p = map (uncurry field) . Map.toList
  where
    field l v =
      Field
        (fname p l)
        (strict (internalType (_type v)))
        (fromMaybe mempty (v ^. iDescription))

ctorSig :: Global -> Map Local Solved -> Decl ()
ctorSig n rs = TypeSig () [cname n] ts
  where
    ts = foldr' (TyFun ()) (TyCon () (UnQual () (dname n))) ps
    ps = parameters (Map.elems rs)

ctorDecl :: Global -> Prefix -> Map Local Solved -> Decl ()
ctorDecl n p rs = sfun c ps (UnGuardedRhs () rhs) noBinds
  where
    c = cname n
    d = dname' n

    rhs
      | Map.null rs = var d
      | otherwise =
        RecConstr () (UnQual () d) $
          map (uncurry (fieldUpdate p)) (Map.toList rs)

    ps = map (pname p) . Map.keys $ Map.filter parameter rs

fieldUpdate :: Prefix -> Local -> Solved -> FieldUpdate ()
fieldUpdate p l s = FieldUpdate () (UnQual () (fname p l)) rhs
  where
    rhs
      | Just x <- def s, s ^. iRepeated = listE [x]
      | Just x <- def s = x
      | parameter s = v
      | otherwise = var (name "Nothing")

    v = var (pname p l)

parameters :: [Solved] -> [Type ()]
parameters = map (externalType . _type) . filter parameter

def :: Solved -> Maybe (Exp ())
def s
  | Just x <- s ^. iDefault = Just (go x (_prefix s) (_schema s))
  | otherwise = Nothing
  where
    go x p = \case
      SEnm {} -> var (bname p x)
      SLit _ Bool -> lit (upperHead x)
      SLit _ Text -> str x
      SLit {} -> lit x
      e -> error $ "Unsupported default value: " ++ show e

    lit = var . name . Text.unpack

terminalType :: TType -> Type ()
terminalType = internalType . go
  where
    go (TMaybe x) = go x
    go (TList x) = go x
    go x = x

externalType :: TType -> Type ()
externalType = \case
  TType r -> tycon r
  TMaybe t@TList {} -> externalType t
  TMaybe t -> TyApp () (TyCon () "Maybe") (externalType t)
  TList t -> TyList () (externalType t)
  TLit l -> externalLit l
  TMap k v ->
    TyApp () (TyApp () (TyCon () "HashMap") (externalType k)) (externalType (require v))

internalType :: TType -> Type ()
internalType = \case
  TType r -> tycon r
  TMaybe t -> TyApp () (TyCon () "Maybe") (internalType t)
  TList t -> TyList () (internalType t)
  TLit l -> internalLit l
  TMap k v ->
    TyApp () (TyApp () (TyCon () "HashMap") (internalType k)) (internalType (require v))

externalLit :: Lit -> Type ()
externalLit = \case
  Text -> TyCon () "Text"
  Bool -> TyCon () "Bool"
  Time -> TyCon () "TimeOfDay"
  Date -> TyCon () "Day"
  DateTime -> TyCon () "UTCTime"
  Byte -> TyCon () "ByteString"
  Natural {} -> TyCon () "Natural"
  Float {} -> TyCon () "Double"
  Double {} -> TyCon () "Double"
  UInt32 {} -> TyCon () "Word32"
  UInt64 {} -> TyCon () "Word64"
  Int32 {} -> TyCon () "Int32"
  Int64 {} -> TyCon () "Int64"
  Alt t -> TyCon () (unqual (Text.unpack t))
  RqBody -> TyCon () "RequestBody"
  RsBody -> TyCon () "Stream"
  JSONValue -> TyCon () "JSONValue"
  GFieldMask -> TyCon () "GFieldMask"
  GDuration -> TyCon () "Scientific"

internalLit :: Lit -> Type ()
internalLit = \case
  Text -> TyCon () "Text"
  Bool -> TyCon () "Bool"
  Time -> TyCon () "Time'"
  Date -> TyCon () "Date'"
  DateTime -> TyCon () "DateTime'"
  Byte -> TyCon () "Bytes"
  Natural {} -> TyCon () "Natural"
  Float {} -> TyCon () "Double"
  Double {} -> TyCon () "Double"
  UInt32 {} -> TyCon () "Word32"
  UInt64 {} -> TyCon () "Word64"
  Int32 {} -> TyCon () "Int32"
  Int64 {} -> TyCon () "Int64"
  Alt t -> TyCon () (unqual (Text.unpack t))
  RqBody -> TyCon () "RequestBody"
  RsBody -> TyCon () "Stream"
  JSONValue -> TyCon () "JSONValue"
  GFieldMask -> TyCon () "GFieldMask"
  GDuration -> TyCon () "GDuration"

textual :: TType -> Bool
textual = \case
  TType {} -> False
  TList {} -> False
  TMap {} -> False
  TMaybe x -> textual x
  TLit (Natural p) -> p
  TLit (Float p) -> p
  TLit (Double p) -> p
  TLit (UInt32 p) -> p
  TLit (UInt64 p) -> p
  TLit (Int32 p) -> p
  TLit (Int64 p) -> p
  TLit (Int32 p) -> p
  TLit _other -> False

require :: TType -> TType
require (TMaybe t) = t
require t = t

strict :: Type () -> Type ()
strict = \case
  t@TyApp {} -> TyParen () t
  t -> t

sing :: Text -> Type ()
sing = TyCon () . unqual . Text.unpack . flip mappend "\"" . mappend "\""

tylist :: [Text] -> Type ()
tylist xs =
  TyCon () . UnQual () . name . Text.unpack $
    "'[" <> Text.intercalate ", " xs <> "]"

tycon :: Global -> Type ()
tycon = TyCon () . UnQual () . dname

unqual :: String -> QName ()
unqual = UnQual () . name

unqualrule :: String -> InstRule ()
unqualrule = IRule () Nothing Nothing . IHCon () . unqual

instrule :: String -> Type () -> InstRule ()
instrule n t = IRule () Nothing Nothing (IHApp () (IHCon () (unqual n)) t)

infixE :: Exp () -> QOp () -> [Exp ()] -> Exp ()
infixE l _ [] = l
infixE l o (r : rs) = infixE (infixApp l o r) o rs

str :: Text -> Exp ()
str = strE . Text.unpack
