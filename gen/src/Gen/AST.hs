{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE ViewPatterns               #-}

-- Module      : Gen.AST
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST where

import           Control.Applicative
import           Control.Error
import           Control.Lens                 hiding (lens)
import           Control.Monad.Except
import           Control.Monad.State
import           Data.Char
import           Data.Function                (on)
import qualified Data.HashMap.Strict          as Map
import           Data.List                    (groupBy)
import           Data.List.NonEmpty           (NonEmpty (..))
import           Data.Semigroup               ((<>))
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Gen.Formatting
import           Gen.Solve
import           Gen.Syntax
import           Gen.Text
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

-- mapM isn't lazy here and I don't care!
flatten :: Map Id (Fix Schema) -> Map Id (Schema Id)
flatten m = execState (mapM_ (uncurry (prop Nothing)) (Map.toList m)) mempty
  where
    -- unfold the properties.
    prop p k (Fix f) = case f of
        Obj i ps -> do
            o <- Obj i <$> Map.traverseWithKey (prop (Just this)) ps
            res o

        Arr i (Fix e) -> do
            e' <- prop (Just this) "item" (Fix (e & required .~ True))
            res (Arr i e')

        Enum i vs ds -> res (Enum i vs ds)
        Lit  i l     -> res (Lit  i l)
        Ref  _ r     -> pure r
        Any  i       -> res (Any  i)

      where
        res x = do
            s <- gets (Map.lookup this)
            case s of
                Nothing -> modify (Map.insert this x) >> pure this
                -- FIXME:
                Just e  -> error $ "Already exists: " ++ show (this, e, x)

        this = maybe k (<> k) p

merge :: Versions -> [Service Data] -> [Library]
merge v = map go . groupBy (on (==) _svcLibrary)
  where
    go [x]    = mk x
    go (x:xs) = (mk x) { _libServices = x :| xs }
    -- FIXME:
    go []     = error "Empty merge set!"

    mk x = Library
        { _libName     = _svcLibrary x
        , _libTitle    = renameTitle (_svcTitle x)
        , _libVersions = v
        , _libServices = x :| []
        }

render :: Service (Fix Schema) -> Either Error (Service Data)
render s = runAST (Memo mempty mempty ss) $ do
    r <- kvTraverseMaybe go ss
    return $! s { _svcSchemas = r }
  where
    ss = flatten (_svcSchemas s)

    go :: Id -> Schema Id -> AST (Maybe Data)
    go k = \case
        Arr  {}    -> pure Nothing
        Ref  {}    -> pure Nothing
        Any  {}    -> pure Nothing
        Lit  {}    -> pure Nothing
        Enum i _ _ -> Just <$> sum
          where
            sum = Sum (dname k) (i ^. description)
                <$> pp Indent enumDecl

        Obj i rs -> Just <$> (traverse solve rs >>= prod)
          where
            prod ts = Prod (dname k) (i ^. description)
                <$> (objDecl k ts >>= pp Indent)
                <*> ctor ts
                <*> traverse (uncurry lens) (Map.toList ts)

            ctor ts = Fun' (cname k) (Just help)
                <$> (pp None   (ctorSig  k ts) >>= comments ts)
                <*>  pp Indent (ctorDecl k ts)

            lens n v = Fun' (lname n) (v ^. description)
                <$> pp None  (lensSig k n v)
                <*> pp Print (lensDecl  n v)

            help = rawHelpText $
                sformat ("Creates a value of '" % fid %
                         "' with the minimum fields required to make a request.\n")
                         k

data PP
    = Indent
    | Print
    | None
      deriving (Eq)

pp :: Pretty a => PP -> a -> AST Rendered
pp i x
    | i == Indent = result (reformat johanTibell Nothing p)
    | otherwise   = pure p
  where
    result = hoistEither . bimap e Build.toLazyText

    e = flip mappend (", when formatting: " <> p) . LText.pack

    p = LText.dropWhile isSpace
      . LText.pack
      $ prettyPrintStyleMode s m x

    s = style
        { mode           = PageMode
        , lineLength     = 80
        , ribbonsPerLine = 1.5
        }

    m | i == Print  = defaultMode
      | i == Indent = defaultMode
      | otherwise   = defaultMode
          { layout  = PPNoLayout
          , spacing = False
          }

-- FIXME: dirty hack to render smart ctor parameter comments.
comments :: Map Id Solved -> Rendered -> AST Rendered
comments (Map.toList -> rs) x = do
    let ks = filter (parameter . _schema . snd) rs
        ps = map (Just . fst) ks ++ repeat Nothing
    return
        . LText.replace     " :: " "\n    :: "
        . LText.intercalate "\n    -> "
        . zipWith rel ps
        . map LText.strip
        $ LText.splitOn "->" x
  where
    rel Nothing  t = t
    rel (Just k) t =
        t <> " -- ^ '" <> LText.fromStrict (idToText k) <> "'"
