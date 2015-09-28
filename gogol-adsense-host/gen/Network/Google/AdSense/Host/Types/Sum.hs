{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSense.Host.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSense.Host.Types.Sum where

import           Network.Google.Prelude

-- | Data format for the response.
data Alt
    = CSV
      -- ^ @csv@
      -- Responses with Content-Type of text\/csv
    | JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "csv" -> Just CSV
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        CSV -> "csv"
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Products to associate with the user.
data AssociationsessionsStart'ProductCode
    = Afc
      -- ^ @AFC@
      -- AdSense For Content
    | Afg
      -- ^ @AFG@
      -- AdSense For Games
    | Afmc
      -- ^ @AFMC@
      -- AdSense For Mobile Content
    | Afs
      -- ^ @AFS@
      -- AdSense For Search
    | Afv
      -- ^ @AFV@
      -- AdSense For Video
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AssociationsessionsStart'ProductCode

instance FromText AssociationsessionsStart'ProductCode where
    fromText = \case
        "AFC" -> Just Afc
        "AFG" -> Just Afg
        "AFMC" -> Just Afmc
        "AFS" -> Just Afs
        "AFV" -> Just Afv
        _ -> Nothing

instance ToText AssociationsessionsStart'ProductCode where
    toText = \case
        Afc -> "AFC"
        Afg -> "AFG"
        Afmc -> "AFMC"
        Afs -> "AFS"
        Afv -> "AFV"

instance FromJSON AssociationsessionsStart'ProductCode where
    parseJSON = parseJSONText "AssociationsessionsStart'ProductCode"

instance ToJSON AssociationsessionsStart'ProductCode where
    toJSON = toJSONText
