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
-- Module      : Gogol.AppsReseller.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsReseller.Types
  ( -- * Configuration
    appsResellerService,

    -- * OAuth Scopes
    Apps'Order,
    Apps'Order'Readonly,

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

import Gogol.AppsReseller.Internal.Product
import Gogol.AppsReseller.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Google Workspace Reseller API. This contains the host and root path used as a starting point for constructing service requests.
appsResellerService :: Core.ServiceConfig
appsResellerService =
  Core.defaultService
    (Core.ServiceId "reseller:v1")
    "reseller.googleapis.com"

-- | Manage users on your domain
type Apps'Order = "https://www.googleapis.com/auth/apps.order"

-- | Manage users on your domain
type Apps'Order'Readonly = "https://www.googleapis.com/auth/apps.order.readonly"
