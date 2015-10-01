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
import           Data.Char                    (isSpace)
import qualified Data.HashMap.Strict          as Map
import           Data.Maybe
import           Data.Semigroup               ((<>))
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Gen.AST.Solve                (getSolved)
import           Gen.Formatting
import           Gen.Syntax
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Build  (name)
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

render :: Service Solved -> AST (API, [Data])
render s = do
    a  <- renderAPI s

    let actions = map _actType (_apiResources a <> _apiMethods a)
        valid   = Map.keys . Map.filter (\v -> _unique v `notElem` actions)

    ss <- traverse getSolved $ valid (s ^. dSchemas)
    ds <- traverse renderSchema ss <&> catMaybes

    pure (a, ds)

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

renderAPI :: Service Solved -> AST API
renderAPI s = do
    rs <- traverse (renderResource s resourceNS "Resource")
        (Map.elems (s ^. dResources)) <&> concat

    ms <- traverse (renderMethod   s methodNS   "Method")
        (s ^. dMethods)

    d  <- pp Print $ apiAlias alias (map _actAliasName (rs <> ms))

    API alias d rs ms <$> serviceURL
  where
    alias = aname (_sCanonicalName s)

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

renderMethod :: Service a -> NS -> Suffix -> Method Solved -> AST Action
renderMethod s root suf m@Method {..} = do
    x@Solved {..} <- getSolved typ
    Just d        <- renderSchema x

    a  <- pp Print $ authDecl     _unique _prefix           (props _schema)
    i  <- pp Print $ requestDecl  _unique _prefix alias url (props _schema) m
    dl <- pp Print $ downloadDecl _unique _prefix alias url (props _schema) m

    let is = a : i : [dl | _mSupportsMediaDownload]

    Action _mId _unique (root <> mkNS ns) _mDescription alias
        <$> pp Print (verbAlias alias m)
        <*> pure (insts is d)
  where
    (alias, typ, ns) = mname (_sCanonicalName s) suf _mId

    url = name (Text.unpack (urlName s))

    insts is = \case
        Prod n h r c ls _ -> Prod n h r c ls is
        d                 -> d

    props = \case
        SObj _ (Obj _ ps) -> Map.keys ps
        _                 -> mempty

renderResource :: Service a -> NS -> Suffix -> Resource Solved -> AST [Action]
renderResource s root suf Resource {..} =
    liftA2 (<>)
        (traverse (renderResource s root suf) (Map.elems _rResources) <&> concat)
        (traverse (renderMethod   s root suf) _rMethods)

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
