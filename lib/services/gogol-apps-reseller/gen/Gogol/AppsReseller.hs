{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsReseller
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    newResellerCustomersGet,
    ResellerCustomersGet,

    -- ** reseller.customers.insert
    ResellerCustomersInsertResource,
    newResellerCustomersInsert,
    ResellerCustomersInsert,

    -- ** reseller.customers.patch
    ResellerCustomersPatchResource,
    newResellerCustomersPatch,
    ResellerCustomersPatch,

    -- ** reseller.customers.update
    ResellerCustomersUpdateResource,
    newResellerCustomersUpdate,
    ResellerCustomersUpdate,

    -- ** reseller.resellernotify.getwatchdetails
    ResellerResellernotifyGetwatchdetailsResource,
    newResellerResellernotifyGetwatchdetails,
    ResellerResellernotifyGetwatchdetails,

    -- ** reseller.resellernotify.register
    ResellerResellernotifyRegisterResource,
    newResellerResellernotifyRegister,
    ResellerResellernotifyRegister,

    -- ** reseller.resellernotify.unregister
    ResellerResellernotifyUnregisterResource,
    newResellerResellernotifyUnregister,
    ResellerResellernotifyUnregister,

    -- ** reseller.subscriptions.activate
    ResellerSubscriptionsActivateResource,
    newResellerSubscriptionsActivate,
    ResellerSubscriptionsActivate,

    -- ** reseller.subscriptions.changePlan
    ResellerSubscriptionsChangePlanResource,
    newResellerSubscriptionsChangePlan,
    ResellerSubscriptionsChangePlan,

    -- ** reseller.subscriptions.changeRenewalSettings
    ResellerSubscriptionsChangeRenewalSettingsResource,
    newResellerSubscriptionsChangeRenewalSettings,
    ResellerSubscriptionsChangeRenewalSettings,

    -- ** reseller.subscriptions.changeSeats
    ResellerSubscriptionsChangeSeatsResource,
    newResellerSubscriptionsChangeSeats,
    ResellerSubscriptionsChangeSeats,

    -- ** reseller.subscriptions.delete
    ResellerSubscriptionsDeleteResource,
    newResellerSubscriptionsDelete,
    ResellerSubscriptionsDelete,

    -- ** reseller.subscriptions.get
    ResellerSubscriptionsGetResource,
    newResellerSubscriptionsGet,
    ResellerSubscriptionsGet,

    -- ** reseller.subscriptions.insert
    ResellerSubscriptionsInsertResource,
    newResellerSubscriptionsInsert,
    ResellerSubscriptionsInsert,

    -- ** reseller.subscriptions.list
    ResellerSubscriptionsListResource,
    newResellerSubscriptionsList,
    ResellerSubscriptionsList,

    -- ** reseller.subscriptions.startPaidService
    ResellerSubscriptionsStartPaidServiceResource,
    newResellerSubscriptionsStartPaidService,
    ResellerSubscriptionsStartPaidService,

    -- ** reseller.subscriptions.suspend
    ResellerSubscriptionsSuspendResource,
    newResellerSubscriptionsSuspend,
    ResellerSubscriptionsSuspend,

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
