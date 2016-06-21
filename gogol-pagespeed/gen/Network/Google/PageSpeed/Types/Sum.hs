{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Sum where

import           Network.Google.Prelude

-- | The analysis strategy to use
data PagespeedAPIRunPagespeedStrategy
    = Desktop
      -- ^ @desktop@
      -- Fetch and analyze the URL for desktop browsers
    | Mobile
      -- ^ @mobile@
      -- Fetch and analyze the URL for mobile devices
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagespeedAPIRunPagespeedStrategy

instance FromHttpApiData PagespeedAPIRunPagespeedStrategy where
    parseQueryParam = \case
        "desktop" -> Right Desktop
        "mobile" -> Right Mobile
        x -> Left ("Unable to parse PagespeedAPIRunPagespeedStrategy from: " <> x)

instance ToHttpApiData PagespeedAPIRunPagespeedStrategy where
    toQueryParam = \case
        Desktop -> "desktop"
        Mobile -> "mobile"

instance FromJSON PagespeedAPIRunPagespeedStrategy where
    parseJSON = parseJSONText "PagespeedAPIRunPagespeedStrategy"

instance ToJSON PagespeedAPIRunPagespeedStrategy where
    toJSON = toJSONText
