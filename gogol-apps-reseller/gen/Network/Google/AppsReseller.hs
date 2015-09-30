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
-- -- | Lets you create and manage your customers and their subscriptions.
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
    , module Reseller.Customers.Get

    -- ** ResellerCustomersInsert
    , module Reseller.Customers.Insert

    -- ** ResellerCustomersPatch
    , module Reseller.Customers.Patch

    -- ** ResellerCustomersUpdate
    , module Reseller.Customers.Update

    -- ** ResellerSubscriptionsActivate
    , module Reseller.Subscriptions.Activate

    -- ** ResellerSubscriptionsChangePlan
    , module Reseller.Subscriptions.ChangePlan

    -- ** ResellerSubscriptionsChangeRenewalSettings
    , module Reseller.Subscriptions.ChangeRenewalSettings

    -- ** ResellerSubscriptionsChangeSeats
    , module Reseller.Subscriptions.ChangeSeats

    -- ** ResellerSubscriptionsDelete
    , module Reseller.Subscriptions.Delete

    -- ** ResellerSubscriptionsGet
    , module Reseller.Subscriptions.Get

    -- ** ResellerSubscriptionsInsert
    , module Reseller.Subscriptions.Insert

    -- ** ResellerSubscriptionsList
    , module Reseller.Subscriptions.List

    -- ** ResellerSubscriptionsStartPaidService
    , module Reseller.Subscriptions.StartPaidService

    -- ** ResellerSubscriptionsSuspend
    , module Reseller.Subscriptions.Suspend

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

    -- ** RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType
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

type AppsResellerAPI = Customers :<|> Subscriptions

appsResellerAPI :: Proxy AppsResellerAPI
appsResellerAPI = Proxy
