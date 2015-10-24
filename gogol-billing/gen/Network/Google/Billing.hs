{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Billing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves Google Developers Console billing accounts and associates them
-- with projects.
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference>
module Network.Google.Billing
    (
    -- * Service Configuration
      billingService

    -- * API Declaration
    , BillingAPI

    -- * Resources

    -- ** cloudbilling.billingAccounts.get
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Get

    -- ** cloudbilling.billingAccounts.list
    , module Network.Google.Resource.CloudBilling.BillingAccounts.List

    -- ** cloudbilling.billingAccounts.projects.list
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List

    -- ** cloudbilling.projects.getBillingInfo
    , module Network.Google.Resource.CloudBilling.Projects.GetBillingInfo

    -- ** cloudbilling.projects.updateBillingInfo
    , module Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo

    -- * Types

    -- ** BillingAccount
    , BillingAccount
    , billingAccount
    , baOpen
    , baName
    , baDisplayName

    -- ** ProjectBillingInfo
    , ProjectBillingInfo
    , projectBillingInfo
    , pbiName
    , pbiBillingAccountName
    , pbiProjectId
    , pbiBillingEnabled

    -- ** ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse
    , listProjectBillingInfoResponse
    , lpbirNextPageToken
    , lpbirProjectBillingInfo

    -- ** ListBillingAccountsResponse
    , ListBillingAccountsResponse
    , listBillingAccountsResponse
    , lbarNextPageToken
    , lbarBillingAccounts
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudBilling.BillingAccounts.Get
import           Network.Google.Resource.CloudBilling.BillingAccounts.List
import           Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List
import           Network.Google.Resource.CloudBilling.Projects.GetBillingInfo
import           Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Billing API service.
type BillingAPI =
     ProjectsGetBillingInfoResource :<|>
       ProjectsUpdateBillingInfoResource
       :<|> BillingAccountsProjectsListResource
       :<|> BillingAccountsListResource
       :<|> BillingAccountsGetResource
