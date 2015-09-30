{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsLicensing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Licensing API to view and manage license for your domain.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference>
module Network.Google.AppsLicensing
    (
    -- * API
      AppsLicensingAPI
    , appsLicensingAPI
    , appsLicensingURL

    -- * Service Methods

    -- * REST Resources

    -- ** LicensingLicenseAssignmentsDelete
    , module Network.Google.Resource.Licensing.LicenseAssignments.Delete

    -- ** LicensingLicenseAssignmentsGet
    , module Network.Google.Resource.Licensing.LicenseAssignments.Get

    -- ** LicensingLicenseAssignmentsInsert
    , module Network.Google.Resource.Licensing.LicenseAssignments.Insert

    -- ** LicensingLicenseAssignmentsListForProduct
    , module Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct

    -- ** LicensingLicenseAssignmentsListForProductAndSku
    , module Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSku

    -- ** LicensingLicenseAssignmentsPatch
    , module Network.Google.Resource.Licensing.LicenseAssignments.Patch

    -- ** LicensingLicenseAssignmentsUpdate
    , module Network.Google.Resource.Licensing.LicenseAssignments.Update

    -- * Types

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

    -- ** LicenseAssignment
    , LicenseAssignment
    , licenseAssignment
    , laEtags
    , laKind
    , laSkuId
    , laUserId
    , laSelfLink
    , laProductId

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Licensing.LicenseAssignments.Delete
import           Network.Google.Resource.Licensing.LicenseAssignments.Get
import           Network.Google.Resource.Licensing.LicenseAssignments.Insert
import           Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct
import           Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSku
import           Network.Google.Resource.Licensing.LicenseAssignments.Patch
import           Network.Google.Resource.Licensing.LicenseAssignments.Update

{- $resources
TODO
-}

type AppsLicensingAPI =
     LicenseAssignmentsInsertResource :<|>
       LicenseAssignmentsPatchResource
       :<|> LicenseAssignmentsGetResource
       :<|> LicenseAssignmentsListForProductAndSkuResource
       :<|> LicenseAssignmentsListForProductResource
       :<|> LicenseAssignmentsDeleteResource
       :<|> LicenseAssignmentsUpdateResource

appsLicensingAPI :: Proxy AppsLicensingAPI
appsLicensingAPI = Proxy
