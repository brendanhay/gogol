{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Sum where

import Network.Google.Prelude

-- | The analysis strategy to use
data PagespeedapiRunpagespeedStrategy
    = Desktop
      -- ^ @desktop@
      -- Fetch and analyze the URL for desktop browsers
    | Mobile
      -- ^ @mobile@
      -- Fetch and analyze the URL for mobile devices
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PagespeedapiRunpagespeedStrategy

instance FromText PagespeedapiRunpagespeedStrategy where
    fromText = \case
        "desktop" -> Just Desktop
        "mobile" -> Just Mobile
        _ -> Nothing

instance ToText PagespeedapiRunpagespeedStrategy where
    toText = \case
        Desktop -> "desktop"
        Mobile -> "mobile"

instance FromJSON PagespeedapiRunpagespeedStrategy where
    parseJSON = parseJSONText "PagespeedapiRunpagespeedStrategy"

instance ToJSON PagespeedapiRunpagespeedStrategy where
    toJSON = toJSONText
