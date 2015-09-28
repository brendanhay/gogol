{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Licensing.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Licensing.Types
    (
    -- * Service URL
      appsLicensingURL

    -- * LicenseAssignmentList
    , LicenseAssignmentList
    , licenseAssignmentList
    , lalEtag
    , lalNextPageToken
    , lalKind
    , lalItems

    -- * Alt
    , Alt (..)

    -- * LicenseAssignmentInsert
    , LicenseAssignmentInsert
    , licenseAssignmentInsert
    , laiUserId

    -- * LicenseAssignment
    , LicenseAssignment
    , licenseAssignment
    , laEtags
    , laKind
    , laSkuId
    , laUserId
    , laSelfLink
    , laProductId
    ) where

import           Network.Google.Apps.Licensing.Types.Product
import           Network.Google.Apps.Licensing.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Enterprise License Manager API.
appsLicensingURL :: BaseUrl
appsLicensingURL
  = BaseUrl Https
      "https://www.googleapis.com/apps/licensing/v1/product/"
      443
