{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsReseller.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsReseller.Types
    (
    -- * Service URL
      appsResellerURL

    -- * SubscriptionTrialSettings
    , SubscriptionTrialSettings
    , subscriptionTrialSettings
    , stsIsInTrial
    , stsTrialEndTime

    -- * Address
    , Address
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

    -- * Customer
    , Customer
    , customer
    , cResourceUiURL
    , cKind
    , cCustomerId
    , cAlternateEmail
    , cCustomerDomain
    , cPhoneNumber
    , cPostalAddress

    -- * SubscriptionPlanCommitmentInterval
    , SubscriptionPlanCommitmentInterval
    , subscriptionPlanCommitmentInterval
    , spciStartTime
    , spciEndTime

    -- * ChangePlanRequest
    , ChangePlanRequest
    , changePlanRequest
    , cprKind
    , cprPlanName
    , cprPurchaseOrderId
    , cprSeats

    -- * Seats
    , Seats
    , seats
    , sNumberOfSeats
    , sMaximumNumberOfSeats
    , sLicensedNumberOfSeats
    , sKind

    -- * Subscriptions
    , Subscriptions
    , subscriptions
    , subNextPageToken
    , subKind
    , subSubscriptions

    -- * SubscriptionPlan
    , SubscriptionPlan
    , subscriptionPlan
    , spCommitmentInterval
    , spIsCommitmentPlan
    , spPlanName

    -- * ResellerSubscriptionsDeleteDeletionType
    , ResellerSubscriptionsDeleteDeletionType (..)

    -- * Subscription
    , Subscription
    , subscription
    , subuCreationTime
    , subuBillingMethod
    , subuStatus
    , subuTrialSettings
    , subuResourceUiURL
    , subuKind
    , subuSkuId
    , subuPlan
    , subuCustomerId
    , subuSuspensionReasons
    , subuTransferInfo
    , subuPurchaseOrderId
    , subuSeats
    , subuRenewalSettings
    , subuSubscriptionId

    -- * RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType

    -- * SubscriptionTransferInfo
    , SubscriptionTransferInfo
    , subscriptionTransferInfo
    , stiTransferabilityExpirationTime
    , stiMinimumTransferableSeats
    ) where

import           Network.Google.AppsReseller.Types.Product
import           Network.Google.AppsReseller.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1sandbox' of the Enterprise Apps Reseller API.
appsResellerURL :: BaseUrl
appsResellerURL
  = BaseUrl Https
      "https://www.googleapis.com/apps/reseller/v1sandbox/"
      443
