-- |
-- Module      : Network.Google.CloudBilling
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves Google Developers Console billing accounts and associates them with projects.
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference>
module Network.Google.CloudBilling
    (
    -- * API Definition
      CloudBilling



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

    -- ** ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse
    , listProjectBillingInfoResponse
    , lpbirNextPageToken
    , lpbirProjectBillingInfo

    -- ** ProjectBillingInfo
    , ProjectBillingInfo
    , projectBillingInfo
    , pbiName
    , pbiBillingAccountName
    , pbiProjectId
    , pbiBillingEnabled
    ) where

import           Network.Google.CloudBilling.Types

{- $resources
TODO
-}

type CloudBilling = ()

cloudBilling :: Proxy CloudBilling
cloudBilling = Proxy




