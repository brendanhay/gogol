-- |
-- Module      : Network.Google.EnterpriseLicenseManager
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Licensing API to view and manage license for your domain.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference>
module Network.Google.EnterpriseLicenseManager
    (
    -- * API Definition
      EnterpriseLicenseManager



    -- * Types

    -- ** LicenseAssignment
    , LicenseAssignment
    , licenseAssignment
    , laEtags
    , laKind
    , laSkuId
    , laUserId
    , laSelfLink
    , laProductId

    -- ** LicenseAssignmentInsert
    , LicenseAssignmentInsert
    , licenseAssignmentInsert
    , laiUserId

    -- ** LicenseAssignmentList
    , LicenseAssignmentList
    , licenseAssignmentList
    , lalEtag
    , lalNextPageToken
    , lalKind
    , lalItems
    ) where

import           Network.Google.EnterpriseLicenseManager.Types

{- $resources
TODO
-}

type EnterpriseLicenseManager = ()

enterpriseLicenseManager :: Proxy EnterpriseLicenseManager
enterpriseLicenseManager = Proxy




