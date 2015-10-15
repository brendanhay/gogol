{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      siteVerification

    -- * OAuth Scopes
    , siteverificationVerifyOnlyScope
    , siteverificationScope

    -- * SiteVerificationWebResourceGettokenRequestSite
    , SiteVerificationWebResourceGettokenRequestSite
    , siteVerificationWebResourceGettokenRequestSite
    , svwrgrsIdentifier
    , svwrgrsType

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
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types.Product
import           Network.Google.SiteVerification.Types.Sum

-- | Default request referring to version 'v1' of the Google Site Verification API. This contains the host and root path used as a starting point for constructing service requests.
siteVerification :: Service
siteVerification
  = defaultService (ServiceId "siteVerification:v1")
      "www.googleapis.com"
      "siteVerification/v1/"

-- | Manage your new site verifications with Google
siteverificationVerifyOnlyScope :: OAuthScope
siteverificationVerifyOnlyScope = "https://www.googleapis.com/auth/siteverification.verify_only";

-- | Manage the list of sites and domains you control
siteverificationScope :: OAuthScope
siteverificationScope = "https://www.googleapis.com/auth/siteverification";
