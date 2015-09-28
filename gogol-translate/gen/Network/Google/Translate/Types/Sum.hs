{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Translate.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Translate.Types.Sum where

import           Network.Google.Prelude

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

-- | The format of the text
data TranslationsList'Format
    = HTML
      -- ^ @html@
      -- Specifies the input is in HTML
    | Text
      -- ^ @text@
      -- Specifies the input is in plain textual format
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TranslationsList'Format

instance FromText TranslationsList'Format where
    fromText = \case
        "html" -> Just HTML
        "text" -> Just Text
        _ -> Nothing

instance ToText TranslationsList'Format where
    toText = \case
        HTML -> "html"
        Text -> "text"

instance FromJSON TranslationsList'Format where
    parseJSON = parseJSONText "TranslationsList'Format"

instance ToJSON TranslationsList'Format where
    toJSON = toJSONText
