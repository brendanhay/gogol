module Gen.Syntax.Record where

import Control.Lens (view, (^.))
import Data.Foldable qualified as Foldable
import Data.List qualified as List
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as Text
import Gen.Formatting
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Syntax.Type
import Gen.Text (stripPrefix, stripSuffix, upperHead)
import Gen.Types
import Language.Haskell.Exts

productDecl ::
  Global ->
  Maybe Help ->
  [Local] ->
  Map Local Solved ->
  [Derive] ->
  Data
productDecl n prodHelp fieldOrder fields derive =
  Prod
    { prodName,
      prodHelp,
      prodAlias = Nothing,
      prodDecl,
      prodFields = map (uncurry recordField) (Map.toList fields),
      prodCtor = constrFun,
      prodSynonym,
      prodDeriving = Just (recordDerive derive),
      prodExtras = []
    }
  where
    -- FIXME: json instances.

    prodName = dname n
    prodDecl = recordDecl prodName fields

    prodSynonym =
      guard (not allRequired)
        $> Synonym
          { synonymName,
            synonymSig,
            synonymDecl,
            synonymHelp = Just (smartCtorHelp prodName)
          }

    constrName = cname n
    constrFun =
      guard (not allRequired)
        $> smartCtorFun constrName prodName fieldOrder fields

    synonymName = dname ("Mk" <> n)

    synonymSig =
      PatSynSig () [synonymName] Nothing Nothing Nothing Nothing $
        foldr tyFun (tyCon prodName) types

    synonymDecl =
      patSyn (pRecord synonymName labels) (constrP prodName fields) ImplicitBidirectional

    allRequired =
      length labels == Map.size fields

    (labels, types) =
      unzip
        . map (first pFieldPun)
        . getParameters fieldOrder
        $ fields

recordDecl :: Name () -> Map Local Solved -> Decl ()
recordDecl recName fields =
  dataDecl dataOrNew Nothing (DHead () recName) [con] []
  where
    dataOrNew
      | isNewtype = NewType ()
      | otherwise = DataType ()

    isNewtype = Map.size fields == 1

    con = QualConDecl () Nothing Nothing (ConDecl () recName [])

recordDerive :: [Derive] -> Deriving ()
recordDerive = deriveStock . map (iRule Nothing . iCon . tyDerive)

recordFields :: Map Local Solved -> [Field]
recordFields = map (uncurry recordField) . Map.toList

recordField :: Local -> Solved -> Field
recordField l s =
  Field
    { fieldName = fname l,
      fieldType = tyExternal (_type s),
      fieldHelp = Nest (fromMaybe mempty (s ^. iDescription))
    }

smartCtorFun :: Name () -> Name () -> [Local] -> Map Local Solved -> Fun
smartCtorFun funName recName order fields =
  Fun
    { funName,
      funHelp = Just (smartCtorHelp recName),
      funSig = typeSig [funName] (foldr tyFun (tyCon recName) types),
      funDecl = sfun funName labels (unguardedRhs constr) noBinds
    }
  where
    constr = constrE recName fields

    (labels, types) = unzip (getParameters order fields)

smartCtorHelp :: Name () -> Help
smartCtorHelp =
  rawHelpText . sformat fmt . \case
    Ident () s -> s
    Symbol () s -> s
  where
    fmt =
      "Create '"
        % string
        % "' using the required fields."
        % " All other fields are set to 'Nothing' or a default value,"
        % " as appropriate.\n"

getParameters :: [Local] -> Map Local Solved -> [(Name (), Type ())]
getParameters order =
  map (bimap fname (tyExternal . _type))
    . flip (orderParams fst) order
    . filter (parameter . snd)
    . Map.toList

constrE :: Name () -> Map Local Solved -> Exp ()
constrE recName = recordConstrE recName . map (uncurry fieldE) . Map.toList

constrP :: Name () -> Map Local Solved -> Pat ()
constrP recName = pRecord recName . map (uncurry fieldP) . Map.toList

fieldE :: Local -> Solved -> FieldUpdate ()
fieldE l s = fieldUpdate label rhs
  where
    rhs
      | Just x <- defaultE s = x
      | parameter s = var label
      | otherwise = var (name "Core.Nothing")

    label = fname l

fieldP :: Local -> Solved -> PatField ()
fieldP l s = pField label rhs
  where
    rhs
      | Just x <- defaultP s = x
      | parameter s = pvar label
      | otherwise = pvar (name "Core.Nothing")

    label = fname l

defaultE :: Solved -> Maybe (Exp ())
defaultE s
  | Just x <- s ^. iDefault = Just (go x (_prefix s) (_schema s))
  | otherwise = Nothing
  where
    go x p = \case
      SEnm {} -> var (bname p x)
      SLit _ Bool -> lvar ("Core." <> upperHead x)
      SLit _ Text -> textE x
      SLit {} -> lvar x
      e -> error $ "Unsupported default value: " ++ show e

    lvar = var . name . Text.unpack

defaultP :: Solved -> Maybe (Pat ())
defaultP s
  | Just x <- s ^. iDefault = Just (go x (_prefix s) (_schema s))
  | otherwise = Nothing
  where
    go x p = \case
      SEnm {} -> pvar (bname p x)
      SLit _ Bool -> lvar ("Core." <> upperHead x)
      SLit _ Text -> pText x
      SLit {} -> lvar x
      e -> error $ "Unsupported default value: " ++ show e

    lvar = pvar . name . Text.unpack
