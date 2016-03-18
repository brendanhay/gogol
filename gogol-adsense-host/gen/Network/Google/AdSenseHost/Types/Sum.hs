{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSenseHost.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSenseHost.Types.Sum where

import           Network.Google.Prelude

-- | Products to associate with the user.
data AssociationSessionsStartProductCode
    = Afc
      -- ^ @AFC@
      -- AdSense For Content
    | Afg
      -- ^ @AFG@
      -- AdSense For Games
    | Afmc
      -- ^ @AFMC@
      -- AdSense For Mobile Content - deprecated
    | Afs
      -- ^ @AFS@
      -- AdSense For Search - deprecated
    | Afv
      -- ^ @AFV@
      -- AdSense For Video
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AssociationSessionsStartProductCode

instance FromText AssociationSessionsStartProductCode where
    fromText = \case
        "AFC" -> Just Afc
        "AFG" -> Just Afg
        "AFMC" -> Just Afmc
        "AFS" -> Just Afs
        "AFV" -> Just Afv
        _ -> Nothing

instance ToText AssociationSessionsStartProductCode where
    toText = \case
        Afc -> "AFC"
        Afg -> "AFG"
        Afmc -> "AFMC"
        Afs -> "AFS"
        Afv -> "AFV"

instance FromJSON AssociationSessionsStartProductCode where
    parseJSON = parseJSONText "AssociationSessionsStartProductCode"

instance ToJSON AssociationSessionsStartProductCode where
    toJSON = toJSONText
