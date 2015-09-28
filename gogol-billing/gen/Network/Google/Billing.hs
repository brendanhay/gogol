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
    -- * REST Resources

    -- ** Google Cloud Billing API
      Billing
    , billing
    , billingURL

    -- ** cloudbilling.billingAccounts.projects.list
    , module Network.Google.API.Cloudbilling.BillingAccounts.Projects.List

    -- ** cloudbilling.projects.getBillingInfo
    , module Network.Google.API.Cloudbilling.Projects.GetBillingInfo

    -- ** cloudbilling.projects.updateBillingInfo
    , module Network.Google.API.Cloudbilling.Projects.UpdateBillingInfo

    -- * Types

    -- ** BillingAccount
    , BillingAccount
    , billingAccount
    , baOpen
    , baName
    , baDisplayName

    -- ** ListBillingAccountsResponse
    , ListBillingAccountsResponse
    , listBillingAccountsResponse
    , lbarNextPageToken
    , lbarBillingAccounts

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
    ) where

import           Network.Google.API.Cloudbilling.BillingAccounts.Projects.List
import           Network.Google.API.Cloudbilling.Projects.GetBillingInfo
import           Network.Google.API.Cloudbilling.Projects.UpdateBillingInfo
import           Network.Google.Billing.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Billing =
     BillingAccountsProjectsListAPI :<|>
       ProjectsGetBillingInfoAPI
       :<|> ProjectsUpdateBillingInfoAPI

billing :: Proxy Billing
billing = Proxy
