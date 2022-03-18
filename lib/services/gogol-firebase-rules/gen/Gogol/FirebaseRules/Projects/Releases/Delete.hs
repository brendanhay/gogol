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
-- Module      : Gogol.FirebaseRules.Projects.Releases.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a @Release@ by resource name.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.delete@.
module Gogol.FirebaseRules.Projects.Releases.Delete
  ( -- * Resource
    FirebaseRulesProjectsReleasesDeleteResource,

    -- ** Constructing a Request
    newFirebaseRulesProjectsReleasesDelete,
    FirebaseRulesProjectsReleasesDelete,
  )
where

import Gogol.FirebaseRules.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firebaserules.projects.releases.delete@ method which the
-- 'FirebaseRulesProjectsReleasesDelete' request conforms to.
type FirebaseRulesProjectsReleasesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Delete a @Release@ by resource name.
--
-- /See:/ 'newFirebaseRulesProjectsReleasesDelete' smart constructor.
data FirebaseRulesProjectsReleasesDelete = FirebaseRulesProjectsReleasesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the @Release@ to delete. Format: @projects\/{project_id}\/releases\/{release_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsReleasesDelete' with the minimum fields required to make a request.
newFirebaseRulesProjectsReleasesDelete ::
  -- |  Required. Resource name for the @Release@ to delete. Format: @projects\/{project_id}\/releases\/{release_id}@ See 'name'.
  Core.Text ->
  FirebaseRulesProjectsReleasesDelete
newFirebaseRulesProjectsReleasesDelete name =
  FirebaseRulesProjectsReleasesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FirebaseRulesProjectsReleasesDelete
  where
  type Rs FirebaseRulesProjectsReleasesDelete = Empty
  type
    Scopes FirebaseRulesProjectsReleasesDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/firebase"
       ]
  requestClient FirebaseRulesProjectsReleasesDelete {..} =
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
          ( Core.Proxy ::
              Core.Proxy
                FirebaseRulesProjectsReleasesDeleteResource
          )
          Core.mempty
