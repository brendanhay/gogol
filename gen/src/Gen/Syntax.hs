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
urlSig n = TypeSig noLoc [n] (TyCon "BaseUrl")

urlDecl :: Name -> String -> Text -> Integer -> Decl
urlDecl n s u p = sfun noLoc n [] (UnGuardedRhs rhs) noBinds
  where
    rhs = appFun (var "BaseUrl") [var (name s), str u, intE p]

 -- type API = :<|> ...
apiAlias :: Name -> [Name] -> Decl
apiAlias n ls = TypeDecl noLoc n [] alias
  where
    alias = case map (TyCon . UnQual) ls of
        []   -> unit_tycon
        x:xs -> foldl' (\l r -> TyInfix l (UnQual (sym ":<|>")) r) x xs

-- type Method = :> ...
verbAlias :: Name -> Method Solved -> Decl
verbAlias n m
    | _mSupportsMediaDownload m = TypeDecl noLoc n [] download
    | otherwise                 = TypeDecl noLoc n [] rest
  where
    rest     = alias verb (path ++ qry params ++ media)
    download = TyInfix rest (UnQual (sym ":<|>")) $
        alias (TyApp (TyApp meth octet) (TyCon "Body"))
        (path ++ qry (Map.delete "alt" (_mParameters m)) ++ [alt] ++ media)

    alias = foldr' (\l r -> TyInfix l (UnQual (sym ":>")) r)

    path :: [Type]
    path = map match $ extractPath (_mPath m)
      where
        match (Left  t)      = sing t
        match (Right (l, c)) =
            case Map.lookup l (_mParameters m) of
                Nothing -> error $ "Unable to find path parameter " ++ show l
                Just x  ->
                    case c of
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


    qry xs = mapMaybe f $ orderParams fst (Map.toList xs) (_mParameterOrder m)
      where
        f (k, x) =
           let t = terminalType (_type (_pParam x))
               n = sing (local k)
            in case _pLocation x of
                Query | x ^. iRepeated
                      -> Just $ TyApp (TyApp (TyCon "QueryParams") n) t
                Query -> Just $ TyApp (TyApp (TyCon "QueryParam")  n) t
                Path  -> Nothing

    media :: [Type]
    media | Just b <- _mRequest m
          , _mSupportsMediaUpload m =
              [TyApp (TyApp (TyApp (TyCon "MultipartRelated") json)
                            (tycon (ref b)))
                     (TyCon "Body")]

          | Just b <- _mRequest m =
              [TyApp (TyApp (TyCon "ReqBody") json) (tycon (ref b))]

          | _mSupportsMediaUpload m =
              [TyApp (TyApp (TyCon "ReqBody") octet) (TyCon "Body")]

          | otherwise = []

    verb = TyApp (TyApp meth json) $
        maybe (TyCon "()") (tycon . ref) (_mResponse m)

    meth  = TyCon . unqual . Text.unpack $ Text.toTitle (_mHttpMethod m)

    octet = tylist ["OctetStream"]
    json  = tylist ["JSON"]

    alt = TyApp (TyApp (TyCon "QueryParam") (sing "alt")) (TyCon "AltMedia")

    params = Map.filter ((/= Path) . _pLocation) (_mParameters m)

downloadDecl :: Global
             -> Prefix
             -> Name
             -> Name
             -> [Local]
             -> Method Solved
             -> Decl
downloadDecl n p api url fs m =
    googleRequestDecl n ty rs alt p api url fs m pat prec
  where
    ty = TyApp (TyCon "Download") (tycon n)
    rs = InsType noLoc (TyApp (TyCon "Rs") ty) (TyCon "Body")

    alt = Just (var "AltMedia")

    pat | _mSupportsMediaDownload m = PInfixApp PWildCard (UnQual (sym ":<|>")) (pvar "go")
        | otherwise                 = pvar "go"

    prec = PApp (UnQual "Download") [PRec (UnQual (dname n)) [PFieldWildcard]]

requestDecl :: Global
            -> Prefix
            -> Name
            -> Name
            -> [Local]
            -> Method Solved
            -> Decl
requestDecl n p api url fs m =
    googleRequestDecl n (tycon n) rs alt p api url fs m pat prec
  where
    rs = InsType noLoc (TyApp (TyCon "Rs") (tycon n)) $
        maybe unit_tycon (tycon . ref) (_mResponse m)

    alt = var . name . Text.unpack . alternate <$>
        (Map.lookup "alt" (_mParameters m) >>= view iDefault)

    pat | _mSupportsMediaDownload m = PInfixApp (pvar "go") (UnQual (sym ":<|>")) PWildCard
        | otherwise                 = pvar "go"

    prec = PRec (UnQual (dname n)) [PFieldWildcard]

googleRequestDecl :: Global
                  -> Type
                  -> InstDecl
                  -> Maybe Exp
                  -> Prefix
                  -> Name
                  -> Name
                  -> [Local]
                  -> Method Solved
                  -> Pat
                  -> Pat
                  -> Decl
googleRequestDecl g n assoc alt p api url fields m pat prec =
    InstDecl noLoc Nothing [] [] (unqual "GoogleRequest") [n]
        [ assoc
        , request
        , requestWithRoute
        ]
  where
    request = funD "request" $
        appFun (var "requestWithRoute") [var "defReq", var url]

    requestWithRoute = InsDecl (FunBind [match])
      where
        match = Match noLoc (name "requestWithRoute") pats Nothing rhs decls

        decls = BDecls
            [ patBind noLoc pat $
                appFun (var "clientWithRoute") $
                    [ ExpTypeSig noLoc (var "Proxy") $
                        TyApp (TyCon "Proxy") (TyCon (UnQual api))
                    , var "r"
                    , var "u"
                    ]
            ]

        rhs = UnGuardedRhs . appFun (var "go") $ map go fs'
            ++ maybeToList (app (var "Just") <$> alt)
            ++ maybeToList (go <$> rq)
            ++ maybeToList (go <$> pay)
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

            (fs', rq) | Just _ <- _mRequest m = (delete "payload" fs, Just "payload")
                      | otherwise             = (fs, Nothing)

            pay | _mSupportsMediaUpload m = Just "media"
                | otherwise               = Nothing

    fs = delete "alt"
       . orderParams id (Map.keys (_mParameters m))
       . nub
       $ map fst (rights (extractPath (_mPath m))) ++ _mParameterOrder m

    pats = [pvar "r", pvar "u", prec]

authDecl :: Global -> Prefix -> [Local] -> Decl
authDecl g p fs = InstDecl noLoc Nothing [] [] (unqual "GoogleAuth") [tycon g]
   [ method "authKey" "key"
   , method "authToken" "oauth_token"
   ]
  where
    method l f
        | f `elem` fs = funD l (infixApp (var (lname p f)) "." (var "_Just"))
        | otherwise   = funD l (app (var "const") (var "pure"))

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
        | Just x <- def s = defJS l x
        | required s      = reqJS l
        | monoid s        = defJS l (var "mempty")
        | otherwise       = optJS l

    to = InstDecl noLoc Nothing [] [] (unqual "ToJSON") [tycon g]
        [ wildcardD "toJSON" g omit none (map encode rs)
        ]

    omit = app (var "object")
         . app (var "catMaybes")
         . listE

    none = paren $ app (var "Object") (var "mempty")

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

internalType :: TType -> Type
internalType = \case
    TType   r   -> tycon r
    TMaybe  t   -> TyApp (TyCon "Maybe") (internalType t)
    TList   t   -> TyList (internalType t)
    TLit    l   -> internalLit l

externalLit :: Lit -> Type
externalLit = \case
    Text     -> TyCon "Text"
    Bool     -> TyCon "Bool"
    Time     -> TyCon "TimeOfDay"
    Date     -> TyCon "LocalTime"
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
    Key        -> TyCon "Key"
    OAuthToken -> TyCon "OAuthToken"
    Body       -> TyCon "Body"

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
    Key        -> TyCon "Key"
    OAuthToken -> TyCon "OAuthToken"
    Body       -> TyCon "Body"

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
