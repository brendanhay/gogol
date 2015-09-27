{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Apps.Reseller
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you create and manage your customers and their subscriptions.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference>
module Network.Google.Apps.Reseller
    (
    -- * Resources
      AppsReseller
    , CustomersAPI
    , CustomersInsert
    , CustomersPatch
    , CustomersGet
    , CustomersUpdate
    , SubscriptionsAPI
    , SubscriptionsInsert
    , SubscriptionsList
    , SubscriptionsChangeRenewalSettings
    , SubscriptionsGet
    , SubscriptionsActivate
    , SubscriptionsSuspend
    , SubscriptionsChangePlan
    , SubscriptionsChangeSeats
    , SubscriptionsDelete
    , SubscriptionsStartPaidService

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

import           Network.Google.Apps.Reseller.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsReseller =
     CustomersAPI :<|> SubscriptionsAPI

type CustomersAPI =
     CustomersInsert :<|> CustomersPatch :<|> CustomersGet
       :<|> CustomersUpdate

-- | Creates a customer resource if one does not already exist.
type CustomersInsert =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "customerAuthToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Customer

-- | Update a customer resource if one it exists and is owned by the
-- reseller. This method supports patch semantics.
type CustomersPatch =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Patch '[JSON] Customer

-- | Gets a customer resource if one exists and is owned by the reseller.
type CustomersGet =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Get '[JSON] Customer

-- | Update a customer resource if one it exists and is owned by the
-- reseller.
type CustomersUpdate =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Put '[JSON] Customer

type SubscriptionsAPI =
     SubscriptionsInsert :<|> SubscriptionsList :<|>
       SubscriptionsChangeRenewalSettings
       :<|> SubscriptionsGet
       :<|> SubscriptionsActivate
       :<|> SubscriptionsSuspend
       :<|> SubscriptionsChangePlan
       :<|> SubscriptionsChangeSeats
       :<|> SubscriptionsDelete
       :<|> SubscriptionsStartPaidService

-- | Creates\/Transfers a subscription for the customer.
type SubscriptionsInsert =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "customerAuthToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Post '[JSON] Subscription

-- | Lists subscriptions of a reseller, optionally filtered by a customer
-- name prefix.
type SubscriptionsList =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "subscriptions" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "customerNamePrefix" Text :>
                     QueryParam "customerId" Text :>
                       QueryParam "key" Text :>
                         QueryParam "customerAuthToken" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Natural :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] Subscriptions

-- | Changes the renewal settings of a subscription
type SubscriptionsChangeRenewalSettings =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "changeRenewalSettings" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] Subscription

-- | Gets a subscription of the customer.
type SubscriptionsGet =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] Subscription

-- | Activates a subscription previously suspended by the reseller
type SubscriptionsActivate =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "activate" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] Subscription

-- | Suspends an active subscription
type SubscriptionsSuspend =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "suspend" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] Subscription

-- | Changes the plan of a subscription
type SubscriptionsChangePlan =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "changePlan" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] Subscription

-- | Changes the seats configuration of a subscription
type SubscriptionsChangeSeats =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "changeSeats" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] Subscription

-- | Cancels\/Downgrades a subscription.
type SubscriptionsDelete =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "deletionType" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Starts paid service of a trial subscription
type SubscriptionsStartPaidService =
     "apps" :>
       "reseller" :>
         "v1sandbox" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "startPaidService" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] Subscription
