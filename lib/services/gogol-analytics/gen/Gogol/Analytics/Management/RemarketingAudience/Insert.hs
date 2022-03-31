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
-- Module      : Gogol.Analytics.Management.RemarketingAudience.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new remarketing audience.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.insert@.
module Gogol.Analytics.Management.RemarketingAudience.Insert
  ( -- * Resource
    AnalyticsManagementRemarketingAudienceInsertResource,

    -- ** Constructing a Request
    newAnalyticsManagementRemarketingAudienceInsert,
    AnalyticsManagementRemarketingAudienceInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.remarketingAudience.insert@ method which the
-- 'AnalyticsManagementRemarketingAudienceInsert' request conforms to.
type AnalyticsManagementRemarketingAudienceInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "remarketingAudiences"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RemarketingAudience
    Core.:> Core.Post '[Core.JSON] RemarketingAudience

-- | Creates a new remarketing audience.
--
-- /See:/ 'newAnalyticsManagementRemarketingAudienceInsert' smart constructor.
data AnalyticsManagementRemarketingAudienceInsert = AnalyticsManagementRemarketingAudienceInsert
  { -- | The account ID for which to create the remarketing audience.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: RemarketingAudience,
    -- | Web property ID for which to create the remarketing audience.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementRemarketingAudienceInsert' with the minimum fields required to make a request.
newAnalyticsManagementRemarketingAudienceInsert ::
  -- |  The account ID for which to create the remarketing audience. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RemarketingAudience ->
  -- |  Web property ID for which to create the remarketing audience. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementRemarketingAudienceInsert
newAnalyticsManagementRemarketingAudienceInsert accountId payload webPropertyId =
  AnalyticsManagementRemarketingAudienceInsert
    { accountId = accountId,
      payload = payload,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementRemarketingAudienceInsert
  where
  type
    Rs AnalyticsManagementRemarketingAudienceInsert =
      RemarketingAudience
  type
    Scopes
      AnalyticsManagementRemarketingAudienceInsert =
      '[Analytics'Edit]
  requestClient
    AnalyticsManagementRemarketingAudienceInsert {..} =
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
                  AnalyticsManagementRemarketingAudienceInsertResource
            )
            Core.mempty
