{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSenseHost.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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

instance FromHttpApiData AssociationSessionsStartProductCode where
    parseQueryParam = \case
        "AFC" -> Right Afc
        "AFG" -> Right Afg
        "AFMC" -> Right Afmc
        "AFS" -> Right Afs
        "AFV" -> Right Afv
        x -> Left ("Unable to parse AssociationSessionsStartProductCode from: " <> x)

instance ToHttpApiData AssociationSessionsStartProductCode where
    toQueryParam = \case
        Afc -> "AFC"
        Afg -> "AFG"
        Afmc -> "AFMC"
        Afs -> "AFS"
        Afv -> "AFV"

instance FromJSON AssociationSessionsStartProductCode where
    parseJSON = parseJSONText "AssociationSessionsStartProductCode"

instance ToJSON AssociationSessionsStartProductCode where
    toJSON = toJSONText
