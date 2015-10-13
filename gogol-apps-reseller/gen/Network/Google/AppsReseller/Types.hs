{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      appsResellerService

    -- * OAuth Scopes
    , appsOrderReadonlyScope
    , appsOrderScope

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

    -- * ChangePlanRequest
    , ChangePlanRequest
    , changePlanRequest
    , cprKind
    , cprPlanName
    , cprPurchaseOrderId
    , cprSeats

    -- * SubscriptionPlanCommitmentInterval
    , SubscriptionPlanCommitmentInterval
    , subscriptionPlanCommitmentInterval
    , spciStartTime
    , spciEndTime

    -- * SubscriptionsDeleteDeletionType
    , SubscriptionsDeleteDeletionType (..)

    -- * SubscriptionPlan
    , SubscriptionPlan
    , subscriptionPlan
    , spCommitmentInterval
    , spIsCommitmentPlan
    , spPlanName

    -- * Subscriptions
    , Subscriptions
    , subscriptions
    , sNextPageToken
    , sKind
    , sSubscriptions

    -- * Seats
    , Seats
    , seats
    , seaNumberOfSeats
    , seaMaximumNumberOfSeats
    , seaLicensedNumberOfSeats
    , seaKind

    -- * RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType

    -- * Subscription
    , Subscription
    , subscription
    , subCreationTime
    , subBillingMethod
    , subStatus
    , subTrialSettings
    , subResourceUiURL
    , subKind
    , subSKUId
    , subPlan
    , subCustomerId
    , subSuspensionReasons
    , subTransferInfo
    , subPurchaseOrderId
    , subSeats
    , subRenewalSettings
    , subSubscriptionId

    -- * SubscriptionTransferInfo
    , SubscriptionTransferInfo
    , subscriptionTransferInfo
    , stiTransferabilityExpirationTime
    , stiMinimumTransferableSeats
    ) where

import           Network.Google.AppsReseller.Types.Product
import           Network.Google.AppsReseller.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Enterprise Apps Reseller API. This contains the host and root path used as a starting point for constructing service requests.
appsResellerService :: Service
appsResellerService
  = defaultService (ServiceId "reseller:v1")
      "www.googleapis.com"
      "apps/reseller/v1/"

-- | Manage users on your domain
appsOrderReadonlyScope :: OAuthScope
appsOrderReadonlyScope = OAuthScope "https://www.googleapis.com/auth/apps.order.readonly";

-- | Manage users on your domain
appsOrderScope :: OAuthScope
appsOrderScope = OAuthScope "https://www.googleapis.com/auth/apps.order";
