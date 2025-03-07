{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FirebaseRules.Projects.Rulesets.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List @Ruleset@ metadata only and optionally filter the results by @Ruleset@ name. The full @Source@ contents of a @Ruleset@ may be retrieved with GetRuleset.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.list@.
module Gogol.FirebaseRules.Projects.Rulesets.List
  ( -- * Resource
    FirebaseRulesProjectsRulesetsListResource,

    -- ** Constructing a Request
    FirebaseRulesProjectsRulesetsList (..),
    newFirebaseRulesProjectsRulesetsList,
  )
where

import Gogol.FirebaseRules.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebaserules.projects.rulesets.list@ method which the
-- 'FirebaseRulesProjectsRulesetsList' request conforms to.
type FirebaseRulesProjectsRulesetsListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "rulesets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRulesetsResponse

-- | List @Ruleset@ metadata only and optionally filter the results by @Ruleset@ name. The full @Source@ contents of a @Ruleset@ may be retrieved with GetRuleset.
--
-- /See:/ 'newFirebaseRulesProjectsRulesetsList' smart constructor.
data FirebaseRulesProjectsRulesetsList = FirebaseRulesProjectsRulesetsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. @Ruleset@ filter. The list method supports filters with restrictions on @Ruleset.name@. Filters on @Ruleset.create_time@ should use the @date@ function which parses strings that conform to the RFC 3339 date\/time specifications. Example: @create_time > date(\"2017-01-01T00:00:00Z\") AND name=UUID-*@
    filter :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the project. Format: @projects\/{project_id}@
    name :: Core.Text,
    -- | Optional. Page size to load. Maximum of 100. Defaults to 10. Note: @page_size@ is just a hint and the service may choose to load less than @page_size@ due to the size of the output. To traverse all of the releases, caller should iterate until the @page_token@ is empty.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Next page token for loading the next batch of @Ruleset@ instances.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsRulesetsList' with the minimum fields required to make a request.
newFirebaseRulesProjectsRulesetsList ::
  -- |  Required. Resource name for the project. Format: @projects\/{project_id}@ See 'name'.
  Core.Text ->
  FirebaseRulesProjectsRulesetsList
newFirebaseRulesProjectsRulesetsList name =
  FirebaseRulesProjectsRulesetsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FirebaseRulesProjectsRulesetsList where
  type Rs FirebaseRulesProjectsRulesetsList = ListRulesetsResponse
  type
    Scopes FirebaseRulesProjectsRulesetsList =
      '[ CloudPlatform'FullControl,
         Firebase'FullControl,
         Firebase'Readonly
       ]
  requestClient FirebaseRulesProjectsRulesetsList {..} =
    go
      name
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      firebaseRulesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FirebaseRulesProjectsRulesetsListResource
          )
          Core.mempty
