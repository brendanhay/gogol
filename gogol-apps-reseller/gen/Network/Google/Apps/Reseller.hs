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
    -- * REST Resources

    -- ** Enterprise Apps Reseller API
      AppsReseller
    , appsReseller
    , appsResellerURL

    -- ** reseller.customers.get
    , module Network.Google.API.Reseller.Customers.Get

    -- ** reseller.customers.insert
    , module Network.Google.API.Reseller.Customers.Insert

    -- ** reseller.customers.patch
    , module Network.Google.API.Reseller.Customers.Patch

    -- ** reseller.customers.update
    , module Network.Google.API.Reseller.Customers.Update

    -- ** reseller.subscriptions.activate
    , module Network.Google.API.Reseller.Subscriptions.Activate

    -- ** reseller.subscriptions.changePlan
    , module Network.Google.API.Reseller.Subscriptions.ChangePlan

    -- ** reseller.subscriptions.changeRenewalSettings
    , module Network.Google.API.Reseller.Subscriptions.ChangeRenewalSettings

    -- ** reseller.subscriptions.changeSeats
    , module Network.Google.API.Reseller.Subscriptions.ChangeSeats

    -- ** reseller.subscriptions.delete
    , module Network.Google.API.Reseller.Subscriptions.Delete

    -- ** reseller.subscriptions.get
    , module Network.Google.API.Reseller.Subscriptions.Get

    -- ** reseller.subscriptions.insert
    , module Network.Google.API.Reseller.Subscriptions.Insert

    -- ** reseller.subscriptions.list
    , module Network.Google.API.Reseller.Subscriptions.List

    -- ** reseller.subscriptions.startPaidService
    , module Network.Google.API.Reseller.Subscriptions.StartPaidService

    -- ** reseller.subscriptions.suspend
    , module Network.Google.API.Reseller.Subscriptions.Suspend

    -- * Types

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

    -- ** ChangePlanRequest
    , ChangePlanRequest
    , changePlanRequest
    , cprKind
    , cprPlanName
    , cprPurchaseOrderId
    , cprSeats

    -- ** SubscriptionCommitmentIntervalPlan
    , SubscriptionCommitmentIntervalPlan
    , subscriptionCommitmentIntervalPlan
    , scipStartTime
    , scipEndTime

    -- ** SubscriptionTrialSettings
    , SubscriptionTrialSettings
    , subscriptionTrialSettings
    , stsIsInTrial
    , stsTrialEndTime

    -- ** Alt
    , Alt (..)

    -- ** Seats
    , Seats
    , seats
    , sNumberOfSeats
    , sMaximumNumberOfSeats
    , sLicensedNumberOfSeats
    , sKind

    -- ** Subscriptions
    , Subscriptions
    , subscriptions
    , subNextPageToken
    , subKind
    , subSubscriptions

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

    -- ** SubscriptionPlan
    , SubscriptionPlan
    , subscriptionPlan
    , spCommitmentInterval
    , spIsCommitmentPlan
    , spPlanName

    -- ** RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType

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

    -- ** SubscriptionTransferInfo
    , SubscriptionTransferInfo
    , subscriptionTransferInfo
    , stiTransferabilityExpirationTime
    , stiMinimumTransferableSeats

    -- ** SubscriptionsDelete'DeletionType
    , SubscriptionsDelete'DeletionType (..)
    ) where

import           Network.Google.API.Reseller.Customers.Get
import           Network.Google.API.Reseller.Customers.Insert
import           Network.Google.API.Reseller.Customers.Patch
import           Network.Google.API.Reseller.Customers.Update
import           Network.Google.API.Reseller.Subscriptions.Activate
import           Network.Google.API.Reseller.Subscriptions.ChangePlan
import           Network.Google.API.Reseller.Subscriptions.ChangeRenewalSettings
import           Network.Google.API.Reseller.Subscriptions.ChangeSeats
import           Network.Google.API.Reseller.Subscriptions.Delete
import           Network.Google.API.Reseller.Subscriptions.Get
import           Network.Google.API.Reseller.Subscriptions.Insert
import           Network.Google.API.Reseller.Subscriptions.List
import           Network.Google.API.Reseller.Subscriptions.StartPaidService
import           Network.Google.API.Reseller.Subscriptions.Suspend
import           Network.Google.Apps.Reseller.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsReseller =
     CustomersInsertAPI :<|> CustomersPatchAPI :<|>
       SubscriptionsStartPaidServiceAPI
       :<|> SubscriptionsChangePlanAPI
       :<|> SubscriptionsListAPI
       :<|> SubscriptionsGetAPI
       :<|> CustomersGetAPI
       :<|> SubscriptionsChangeSeatsAPI
       :<|> SubscriptionsActivateAPI
       :<|> SubscriptionsChangeRenewalSettingsAPI
       :<|> SubscriptionsInsertAPI
       :<|> CustomersUpdateAPI
       :<|> SubscriptionsDeleteAPI
       :<|> SubscriptionsSuspendAPI

appsReseller :: Proxy AppsReseller
appsReseller = Proxy
