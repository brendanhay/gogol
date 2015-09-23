{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections     #-}

-- Module      : Gen.Syntax
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Syntax where

import qualified Data.HashMap.Strict          as Map
import           Data.Semigroup
import           Data.String
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import           Data.Text.Manipulate
import           Gen.Solve
import           Gen.Types
import qualified Language.Haskell.Exts        as Exts
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.SrcLoc
import           Language.Haskell.Exts.Syntax hiding (Int)

objDecl :: Ref -> Map Ref Ref -> AST Decl
objDecl r rs = do
    con <- conDecl   n rs
    ds  <- derivings r
    return $! DataDecl noLoc arity [] n [] [con] ds
  where
    n = dname r

    arity | Map.size rs == 1 = NewType
          | otherwise        = DataType

conDecl :: Name -> Map Ref Ref -> AST QualConDecl
conDecl n rs = QualConDecl noLoc [] [] <$> body
  where
    body = case Map.toList rs of
        []  -> pure (ConDecl n [])
        [x] -> RecDecl n . (:[]) <$> field internal x
        xs  -> RecDecl n <$> traverse (field (strict . internal)) xs

    field f (k, v) = do
        t <- typeOf v
        return ([fname k], f t)

derivings :: Ref -> AST [Deriving]
derivings = fmap (map ((,[]) . unqual . drop 1 . show)) . derive

ctorSig :: Decl
ctorSig = emptyDecl

ctorDecl :: Decl
ctorDecl = emptyDecl

lensSig :: Decl
lensSig = emptyDecl

lensDecl :: Decl
lensDecl = emptyDecl

enumDecl :: Decl
enumDecl = emptyDecl

emptyDecl :: Decl
emptyDecl = DataDecl noLoc DataType [] (name "Empty") [] [] []

internal :: TType -> Type
internal = go
  where
    go = \case
        TType   r   -> tycon r
        TMaybe  t   -> TyApp (tycon "Maybe") (go t)
--        TEither a b ->
        TList   t   -> TyList (go t)
        TLit    l   -> lit l

    lit = \case
        Text -> tycon "Text"
        Bool -> tycon "Bool"
        Int  -> tycon "Int"
        Long -> tycon "Integer"
        Nat  -> tycon "Natural"
        Time -> tycon "UTCTime"

strict :: Type -> Type
strict = TyBang BangedTy . \case
    t@TyApp{} -> TyParen t
    t         -> t

dname :: Ref -> Name
dname = name . ref upperHead

fname :: Ref -> Name
fname = name . ref (Text.cons '_')

tycon :: Ref -> Type
tycon = TyCon . unqual . ref upperHead

ref :: (Text -> Text) -> Ref -> String
ref f = Text.unpack . f . refToText

unqual :: String -> QName
unqual = UnQual . name
