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
-- | Retrieves Google Developers Console billing accounts and associates them
-- with projects.
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference>
module Network.Google.Billing
    (
    -- * Service Configuration
      billing

    -- * API Declaration
    , BillingAPI

    -- * Resources

    -- ** CloudBillingBillingAccountsGet
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Get

    -- ** CloudBillingBillingAccountsList
    , module Network.Google.Resource.CloudBilling.BillingAccounts.List

    -- ** CloudBillingBillingAccountsProjectsList
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List

    -- ** CloudBillingProjectsGetBillingInfo
    , module Network.Google.Resource.CloudBilling.Projects.GetBillingInfo

    -- ** CloudBillingProjectsUpdateBillingInfo
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
