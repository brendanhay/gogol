{-# OPTIONS_GHC -fno-warn-orphans #-}

module Gen.Syntax.Build where

import Data.Text qualified as Text
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

pRecord :: Name () -> [PatField ()] -> Pat ()
pRecord n = PRec () (UnQual () n)

pFieldWild :: PatField ()
pFieldWild = PFieldWildcard ()

pFieldPun :: Name () -> PatField ()
pFieldPun n = PFieldPun () (UnQual () n)

pField :: Name () -> Pat () -> PatField ()
pField n = PFieldPat () (UnQual () n)

pAs :: Name () -> Pat () -> Pat ()
pAs = PAsPat ()

pLit :: Literal () -> Pat ()
pLit = PLit () (Signless ())

pText :: Text -> Pat ()
pText (Text.unpack -> s) = pLit (String () s s)

-- Pattern Synonyms

patSyn :: Pat () -> Pat () -> _ -> Decl ()
patSyn lhs rhs = PatSyn () lhs rhs

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

cxSingle :: Type () -> Context ()
cxSingle = CxSingle () . TypeA ()

iType :: Type () -> Type () -> InstDecl ()
iType = InsType ()

iDecl :: Decl () -> InstDecl ()
iDecl = InsDecl ()

iRule :: Maybe (Context ()) -> InstHead () -> InstRule ()
iRule = IRule () Nothing

iApp :: InstHead () -> Type () -> InstHead ()
iApp = IHApp ()

iCon :: Name () -> InstHead ()
iCon = IHCon () . UnQual ()

deriveStock :: [InstRule ()] -> Deriving ()
deriveStock = Deriving () (Just (DerivStock ()))

deriveNewtype :: [InstRule ()] -> Deriving ()
deriveNewtype = Deriving () (Just (DerivNewtype ()))

deriveVia :: Type () -> [InstRule ()] -> Deriving ()
deriveVia typ = Deriving () (Just (DerivVia () typ))

-- deriveStockAlone :: InstRule () -> Decl ()
-- deriveStockAlone = DerivDecl () (Just (DerivStock ())) Nothing

-- deriveNewtypeAlone :: InstRule () -> Decl ()
-- deriveNewtypeAlone = DerivDecl () (Just (DerivNewtype ())) Nothing

-- deriveViaAlone :: Type () -> InstRule () -> Decl ()
-- deriveViaAlone typ = DerivDecl () (Just (DerivVia () typ)) Nothing

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

boolE :: Bool -> Exp ()
boolE = Con () . UnQual () . name . mappend "Core." . show

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

tyVar :: Name () -> Type ()
tyVar = TyVar ()

tyList :: Type () -> Type ()
tyList = TyList ()

tyPromotedList :: [Type ()] -> Type ()
tyPromotedList = TyPromoted () . PromotedList () True

tySymbol :: Text -> Type ()
tySymbol (Text.unpack -> s) = TyPromoted () (PromotedString () s s)
