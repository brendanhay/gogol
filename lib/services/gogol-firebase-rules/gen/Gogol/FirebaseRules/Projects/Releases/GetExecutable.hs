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
-- Module      : Gogol.FirebaseRules.Projects.Releases.GetExecutable
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the @Release@ executable to use when enforcing rules.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.getExecutable@.
module Gogol.FirebaseRules.Projects.Releases.GetExecutable
  ( -- * Resource
    FirebaseRulesProjectsReleasesGetExecutableResource,

    -- ** Constructing a Request
    newFirebaseRulesProjectsReleasesGetExecutable,
    FirebaseRulesProjectsReleasesGetExecutable,
  )
where

import Gogol.FirebaseRules.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firebaserules.projects.releases.getExecutable@ method which the
-- 'FirebaseRulesProjectsReleasesGetExecutable' request conforms to.
type FirebaseRulesProjectsReleasesGetExecutableResource =
  "v1"
    Core.:> Core.CaptureMode "name" "getExecutable" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "executableVersion"
              ProjectsReleasesGetExecutableExecutableVersion
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetReleaseExecutableResponse

-- | Get the @Release@ executable to use when enforcing rules.
--
-- /See:/ 'newFirebaseRulesProjectsReleasesGetExecutable' smart constructor.
data FirebaseRulesProjectsReleasesGetExecutable = FirebaseRulesProjectsReleasesGetExecutable
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The requested runtime executable version. Defaults to FIREBASE/RULES/EXECUTABLE_V1.
    executableVersion :: (Core.Maybe ProjectsReleasesGetExecutableExecutableVersion),
    -- | Required. Resource name of the @Release@. Format: @projects\/{project_id}\/releases\/{release_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsReleasesGetExecutable' with the minimum fields required to make a request.
newFirebaseRulesProjectsReleasesGetExecutable ::
  -- |  Required. Resource name of the @Release@. Format: @projects\/{project_id}\/releases\/{release_id}@ See 'name'.
  Core.Text ->
  FirebaseRulesProjectsReleasesGetExecutable
newFirebaseRulesProjectsReleasesGetExecutable name =
  FirebaseRulesProjectsReleasesGetExecutable
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      executableVersion = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FirebaseRulesProjectsReleasesGetExecutable
  where
  type
    Rs FirebaseRulesProjectsReleasesGetExecutable =
      GetReleaseExecutableResponse
  type
    Scopes
      FirebaseRulesProjectsReleasesGetExecutable =
      '[ CloudPlatform'FullControl,
         Firebase'FullControl,
         Firebase'Readonly
       ]
  requestClient
    FirebaseRulesProjectsReleasesGetExecutable {..} =
      go
        name
        xgafv
        accessToken
        callback
        executableVersion
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        firebaseRulesService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FirebaseRulesProjectsReleasesGetExecutableResource
            )
            Core.mempty
