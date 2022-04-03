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
-- Module      : Gogol.Analytics.Management.Profiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists views (profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.list@.
module Gogol.Analytics.Management.Profiles.List
  ( -- * Resource
    AnalyticsManagementProfilesListResource,

    -- ** Constructing a Request
    AnalyticsManagementProfilesList (..),
    newAnalyticsManagementProfilesList,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.profiles.list@ method which the
-- 'AnalyticsManagementProfilesList' request conforms to.
type AnalyticsManagementProfilesListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Profiles

-- | Lists views (profiles) to which the user has access.
--
-- /See:/ 'newAnalyticsManagementProfilesList' smart constructor.
data AnalyticsManagementProfilesList = AnalyticsManagementProfilesList
  { -- | Account ID for the view (profiles) to retrieve. Can either be a specific account ID or \'~all\', which refers to all the accounts to which the user has access.
    accountId :: Core.Text,
    -- | The maximum number of views (profiles) to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web property ID for the views (profiles) to retrieve. Can either be a specific web property ID or \'~all\', which refers to all the web properties to which the user has access.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfilesList' with the minimum fields required to make a request.
newAnalyticsManagementProfilesList ::
  -- |  Account ID for the view (profiles) to retrieve. Can either be a specific account ID or \'~all\', which refers to all the accounts to which the user has access. See 'accountId'.
  Core.Text ->
  -- |  Web property ID for the views (profiles) to retrieve. Can either be a specific web property ID or \'~all\', which refers to all the web properties to which the user has access. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfilesList
newAnalyticsManagementProfilesList accountId webPropertyId =
  AnalyticsManagementProfilesList
    { accountId = accountId,
      maxResults = Core.Nothing,
      startIndex = Core.Nothing,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfilesList
  where
  type Rs AnalyticsManagementProfilesList = Profiles
  type
    Scopes AnalyticsManagementProfilesList =
      '[ Analytics'FullControl,
         Analytics'Edit,
         Analytics'Readonly
       ]
  requestClient AnalyticsManagementProfilesList {..} =
    go
      accountId
      webPropertyId
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementProfilesListResource
          )
          Core.mempty
