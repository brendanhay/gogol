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

-- | The format of the text
data LanguageTranslationsListFormat
    = HTML
      -- ^ @html@
      -- Specifies the input is in HTML
    | Text
      -- ^ @text@
      -- Specifies the input is in plain textual format
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LanguageTranslationsListFormat

instance FromText LanguageTranslationsListFormat where
    fromText = \case
        "html" -> Just HTML
        "text" -> Just Text
        _ -> Nothing

instance ToText LanguageTranslationsListFormat where
    toText = \case
        HTML -> "html"
        Text -> "text"

instance FromJSON LanguageTranslationsListFormat where
    parseJSON = parseJSONText "LanguageTranslationsListFormat"

instance ToJSON LanguageTranslationsListFormat where
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
