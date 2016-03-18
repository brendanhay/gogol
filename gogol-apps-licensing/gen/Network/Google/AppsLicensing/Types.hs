{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsLicensing.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsLicensing.Types
    (
    -- * Service Configuration
      appsLicensingService

    -- * OAuth Scopes
    , appsLicensingScope

    -- * LicenseAssignmentInsert
    , LicenseAssignmentInsert
    , licenseAssignmentInsert
    , laiUserId

    -- * LicenseAssignmentList
    , LicenseAssignmentList
    , licenseAssignmentList
    , lalEtag
    , lalNextPageToken
    , lalKind
    , lalItems

    -- * LicenseAssignment
    , LicenseAssignment
    , licenseAssignment
    , laEtags
    , laKind
    , laSKUId
    , laUserId
    , laSelfLink
    , laProductId
    ) where

import           Network.Google.AppsLicensing.Types.Product
import           Network.Google.AppsLicensing.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Enterprise License Manager API. This contains the host and root path used as a starting point for constructing service requests.
appsLicensingService :: ServiceConfig
appsLicensingService
  = defaultService (ServiceId "licensing:v1")
      "www.googleapis.com"

-- | View and manage Google Apps licenses for your domain
appsLicensingScope :: OAuthScope
appsLicensingScope = "https://www.googleapis.com/auth/apps.licensing";
