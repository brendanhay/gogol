{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Apps.Licensing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Licensing API to view and manage license for your domain.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference>
module Network.Google.Apps.Licensing
    (
    -- * REST Resources

    -- ** Enterprise License Manager API
      AppsLicensing
    , appsLicensing
    , appsLicensingURL

    -- ** licensing.licenseAssignments.delete
    , module Network.Google.API.Licensing.LicenseAssignments.Delete

    -- ** licensing.licenseAssignments.get
    , module Network.Google.API.Licensing.LicenseAssignments.Get

    -- ** licensing.licenseAssignments.insert
    , module Network.Google.API.Licensing.LicenseAssignments.Insert

    -- ** licensing.licenseAssignments.listForProduct
    , module Network.Google.API.Licensing.LicenseAssignments.ListForProduct

    -- ** licensing.licenseAssignments.listForProductAndSku
    , module Network.Google.API.Licensing.LicenseAssignments.ListForProductAndSku

    -- ** licensing.licenseAssignments.patch
    , module Network.Google.API.Licensing.LicenseAssignments.Patch

    -- ** licensing.licenseAssignments.update
    , module Network.Google.API.Licensing.LicenseAssignments.Update

    -- * Types

    -- ** LicenseAssignmentList
    , LicenseAssignmentList
    , licenseAssignmentList
    , lalEtag
    , lalNextPageToken
    , lalKind
    , lalItems

    -- ** Alt
    , Alt (..)

    -- ** LicenseAssignmentInsert
    , LicenseAssignmentInsert
    , licenseAssignmentInsert
    , laiUserId

    -- ** LicenseAssignment
    , LicenseAssignment
    , licenseAssignment
    , laEtags
    , laKind
    , laSkuId
    , laUserId
    , laSelfLink
    , laProductId
    ) where

import           Network.Google.API.Licensing.LicenseAssignments.Delete
import           Network.Google.API.Licensing.LicenseAssignments.Get
import           Network.Google.API.Licensing.LicenseAssignments.Insert
import           Network.Google.API.Licensing.LicenseAssignments.ListForProduct
import           Network.Google.API.Licensing.LicenseAssignments.ListForProductAndSku
import           Network.Google.API.Licensing.LicenseAssignments.Patch
import           Network.Google.API.Licensing.LicenseAssignments.Update
import           Network.Google.Apps.Licensing.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsLicensing =
     LicenseAssignmentsGetAPI :<|>
       LicenseAssignmentsDeleteAPI
       :<|> LicenseAssignmentsInsertAPI
       :<|> LicenseAssignmentsUpdateAPI
       :<|> LicenseAssignmentsListForProductAndSkuAPI
       :<|> LicenseAssignmentsListForProductAPI
       :<|> LicenseAssignmentsPatchAPI

appsLicensing :: Proxy AppsLicensing
appsLicensing = Proxy
