{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsReseller
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you create and manage your customers and their subscriptions.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference>
module Network.Google.AppsReseller
    (
    -- * API
      AppsResellerAPI
    , appsResellerAPI
    , appsResellerURL

    -- * Service Methods

    -- * REST Resources

    -- ** ResellerCustomersGet
    , module Network.Google.Resource.Reseller.Customers.Get

    -- ** ResellerCustomersInsert
    , module Network.Google.Resource.Reseller.Customers.Insert

    -- ** ResellerCustomersPatch
    , module Network.Google.Resource.Reseller.Customers.Patch

    -- ** ResellerCustomersUpdate
    , module Network.Google.Resource.Reseller.Customers.Update

    -- ** ResellerSubscriptionsActivate
    , module Network.Google.Resource.Reseller.Subscriptions.Activate

    -- ** ResellerSubscriptionsChangePlan
    , module Network.Google.Resource.Reseller.Subscriptions.ChangePlan

    -- ** ResellerSubscriptionsChangeRenewalSettings
    , module Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings

    -- ** ResellerSubscriptionsChangeSeats
    , module Network.Google.Resource.Reseller.Subscriptions.ChangeSeats

    -- ** ResellerSubscriptionsDelete
    , module Network.Google.Resource.Reseller.Subscriptions.Delete

    -- ** ResellerSubscriptionsGet
    , module Network.Google.Resource.Reseller.Subscriptions.Get

    -- ** ResellerSubscriptionsInsert
    , module Network.Google.Resource.Reseller.Subscriptions.Insert

    -- ** ResellerSubscriptionsList
    , module Network.Google.Resource.Reseller.Subscriptions.List

    -- ** ResellerSubscriptionsStartPaidService
    , module Network.Google.Resource.Reseller.Subscriptions.StartPaidService

    -- ** ResellerSubscriptionsSuspend
    , module Network.Google.Resource.Reseller.Subscriptions.Suspend

    -- * Types

    -- ** SubscriptionTrialSettings
    , SubscriptionTrialSettings
    , subscriptionTrialSettings
    , stsIsInTrial
    , stsTrialEndTime

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

    -- ** Customer
    , Customer
    , customer
    , cResourceUiURL
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

    -- ** SubscriptionPlanCommitmentInterval
    , SubscriptionPlanCommitmentInterval
    , subscriptionPlanCommitmentInterval
    , spciStartTime
    , spciEndTime

    -- ** SubscriptionsDeleteDeletionType
    , SubscriptionsDeleteDeletionType (..)

    -- ** SubscriptionPlan
    , SubscriptionPlan
    , subscriptionPlan
    , spCommitmentInterval
    , spIsCommitmentPlan
    , spPlanName

    -- ** Subscriptions
    , Subscriptions
    , subscriptions
    , sNextPageToken
    , sKind
    , sSubscriptions

    -- ** Seats
    , Seats
    , seats
    , seaNumberOfSeats
    , seaMaximumNumberOfSeats
    , seaLicensedNumberOfSeats
    , seaKind

    -- ** RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType

    -- ** Subscription
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

    -- ** SubscriptionTransferInfo
    , SubscriptionTransferInfo
    , subscriptionTransferInfo
    , stiTransferabilityExpirationTime
    , stiMinimumTransferableSeats
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Reseller.Customers.Get
import           Network.Google.Resource.Reseller.Customers.Insert
import           Network.Google.Resource.Reseller.Customers.Patch
import           Network.Google.Resource.Reseller.Customers.Update
import           Network.Google.Resource.Reseller.Subscriptions.Activate
import           Network.Google.Resource.Reseller.Subscriptions.ChangePlan
import           Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings
import           Network.Google.Resource.Reseller.Subscriptions.ChangeSeats
import           Network.Google.Resource.Reseller.Subscriptions.Delete
import           Network.Google.Resource.Reseller.Subscriptions.Get
import           Network.Google.Resource.Reseller.Subscriptions.Insert
import           Network.Google.Resource.Reseller.Subscriptions.List
import           Network.Google.Resource.Reseller.Subscriptions.StartPaidService
import           Network.Google.Resource.Reseller.Subscriptions.Suspend

{- $resources
TODO
-}

type AppsResellerAPI =
     CustomersInsertResource :<|> CustomersPatchResource
       :<|> CustomersGetResource
       :<|> CustomersUpdateResource
       :<|> SubscriptionsInsertResource
       :<|> SubscriptionsListResource
       :<|> SubscriptionsChangeRenewalSettingsResource
       :<|> SubscriptionsGetResource
       :<|> SubscriptionsActivateResource
       :<|> SubscriptionsSuspendResource
       :<|> SubscriptionsChangePlanResource
       :<|> SubscriptionsChangeSeatsResource
       :<|> SubscriptionsDeleteResource
       :<|> SubscriptionsStartPaidServiceResource

appsResellerAPI :: Proxy AppsResellerAPI
appsResellerAPI = Proxy
