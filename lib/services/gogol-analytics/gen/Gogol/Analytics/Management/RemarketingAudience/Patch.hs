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
-- Module      : Gogol.Analytics.Management.RemarketingAudience.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing audience. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.patch@.
module Gogol.Analytics.Management.RemarketingAudience.Patch
  ( -- * Resource
    AnalyticsManagementRemarketingAudiencePatchResource,

    -- ** Constructing a Request
    AnalyticsManagementRemarketingAudiencePatch (..),
    newAnalyticsManagementRemarketingAudiencePatch,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.remarketingAudience.patch@ method which the
-- 'AnalyticsManagementRemarketingAudiencePatch' request conforms to.
type AnalyticsManagementRemarketingAudiencePatchResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "remarketingAudiences"
    Core.:> Core.Capture "remarketingAudienceId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RemarketingAudience
    Core.:> Core.Patch '[Core.JSON] RemarketingAudience

-- | Updates an existing remarketing audience. This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementRemarketingAudiencePatch' smart constructor.
data AnalyticsManagementRemarketingAudiencePatch = AnalyticsManagementRemarketingAudiencePatch
  { -- | The account ID of the remarketing audience to update.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: RemarketingAudience,
    -- | The ID of the remarketing audience to update.
    remarketingAudienceId :: Core.Text,
    -- | The web property ID of the remarketing audience to update.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementRemarketingAudiencePatch' with the minimum fields required to make a request.
newAnalyticsManagementRemarketingAudiencePatch ::
  -- |  The account ID of the remarketing audience to update. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RemarketingAudience ->
  -- |  The ID of the remarketing audience to update. See 'remarketingAudienceId'.
  Core.Text ->
  -- |  The web property ID of the remarketing audience to update. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementRemarketingAudiencePatch
newAnalyticsManagementRemarketingAudiencePatch accountId payload remarketingAudienceId webPropertyId =
  AnalyticsManagementRemarketingAudiencePatch
    { accountId = accountId,
      payload = payload,
      remarketingAudienceId = remarketingAudienceId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementRemarketingAudiencePatch
  where
  type
    Rs AnalyticsManagementRemarketingAudiencePatch =
      RemarketingAudience
  type
    Scopes
      AnalyticsManagementRemarketingAudiencePatch =
      '[Analytics'Edit]
  requestClient
    AnalyticsManagementRemarketingAudiencePatch {..} =
      go
        accountId
        webPropertyId
        remarketingAudienceId
        (Core.Just Core.AltJSON)
        payload
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementRemarketingAudiencePatchResource
            )
            Core.mempty
