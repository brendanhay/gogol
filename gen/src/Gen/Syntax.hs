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

import           Control.Lens                 hiding (iso, mapping, op, pre,
                                               strict)
import           Data.Foldable                (foldr')
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
           n = sing (local k)
        in case _prmLocation p of
            Path  -> TyApp (TyApp (tycon "Capture")    n) t
            Query -> TyApp (TyApp (tycon "QueryParam") n) t

    end = TyApp (TyApp meth typ) res

    meth = TyCon . unqual . Text.unpack $ Text.toTitle (_mMethod m)
    typ  = tycon "'[JSON]"
    res  = maybe (tycon "()") (tycon . Free) (_mResponse m)

    -- method (titlecase) '[JSON] (responsetype)

objDecl :: Id -> Pre -> Map Local Solved -> AST Decl
objDecl n p rs = DataDecl noLoc arity [] d [] [conDecl d p rs] <$> derivings n
  where
    d = dname n

    arity | Map.size rs == 1 = NewType
          | otherwise        = DataType

conDecl :: Name -> Pre -> Map Local Solved -> QualConDecl
conDecl n p rs = QualConDecl noLoc [] [] body
  where
    body = case Map.toList rs of
        []  -> ConDecl n []
        [x] -> RecDecl n [field internal x]
        xs  -> RecDecl n (map (field (strict . internal)) xs)

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
    rhs | s ^. required            = v
        | Just x <- s ^. defaulted = def x (_schema s)
        | Just x <- iso (_type s)  = infixApp x "#" v
        | otherwise                = var (name "Nothing")

    v = var (pname p l)

    def x = \case
        Enum {}     -> var (bname (_prefix s) x)
        Lit  _ Bool -> lit (upperHead x)
        Lit  _ Text -> str x
        Lit  _ _    -> lit x
        --- FIXME: lift to AST
        s           -> error $ "Unmatched fieldUpdate:\n" ++ show s

    lit = var . name . Text.unpack

lensSig :: Id -> Pre -> Local -> Solved -> Decl
lensSig n p l s = TypeSig noLoc [lname p l] $
    TyApp (TyApp (tycon "Lens'") (tycon n))
          (external (_type s))

lensDecl :: Pre -> Local -> Solved -> Decl
lensDecl p l s = sfun noLoc (lname p l) [] (UnGuardedRhs rhs) noBinds
  where
    f = fname p l
    t = _type s

    rhs = mapping t $
        app (app (var "lens") (var f))
            (paren (lamE noLoc [pvar "s", pvar "a"]
                   (RecUpdate (var "s") [FieldUpdate (UnQual f) (var "a")])))

derivings :: Id -> AST [Deriving]
derivings k = map ((,[]) . unqual . drop 1 . show) <$> derive k

parameters :: [Solved] -> [Type]
parameters = map (external . _type) . filter (view required)

external, internal :: TType -> Type
external = internal . \case
    TMaybe t@TList {} -> t
    t                 -> t

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
    Date   -> tycon "UTCTime"
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
tycon = TyCon . unqual . Text.unpack . idToText

unqual :: String -> QName
unqual = UnQual . name

infixE :: Exp -> QOp -> [Exp] -> Exp
infixE l _ []     = l
infixE l o (r:rs) = infixE (infixApp l o r) o rs

str :: Text -> Exp
str = strE . Text.unpack
