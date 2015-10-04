{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FreebaseSearch.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FreebaseSearch.Types.Sum where

import           Network.Google.Prelude

-- | Structural format of the json response.
data Format
    = AC
      -- ^ @ac@
      -- Compact format useful for autocomplete\/suggest UIs.
    | Classic
      -- ^ @classic@
      -- [DEPRECATED] Same format as was returned by api.freebase.com.
    | Entity
      -- ^ @entity@
      -- Basic information about the entities.
    | Guids
      -- ^ @guids@
      -- [DEPRECATED] Ordered list of a freebase guids.
    | Ids
      -- ^ @ids@
      -- Ordered list of freebase ids.
    | Mids
      -- ^ @mids@
      -- Ordered list of freebase mids.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Format

instance FromText Format where
    fromText = \case
        "ac" -> Just AC
        "classic" -> Just Classic
        "entity" -> Just Entity
        "guids" -> Just Guids
        "ids" -> Just Ids
        "mids" -> Just Mids
        _ -> Nothing

instance ToText Format where
    toText = \case
        AC -> "ac"
        Classic -> "classic"
        Entity -> "entity"
        Guids -> "guids"
        Ids -> "ids"
        Mids -> "mids"

instance FromJSON Format where
    parseJSON = parseJSONText "Format"

instance ToJSON Format where
    toJSON = toJSONText

-- | The keyword to request help on.
data Help
    = Langs
      -- ^ @langs@
      -- The language codes served by the service.
    | Mappings
      -- ^ @mappings@
      -- The property\/path mappings supported by the filter and output request
      -- parameters.
    | Predicates
      -- ^ @predicates@
      -- The predicates and path-terminating properties supported by the filter
      -- and output request parameters.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Help

instance FromText Help where
    fromText = \case
        "langs" -> Just Langs
        "mappings" -> Just Mappings
        "predicates" -> Just Predicates
        _ -> Nothing

instance ToText Help where
    toText = \case
        Langs -> "langs"
        Mappings -> "mappings"
        Predicates -> "predicates"

instance FromJSON Help where
    parseJSON = parseJSONText "Help"

instance ToJSON Help where
    toJSON = toJSONText

-- | Relevance scoring algorithm to use.
data Scoring
    = SEntity
      -- ^ @entity@
      -- Use freebase and popularity entity ranking.
    | SFreebase
      -- ^ @freebase@
      -- Use freebase entity ranking.
    | SSchema
      -- ^ @schema@
      -- Use schema ranking for properties and types.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Scoring

instance FromText Scoring where
    fromText = \case
        "entity" -> Just SEntity
        "freebase" -> Just SFreebase
        "schema" -> Just SSchema
        _ -> Nothing

instance ToText Scoring where
    toText = \case
        SEntity -> "entity"
        SFreebase -> "freebase"
        SSchema -> "schema"

instance FromJSON Scoring where
    parseJSON = parseJSONText "Scoring"

instance ToJSON Scoring where
    toJSON = toJSONText

-- | Request \'did you mean\' suggestions
data Spell
    = Always
      -- ^ @always@
      -- Request spelling suggestions for any query at least three characters
      -- long.
    | NoResults
      -- ^ @no_results@
      -- Request spelling suggestions if no results were found.
    | NoSpelling
      -- ^ @no_spelling@
      -- Don\'t request spelling suggestions.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Spell

instance FromText Spell where
    fromText = \case
        "always" -> Just Always
        "no_results" -> Just NoResults
        "no_spelling" -> Just NoSpelling
        _ -> Nothing

instance ToText Spell where
    toText = \case
        Always -> "always"
        NoResults -> "no_results"
        NoSpelling -> "no_spelling"

instance FromJSON Spell where
    parseJSON = parseJSONText "Spell"

instance ToJSON Spell where
    toJSON = toJSONText

-- | The encoding of the response. You can use this parameter to enable html
-- encoding.
data Encode
    = HTML
      -- ^ @html@
      -- Encode certain characters in the response (such as tags and ambersands)
      -- using html encoding.
    | Off
      -- ^ @off@
      -- No encoding of the response. You should not print the results directly
      -- on an web page without html-escaping the content first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Encode

instance FromText Encode where
    fromText = \case
        "html" -> Just HTML
        "off" -> Just Off
        _ -> Nothing

instance ToText Encode where
    toText = \case
        HTML -> "html"
        Off -> "off"

instance FromJSON Encode where
    parseJSON = parseJSONText "Encode"

instance ToJSON Encode where
    toJSON = toJSONText
