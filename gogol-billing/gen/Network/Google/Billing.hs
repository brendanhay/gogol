{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Retrieves Google Developers Console billing accounts and associates them
-- with projects.
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference>
module Network.Google.Billing
    (
    -- * API
      BillingAPI
    , billingAPI
    , billingURL

    -- * Service Methods

    -- * REST Resources

    -- ** CloudbillingBillingAccountsGet
    , module Cloudbilling.BillingAccounts.Get

    -- ** CloudbillingBillingAccountsList
    , module Cloudbilling.BillingAccounts.List

    -- ** CloudbillingBillingAccountsProjectsList
    , module Cloudbilling.BillingAccounts.Projects.List

    -- ** CloudbillingProjectsGetBillingInfo
    , module Cloudbilling.Projects.GetBillingInfo

    -- ** CloudbillingProjectsUpdateBillingInfo
    , module Cloudbilling.Projects.UpdateBillingInfo

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
import           Network.Google.Resource.Cloudbilling.BillingAccounts.Get
import           Network.Google.Resource.Cloudbilling.BillingAccounts.List
import           Network.Google.Resource.Cloudbilling.BillingAccounts.Projects.List
import           Network.Google.Resource.Cloudbilling.Projects.GetBillingInfo
import           Network.Google.Resource.Cloudbilling.Projects.UpdateBillingInfo

{- $resources
TODO
-}

type BillingAPI = Projects :<|> BillingAccounts

billingAPI :: Proxy BillingAPI
billingAPI = Proxy
