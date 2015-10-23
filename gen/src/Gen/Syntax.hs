{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections     #-}
{-# LANGUAGE ViewPatterns      #-}

-- Module      : Gen.Syntax
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Syntax where

import           Control.Lens                 hiding (iso, mapping, op, pre,
                                               strict)
import           Data.Either
import           Data.Foldable                (find, foldl', foldr')
import           Data.Hashable
import qualified Data.HashMap.Strict          as Map
import           Data.List                    (delete, nub)
import           Data.Maybe
import           Data.Semigroup               ((<>))
import           Data.String
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import           Data.Text.Manipulate
import           Debug.Trace
import           Gen.Orphans
import           Gen.Text
import           Gen.Types
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.SrcLoc
import           Language.Haskell.Exts.Syntax hiding (Alt, Int, Lit)

urlSig :: Name -> Decl
urlSig n = TypeSig noLoc [n] (TyCon "Service")

urlDecl :: Service a -> Name -> Decl
urlDecl s n = sfun noLoc n [] (UnGuardedRhs rhs) noBinds
  where
    rhs = appFun (var "defaultService")
        [ app (var "ServiceId") (str (s ^. dId))
        , str . stripSuffix "/" $ stripPrefix "https://" (s ^. dRootUrl)
        ]

scopeSig :: Name -> Decl
scopeSig n = TypeSig noLoc [n] (TyCon "OAuthScope")

scopeDecl :: Name -> Text -> Decl
scopeDecl n s = sfun noLoc n [] (UnGuardedRhs (str s)) noBinds

 -- type API = :<|> ...
apiAlias :: Name -> [Name] -> Decl
apiAlias n ls = TypeDecl noLoc n [] alias
  where
    alias = case map (TyCon . UnQual) ls of
        []   -> unit_tycon
        x:xs -> foldl' (\l r -> TyInfix l (UnQual (sym ":<|>")) r) x xs

verbAlias :: HasDescription a s => a -> Name -> Method Solved -> Decl
verbAlias d n m = TypeDecl noLoc n [] $ servantOr meta (catMaybes [down, up])
  where
    meta = path  $  metadataAlias m
    down = path <$> downloadAlias m
    up   = uploadAlias root m

    path = flip servantSub root

    root = subPaths (d ^. dServicePath) ++ requestPath m (_mPath m)

metadataAlias :: Method Solved -> Type
metadataAlias m = servantSub (jsonVerb m) (params ++ media)
  where
    params = requestQuery m (requestQueryParams m)
    media  = case _mRequest m of
        Nothing -> []
        Just b  ->
            [ TyApp (TyApp (TyCon "ReqBody") jsonMedia)
                    (tycon (ref b))
            ]

downloadAlias :: Method Solved -> Maybe Type
downloadAlias m
    | _mSupportsMediaDownload m = Just download
    | otherwise                 = Nothing
  where
    download = servantSub downloadVerb (params ++ [altParam])

    params = requestQuery m . Map.delete "alt" $ requestQueryParams m

uploadAlias :: [Type] -> Method Solved -> Maybe Type
uploadAlias sub m
    | _mSupportsMediaUpload m = Just upload
    | otherwise               = Nothing
  where
    upload = servantSub (jsonVerb m) (path ++ params ++ [uploadParam, media])

    params = requestQuery m (requestQueryParams m)

    path = case _mMediaUpload m of
        Nothing -> sub
        Just u  -> requestPath m (_muSimplePath u)

    media = case _mRequest m of
        Just b ->
            TyApp (TyApp (TyApp (TyCon "MultipartRelated") jsonMedia)
                         (tycon (ref b)))
                  (TyCon "RequestBody")

        Nothing ->
            TyApp (TyApp (TyCon "ReqBody") streamMedia)
                  (TyCon "RequestBody")

requestPath :: Method Solved -> Text -> [Type]
requestPath m = map go . extractPath
  where
    go (Left  t)      = sing t
    go (Right (l, c)) = case Map.lookup l (_mParameters m) of
        Nothing -> error $ "Unable to find path parameter " ++ show l
        Just x  -> case c of
            Nothing | x ^. iRepeated ->
                TyApp (TyApp (TyCon "Captures")
                             (sing (local l)))
                      (terminalType (_type (_pParam x)))

            Nothing ->
                TyApp (TyApp (TyCon "Capture")
                             (sing (local l)))
                      (terminalType (_type (_pParam x)))

            Just y  ->
                TyApp (TyApp (TyApp (TyCon "CaptureMode")
                                    (sing (local l)))
                             (sing y))
                      (terminalType (_type (_pParam x)))

requestQuery :: Method Solved -> Map Local (Param Solved) -> [Type]
requestQuery m xs = mapMaybe go $
    orderParams fst (Map.toList xs) (_mParameterOrder m)
  where
    go (k, x) = case _pLocation x of
        Query | x ^. iRepeated
               -> Just $ TyApp (TyApp (TyCon "QueryParams") n) t
        Query  -> Just $ TyApp (TyApp (TyCon "QueryParam")  n) t
        Path   -> Nothing
      where
        t = terminalType (_type (_pParam x))
        n = sing (local k)

requestQueryParams :: Method a -> Map Local (Param a)
requestQueryParams = Map.filter ((/= Path) . _pLocation) . _mParameters

servantOr, servantSub :: Type -> [Type] -> Type
servantOr  = foldl' (\l r -> TyInfix l (UnQual (sym ":<|>")) r)
servantSub = foldr' (\l r -> TyInfix l (UnQual (sym ":>")) r)

jsonVerb :: Method a -> Type
jsonVerb m =
    TyApp (TyApp (httpMethod m) jsonMedia)
        $ maybe (TyCon "()") (tycon . ref) (_mResponse m)

downloadVerb :: Type
downloadVerb = TyApp (TyApp (TyCon "Get") streamMedia) (TyCon "Stream")

httpMethod :: Method a -> Type
httpMethod = TyCon . unqual . Text.unpack . Text.toTitle . _mHttpMethod

subPaths :: Text -> [Type]
subPaths = map sing . filter (not . Text.null) . Text.split (== '/')

jsonMedia   = tylist ["JSON"]
streamMedia = tylist ["OctetStream"]

altParam :: Type
altParam =
    TyApp (TyApp (TyCon "QueryParam") (sing "alt"))
          (TyCon "AltMedia")

uploadParam :: Type
uploadParam =
    TyApp (TyApp (TyCon "QueryParam") (sing "uploadType"))
          (TyCon "AltMedia")

metadataPat = pattern 1
downloadPat = pattern 2
uploadPat   = pattern 3

pattern n m = case (n, down, up) of
    (1, True, True) -> infixOr go   (infixOr wild wild)
    (2, True, True) -> infixOr wild (infixOr go   wild)
    (_, True, True) -> infixOr wild (infixOr wild go)

    (1, True, _)    -> infixOr go   wild
    (_, True, _)    -> infixOr wild go

    (1, _,    True) -> infixOr go   wild
    (_, _,    True) -> infixOr wild go

    (_, _,    _)    -> go
  where
    down = _mSupportsMediaDownload m
    up   = _mSupportsMediaUpload   m

    go   = pvar "go"
    wild = PWildCard

    infixOr l r = PInfixApp l (UnQual (sym ":<|>")) r

downloadDecl :: Global
             -> Prefix
             -> Name
             -> Name
             -> [Local]
             -> Method Solved
             -> Decl
downloadDecl n p api url fs m =
    googleRequestDecl n ty rs [alt] p api url fs m pat prec
  where
    ty = TyApp (TyCon "MediaDownload") (tycon n)
    rs = InsType noLoc (TyApp (TyCon "Rs") ty) (TyCon "Stream")

    alt = app (var "Just") (var "AltMedia")
    pat = downloadPat m

    prec = PApp (UnQual "MediaDownload")
        [ PRec (UnQual (dname n)) [PFieldWildcard | not (null fs)]
        ]

uploadDecl :: Global
             -> Prefix
             -> Name
             -> Name
             -> [Local]
             -> Method Solved
             -> Decl
uploadDecl n p api url fs m =
    googleRequestDecl n ty rs extras p api url fs m pat prec
  where
    ty = TyApp (TyCon "MediaUpload") (tycon n)
    rs = InsType noLoc (TyApp (TyCon "Rs") ty) $
        maybe unit_tycon (tycon . ref) (_mResponse m)

    extras = maybeToList alt ++ [upl, payload, var media]
      where
        upl = app (var "Just") (var "AltMedia")
        alt = app (var "Just") . var . name . Text.unpack . alternate <$>
             (Map.lookup "alt" (_mParameters m) >>= view iDefault)

        payload = var (fname p "payload")

    pat = uploadPat m

    prec = PApp (UnQual "MediaUpload")
        [ PRec (UnQual (dname n)) [PFieldWildcard | not (null fs)]
        , PVar media
        ]

    media = name "body"

requestDecl :: Global
            -> Prefix
            -> Name
            -> Name
            -> [Local]
            -> Method Solved
            -> Decl
requestDecl n p api url fs m =
    googleRequestDecl n (tycon n) rs extras p api url fs m pat prec
  where
    rs = InsType noLoc (TyApp (TyCon "Rs") (tycon n)) $
        maybe unit_tycon (tycon . ref) (_mResponse m)

    extras = catMaybes [alt, payload]
      where
        alt = app (var "Just") . var . name . Text.unpack . alternate <$>
             (Map.lookup "alt" (_mParameters m) >>= view iDefault)

        payload
            | isJust (_mRequest m) = Just $ var (fname p "payload")
            | otherwise            = Nothing

    pat = metadataPat m

    prec = PRec (UnQual (dname n)) [PFieldWildcard | not (null fs)]

googleRequestDecl :: Global
                  -> Type
                  -> InstDecl
                  -> [Exp]
                  -> Prefix
                  -> Name
                  -> Name
                  -> [Local]
                  -> Method Solved
                  -> Pat
                  -> Pat
                  -> Decl
googleRequestDecl g n assoc extras p api url fields m pat prec =
    InstDecl noLoc Nothing [] [] (unqual "GoogleRequest") [n]
        [ assoc
        , request
        ]
  where
    request = InsDecl (FunBind [match])
      where
        match = Match noLoc (name "requestClient") [prec] Nothing rhs decls

        decls = BDecls
            [ patBind noLoc pat $
                appFun (var "buildClient") $
                    [ ExpTypeSig noLoc (var "Proxy") $
                        TyApp (TyCon "Proxy") (TyCon (UnQual api))
                    , var "mempty"
                    ]
            ]

        rhs = UnGuardedRhs . appFun (var "go") $ map go fs ++ extras ++ [var url]
          where
            go l = case Map.lookup l ps of
                Just p | _pLocation p == Query
                       , defaulted p
                       , p ^. iRepeated -> v l

                Just p | _pLocation p == Query
                       , not (required p)
                       , p ^. iRepeated -> infixApp (v l) "^." (var "_Default")

                Just p | _pLocation p == Query
                       , not (p ^. iRepeated)
                       , parameter p || defaulted p -> app (var "Just") (v l)

                _       -> v l

            ps = _mParameters m
            v  = var . fname p

    fs = delete "alt"
       . orderParams id (Map.keys (_mParameters m))
       . nub
       $ map fst (rights (extractPath (_mPath m))) ++ _mParameterOrder m

jsonDecls :: Global -> Prefix -> Map Local Solved -> [Decl]
jsonDecls g p (Map.toList -> rs) = [from, to]
  where
    from = InstDecl noLoc Nothing [] [] (unqual "FromJSON") [tycon g]
        [ funD "parseJSON" $
            app (app (var "withObject") (dstr g)) $
                lamE noLoc [pvar "o"] $
                    ctorE g (map decode rs)
        ]

    decode (l, s)
        | _additional s   = app (var "parseJSONObject") (var "o")
        | Just x <- def s = defJS l x
        | required s      = reqJS l
        | monoid s        = defJS l (var "mempty")
        | otherwise       = optJS l

    to = case rs of
        [(k, v)] | _additional v ->
            InstDecl noLoc Nothing [] [] (unqual "ToJSON") [tycon g]
                [ funD "toJSON" $
                    infixApp (var "toJSON") "." (var (fname p k))
                ]

        _                   ->
            InstDecl noLoc Nothing [] [] (unqual "ToJSON") [tycon g]
                [ wildcardD "toJSON" g omit none (map encode rs)
                ]

    omit = app (var "object")
         . app (var "catMaybes")
         . listE

    none = var "emptyObject"

    encode (l, s)
        | TMaybe {} <- _type s = infixApp (paren (app n o)) "<$>" a
        | otherwise            = app (var "Just") (infixApp n ".=" a)
      where
        n = fstr l
        a = var (fname p l)
        o = var ".="

wildcardD :: String
          -> Global
          -> ([Exp] -> Exp)
          -> Exp
          -> [Exp]
          -> InstDecl
wildcardD f n enc x = \case
    [] -> constD f x
    xs -> InsDecl (FunBind [match prec xs])
  where
    match p es =
        Match noLoc (name f) [p] Nothing (UnGuardedRhs (enc es)) noBinds

    prec = PRec (UnQual (dname n)) [PFieldWildcard]

defJS :: Local -> Exp -> Exp
defJS n x = infixApp (infixApp (var "o") ".:?" (fstr n)) ".!=" x

reqJS :: Local -> Exp
reqJS = infixApp (var "o") ".:" . fstr

optJS :: Local -> Exp
optJS = infixApp (var "o") ".:?" . fstr

funD :: String -> Exp -> InstDecl
funD f = InsDecl . patBind noLoc (pvar (name f))

constD :: String -> Exp -> InstDecl
constD f x = InsDecl $
    sfun noLoc (name f) [] (UnGuardedRhs (app (var "const") x)) noBinds

ctorE :: Global -> [Exp] -> Exp
ctorE n = seqE (var (dname n)) . map paren

seqE :: Exp -> [Exp] -> Exp
seqE l []     = app (var "pure") l
seqE l (r:rs) = infixApp l "<$>" (infixE r "<*>" rs)

objDecl :: Global -> Prefix -> [Derive] -> Map Local Solved -> Decl
objDecl n p ds rs = DataDecl noLoc arity [] d [] [conDecl d p rs] (der ds)
  where
    d = dname n

    arity | Map.size rs == 1 = NewType
          | otherwise        = DataType

    der = map ((,[]) . unqual . drop 1 . show)

conDecl :: Name -> Prefix -> Map Local Solved -> QualConDecl
conDecl n p rs = QualConDecl noLoc [] [] body
  where
    body = case Map.toList rs of
        []  -> ConDecl n []
        [x] -> RecDecl n [field internalType x]
        xs  -> RecDecl n (map (field (strict . internalType)) xs)

    field f (l, v) = ([fname p l], f (_type v))

ctorSig :: Global -> Map Local Solved -> Decl
ctorSig n rs = TypeSig noLoc [cname n] ts
  where
    ts = foldr' TyFun (TyCon (UnQual (dname n))) ps
    ps = parameters (Map.elems rs)

ctorDecl :: Global -> Prefix -> Map Local Solved -> Decl
ctorDecl n p rs = sfun noLoc c ps (UnGuardedRhs rhs) noBinds
  where
    c = cname n
    d = dname n

    rhs | Map.null rs = var d
        | otherwise   = RecConstr (UnQual d) $
            map (uncurry (fieldUpdate p)) (Map.toList rs)

    ps = map (pname p) . Map.keys $ Map.filter required rs

fieldUpdate :: Prefix -> Local -> Solved -> FieldUpdate
fieldUpdate p l s = FieldUpdate (UnQual (fname p l)) rhs
  where
    rhs | required s                      = v
        | Just x <- def s, s ^. iRepeated = listE [x]
        | Just x <- def s                 = x
        | Just x <- iso (_type s)         = infixApp x "#" v
        | otherwise                       = var (name "Nothing")

    v = var (pname p l)

lensSig :: Global -> Prefix -> Local -> Solved -> Decl
lensSig n p l s = TypeSig noLoc [lname p l] $
    TyApp (TyApp (TyCon "Lens'") (tycon n))
          (externalType (_type s))

lensDecl :: Prefix -> Local -> Solved -> Decl
lensDecl p l s = sfun noLoc (lname p l) [] (UnGuardedRhs rhs) noBinds
  where
    f = fname p l
    t = _type s

    rhs = mapping t $
        app (app (var "lens") (var f))
            (paren (lamE noLoc [pvar "s", pvar "a"]
                   (RecUpdate (var "s") [FieldUpdate (UnQual f) (var "a")])))

parameters :: [Solved] -> [Type]
parameters = map (externalType . _type) . filter required

def :: Solved -> Maybe Exp
def s
    | Just x <- s ^. iDefault = Just (go x (_prefix s) (_schema s))
    | otherwise               = Nothing
  where
    go x p = \case
        SEnm {}     -> var (bname p x)
        SLit _ Bool -> lit (upperHead x)
        SLit _ Text -> str x
        SLit {}     -> lit x
        e           -> error $ "Unsupported default value: " ++ show e

    lit = var . name . Text.unpack

terminalType :: TType -> Type
terminalType = internalType . go
  where
    go (TMaybe x) = go x
    go (TList  x) = go x
    go x          = x

externalType :: TType -> Type
externalType = \case
    TType   r          -> tycon r
    TMaybe  t@TList {} -> externalType t
    TMaybe  t          -> TyApp (TyCon "Maybe") (externalType t)
    TList   t          -> TyList (externalType t)
    TLit    l          -> externalLit l
    TMap  k v          ->
        TyApp (TyApp (TyCon "HashMap") (externalType k)) (externalType (require v))

internalType :: TType -> Type
internalType = \case
    TType   r -> tycon r
    TMaybe  t -> TyApp (TyCon "Maybe") (internalType t)
    TList   t -> TyList (internalType t)
    TLit    l -> internalLit l
    TMap  k v ->
        TyApp (TyApp (TyCon "HashMap") (internalType k)) (internalType (require v))

externalLit :: Lit -> Type
externalLit = \case
    Text     -> TyCon "Text"
    Bool     -> TyCon "Bool"
    Time     -> TyCon "TimeOfDay"
    Date     -> TyCon "Day"
    DateTime -> TyCon "UTCTime"
    Nat      -> TyCon "Natural"
    Float    -> TyCon "Float"
    Double   -> TyCon "Double"
    Byte     -> TyCon "Word8"
    UInt32   -> TyCon "Word32"
    UInt64   -> TyCon "Word64"
    Int32    -> TyCon "Int32"
    Int64    -> TyCon "Int64"

    Alt t      -> TyCon (unqual (Text.unpack t))
    RqBody     -> TyCon "RequestBody"
    RsBody     -> TyCon "Stream"
    JSONValue  -> TyCon "JSONValue"

internalLit :: Lit -> Type
internalLit = \case
    Text     -> TyCon "Text"
    Bool     -> TyCon "Bool"
    Time     -> TyCon "Time'"
    Date     -> TyCon "Date'"
    DateTime -> TyCon "DateTime'"
    Nat      -> TyCon "Nat"
    Float    -> TyCon "Float"
    Double   -> TyCon "Double"
    Byte     -> TyCon "Word8"
    UInt32   -> TyCon "Word32"
    UInt64   -> TyCon "Word64"
    Int32    -> TyCon "Int32"
    Int64    -> TyCon "Int64"

    Alt t      -> TyCon (unqual (Text.unpack t))
    RqBody     -> TyCon "RequestBody"
    RsBody     -> TyCon "Stream"
    JSONValue  -> TyCon "JSONValue"

mapping :: TType -> Exp -> Exp
mapping t e = infixE e "." (go t)
  where
    go = \case
        TMaybe x@(TList {}) -> var "_Default" : go x
        TMaybe x            -> nest (go x)
        x                   -> maybeToList (iso x)

    nest []     = []
    nest (x:xs) = [app (var "mapping") (infixE x "." xs)]

iso :: TType -> Maybe Exp
iso = \case
    TList {}      -> Just (var "_Coerce")
    TLit Nat      -> Just (var "_Nat")
    TLit Time     -> Just (var "_Time")
    TLit Date     -> Just (var "_Date")
    TLit DateTime -> Just (var "_DateTime")
    _             -> Nothing

require :: TType -> TType
require (TMaybe t) = t
require t          = t

strict :: Type -> Type
strict = TyBang BangedTy . \case
    t@TyApp{} -> TyParen t
    t         -> t

sing :: Text -> Type
sing = TyCon . unqual . Text.unpack . flip mappend "\"" . mappend "\""

tylist :: [Text] -> Type
tylist xs = TyCon . UnQual . name . Text.unpack $
    "'[" <> Text.intercalate ", " xs <> "]"

tycon :: Global -> Type
tycon = TyCon . UnQual . dname

unqual :: String -> QName
unqual = UnQual . name

infixE :: Exp -> QOp -> [Exp] -> Exp
infixE l _ []     = l
infixE l o (r:rs) = infixE (infixApp l o r) o rs

str :: Text -> Exp
str = strE . Text.unpack
