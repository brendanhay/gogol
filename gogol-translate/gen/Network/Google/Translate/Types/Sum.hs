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
data TranslationsListFormat
    = HTML
      -- ^ @html@
      -- Specifies the input is in HTML
    | Text
      -- ^ @text@
      -- Specifies the input is in plain textual format
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TranslationsListFormat

instance FromText TranslationsListFormat where
    fromText = \case
        "html" -> Just HTML
        "text" -> Just Text
        _ -> Nothing

instance ToText TranslationsListFormat where
    toText = \case
        HTML -> "html"
        Text -> "text"

instance FromJSON TranslationsListFormat where
    parseJSON = parseJSONText "TranslationsListFormat"

instance ToJSON TranslationsListFormat where
    toJSON = toJSONText
