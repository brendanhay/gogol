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
-- Module      : Network.Google.Analytics.Management.RemarketingAudience.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a remarketing audience to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.get@.
module Network.Google.Analytics.Management.RemarketingAudience.Get
  ( -- * Resource
    AnalyticsManagementRemarketingAudienceGetResource,

    -- ** Constructing a Request
    newAnalyticsManagementRemarketingAudienceGet,
    AnalyticsManagementRemarketingAudienceGet,
  )
where

import Network.Google.Analytics.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @analytics.management.remarketingAudience.get@ method which the
-- 'AnalyticsManagementRemarketingAudienceGet' request conforms to.
type AnalyticsManagementRemarketingAudienceGetResource =
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
    Core.:> Core.Get '[Core.JSON] RemarketingAudience

-- | Gets a remarketing audience to which the user has access.
--
-- /See:/ 'newAnalyticsManagementRemarketingAudienceGet' smart constructor.
data AnalyticsManagementRemarketingAudienceGet = AnalyticsManagementRemarketingAudienceGet
  { -- | The account ID of the remarketing audience to retrieve.
    accountId :: Core.Text,
    -- | The ID of the remarketing audience to retrieve.
    remarketingAudienceId :: Core.Text,
    -- | The web property ID of the remarketing audience to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementRemarketingAudienceGet' with the minimum fields required to make a request.
newAnalyticsManagementRemarketingAudienceGet ::
  -- |  The account ID of the remarketing audience to retrieve. See 'accountId'.
  Core.Text ->
  -- |  The ID of the remarketing audience to retrieve. See 'remarketingAudienceId'.
  Core.Text ->
  -- |  The web property ID of the remarketing audience to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementRemarketingAudienceGet
newAnalyticsManagementRemarketingAudienceGet accountId remarketingAudienceId webPropertyId =
  AnalyticsManagementRemarketingAudienceGet
    { accountId = accountId,
      remarketingAudienceId = remarketingAudienceId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementRemarketingAudienceGet
  where
  type
    Rs AnalyticsManagementRemarketingAudienceGet =
      RemarketingAudience
  type
    Scopes AnalyticsManagementRemarketingAudienceGet =
      '[ "https://www.googleapis.com/auth/analytics.edit",
         "https://www.googleapis.com/auth/analytics.readonly"
       ]
  requestClient
    AnalyticsManagementRemarketingAudienceGet {..} =
      go
        accountId
        webPropertyId
        remarketingAudienceId
        (Core.Just Core.AltJSON)
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementRemarketingAudienceGetResource
            )
            Core.mempty
