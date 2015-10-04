{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SiteVerification.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SiteVerification.Types
    (
    -- * Service URL
      siteVerificationURL

    -- * SiteVerificationWebResourceGettokenResponse
    , SiteVerificationWebResourceGettokenResponse
    , siteVerificationWebResourceGettokenResponse
    , svwrgrToken
    , svwrgrMethod

    -- * SiteVerificationWebResourceListResponse
    , SiteVerificationWebResourceListResponse
    , siteVerificationWebResourceListResponse
    , svwrlrItems

    -- * SiteVerificationWebResourceResourceSite
    , SiteVerificationWebResourceResourceSite
    , siteVerificationWebResourceResourceSite
    , svwrrsIdentifier
    , svwrrsType

    -- * SiteVerificationWebResourceGettokenRequest
    , SiteVerificationWebResourceGettokenRequest
    , siteVerificationWebResourceGettokenRequest
    , svwrgrSite
    , svwrgrVerificationMethod

    -- * SiteVerificationWebResourceResource
    , SiteVerificationWebResourceResource
    , siteVerificationWebResourceResource
    , svwrrOwners
    , svwrrId
    , svwrrSite

    -- * Site
    , Site
    , site
    , sIdentifier
    , sType
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types.Product
import           Network.Google.SiteVerification.Types.Sum

-- | URL referring to version 'v1' of the Google Site Verification API.
siteVerificationURL :: BaseUrl
siteVerificationURL
  = BaseUrl Https
      "https://www.googleapis.com/siteVerification/v1/"
      443
