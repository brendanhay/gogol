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

-- Module      : Gen.AST.Render
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST.Render
    ( render
    ) where

import           Control.Applicative
import           Control.Error
import           Control.Lens                 hiding (enum, lens)
import           Control.Monad.Except
import           Data.CaseInsensitive         (CI)
import qualified Data.CaseInsensitive         as CI
import           Data.Char
import           Data.Hashable
import qualified Data.HashMap.Strict          as Map
import qualified Data.HashSet                 as Set
import           Data.List                    (intersect)
import           Data.Maybe
import           Data.Semigroup               ((<>))
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Data.Text.Manipulate
import           Debug.Trace
import           Gen.AST.Solve                (getSolved)
import           Gen.Formatting
import           Gen.Syntax
import           Gen.Text
import           Gen.Types
import           Gen.Types.Data
import           HIndent
import           Language.Haskell.Exts.Build  (name)
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

render :: Service Solved -> AST (API, [Data])
render s = do
    a  <- renderAPI s
    ds <- traverse renderSchema (Map.elems (s ^. dSchemas)) <&> catMaybes
    pure (a, ds)

    -- FIXME: filter out action/methods types
--     let as  = map actionTypeName (Map.elems (_apiActions y))
--         f d = elem (dataName d) as
--         z   = trace (show as) $ filter (not . f) (catMaybes x)

renderSchema :: Solved -> AST (Maybe Data)
renderSchema s = go (_schema s)
  where
    go = \case
        SEnm i e -> pure (Just (enum i e))
        SObj i o -> Just <$> object i o
        _        -> pure Nothing

    k  = _unique   s
    p  = _prefix   s
    ds = _deriving s

    enum i (Enm vs) = Sum (dname k) (i ^. iDescription) $
        map (\(v, h) -> Branch (bname p v) v h) vs

    object i (Obj aps ps) = traverse getSolved ps >>= prod
      where
        prod ts = Prod (dname k) (i ^. iDescription)
            <$> pp Indent (objDecl k p ds ts)
            <*> ctor ts
            <*> traverse lens (Map.toList ts)
            <*> traverse (pp Print) (jsonDecls k p ts)

        ctor ts = Fun' (cname k) (Just help)
            <$> (pp None   (ctorSig  k   ts) <&> comments ts)
            <*>  pp Indent (ctorDecl k p ts)

        lens (l, v) = Fun' (lname p l) (v ^. iDescription)
            <$> pp None  (lensSig k p l v)
            <*> pp Print (lensDecl  p l v)

        help = rawHelpText $
            sformat ("Creates a value of '" % gid %
                     "' with the minimum fields required to make a request.\n")
                     k

renderMethod :: Service a -> Method Solved -> AST Action
renderMethod s m@Method {..} = do
    x@Solved {..} <- getSolved typ
    Just d        <- renderSchema x

    i <- pp Print $ requestDecl _unique _prefix alias url (props _schema) m

    Action _mId (mkNS ns) _mDescription alias
        <$> pp Print (verbAlias alias m)
        <*> pure (insts [i] d)
  where
    (alias, typ, ns) = mname (_sCanonicalName s) _mId

    url = name (Text.unpack (urlName s))

    insts is = \case
        Prod n h r c ls _ -> Prod n h r c ls is
        d                 -> d

    props = \case
        SObj _ (Obj _ ps) -> Map.keys ps
        _                 -> mempty

renderResource :: Service a -> Resource Solved -> AST [Action]
renderResource s Resource {..} =
    liftA2 (<>)
        (traverse (renderResource s) (Map.elems _rResources) <&> concat)
        (traverse (renderMethod s) _rMethods)

renderAPI :: Service Solved -> AST API
renderAPI s = do
    rs <- traverse (renderResource s) (Map.elems (s ^. dResources)) <&> concat
    ms <- traverse (renderMethod   s) (s ^. dMethods)
    d  <- pp Print (apiAlias alias names)

    API alias d rs ms <$> serviceURL
  where
    alias = aname (_sCanonicalName s)

    names = map _mId (s ^. dMethods)
         <> Map.keys (s ^. dResources)

    url = name (Text.unpack (urlName s))

    serviceURL = Fun' url (Just (rawHelpText h))
        <$> pp None (urlSig url)
        <*> pp Print d
      where
        d | "http://" `Text.isPrefixOf` u = urlDecl url "Http"  u 80
          | otherwise                     = urlDecl url "Https" u 443

        u = s ^. dBaseUrl

        h = sformat ("URL referring to version @" % stext %
                     "@ of the " % stext % ".")
                     (s ^. dVersion) (s ^. dTitle)

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
comments :: Map Local Solved -> Rendered -> Rendered
comments (Map.toList -> rs) =
      LText.replace     " :: " "\n    :: "
    . LText.intercalate "\n    -> "
    . zipWith rel ps
    . map LText.strip
    . LText.splitOn     "->"
  where
    ks = filter (parameter . _schema . snd) rs
    ps = map (Just . fst) ks ++ repeat Nothing

    rel Nothing  t = t
    rel (Just l) t = t <> " -- ^ '" <> LText.fromStrict (local l) <> "'"
