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
-- Module      : Gogol.FirebaseRules.Projects.Rulesets.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a @Ruleset@ by name including the full @Source@ contents.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.get@.
module Gogol.FirebaseRules.Projects.Rulesets.Get
  ( -- * Resource
    FirebaseRulesProjectsRulesetsGetResource,

    -- ** Constructing a Request
    FirebaseRulesProjectsRulesetsGet (..),
    newFirebaseRulesProjectsRulesetsGet,
  )
where

import Gogol.FirebaseRules.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebaserules.projects.rulesets.get@ method which the
-- 'FirebaseRulesProjectsRulesetsGet' request conforms to.
type FirebaseRulesProjectsRulesetsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Ruleset

-- | Get a @Ruleset@ by name including the full @Source@ contents.
--
-- /See:/ 'newFirebaseRulesProjectsRulesetsGet' smart constructor.
data FirebaseRulesProjectsRulesetsGet = FirebaseRulesProjectsRulesetsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the ruleset to get. Format: @projects\/{project_id}\/rulesets\/{ruleset_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsRulesetsGet' with the minimum fields required to make a request.
newFirebaseRulesProjectsRulesetsGet ::
  -- |  Required. Resource name for the ruleset to get. Format: @projects\/{project_id}\/rulesets\/{ruleset_id}@ See 'name'.
  Core.Text ->
  FirebaseRulesProjectsRulesetsGet
newFirebaseRulesProjectsRulesetsGet name =
  FirebaseRulesProjectsRulesetsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FirebaseRulesProjectsRulesetsGet where
  type Rs FirebaseRulesProjectsRulesetsGet = Ruleset
  type
    Scopes FirebaseRulesProjectsRulesetsGet =
      '[ CloudPlatform'FullControl,
         Firebase'FullControl,
         Firebase'Readonly
       ]
  requestClient FirebaseRulesProjectsRulesetsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      firebaseRulesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FirebaseRulesProjectsRulesetsGetResource)
          Core.mempty
