{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsReseller
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Perform common functions that are available on the Channel Services console at scale, like placing orders and viewing customer information
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference>
module Gogol.AppsReseller
  ( -- * Configuration
    appsResellerService,

    -- * OAuth Scopes
    Apps'Order,
    Apps'Order'Readonly,

    -- * Resources

    -- ** reseller.customers.get
    ResellerCustomersGetResource,
    ResellerCustomersGet (..),
    newResellerCustomersGet,

    -- ** reseller.customers.insert
    ResellerCustomersInsertResource,
    ResellerCustomersInsert (..),
    newResellerCustomersInsert,

    -- ** reseller.customers.patch
    ResellerCustomersPatchResource,
    ResellerCustomersPatch (..),
    newResellerCustomersPatch,

    -- ** reseller.customers.update
    ResellerCustomersUpdateResource,
    ResellerCustomersUpdate (..),
    newResellerCustomersUpdate,

    -- ** reseller.resellernotify.getwatchdetails
    ResellerResellernotifyGetwatchdetailsResource,
    ResellerResellernotifyGetwatchdetails (..),
    newResellerResellernotifyGetwatchdetails,

    -- ** reseller.resellernotify.register
    ResellerResellernotifyRegisterResource,
    ResellerResellernotifyRegister (..),
    newResellerResellernotifyRegister,

    -- ** reseller.resellernotify.unregister
    ResellerResellernotifyUnregisterResource,
    ResellerResellernotifyUnregister (..),
    newResellerResellernotifyUnregister,

    -- ** reseller.subscriptions.activate
    ResellerSubscriptionsActivateResource,
    ResellerSubscriptionsActivate (..),
    newResellerSubscriptionsActivate,

    -- ** reseller.subscriptions.changePlan
    ResellerSubscriptionsChangePlanResource,
    ResellerSubscriptionsChangePlan (..),
    newResellerSubscriptionsChangePlan,

    -- ** reseller.subscriptions.changeRenewalSettings
    ResellerSubscriptionsChangeRenewalSettingsResource,
    ResellerSubscriptionsChangeRenewalSettings (..),
    newResellerSubscriptionsChangeRenewalSettings,

    -- ** reseller.subscriptions.changeSeats
    ResellerSubscriptionsChangeSeatsResource,
    ResellerSubscriptionsChangeSeats (..),
    newResellerSubscriptionsChangeSeats,

    -- ** reseller.subscriptions.delete
    ResellerSubscriptionsDeleteResource,
    ResellerSubscriptionsDelete (..),
    newResellerSubscriptionsDelete,

    -- ** reseller.subscriptions.get
    ResellerSubscriptionsGetResource,
    ResellerSubscriptionsGet (..),
    newResellerSubscriptionsGet,

    -- ** reseller.subscriptions.insert
    ResellerSubscriptionsInsertResource,
    ResellerSubscriptionsInsert (..),
    newResellerSubscriptionsInsert,

    -- ** reseller.subscriptions.list
    ResellerSubscriptionsListResource,
    ResellerSubscriptionsList (..),
    newResellerSubscriptionsList,

    -- ** reseller.subscriptions.startPaidService
    ResellerSubscriptionsStartPaidServiceResource,
    ResellerSubscriptionsStartPaidService (..),
    newResellerSubscriptionsStartPaidService,

    -- ** reseller.subscriptions.suspend
    ResellerSubscriptionsSuspendResource,
    ResellerSubscriptionsSuspend (..),
    newResellerSubscriptionsSuspend,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Address
    Address (..),
    newAddress,

    -- ** ChangePlanRequest
    ChangePlanRequest (..),
    newChangePlanRequest,

    -- ** Customer
    Customer (..),
    newCustomer,

    -- ** Customer_CustomerType
    Customer_CustomerType (..),

    -- ** PrimaryAdmin
    PrimaryAdmin (..),
    newPrimaryAdmin,

    -- ** RenewalSettings
    RenewalSettings (..),
    newRenewalSettings,

    -- ** ResellernotifyGetwatchdetailsResponse
    ResellernotifyGetwatchdetailsResponse (..),
    newResellernotifyGetwatchdetailsResponse,

    -- ** ResellernotifyResource
    ResellernotifyResource (..),
    newResellernotifyResource,

    -- ** Seats
    Seats (..),
    newSeats,

    -- ** Subscription
    Subscription (..),
    newSubscription,

    -- ** Subscription_Plan
    Subscription_Plan (..),
    newSubscription_Plan,

    -- ** Subscription_Plan_CommitmentInterval
    Subscription_Plan_CommitmentInterval (..),
    newSubscription_Plan_CommitmentInterval,

    -- ** Subscription_TransferInfo
    Subscription_TransferInfo (..),
    newSubscription_TransferInfo,

    -- ** Subscription_TrialSettings
    Subscription_TrialSettings (..),
    newSubscription_TrialSettings,

    -- ** Subscriptions
    Subscriptions (..),
    newSubscriptions,

    -- ** SubscriptionsDeleteDeletionType
    SubscriptionsDeleteDeletionType (..),

    -- ** SubscriptionsInsertAction
    SubscriptionsInsertAction (..),
  )
where

import Gogol.AppsReseller.Reseller.Customers.Get
import Gogol.AppsReseller.Reseller.Customers.Insert
import Gogol.AppsReseller.Reseller.Customers.Patch
import Gogol.AppsReseller.Reseller.Customers.Update
import Gogol.AppsReseller.Reseller.Resellernotify.Getwatchdetails
import Gogol.AppsReseller.Reseller.Resellernotify.Register
import Gogol.AppsReseller.Reseller.Resellernotify.Unregister
import Gogol.AppsReseller.Reseller.Subscriptions.Activate
import Gogol.AppsReseller.Reseller.Subscriptions.ChangePlan
import Gogol.AppsReseller.Reseller.Subscriptions.ChangeRenewalSettings
import Gogol.AppsReseller.Reseller.Subscriptions.ChangeSeats
import Gogol.AppsReseller.Reseller.Subscriptions.Delete
import Gogol.AppsReseller.Reseller.Subscriptions.Get
import Gogol.AppsReseller.Reseller.Subscriptions.Insert
import Gogol.AppsReseller.Reseller.Subscriptions.List
import Gogol.AppsReseller.Reseller.Subscriptions.StartPaidService
import Gogol.AppsReseller.Reseller.Subscriptions.Suspend
import Gogol.AppsReseller.Types
