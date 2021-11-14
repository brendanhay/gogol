{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsLicensing
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Enterprise License Manager API\'s allows you to license apps
-- for all the users of a domain managed by you.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference>
module Network.Google.AppsLicensing
    (
    -- * Service Configuration
      appsLicensingService

    -- * OAuth Scopes
    , appsLicensingScope

    -- * API Declaration
    , AppsLicensingAPI

    -- * Resources

    -- ** licensing.licenseAssignments.delete
    , module Network.Google.Resource.Licensing.LicenseAssignments.Delete

    -- ** licensing.licenseAssignments.get
    , module Network.Google.Resource.Licensing.LicenseAssignments.Get

    -- ** licensing.licenseAssignments.insert
    , module Network.Google.Resource.Licensing.LicenseAssignments.Insert

    -- ** licensing.licenseAssignments.listForProduct
    , module Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct

    -- ** licensing.licenseAssignments.listForProductAndSku
    , module Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSKU

    -- ** licensing.licenseAssignments.patch
    , module Network.Google.Resource.Licensing.LicenseAssignments.Patch

    -- ** licensing.licenseAssignments.update
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

    -- ** Empty
    , Empty
    , empty

    -- ** LicenseAssignment
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

    -- ** Xgafv
    , Xgafv (..)
    ) where

import Network.Google.Prelude
import Network.Google.AppsLicensing.Types
import Network.Google.Resource.Licensing.LicenseAssignments.Delete
import Network.Google.Resource.Licensing.LicenseAssignments.Get
import Network.Google.Resource.Licensing.LicenseAssignments.Insert
import Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct
import Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSKU
import Network.Google.Resource.Licensing.LicenseAssignments.Patch
import Network.Google.Resource.Licensing.LicenseAssignments.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Enterprise License Manager API service.
type AppsLicensingAPI =
     LicenseAssignmentsInsertResource :<|>
       LicenseAssignmentsPatchResource
       :<|> LicenseAssignmentsGetResource
       :<|> LicenseAssignmentsListForProductAndSKUResource
       :<|> LicenseAssignmentsListForProductResource
       :<|> LicenseAssignmentsDeleteResource
       :<|> LicenseAssignmentsUpdateResource
