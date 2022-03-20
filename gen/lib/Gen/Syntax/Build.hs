{-# OPTIONS_GHC -fno-warn-orphans #-}

module Gen.Syntax.Build where

import qualified Data.Text as Text
import Gen.Prelude
import Gen.Types.Id
import Gen.Types.Schema (Ref (..))
import Language.Haskell.Exts

-- Names

instance IsString (Name ()) where
  fromString = name

instance IsString (QName ()) where
  fromString = UnQual () . name

instance IsString (QOp ()) where
  fromString = op . sym

unQual :: String -> QName ()
unQual = UnQual () . name

localE :: Local -> Exp ()
localE = strE . Text.unpack . local

-- Patterns

pRecord :: Name () -> Bool -> Pat ()
pRecord n wild = PRec () (UnQual () n) [PFieldWildcard () | wild]

-- Declarations

funBind :: Name () -> [Pat ()] -> Rhs () -> Decl ()
funBind f pats rhs = FunBind () [Match () f pats rhs Nothing]

instDecl :: InstRule () -> Maybe [InstDecl ()] -> Decl ()
instDecl = InstDecl () Nothing

typeSig :: [Name ()] -> Type () -> Decl ()
typeSig = TypeSig ()

typeDecl :: DeclHead () -> Type () -> Decl ()
typeDecl = TypeDecl ()

dataDecl :: DataOrNew () -> Maybe (Context ()) -> DeclHead () -> [QualConDecl ()] -> [Deriving ()] -> Decl ()
dataDecl = DataDecl ()

-- Instances

iType :: Type () -> Type () -> InstDecl ()
iType = InsType ()

iDecl :: Decl () -> InstDecl ()
iDecl = InsDecl ()

iRule :: InstHead () -> InstRule ()
iRule = IRule () Nothing Nothing

iApp :: InstHead () -> Type () -> InstHead ()
iApp = IHApp ()

iCon :: Name () -> InstHead ()
iCon = IHCon () . UnQual ()

deriving' = Deriving () Nothing

-- Expressions

tupleSectionE :: [Maybe (Exp ())] -> Exp ()
tupleSectionE = TupleSection () Boxed

recordConstrE :: Name () -> [FieldUpdate ()] -> Exp ()
recordConstrE = RecConstr () . UnQual ()

recordUpdateE :: Exp () -> [FieldUpdate ()] -> Exp ()
recordUpdateE = RecUpdate ()

fieldUpdate :: Name () -> Exp () -> FieldUpdate ()
fieldUpdate l e = FieldUpdate () (UnQual () l) e

unguardedRhs :: Exp () -> Rhs ()
unguardedRhs = UnGuardedRhs ()

textE :: Text -> Exp ()
textE = strE . Text.unpack

ctorE :: Global -> [Exp ()] -> Exp ()
ctorE n = seqE (var (dname n)) . map paren

seqE :: Exp () -> [Exp ()] -> Exp ()
seqE l [] = app (var "Core.pure") l
seqE l (r : rs) = infixApp l "Core.<$>" (infixE r "Core.<*>" rs)

infixE :: Exp () -> QOp () -> [Exp ()] -> Exp ()
infixE l o = \case
  [] -> l
  r : rs -> infixE (infixApp l o r) o rs

fuseE :: [Exp ()] -> [Exp ()]
fuseE = \case
  Lit () (String () a b) : Lit () (String () a' b') : xs ->
    fuseE (Lit () (String () (a ++ a') (b ++ b')) : xs)
  x : xs ->
    x : fuseE xs
  [] ->
    []

-- Types

tyParen :: Type () -> Type ()
tyParen = TyParen ()

tyRef :: Ref -> Type ()
tyRef Ref {ref} = tyCon (dname ref)

tyApp :: Type () -> Type () -> Type ()
tyApp = TyApp ()

tyFun :: Type () -> Type () -> Type ()
tyFun = TyFun ()

tyCon :: Name () -> Type ()
tyCon = TyCon () . UnQual ()

tyList :: [Type ()] -> Type ()
tyList = TyPromoted () . PromotedList () True

tySymbol :: Text -> Type ()
tySymbol (Text.unpack -> s) = TyPromoted () (PromotedString () s s)
