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
-- Module      : Gogol.AppsReseller.Reseller.Subscriptions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists of subscriptions managed by the reseller. The list can be all subscriptions, all of a customer\'s subscriptions, or all of a customer\'s transferable subscriptions. Optionally, this method can filter the response by a @customerNamePrefix@. For more information, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions manage subscriptions>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.list@.
module Gogol.AppsReseller.Reseller.Subscriptions.List
  ( -- * Resource
    ResellerSubscriptionsListResource,

    -- ** Constructing a Request
    ResellerSubscriptionsList (..),
    newResellerSubscriptionsList,
  )
where

import Gogol.AppsReseller.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @reseller.subscriptions.list@ method which the
-- 'ResellerSubscriptionsList' request conforms to.
type ResellerSubscriptionsListResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "subscriptions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerAuthToken" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "customerNamePrefix" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Subscriptions

-- | Lists of subscriptions managed by the reseller. The list can be all subscriptions, all of a customer\'s subscriptions, or all of a customer\'s transferable subscriptions. Optionally, this method can filter the response by a @customerNamePrefix@. For more information, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions manage subscriptions>.
--
-- /See:/ 'newResellerSubscriptionsList' smart constructor.
data ResellerSubscriptionsList = ResellerSubscriptionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @customerAuthToken@ query string is required when creating a resold account that transfers a direct customer\'s subscription or transfers another reseller customer\'s subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.
    customerAuthToken :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: (Core.Maybe Core.Text),
    -- | When retrieving all of your subscriptions and filtering for specific customers, you can enter a prefix for a customer name. Using an example customer group that includes @exam.com@, @example20.com@ and @example.com@: - @exa@ -- Returns all customer names that start with \'exa\' which could include @exam.com@, @example20.com@, and @example.com@. A name prefix is similar to using a regular expression\'s asterisk, exa*. - @example@ -- Returns @example20.com@ and @example.com@.
    customerNamePrefix :: (Core.Maybe Core.Text),
    -- | When retrieving a large list, the @maxResults@ is the maximum number of results per page. The @nextPageToken@ value takes you to the next page. The default is 20.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Token to specify next page in the list
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerSubscriptionsList' with the minimum fields required to make a request.
newResellerSubscriptionsList ::
  ResellerSubscriptionsList
newResellerSubscriptionsList =
  ResellerSubscriptionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerAuthToken = Core.Nothing,
      customerId = Core.Nothing,
      customerNamePrefix = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ResellerSubscriptionsList where
  type Rs ResellerSubscriptionsList = Subscriptions
  type
    Scopes ResellerSubscriptionsList =
      '[Apps'Order, Apps'Order'Readonly]
  requestClient ResellerSubscriptionsList {..} =
    go
      xgafv
      accessToken
      callback
      customerAuthToken
      customerId
      customerNamePrefix
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appsResellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ResellerSubscriptionsListResource
          )
          Core.mempty
