{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ViewPatterns #-}

-- Module      : Gen.AST.Render
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST.Render
  ( render,
  )
where

import Control.Applicative
import Control.Error
import Control.Lens hiding (enum, lens)
import qualified Data.ByteString.Builder as BB
import qualified Data.ByteString.Char8 as C8
import Data.Char (isSpace)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.String
import qualified Data.Text.Lazy as LText
import qualified Data.Text.Lazy.Encoding as LText
import Gen.AST.Solve (getSolved)
import Gen.Formatting
import Gen.Syntax
import Gen.Types
import qualified HIndent
import qualified HIndent.Types as HIndent
import Language.Haskell.Exts.Build (name)
import Language.Haskell.Exts.Pretty as PP
import Prelude hiding (sum)

render :: Service Solved -> AST (API, [Data])
render s = do
  a <- renderAPI s

  let actions = map _actType (_apiResources a <> _apiMethods a)
      valid = Map.keys . Map.filter (\v -> _unique v `notElem` actions)

  ss <- traverse getSolved $ valid (s ^. dSchemas)
  ds <- traverse renderSchema ss <&> catMaybes

  pure (a, ds)

renderSchema :: Solved -> AST (Maybe Data)
renderSchema s = go (_schema s)
  where
    go = \case
      SEnm i e -> pure (Just (enum i e))
      SObj i o -> Just <$> object i o
      _ -> pure Nothing

    k = _unique s
    p = _prefix s
    ds = _deriving s

    enum i (Enm vs) =
      Sum (dname k) (i ^. iDescription) $
        map (\(v, h) -> Branch (bname p v) v h) vs

    object i (Obj aps ps) = do
      a <- traverse getSolved (aps :: Maybe Global)
      b <- traverse getSolved (ps :: Map Local Global)
      let ab = setAdditional <$> a
          ts = maybe b (flip (Map.insert "addtional") b) ab
      prod ts
      where
        prod ts =
          Prod (dname k) (i ^. iDescription)
            <$> pp None (objDecl k ts)
            <*> pure (objFields ts)
            <*> pp None (objDerive ds)
            <*> traverse (pp Print) (jsonDecls k p ts)
            <*> ctor ts

        ctor ts =
          Fun' (cname k) (Just help)
            <$> (pp None (ctorSig k ts) <&> comments ts)
            <*> pp Indent (ctorDecl k p ts)

        help =
          rawHelpText $
            sformat
              ( "Creates a value of '" % gid
                  % "' with the minimum fields required to make a request.\n"
              )
              k

renderAPI :: Service Solved -> AST API
renderAPI s = do
  rs <- traverse (renderResource s "Resource") (Map.elems (s ^. dResources)) <&> concat
  ms <- traverse (renderMethod s "Method") (s ^. dMethods)

  d <- pp Print $ apiAlias alias (map _actAliasName (rs <> ms))

  API alias d rs ms
    <$> svc
    <*> traverse scope (maybe mempty (Map.toList . scopes) (s ^. dAuth))
  where
    alias = aname (_sCanonicalName s)

    url = name (serviceName s)

    svc =
      Fun' url (Just (rawHelpText h))
        <$> pp None (serviceSig url)
        <*> pp Print (serviceDecl s url)
      where
        h =
          sformat
            ( "Default request referring to version @" % stext
                % "@ of the "
                % stext
                % ". This contains the host and root path used as a starting point for constructing service requests."
            )
            (s ^. dVersion)
            (s ^. dTitle)

    scope (k, h) =
      Fun' n (Just h)
        <$> pp None (scopeSig n k)
        <*> pp None (scopeDecl n)
      where
        n = name (scopeName s k)

renderMethod :: Service a -> Suffix -> Method Solved -> AST Action
renderMethod s suf m@Method {..} = do
  typ <- reserveType typ'

  x@Solved {..} <- getSolved typ

  d <-
    renderSchema x >>= \case
      Nothing -> error "failed to render the schema"
      Just ok -> pure ok

  i <- pp Print $ requestDecl _unique _prefix alias url (props _schema) m
  dl <- pp Print $ downloadDecl _unique _prefix alias url (props _schema) m
  ul <- pp Print $ uploadDecl _unique _prefix alias url (props _schema) m

  let inst = i : [dl | _mSupportsMediaDownload && not _mSupportsMediaUpload] ++ [ul | _mSupportsMediaUpload]

  Action (commasep _mId) _unique root _mDescription alias
    <$> pp Print (verbAlias s alias m)
    <*> pure (insts inst d)
  where
    root = collapseNS (tocNS s <> UnsafeNS parts)

    (alias, typ', parts) = mname (_sCanonicalName s) suf _mId

    url = name (serviceName s)

    insts is = \case
      Prod n h d fs ds _ c -> Prod n h d fs ds is c
      d -> d

    props = \case
      SObj _ (Obj _ ps) -> Map.keys ps
      _ -> mempty

renderResource :: Service a -> Suffix -> Resource Solved -> AST [Action]
renderResource s suf Resource {..} =
  (<>)
    <$> (traverse (renderResource s suf) (Map.elems _rResources) <&> concat)
    <*> traverse (renderMethod s suf) _rMethods

data PP
  = Indent
  | Print
  | None
  deriving (Eq)

pp :: (Pretty a, Show a) => PP -> a -> AST Rendered
pp i x
  | i == Indent = result (HIndent.reformat HIndent.defaultConfig Nothing Nothing p)
  | otherwise = pure (LText.pack (C8.unpack p))
  where
    result = hoistEither . bimap (e . LText.pack) (LText.decodeUtf8 . BB.toLazyByteString)

    e = flip mappend ("\nSyntax:\n" <> LText.pack (C8.unpack p) <> "\nAST:\n" <> LText.pack (show x))

    p =
      C8.dropWhile isSpace
        . C8.pack
        $ prettyPrintStyleMode s m x

    s =
      style
        { mode = PageMode,
          lineLength = 80,
          ribbonsPerLine = 1.5
        }

    m
      | i == Print = defaultMode
      | i == Indent = defaultMode
      | otherwise =
        defaultMode
          { layout = PPNoLayout,
            spacing = False
          }

-- FIXME: dirty hack to render smart ctor parameter comments.
comments :: Map Local Solved -> Rendered -> Rendered
comments (Map.toList -> rs) =
  LText.replace "::" "\n    :: "
    . LText.intercalate "\n    -> "
    . zipWith rel ps
    . map LText.strip
    . LText.splitOn "->"
  where
    ks = filter (parameter . _schema . snd) rs
    ps = map Just ks ++ repeat Nothing

    rel Nothing t = t
    rel (Just (l, s)) t =
      t <> "\n       -- ^ "
        <> maybe mempty (LText.drop 11 . renderHelp . Nest 7) (s ^. iDescription)
        <> " See '"
        <> fromString (PP.prettyPrint (fname l))
        <> "'."
