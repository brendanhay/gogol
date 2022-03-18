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
-- Module      : Network.Google.FirebaseRules.Projects.Rulesets.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a @Ruleset@ by resource name. If the @Ruleset@ is referenced by a @Release@ the operation will fail.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.delete@.
module Network.Google.FirebaseRules.Projects.Rulesets.Delete
  ( -- * Resource
    FirebaseRulesProjectsRulesetsDeleteResource,

    -- ** Constructing a Request
    newFirebaseRulesProjectsRulesetsDelete,
    FirebaseRulesProjectsRulesetsDelete,
  )
where

import Network.Google.FirebaseRules.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @firebaserules.projects.rulesets.delete@ method which the
-- 'FirebaseRulesProjectsRulesetsDelete' request conforms to.
type FirebaseRulesProjectsRulesetsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Delete a @Ruleset@ by resource name. If the @Ruleset@ is referenced by a @Release@ the operation will fail.
--
-- /See:/ 'newFirebaseRulesProjectsRulesetsDelete' smart constructor.
data FirebaseRulesProjectsRulesetsDelete = FirebaseRulesProjectsRulesetsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the ruleset to delete. Format: @projects\/{project_id}\/rulesets\/{ruleset_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsRulesetsDelete' with the minimum fields required to make a request.
newFirebaseRulesProjectsRulesetsDelete ::
  -- |  Required. Resource name for the ruleset to delete. Format: @projects\/{project_id}\/rulesets\/{ruleset_id}@ See 'name'.
  Core.Text ->
  FirebaseRulesProjectsRulesetsDelete
newFirebaseRulesProjectsRulesetsDelete name =
  FirebaseRulesProjectsRulesetsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FirebaseRulesProjectsRulesetsDelete
  where
  type Rs FirebaseRulesProjectsRulesetsDelete = Empty
  type
    Scopes FirebaseRulesProjectsRulesetsDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/firebase"
       ]
  requestClient FirebaseRulesProjectsRulesetsDelete {..} =
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
                FirebaseRulesProjectsRulesetsDeleteResource
          )
          Core.mempty
