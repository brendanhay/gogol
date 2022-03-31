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
-- Module      : Gogol.Analytics.Management.CustomDimensions.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new custom dimension.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.insert@.
module Gogol.Analytics.Management.CustomDimensions.Insert
  ( -- * Resource
    AnalyticsManagementCustomDimensionsInsertResource,

    -- ** Constructing a Request
    newAnalyticsManagementCustomDimensionsInsert,
    AnalyticsManagementCustomDimensionsInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.customDimensions.insert@ method which the
-- 'AnalyticsManagementCustomDimensionsInsert' request conforms to.
type AnalyticsManagementCustomDimensionsInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customDimensions"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomDimension
    Core.:> Core.Post '[Core.JSON] CustomDimension

-- | Create a new custom dimension.
--
-- /See:/ 'newAnalyticsManagementCustomDimensionsInsert' smart constructor.
data AnalyticsManagementCustomDimensionsInsert = AnalyticsManagementCustomDimensionsInsert
  { -- | Account ID for the custom dimension to create.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomDimension,
    -- | Web property ID for the custom dimension to create.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomDimensionsInsert' with the minimum fields required to make a request.
newAnalyticsManagementCustomDimensionsInsert ::
  -- |  Account ID for the custom dimension to create. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomDimension ->
  -- |  Web property ID for the custom dimension to create. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementCustomDimensionsInsert
newAnalyticsManagementCustomDimensionsInsert accountId payload webPropertyId =
  AnalyticsManagementCustomDimensionsInsert
    { accountId = accountId,
      payload = payload,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementCustomDimensionsInsert
  where
  type
    Rs AnalyticsManagementCustomDimensionsInsert =
      CustomDimension
  type
    Scopes AnalyticsManagementCustomDimensionsInsert =
      '[Analytics'Edit]
  requestClient
    AnalyticsManagementCustomDimensionsInsert {..} =
      go
        accountId
        webPropertyId
        (Core.Just Core.AltJSON)
        payload
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementCustomDimensionsInsertResource
            )
            Core.mempty
