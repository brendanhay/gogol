{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsReseller
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Perform common functions that are available on the Channel Services
-- console at scale, like placing orders and viewing customer information
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference>
module Network.Google.AppsReseller
    (
    -- * Service Configuration
      appsResellerService

    -- * OAuth Scopes
    , appsOrderReadOnlyScope
    , appsOrderScope

    -- * API Declaration
    , AppsResellerAPI

    -- * Resources

    -- ** reseller.customers.get
    , module Network.Google.Resource.Reseller.Customers.Get

    -- ** reseller.customers.insert
    , module Network.Google.Resource.Reseller.Customers.Insert

    -- ** reseller.customers.patch
    , module Network.Google.Resource.Reseller.Customers.Patch

    -- ** reseller.customers.update
    , module Network.Google.Resource.Reseller.Customers.Update

    -- ** reseller.resellernotify.getwatchdetails
    , module Network.Google.Resource.Reseller.Resellernotify.Getwatchdetails

    -- ** reseller.resellernotify.register
    , module Network.Google.Resource.Reseller.Resellernotify.Register

    -- ** reseller.resellernotify.unregister
    , module Network.Google.Resource.Reseller.Resellernotify.Unregister

    -- ** reseller.subscriptions.activate
    , module Network.Google.Resource.Reseller.Subscriptions.Activate

    -- ** reseller.subscriptions.changePlan
    , module Network.Google.Resource.Reseller.Subscriptions.ChangePlan

    -- ** reseller.subscriptions.changeRenewalSettings
    , module Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings

    -- ** reseller.subscriptions.changeSeats
    , module Network.Google.Resource.Reseller.Subscriptions.ChangeSeats

    -- ** reseller.subscriptions.delete
    , module Network.Google.Resource.Reseller.Subscriptions.Delete

    -- ** reseller.subscriptions.get
    , module Network.Google.Resource.Reseller.Subscriptions.Get

    -- ** reseller.subscriptions.insert
    , module Network.Google.Resource.Reseller.Subscriptions.Insert

    -- ** reseller.subscriptions.list
    , module Network.Google.Resource.Reseller.Subscriptions.List

    -- ** reseller.subscriptions.startPaidService
    , module Network.Google.Resource.Reseller.Subscriptions.StartPaidService

    -- ** reseller.subscriptions.suspend
    , module Network.Google.Resource.Reseller.Subscriptions.Suspend

    -- * Types

    -- ** SubscriptionTrialSettings
    , SubscriptionTrialSettings
    , subscriptionTrialSettings
    , stsIsInTrial
    , stsTrialEndTime

    -- ** ResellernotifyResource
    , ResellernotifyResource
    , resellernotifyResource
    , rrTopicName

    -- ** ResellernotifyGetwatchdetailsResponse
    , ResellernotifyGetwatchdetailsResponse
    , resellernotifyGetwatchdetailsResponse
    , rgrTopicName
    , rgrServiceAccountEmailAddresses

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
    , cCustomerType
    , cCustomerDomainVerified
    , cResourceUiURL
    , cKind
    , cCustomerId
    , cAlternateEmail
    , cCustomerDomain
    , cPhoneNumber
    , cPostalAddress
    , cPrimaryAdmin

    -- ** ChangePlanRequest
    , ChangePlanRequest
    , changePlanRequest
    , cprKind
    , cprDealCode
    , cprPlanName
    , cprPurchaseOrderId
    , cprSeats

    -- ** SubscriptionPlanCommitmentInterval
    , SubscriptionPlanCommitmentInterval
    , subscriptionPlanCommitmentInterval
    , spciStartTime
    , spciEndTime

    -- ** Xgafv
    , Xgafv (..)

    -- ** SubscriptionsDeleteDeletionType
    , SubscriptionsDeleteDeletionType (..)

    -- ** SubscriptionPlan
    , SubscriptionPlan
    , subscriptionPlan
    , spCommitmentInterval
    , spIsCommitmentPlan
    , spPlanName

    -- ** CustomerCustomerType
    , CustomerCustomerType (..)

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

    -- ** PrimaryAdmin
    , PrimaryAdmin
    , primaryAdmin
    , paPrimaryEmail

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
    , subSKUName
    , subResourceUiURL
    , subKind
    , subSKUId
    , subPlan
    , subDealCode
    , subCustomerId
    , subCustomerDomain
    , subSuspensionReasons
    , subTransferInfo
    , subPurchaseOrderId
    , subSeats
    , subRenewalSettings
    , subSubscriptionId

    -- ** SubscriptionTransferInfo
    , SubscriptionTransferInfo
    , subscriptionTransferInfo
    , stiCurrentLegacySKUId
    , stiTransferabilityExpirationTime
    , stiMinimumTransferableSeats
    ) where

import Network.Google.Prelude
import Network.Google.AppsReseller.Types
import Network.Google.Resource.Reseller.Customers.Get
import Network.Google.Resource.Reseller.Customers.Insert
import Network.Google.Resource.Reseller.Customers.Patch
import Network.Google.Resource.Reseller.Customers.Update
import Network.Google.Resource.Reseller.Resellernotify.Getwatchdetails
import Network.Google.Resource.Reseller.Resellernotify.Register
import Network.Google.Resource.Reseller.Resellernotify.Unregister
import Network.Google.Resource.Reseller.Subscriptions.Activate
import Network.Google.Resource.Reseller.Subscriptions.ChangePlan
import Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings
import Network.Google.Resource.Reseller.Subscriptions.ChangeSeats
import Network.Google.Resource.Reseller.Subscriptions.Delete
import Network.Google.Resource.Reseller.Subscriptions.Get
import Network.Google.Resource.Reseller.Subscriptions.Insert
import Network.Google.Resource.Reseller.Subscriptions.List
import Network.Google.Resource.Reseller.Subscriptions.StartPaidService
import Network.Google.Resource.Reseller.Subscriptions.Suspend

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Workspace Reseller API service.
type AppsResellerAPI =
     CustomersInsertResource :<|> CustomersPatchResource
       :<|> CustomersGetResource
       :<|> CustomersUpdateResource
       :<|> ResellernotifyGetwatchdetailsResource
       :<|> ResellernotifyRegisterResource
       :<|> ResellernotifyUnregisterResource
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
