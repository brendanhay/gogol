-- |
-- Module      : Network.Google.EnterpriseAppsReseller
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you create and manage your customers and their subscriptions.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference>
module Network.Google.EnterpriseAppsReseller
    (
    -- * API Definition
      EnterpriseAppsReseller



    -- * Types

    -- ** Address
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

    -- ** ChangePlanRequest
    , ChangePlanRequest
    , changePlanRequest
    , cprKind
    , cprPlanName
    , cprPurchaseOrderId
    , cprSeats

    -- ** Customer
    , Customer
    , customer
    , cResourceUiUrl
    , cKind
    , cCustomerId
    , cAlternateEmail
    , cCustomerDomain
    , cPhoneNumber
    , cPostalAddress

    -- ** RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType

    -- ** Seats
    , Seats
    , seats
    , sNumberOfSeats
    , sMaximumNumberOfSeats
    , sLicensedNumberOfSeats
    , sKind

    -- ** Subscription
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

    -- ** SubscriptionCommitmentIntervalPlan
    , SubscriptionCommitmentIntervalPlan
    , subscriptionCommitmentIntervalPlan
    , scipStartTime
    , scipEndTime

    -- ** SubscriptionPlan
    , SubscriptionPlan
    , subscriptionPlan
    , spCommitmentInterval
    , spIsCommitmentPlan
    , spPlanName

    -- ** SubscriptionTransferInfo
    , SubscriptionTransferInfo
    , subscriptionTransferInfo
    , stiTransferabilityExpirationTime
    , stiMinimumTransferableSeats

    -- ** SubscriptionTrialSettings
    , SubscriptionTrialSettings
    , subscriptionTrialSettings
    , stsIsInTrial
    , stsTrialEndTime

    -- ** Subscriptions
    , Subscriptions
    , subscriptions
    , subNextPageToken
    , subKind
    , subSubscriptions
    ) where

import           Network.Google.EnterpriseAppsReseller.Types

{- $resources
TODO
-}

type EnterpriseAppsReseller = ()

enterpriseAppsReseller :: Proxy EnterpriseAppsReseller
enterpriseAppsReseller = Proxy




