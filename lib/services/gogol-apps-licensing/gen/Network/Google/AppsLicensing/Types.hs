{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsLicensing.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- * Empty
    , Empty
    , empty

    -- * LicenseAssignment
    , LicenseAssignment
    , licenseAssignment
    , laProductName
    , laEtags
    , laSKUName
    , laKind
    , laSKUId
    , laUserId
    , laSelfLink
    , laProductId

    -- * Xgafv
    , Xgafv (..)
    ) where

import Network.Google.AppsLicensing.Types.Product
import Network.Google.AppsLicensing.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Enterprise License Manager API. This contains the host and root path used as a starting point for constructing service requests.
appsLicensingService :: ServiceConfig
appsLicensingService
  = defaultService (ServiceId "licensing:v1")
      "licensing.googleapis.com"

-- | View and manage G Suite licenses for your domain
appsLicensingScope :: Proxy '["https://www.googleapis.com/auth/apps.licensing"]
appsLicensingScope = Proxy
