{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FirebaseRules.Projects.Releases.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a @Release@ by name.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.releases.get@.
module Gogol.FirebaseRules.Projects.Releases.Get
    (
    -- * Resource
      FirebaseRulesProjectsReleasesGetResource

    -- ** Constructing a Request
    , newFirebaseRulesProjectsReleasesGet
    , FirebaseRulesProjectsReleasesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseRules.Types

-- | A resource alias for @firebaserules.projects.releases.get@ method which the
-- 'FirebaseRulesProjectsReleasesGet' request conforms to.
type FirebaseRulesProjectsReleasesGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Release

-- | Get a @Release@ by name.
--
-- /See:/ 'newFirebaseRulesProjectsReleasesGet' smart constructor.
data FirebaseRulesProjectsReleasesGet = FirebaseRulesProjectsReleasesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the @Release@. Format: @projects\/{project_id}\/releases\/{release_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRulesProjectsReleasesGet' with the minimum fields required to make a request.
newFirebaseRulesProjectsReleasesGet 
    ::  Core.Text
       -- ^  Required. Resource name of the @Release@. Format: @projects\/{project_id}\/releases\/{release_id}@ See 'name'.
    -> FirebaseRulesProjectsReleasesGet
newFirebaseRulesProjectsReleasesGet name =
  FirebaseRulesProjectsReleasesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FirebaseRulesProjectsReleasesGet
         where
        type Rs FirebaseRulesProjectsReleasesGet = Release
        type Scopes FirebaseRulesProjectsReleasesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient FirebaseRulesProjectsReleasesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              firebaseRulesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FirebaseRulesProjectsReleasesGetResource)
                      Core.mempty

