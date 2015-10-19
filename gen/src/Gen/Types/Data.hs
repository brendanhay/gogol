{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveFoldable             #-}
{-# LANGUAGE DeriveFunctor              #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DeriveTraversable          #-}
{-# LANGUAGE ExtendedDefaultRules       #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TemplateHaskell            #-}

{-# OPTIONS_GHC -fno-warn-type-defaults #-}

-- Module      : Gen.Types.Data
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Data where

import           Data.Aeson                   hiding (Array, Bool, String)
import           Data.List                    (sortOn)
import           Data.Maybe
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy               as LText
import           Data.Text.Manipulate
import           Gen.Orphans                  ()
import           Gen.Types.Help
import           Gen.Types.Id
import           Gen.Types.NS
import           Language.Haskell.Exts        (Name)
import           Language.Haskell.Exts.Pretty (Pretty, prettyPrint)
import           Prelude                      hiding (Enum)

default (Text)

type Rendered = LText.Text

data Syn a = Syn { syntax :: a }

instance Pretty a => ToJSON (Syn a) where
    toJSON = toJSON . prettyPrint . syntax

data Fun = Fun' Name (Maybe Help) Rendered Rendered

instance ToJSON Fun where
    toJSON (Fun' n h s d) = object
        [ "name" .= Syn n
        , "help" .= h
        , "sig"  .= s
        , "decl" .= d
        ]

data Branch = Branch Name Text Help

instance ToJSON Branch where
    toJSON (Branch n v h) = object
        [ "name"  .= Syn n
        , "value" .= v
        , "help"  .= Below 6 h
        ]

data Data
    = Sum  Name (Maybe Help) [Branch]
    | Prod Name (Maybe Help) Rendered Fun [Fun] [Rendered]

instance ToJSON Data where
    toJSON = \case
        Sum n h bs -> object
            [ "name"     .= Syn n
            , "type"     .= "sum"
            , "help"     .= h
            , "branches" .= bs
            ]

        Prod n h d c ls is -> object
            [ "name"      .= Syn n
            , "type"      .= "prod"
            , "decl"      .= d
            , "help"      .= h
            , "ctor"      .= c
            , "lenses"    .= ls
            , "instances" .= is
            ]

dataName :: Data -> Name
dataName = \case
    Sum  n _ _       -> n
    Prod n _ _ _ _ _ -> n

data Action = Action
    { _actId        :: Text
    , _actType      :: Global
    , _actNamespace :: NS
    , _actHelp      :: Maybe Help
    , _actAliasName :: Name
    , _actAlias     :: Rendered
    , _actData      :: Data
    }

instance ToJSON Action where
    toJSON Action {..} = object
        [ "id"        .= _actId
        , "ns"        .= _actNamespace
        , "help"      .= _actHelp
        , "aliasName" .= Syn _actAliasName
        , "alias"     .= _actAlias
        , "type"      .= _actData
        ]

data API = API
    { _apiAliasName :: Name
    , _apiAlias     :: Rendered
    , _apiResources :: [Action]
    , _apiMethods   :: [Action]
    , _apiURL       :: Fun
    , _apuScopes    :: [Fun]
    }

instance ToJSON API where
    toJSON API {..} = object
         [ "aliasName" .= Syn _apiAliasName
         , "aliasProxy".= lowerHead (Text.pack (prettyPrint _apiAliasName))
         , "alias"     .= _apiAlias
         , "resources" .= sortOn _actId _apiResources
         , "methods"   .= sortOn _actId _apiMethods
         , "url"       .= _apiURL
         , "scopes"    .= _apuScopes
         ]
