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
data FreebaseSearchFormat
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

instance Hashable FreebaseSearchFormat

instance FromText FreebaseSearchFormat where
    fromText = \case
        "ac" -> Just AC
        "classic" -> Just Classic
        "entity" -> Just Entity
        "guids" -> Just Guids
        "ids" -> Just Ids
        "mids" -> Just Mids
        _ -> Nothing

instance ToText FreebaseSearchFormat where
    toText = \case
        AC -> "ac"
        Classic -> "classic"
        Entity -> "entity"
        Guids -> "guids"
        Ids -> "ids"
        Mids -> "mids"

instance FromJSON FreebaseSearchFormat where
    parseJSON = parseJSONText "FreebaseSearchFormat"

instance ToJSON FreebaseSearchFormat where
    toJSON = toJSONText

-- | Relevance scoring algorithm to use.
data FreebaseSearchScoring
    = FSSEntity
      -- ^ @entity@
      -- Use freebase and popularity entity ranking.
    | FSSFreebase
      -- ^ @freebase@
      -- Use freebase entity ranking.
    | FSSSchema
      -- ^ @schema@
      -- Use schema ranking for properties and types.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FreebaseSearchScoring

instance FromText FreebaseSearchScoring where
    fromText = \case
        "entity" -> Just FSSEntity
        "freebase" -> Just FSSFreebase
        "schema" -> Just FSSSchema
        _ -> Nothing

instance ToText FreebaseSearchScoring where
    toText = \case
        FSSEntity -> "entity"
        FSSFreebase -> "freebase"
        FSSSchema -> "schema"

instance FromJSON FreebaseSearchScoring where
    parseJSON = parseJSONText "FreebaseSearchScoring"

instance ToJSON FreebaseSearchScoring where
    toJSON = toJSONText

-- | The encoding of the response. You can use this parameter to enable html
-- encoding.
data FreebaseSearchEncode
    = HTML
      -- ^ @html@
      -- Encode certain characters in the response (such as tags and ambersands)
      -- using html encoding.
    | Off
      -- ^ @off@
      -- No encoding of the response. You should not print the results directly
      -- on an web page without html-escaping the content first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FreebaseSearchEncode

instance FromText FreebaseSearchEncode where
    fromText = \case
        "html" -> Just HTML
        "off" -> Just Off
        _ -> Nothing

instance ToText FreebaseSearchEncode where
    toText = \case
        HTML -> "html"
        Off -> "off"

instance FromJSON FreebaseSearchEncode where
    parseJSON = parseJSONText "FreebaseSearchEncode"

instance ToJSON FreebaseSearchEncode where
    toJSON = toJSONText

-- | The keyword to request help on.
data FreebaseSearchHelp
    = Langs
      -- ^ @langs@
      -- The language codes served by the service.
    | MAppings
      -- ^ @mappings@
      -- The property\/path mappings supported by the filter and output request
      -- parameters.
    | Predicates
      -- ^ @predicates@
      -- The predicates and path-terminating properties supported by the filter
      -- and output request parameters.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FreebaseSearchHelp

instance FromText FreebaseSearchHelp where
    fromText = \case
        "langs" -> Just Langs
        "mappings" -> Just MAppings
        "predicates" -> Just Predicates
        _ -> Nothing

instance ToText FreebaseSearchHelp where
    toText = \case
        Langs -> "langs"
        MAppings -> "mappings"
        Predicates -> "predicates"

instance FromJSON FreebaseSearchHelp where
    parseJSON = parseJSONText "FreebaseSearchHelp"

instance ToJSON FreebaseSearchHelp where
    toJSON = toJSONText

-- | Request \'did you mean\' suggestions
data FreebaseSearchSpell
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

instance Hashable FreebaseSearchSpell

instance FromText FreebaseSearchSpell where
    fromText = \case
        "always" -> Just Always
        "no_results" -> Just NoResults
        "no_spelling" -> Just NoSpelling
        _ -> Nothing

instance ToText FreebaseSearchSpell where
    toText = \case
        Always -> "always"
        NoResults -> "no_results"
        NoSpelling -> "no_spelling"

instance FromJSON FreebaseSearchSpell where
    parseJSON = parseJSONText "FreebaseSearchSpell"

instance ToJSON FreebaseSearchSpell where
    toJSON = toJSONText
