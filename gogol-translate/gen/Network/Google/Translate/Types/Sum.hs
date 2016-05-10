{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Translate.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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

instance FromHttpApiData TranslationsListFormat where
    parseQueryParam = \case
        "html" -> Right HTML
        "text" -> Right Text
        x -> Left ("Unable to parse TranslationsListFormat from: " <> x)

instance ToHttpApiData TranslationsListFormat where
    toQueryParam = \case
        HTML -> "html"
        Text -> "text"

instance FromJSON TranslationsListFormat where
    parseJSON = parseJSONText "TranslationsListFormat"

instance ToJSON TranslationsListFormat where
    toJSON = toJSONText
