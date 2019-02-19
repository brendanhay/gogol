{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlayCustomApp.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlayCustomApp.Types
    (
    -- * Service Configuration
      playCustomAppService

    -- * OAuth Scopes
    , androidPublisherScope

    -- * CustomApp
    , CustomApp
    , customApp
    , caLanguageCode
    , caTitle
    ) where

import           Network.Google.PlayCustomApp.Types.Product
import           Network.Google.PlayCustomApp.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Play Custom App Publishing API. This contains the host and root path used as a starting point for constructing service requests.
playCustomAppService :: ServiceConfig
playCustomAppService
  = defaultService (ServiceId "playcustomapp:v1")
      "www.googleapis.com"

-- | View and manage your Google Play Developer account
androidPublisherScope :: Proxy '["https://www.googleapis.com/auth/androidpublisher"]
androidPublisherScope = Proxy
