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
-- Module      : Network.Google.AppsReseller
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Perform common functions that are available on the Channel Services console at scale, like placing orders and viewing customer information
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference>
module Network.Google.AppsReseller
  ( -- * Configuration
    appsResellerService,

    -- * OAuth Scopes
    appsOrderScope,
    appsOrderReadOnlyScope,

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

import Network.Google.AppsReseller.Reseller.Customers.Get
import Network.Google.AppsReseller.Reseller.Customers.Insert
import Network.Google.AppsReseller.Reseller.Customers.Patch
import Network.Google.AppsReseller.Reseller.Customers.Update
import Network.Google.AppsReseller.Reseller.Resellernotify.Getwatchdetails
import Network.Google.AppsReseller.Reseller.Resellernotify.Register
import Network.Google.AppsReseller.Reseller.Resellernotify.Unregister
import Network.Google.AppsReseller.Reseller.Subscriptions.Activate
import Network.Google.AppsReseller.Reseller.Subscriptions.ChangePlan
import Network.Google.AppsReseller.Reseller.Subscriptions.ChangeRenewalSettings
import Network.Google.AppsReseller.Reseller.Subscriptions.ChangeSeats
import Network.Google.AppsReseller.Reseller.Subscriptions.Delete
import Network.Google.AppsReseller.Reseller.Subscriptions.Get
import Network.Google.AppsReseller.Reseller.Subscriptions.Insert
import Network.Google.AppsReseller.Reseller.Subscriptions.List
import Network.Google.AppsReseller.Reseller.Subscriptions.StartPaidService
import Network.Google.AppsReseller.Reseller.Subscriptions.Suspend
import Network.Google.AppsReseller.Types
