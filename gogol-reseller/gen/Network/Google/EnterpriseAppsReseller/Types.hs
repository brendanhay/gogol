{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.EnterpriseAppsReseller.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.EnterpriseAppsReseller.Types
    (

    -- * Address
      Address
    , address
    , aOrganizationName
    , aKind
    , aPostalCode
    , aAddressLine1
    , aLocality
    , aContactName
    , aAddressLine2
    , aCountryCode
    , aRegion
    , aAddressLine3

    -- * ChangePlanRequest
    , ChangePlanRequest
    , changePlanRequest
    , cprKind
    , cprPlanName
    , cprPurchaseOrderId
    , cprSeats

    -- * Customer
    , Customer
    , customer
    , cResourceUiUrl
    , cKind
    , cCustomerId
    , cAlternateEmail
    , cCustomerDomain
    , cPhoneNumber
    , cPostalAddress

    -- * RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType

    -- * Seats
    , Seats
    , seats
    , sNumberOfSeats
    , sMaximumNumberOfSeats
    , sLicensedNumberOfSeats
    , sKind

    -- * Subscription
    , Subscription
    , subscription
    , ssCreationTime
    , ssBillingMethod
    , ssStatus
    , ssTrialSettings
    , ssResourceUiUrl
    , ssKind
    , ssSkuId
    , ssPlan
    , ssCustomerId
    , ssSuspensionReasons
    , ssTransferInfo
    , ssPurchaseOrderId
    , ssSeats
    , ssRenewalSettings
    , ssSubscriptionId

    -- * SubscriptionCommitmentIntervalPlan
    , SubscriptionCommitmentIntervalPlan
    , subscriptionCommitmentIntervalPlan
    , scipStartTime
    , scipEndTime

    -- * SubscriptionPlan
    , SubscriptionPlan
    , subscriptionPlan
    , spCommitmentInterval
    , spIsCommitmentPlan
    , spPlanName

    -- * SubscriptionTransferInfo
    , SubscriptionTransferInfo
    , subscriptionTransferInfo
    , stiTransferabilityExpirationTime
    , stiMinimumTransferableSeats

    -- * SubscriptionTrialSettings
    , SubscriptionTrialSettings
    , subscriptionTrialSettings
    , stsIsInTrial
    , stsTrialEndTime

    -- * Subscriptions
    , Subscriptions
    , subscriptions
    , subNextPageToken
    , subKind
    , subSubscriptions
    ) where

import           Network.Google.EnterpriseAppsReseller.Types.Product
import           Network.Google.EnterpriseAppsReseller.Types.Sum
import           Network.Google.Prelude
