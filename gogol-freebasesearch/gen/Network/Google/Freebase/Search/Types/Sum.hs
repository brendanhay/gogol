{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Freebase.Search.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Freebase.Search.Types.Sum where

import           Network.Google.Prelude

-- | Request \'did you mean\' suggestions
data Search'Spell
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

instance Hashable Search'Spell

instance FromText Search'Spell where
    fromText = \case
        "always" -> Just Always
        "no_results" -> Just NoResults
        "no_spelling" -> Just NoSpelling
        _ -> Nothing

instance ToText Search'Spell where
    toText = \case
        Always -> "always"
        NoResults -> "no_results"
        NoSpelling -> "no_spelling"

instance FromJSON Search'Spell where
    parseJSON = parseJSONText "Search'Spell"

instance ToJSON Search'Spell where
    toJSON = toJSONText

-- | The encoding of the response. You can use this parameter to enable html
-- encoding.
data Search'Encode
    = HTML
      -- ^ @html@
      -- Encode certain characters in the response (such as tags and ambersands)
      -- using html encoding.
    | Off
      -- ^ @off@
      -- No encoding of the response. You should not print the results directly
      -- on an web page without html-escaping the content first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Search'Encode

instance FromText Search'Encode where
    fromText = \case
        "html" -> Just HTML
        "off" -> Just Off
        _ -> Nothing

instance ToText Search'Encode where
    toText = \case
        HTML -> "html"
        Off -> "off"

instance FromJSON Search'Encode where
    parseJSON = parseJSONText "Search'Encode"

instance ToJSON Search'Encode where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | The keyword to request help on.
data Search'Help
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

instance Hashable Search'Help

instance FromText Search'Help where
    fromText = \case
        "langs" -> Just Langs
        "mappings" -> Just Mappings
        "predicates" -> Just Predicates
        _ -> Nothing

instance ToText Search'Help where
    toText = \case
        Langs -> "langs"
        Mappings -> "mappings"
        Predicates -> "predicates"

instance FromJSON Search'Help where
    parseJSON = parseJSONText "Search'Help"

instance ToJSON Search'Help where
    toJSON = toJSONText

-- | Structural format of the json response.
data Search'Format
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

instance Hashable Search'Format

instance FromText Search'Format where
    fromText = \case
        "ac" -> Just AC
        "classic" -> Just Classic
        "entity" -> Just Entity
        "guids" -> Just Guids
        "ids" -> Just Ids
        "mids" -> Just Mids
        _ -> Nothing

instance ToText Search'Format where
    toText = \case
        AC -> "ac"
        Classic -> "classic"
        Entity -> "entity"
        Guids -> "guids"
        Ids -> "ids"
        Mids -> "mids"

instance FromJSON Search'Format where
    parseJSON = parseJSONText "Search'Format"

instance ToJSON Search'Format where
    toJSON = toJSONText

-- | Relevance scoring algorithm to use.
data Search'Scoring
    = SSEntity
      -- ^ @entity@
      -- Use freebase and popularity entity ranking.
    | SSFreebase
      -- ^ @freebase@
      -- Use freebase entity ranking.
    | SSSchema
      -- ^ @schema@
      -- Use schema ranking for properties and types.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Search'Scoring

instance FromText Search'Scoring where
    fromText = \case
        "entity" -> Just SSEntity
        "freebase" -> Just SSFreebase
        "schema" -> Just SSSchema
        _ -> Nothing

instance ToText Search'Scoring where
    toText = \case
        SSEntity -> "entity"
        SSFreebase -> "freebase"
        SSSchema -> "schema"

instance FromJSON Search'Scoring where
    parseJSON = parseJSONText "Search'Scoring"

instance ToJSON Search'Scoring where
    toJSON = toJSONText
