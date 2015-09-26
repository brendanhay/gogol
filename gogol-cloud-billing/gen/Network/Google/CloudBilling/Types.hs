{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudBilling.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudBilling.Types
    (
    -- * API Definition
      cloudbilling


    -- * BillingAccount
    , BillingAccount
    , billingAccount
    , baOpen
    , baName
    , baDisplayName

    -- * ListBillingAccountsResponse
    , ListBillingAccountsResponse
    , listBillingAccountsResponse
    , lbarNextPageToken
    , lbarBillingAccounts

    -- * ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse
    , listProjectBillingInfoResponse
    , lpbirNextPageToken
    , lpbirProjectBillingInfo

    -- * ProjectBillingInfo
    , ProjectBillingInfo
    , projectBillingInfo
    , pbiName
    , pbiBillingAccountName
    , pbiProjectId
    , pbiBillingEnabled
    ) where

import           Network.Google.CloudBilling.Types.Product
import           Network.Google.CloudBilling.Types.Sum
import           Network.Google.Prelude

cloudbilling :: a
cloudbilling = error "cloudbilling"
