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
-- Module      : Gogol.FirebaseRules.Projects.Releases.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a @Release@. Release names should reflect the developer\'s deployment practices. For example, the release name may include the environment name, application name, application version, or any other name meaningful to the developer. Once a @Release@ refers to a @Ruleset@, the rules can be enforced by Firebase Rules-enabled services. More than one @Release@ may be \'live\' concurrently. Consider the following three @Release@ names for @projects\/foo@ and the @Ruleset@ to which they refer. Release Name -> Ruleset Name * projects\/foo\/releases\/prod -> projects\/foo\/rulesets\/uuid123 * projects\/foo\/releases\/prod\/beta -> projects\/foo\/rulesets\/uuid123 * projects\/foo\/releases\/prod\/v23 -> projects\/foo\/rulesets\/uuid456 The relationships reflect a @Ruleset@ rollout in progress. The @prod@ and @prod\/beta@ releases refer to the same @Ruleset@. However, @prod\/v23@ refers to a new @Ruleset@. The @Ruleset@ reference for a @Release@ may be updated using the UpdateRelease method.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.create@.
module Gogol.FirebaseRules.Projects.Releases.Create
  ( -- * Resource
    FirebaseRulesProjectsReleasesCreateResource,

    -- ** Constructing a Request
    FirebaseRulesProjectsReleasesCreate (..),
    newFirebaseRulesProjectsReleasesCreate,
  )
where

import Gogol.FirebaseRules.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebaserules.projects.releases.create@ method which the
-- 'FirebaseRulesProjectsReleasesCreate' request conforms to.
type FirebaseRulesProjectsReleasesCreateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "releases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Release
    Core.:> Core.Post '[Core.JSON] Release

-- | Create a @Release@. Release names should reflect the developer\'s deployment practices. For example, the release name may include the environment name, application name, application version, or any other name meaningful to the developer. Once a @Release@ refers to a @Ruleset@, the rules can be enforced by Firebase Rules-enabled services. More than one @Release@ may be \'live\' concurrently. Consider the following three @Release@ names for @projects\/foo@ and the @Ruleset@ to which they refer. Release Name -> Ruleset Name * projects\/foo\/releases\/prod -> projects\/foo\/rulesets\/uuid123 * projects\/foo\/releases\/prod\/beta -> projects\/foo\/rulesets\/uuid123 * projects\/foo\/releases\/prod\/v23 -> projects\/foo\/rulesets\/uuid456 The relationships reflect a @Ruleset@ rollout in progress. The @prod@ and @prod\/beta@ releases refer to the same @Ruleset@. However, @prod\/v23@ refers to a new @Ruleset@. The @Ruleset@ reference for a @Release@ may be updated using the UpdateRelease method.
--
-- /See:/ 'newFirebaseRulesProjectsReleasesCreate' smart constructor.
data FirebaseRulesProjectsReleasesCreate = FirebaseRulesProjectsReleasesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the project which owns this @Release@. Format: @projects\/{project_id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Release,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsReleasesCreate' with the minimum fields required to make a request.
newFirebaseRulesProjectsReleasesCreate ::
  -- |  Required. Resource name for the project which owns this @Release@. Format: @projects\/{project_id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Release ->
  FirebaseRulesProjectsReleasesCreate
newFirebaseRulesProjectsReleasesCreate name payload =
  FirebaseRulesProjectsReleasesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FirebaseRulesProjectsReleasesCreate where
  type Rs FirebaseRulesProjectsReleasesCreate = Release
  type
    Scopes FirebaseRulesProjectsReleasesCreate =
      '[CloudPlatform'FullControl, Firebase'FullControl]
  requestClient FirebaseRulesProjectsReleasesCreate {..} =
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
              Core.Proxy FirebaseRulesProjectsReleasesCreateResource
          )
          Core.mempty
