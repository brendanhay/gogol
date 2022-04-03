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
-- Module      : Gogol.Analytics.Management.Webproperties.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new property if the account has fewer than 20 properties. Web properties are visible in the Google Analytics interface only if they have at least one profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.insert@.
module Gogol.Analytics.Management.Webproperties.Insert
  ( -- * Resource
    AnalyticsManagementWebpropertiesInsertResource,

    -- ** Constructing a Request
    AnalyticsManagementWebpropertiesInsert (..),
    newAnalyticsManagementWebpropertiesInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.webproperties.insert@ method which the
-- 'AnalyticsManagementWebpropertiesInsert' request conforms to.
type AnalyticsManagementWebpropertiesInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Webproperty
    Core.:> Core.Post '[Core.JSON] Webproperty

-- | Create a new property if the account has fewer than 20 properties. Web properties are visible in the Google Analytics interface only if they have at least one profile.
--
-- /See:/ 'newAnalyticsManagementWebpropertiesInsert' smart constructor.
data AnalyticsManagementWebpropertiesInsert = AnalyticsManagementWebpropertiesInsert
  { -- | Account ID to create the web property for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Webproperty
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertiesInsert' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertiesInsert ::
  -- |  Account ID to create the web property for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Webproperty ->
  AnalyticsManagementWebpropertiesInsert
newAnalyticsManagementWebpropertiesInsert accountId payload =
  AnalyticsManagementWebpropertiesInsert
    { accountId = accountId,
      payload = payload
    }

instance
  Core.GoogleRequest
    AnalyticsManagementWebpropertiesInsert
  where
  type
    Rs AnalyticsManagementWebpropertiesInsert =
      Webproperty
  type
    Scopes AnalyticsManagementWebpropertiesInsert =
      '[Analytics'Edit]
  requestClient
    AnalyticsManagementWebpropertiesInsert {..} =
      go
        accountId
        (Core.Just Core.AltJSON)
        payload
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementWebpropertiesInsertResource
            )
            Core.mempty
