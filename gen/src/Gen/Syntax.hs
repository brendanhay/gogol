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
import           Data.Foldable                (find, foldl', foldr')
import           Data.Hashable
import qualified Data.HashMap.Strict          as Map
import           Data.Maybe
import           Data.Semigroup               ((<>))
import           Data.String
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import           Data.Text.Manipulate
import           Gen.Orphans
import           Gen.Solve
import           Gen.Text
import           Gen.Types
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.SrcLoc
import           Language.Haskell.Exts.Syntax hiding (Int, Lit)

urlSig :: Name -> Decl
urlSig n = TypeSig noLoc [n] (tycon "BaseUrl")

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
verbAlias n m = TypeDecl noLoc n [] alias
  where
    alias = foldr' (\l r -> TyInfix l (UnQual (sym ":>")) r) verb (path ++ qry)

    -- FIXME: rather than using 'terminal' to get the terminal type,
    -- write a custom 'Link' for servant to specify required params.

    path :: [Type]
    path = map match
         . filter (not . Text.null)
         $ Text.split (== '/') (_mPath m)
      where
        -- FIXME: should error if '{' '}' is found and cannot find the ref.
        match x
            | Just (c, t) <- Text.uncons x
            , c == '{'
            , Just k <- Map.lookup (Local (Text.init t)) params
            , _prmLocation k == Path
                        = TyApp (TyApp (tycon "Capture")
                                       (sing (Text.init t)))
                                (terminalType (_type (_prmSchema k)))
            | otherwise = sing x

    -- FIXME: order by _mParameterOrder
    qry :: [Type]
    qry = mapMaybe f (Map.toList params)
      where
        f (k, x) =
           let t = terminalType (_type (_prmSchema x))
               n = sing (local k)
            in case _prmLocation x of
                Query -> Just $ TyApp (TyApp (tycon "QueryParam") n) t
                Query | _prmRepeated x
                      -> Just $ TyApp (TyApp (tycon "QueryParams") n) t
                Path  -> Nothing

    params = _mParameters m

    verb :: Type
    verb = TyApp (TyApp meth typ) res
      where
        meth = TyCon . unqual . Text.unpack $ Text.toTitle (_mMethod m)
        typ  = tycon "'[JSON]"
        res  = maybe (tycon "()") (tycon . Free) (_mResponse m)

requestDecl :: Id -> Pre -> Name -> Name -> [Local] -> Maybe Id -> Decl
requestDecl n p api url fs rq =
    -- FIXME: associated Rs type
    InstDecl noLoc Nothing [] [] (unqual "GoogleRequest") [tycon n]
        [ response
        , request
        , requestWithRoute
        ]
  where
    response = InsType noLoc (TyApp (tycon "Rs") (tycon n)) $
        maybe unit_tycon tycon rq

    request = funD "request" $
        appFun (var "requestWithRoute") [var "defReq", var url]

    requestWithRoute = InsDecl (FunBind [match])
      where
        match = Match noLoc (name "requestWithRoute") pats Nothing rhs decls

        decls = BDecls
            [ patBind noLoc (pvar "go") $
                appFun (var "clientWithRoute") $
                    [ ExpTypeSig noLoc (var "Proxy") $
                        TyApp (tycon "Proxy") (TyCon (UnQual api))
                    , var "r"
                    , var "u"
                    ]
            ]

        rhs = UnGuardedRhs . appFun (var "go") $ map (var . fname p) fs

    pats = [pvar "r", pvar "u", prec]
    prec = PRec (UnQual (dname n)) [PFieldWildcard]

jsonDecls :: Id -> Pre -> Map Local Solved -> [Decl]
jsonDecls n p (Map.toList -> rs) = [from, to]
  where
    from = InstDecl noLoc Nothing [] [] (unqual "FromJSON") [tycon n]
        [ funD "parseJSON" $
            app (app (var "withObject") (str (idToText n))) $
                lamE noLoc [pvar "o"] $
                    ctorE n (map decode rs)
        ]

    decode (l, s)
        | Just x <- def s = defJS l x
        | s ^. required   = reqJS l
        | monoid s        = defJS l (var "mempty")
        | otherwise       = optJS l

    to = InstDecl noLoc Nothing [] [] (unqual "ToJSON") [tycon n]
        [ wildcardD "toJSON" n omit none (map encode rs)
        ]

    omit = app (var "object")
         . app (var "catMaybes")
         . listE

    none = paren $ app (var "Object") (var "mempty")

    encode (l, s)
        | TMaybe {} <- _type s = infixApp (paren (app n o)) "<$>" a
        | otherwise            = app (var "Just") (infixApp n ".=" a)
      where
        n = str (local l)
        a = var (fname p l)
        o = var ".="

wildcardD :: String
          -> Id
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
defJS n x = infixApp (infixApp (var "o") ".:?" (str (local n))) ".!=" x

reqJS :: Local -> Exp
reqJS = infixApp (var "o") ".:" . str . local

optJS :: Local -> Exp
optJS = infixApp (var "o") ".:?" . str . local

funD :: String -> Exp -> InstDecl
funD f = InsDecl . patBind noLoc (pvar (name f))

constD :: String -> Exp -> InstDecl
constD f x = InsDecl $
    sfun noLoc (name f) [] (UnGuardedRhs (app (var "const") x)) noBinds

ctorE :: Id -> [Exp] -> Exp
ctorE n = seqE (var (dname n)) . map paren

seqE :: Exp -> [Exp] -> Exp
seqE l []     = app (var "pure") l
seqE l (r:rs) = infixApp l "<$>" (infixE r "<*>" rs)

objDecl :: Id -> Pre -> [Derive] -> Map Local Solved -> Decl
objDecl n p ds rs = DataDecl noLoc arity [] d [] [conDecl d p rs] (der ds)
  where
    d = dname n

    arity | Map.size rs == 1 = NewType
          | otherwise        = DataType

    der = map ((,[]) . unqual . drop 1 . show)

conDecl :: Name -> Pre -> Map Local Solved -> QualConDecl
conDecl n p rs = QualConDecl noLoc [] [] body
  where
    body = case Map.toList rs of
        []  -> ConDecl n []
        [x] -> RecDecl n [field internalType x]
        xs  -> RecDecl n (map (field (strict . internalType)) xs)

    field f (l, v) = ([fname p l], f (_type v))

ctorSig :: Id -> Map Local Solved -> Decl
ctorSig n rs = TypeSig noLoc [cname n] ts
  where
    ts = foldr' TyFun (TyCon (UnQual (dname n))) ps
    ps = parameters (Map.elems rs)

ctorDecl :: Id -> Pre -> Map Local Solved -> Decl
ctorDecl n p rs = sfun noLoc c ps (UnGuardedRhs rhs) noBinds
  where
    c = cname n
    d = dname n

    rhs | Map.null rs = var d
        | otherwise   = RecConstr (UnQual d) $
            map (uncurry (fieldUpdate p)) (Map.toList rs)

    ps = map (pname p) . Map.keys $ Map.filter (view required) rs

fieldUpdate :: Pre -> Local -> Solved -> FieldUpdate
fieldUpdate p l s = FieldUpdate (UnQual (fname p l)) rhs
  where
    rhs | s ^. required           = v
        | Just x <- def s         = x
        | Just x <- iso (_type s) = infixApp x "#" v
        | otherwise               = var (name "Nothing")

    v = var (pname p l)

lensSig :: Id -> Pre -> Local -> Solved -> Decl
lensSig n p l s = TypeSig noLoc [lname p l] $
    TyApp (TyApp (tycon "Lens'") (tycon n))
          (externalType (_type s))

lensDecl :: Pre -> Local -> Solved -> Decl
lensDecl p l s = sfun noLoc (lname p l) [] (UnGuardedRhs rhs) noBinds
  where
    f = fname p l
    t = _type s

    rhs = mapping t $
        app (app (var "lens") (var f))
            (paren (lamE noLoc [pvar "s", pvar "a"]
                   (RecUpdate (var "s") [FieldUpdate (UnQual f) (var "a")])))

parameters :: [Solved] -> [Type]
parameters = map (externalType . _type) . filter (view required)

def :: Solved -> Maybe Exp
def s
    | Just x <- s ^. defaulted = Just (go x (_prefix s) (_schema s))
    | otherwise                = Nothing
  where
    go x p = \case
        Enum {}     -> var (bname p x)
        Lit  _ Bool -> lit (upperHead x)
        Lit  _ Text -> str x
        Lit  {}     -> lit x
        e           -> error $ "Unsupported default value: " ++ show e

    lit = var . name . Text.unpack

terminalType :: TType -> Type
terminalType = internalType . go
  where
    go (TMaybe x) = x
    go (TList  x) = x
    go x          = x

externalType :: TType -> Type
externalType = \case
    TType   r          -> tycon r
    TMaybe  t@TList {} -> externalType t
    TMaybe  t          -> TyApp (tycon "Maybe") (externalType t)
    TEither a b        -> TyApp (TyApp (tycon "Either") (externalType a)) (externalType b)
    TList   t          -> TyList (externalType t)
    TLit    l          -> externalLit l

internalType :: TType -> Type
internalType = \case
    TType   r   -> tycon r
    TMaybe  t   -> TyApp (tycon "Maybe") (internalType t)
    TEither a b -> TyApp (TyApp (tycon "Either") (internalType a)) (internalType b)
    TList   t   -> TyList (internalType t)
    TLit    l   -> internalLit l

externalLit :: Lit -> Type
externalLit = \case
    Text   -> tycon "Text"
    Bool   -> tycon "Bool"
    Time   -> tycon "UTCTime"
    Date   -> tycon "UTCTime"
    Nat    -> tycon "Natural"
    Float  -> tycon "Float"
    Double -> tycon "Double"
    Byte   -> tycon "Word8"
    UInt32 -> tycon "Word32"
    UInt64 -> tycon "Word64"
    Int32  -> tycon "Int32"
    Int64  -> tycon "Int64"

internalLit :: Lit -> Type
internalLit = \case
    Text   -> tycon "Text"
    Bool   -> tycon "Bool"
    Time   -> tycon "UTCTime"
    Date   -> tycon "UTCTime"
    Nat    -> tycon "Nat"
    Float  -> tycon "Float"
    Double -> tycon "Double"
    Byte   -> tycon "Word8"
    UInt32 -> tycon "Word32"
    UInt64 -> tycon "Word64"
    Int32  -> tycon "Int32"
    Int64  -> tycon "Int64"

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
    TList {} -> Just (var "_Coerce")
    TLit Nat -> Just (var "_Nat")
    _        -> Nothing

strict :: Type -> Type
strict = TyBang BangedTy . \case
    t@TyApp{} -> TyParen t
    t         -> t

sing :: Text -> Type
sing = TyCon . unqual . Text.unpack . flip mappend "\"" . mappend "\""

tycon :: Id -> Type
tycon = TyCon . unqual . Text.unpack . idToText

unqual :: String -> QName
unqual = UnQual . name

infixE :: Exp -> QOp -> [Exp] -> Exp
infixE l _ []     = l
infixE l o (r:rs) = infixE (infixApp l o r) o rs

str :: Text -> Exp
str = strE . Text.unpack
