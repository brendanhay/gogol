{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections     #-}

{-# OPTIONS_GHC -fno-warn-orphans #-}

-- Module      : Gen.Syntax
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Syntax where

import           Control.Lens                 hiding (iso, mapping, op, strict)
import           Data.Foldable                (foldr')
import           Data.Hashable
import qualified Data.HashMap.Strict          as Map
import           Data.Maybe
import           Data.Semigroup               ((<>))
import           Data.String
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import           Data.Text.Manipulate
import           Gen.Solve
import           Gen.Text
import           Gen.Types
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.SrcLoc
import           Language.Haskell.Exts.Syntax hiding (Int)

instance Hashable Name

instance IsString Name  where fromString = name
instance IsString QName where fromString = UnQual . name
instance IsString QOp   where fromString = op . sym

apiTypes :: Service s r -> Id -> Method -> [Type]
apiTypes s r m = map sing ps ++ qs ++ [end]
  where
    ps = filter (not . Text.null)
         $ Text.split (== '/') (_svcServicePath s)
        <> Text.split (== '/') (_mPath m)

    -- FIXME: order by _mParameterOrder
    qs = map param (Map.toList (_svcParameters s))
      ++ map param (Map.toList (_mParameters   m))

    param (k, p) =
       -- FIXME: types, many/repeated
       let t = literal (_prmLiteral p)
           n = sing (idToText k)
        in case _prmLocation p of
            Path  -> TyApp (TyApp (tycon "Capture")    n) t
            Query -> TyApp (TyApp (tycon "QueryParam") n) t

    end = TyApp (TyApp meth typ) res

    meth = TyCon . unqual . Text.unpack $ Text.toTitle (_mMethod m)
    typ  = tycon "'[JSON]"
    res  = maybe (tycon "()") tycon (_mResponse m)

    -- method (titlecase) '[JSON] (responsetype)

objDecl :: Id -> Map Id Solved -> AST Decl
objDecl r rs = DataDecl noLoc arity [] d [] [conDecl d rs] <$> derivings r
  where
    d = dname r

    arity | Map.size rs == 1 = NewType
          | otherwise        = DataType

conDecl :: Name -> Map Id Solved -> QualConDecl
conDecl n rs = QualConDecl noLoc [] [] body
  where
    body = case Map.toList rs of
        []  -> ConDecl n []
        [x] -> RecDecl n [field internal x]
        xs  -> RecDecl n (map (field (strict . internal)) xs)

    field f (k, v) = ([fname k], f (_type v))

ctorSig :: Id -> Map Id Solved -> Decl
ctorSig r rs = TypeSig noLoc [c] ts
  where
    c = cname r
    d = dname r

    ts = foldr' TyFun (TyCon (UnQual d)) ps
    ps = parameters (Map.elems rs)

ctorDecl :: Id -> Map Id Solved -> Decl
ctorDecl r rs = sfun noLoc c ps (UnGuardedRhs rhs) noBinds
  where
    c = cname r
    d = dname r

    rhs | Map.null rs = var d
        | otherwise   = RecConstr (UnQual d) $
            map (uncurry fieldUpdate) (Map.toList rs)

    ps = map pname . Map.keys $ Map.filter (view required) rs

fieldUpdate :: Id -> Solved -> FieldUpdate
fieldUpdate r s = FieldUpdate (UnQual (fname r)) rhs
  where
    rhs | s ^. required            = p
        | Just x <- s ^. defaulted = str x
        | Just v <- iso (_type s)  = infixApp v "#" p
        | otherwise                = var (name "Nothing")

    p = var (pname r)

lensSig :: Id -> Id -> Solved -> Decl
lensSig n r s = TypeSig noLoc [lname r] $
    TyApp (TyApp (tycon "Lens'") (tycon n))
          (external (_type s))

lensDecl :: Id -> Solved -> Decl
lensDecl r s = sfun noLoc l [] (UnGuardedRhs rhs) noBinds
  where
    l = lname r
    f = fname r
    t = _type s

    rhs = mapping t $
        app (app (var "lens") (var f))
            (paren (lamE noLoc [pvar "s", pvar "a"]
                   (RecUpdate (var "s") [FieldUpdate (UnQual f) (var "a")])))

enumDecl :: Decl
enumDecl = emptyDecl

emptyDecl :: Decl
emptyDecl = DataDecl noLoc DataType [] (name "Empty") [] [] []

derivings :: Id -> AST [Deriving]
derivings = fmap (map ((,[]) . unqual . drop 1 . show)) . derive

parameters :: [Solved] -> [Type]
parameters = map (external . _type) . filter (view required)

external, internal :: TType -> Type
external = internal
internal = \case
    TType   r   -> tycon r
    TMaybe  t   -> TyApp (tycon "Maybe") (internal t)
    TEither a b -> TyApp (TyApp (tycon "Either") (internal a)) (internal b)
    TList   t   -> TyList (internal t)
    TLit    l   -> literal l

literal :: Lit -> Type
literal = \case
    Text   -> tycon "Text"
    Bool   -> tycon "Bool"
    Time   -> tycon "UTCTime"
    Nat    -> tycon "Natural"
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
    _        -> Nothing

strict :: Type -> Type
strict = TyBang BangedTy . \case
    t@TyApp{} -> TyParen t
    t         -> t

sing :: Text -> Type
sing = TyCon . unqual . Text.unpack . flip mappend "\"" . mappend "\""

tycon :: Id -> Type
tycon = TyCon . unqual . ref upperHead

unqual :: String -> QName
unqual = UnQual . name

infixE :: Exp -> QOp -> [Exp] -> Exp
infixE l _ []     = l
infixE l o (r:rs) = infixE (infixApp l o r) o rs

str :: Text -> Exp
str = strE . Text.unpack
