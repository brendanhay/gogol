module Gen.Syntax.Record where

import Control.Lens (view, (^.))
import qualified Control.Monad as Monad
import Data.Either
import qualified Data.Foldable as Foldable
import qualified Data.List as List
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import qualified Data.Set as Set
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Text.Manipulate (upperHead)
import Gen.Syntax.Build
import Gen.Syntax.Type
import Gen.Text (stripPrefix, stripSuffix)
import Gen.Types
import Language.Haskell.Exts

recordDecl :: Global -> Map Local Solved -> Decl ()
recordDecl n rs =
  DataDecl () arity Nothing (DHead () (dname n)) [con] []
  where
    arity
      | Map.size rs == 1 = NewType ()
      | otherwise = DataType ()

    con = QualConDecl () Nothing Nothing (ConDecl () (dname n) [])

recordDerive :: [Derive] -> Deriving ()
recordDerive = deriving' . map (iRule . iCon . name . mappend "Core." . drop 1 . show)

recordFields :: Map Local Solved -> [Field]
recordFields = map (uncurry field) . Map.toList
  where
    field l v =
      Field (fname l) (tyExternal (_type v)) (fromMaybe mempty (v ^. iDescription))

smartCtorSig :: Global -> Map Local Solved -> Decl ()
smartCtorSig n =
  typeSig [cname n]
    . foldr tyFun (tyCon (dname n))
    . map (tyExternal . _type)
    . filter parameter
    . Map.elems

smartCtorDecl :: Global -> Map Local Solved -> Decl ()
smartCtorDecl n rs =
  sfun (cname n) fields (unguardedRhs rhs) noBinds
  where
    rhs
      | Map.null rs = var (dname n)
      | otherwise = recordConstrE (dname n) (map (uncurry fieldE) (Map.toList rs))

    fields = map fname . Map.keys $ Map.filter parameter rs

fieldE :: Local -> Solved -> FieldUpdate ()
fieldE l s = fieldUpdate label rhs
  where
    rhs
      | Just x <- defaultE s, s ^. iRepeated = listE [x]
      | Just x <- defaultE s = x
      | parameter s = var label
      | otherwise = var (name "Core.Nothing")

    label = fname l

defaultE :: Solved -> Maybe (Exp ())
defaultE s
  | Just x <- s ^. iDefault = Just (go x (_prefix s) (_schema s))
  | otherwise = Nothing
  where
    go x p = \case
      SEnm {} -> var (bname p x)
      SLit _ Bool -> lit ("Core." <> upperHead x)
      SLit _ Text -> textE x
      SLit {} -> lit x
      e -> error $ "Unsupported default value: " ++ show e

    lit = var . name . Text.unpack
