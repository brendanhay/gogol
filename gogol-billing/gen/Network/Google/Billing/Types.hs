{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Billing.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Billing.Types
    (
    -- * Service Request
      billingRequest

    -- * BillingAccount
    , BillingAccount
    , billingAccount
    , baOpen
    , baName
    , baDisplayName

    -- * ProjectBillingInfo
    , ProjectBillingInfo
    , projectBillingInfo
    , pbiName
    , pbiBillingAccountName
    , pbiProjectId
    , pbiBillingEnabled

    -- * ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse
    , listProjectBillingInfoResponse
    , lpbirNextPageToken
    , lpbirProjectBillingInfo

    -- * ListBillingAccountsResponse
    , ListBillingAccountsResponse
    , listBillingAccountsResponse
    , lbarNextPageToken
    , lbarBillingAccounts
    ) where

import           Network.Google.Billing.Types.Product
import           Network.Google.Billing.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Cloud Billing API. This contains the host and root path used as a starting point for constructing service requests.
billingRequest :: RequestBuilder
billingRequest
  = defaultRequest
      "https://cloudbilling.googleapis.com/"
      ""
