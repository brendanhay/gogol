{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.FirebaseRules.Projects.Rulesets.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a @Ruleset@ from @Source@. The @Ruleset@ is given a unique generated name which is returned to the caller. @Source@ containing syntactic or semantics errors will result in an error response indicating the first error encountered. For a detailed view of @Source@ issues, use TestRuleset.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.create@.
module Gogol.FirebaseRules.Projects.Rulesets.Create
  ( -- * Resource
    FirebaseRulesProjectsRulesetsCreateResource,

    -- ** Constructing a Request
    FirebaseRulesProjectsRulesetsCreate (..),
    newFirebaseRulesProjectsRulesetsCreate,
  )
where

import Gogol.FirebaseRules.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebaserules.projects.rulesets.create@ method which the
-- 'FirebaseRulesProjectsRulesetsCreate' request conforms to.
type FirebaseRulesProjectsRulesetsCreateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "rulesets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Ruleset
    Core.:> Core.Post '[Core.JSON] Ruleset

-- | Create a @Ruleset@ from @Source@. The @Ruleset@ is given a unique generated name which is returned to the caller. @Source@ containing syntactic or semantics errors will result in an error response indicating the first error encountered. For a detailed view of @Source@ issues, use TestRuleset.
--
-- /See:/ 'newFirebaseRulesProjectsRulesetsCreate' smart constructor.
data FirebaseRulesProjectsRulesetsCreate = FirebaseRulesProjectsRulesetsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for Project which owns this @Ruleset@. Format: @projects\/{project_id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Ruleset,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsRulesetsCreate' with the minimum fields required to make a request.
newFirebaseRulesProjectsRulesetsCreate ::
  -- |  Required. Resource name for Project which owns this @Ruleset@. Format: @projects\/{project_id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Ruleset ->
  FirebaseRulesProjectsRulesetsCreate
newFirebaseRulesProjectsRulesetsCreate name payload =
  FirebaseRulesProjectsRulesetsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FirebaseRulesProjectsRulesetsCreate where
  type Rs FirebaseRulesProjectsRulesetsCreate = Ruleset
  type
    Scopes FirebaseRulesProjectsRulesetsCreate =
      '[CloudPlatform'FullControl, Firebase'FullControl]
  requestClient FirebaseRulesProjectsRulesetsCreate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      firebaseRulesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FirebaseRulesProjectsRulesetsCreateResource
          )
          Core.mempty
