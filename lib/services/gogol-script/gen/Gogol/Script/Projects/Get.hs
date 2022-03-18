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
-- Module      : Gogol.Script.Projects.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a script project\'s metadata.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.get@.
module Gogol.Script.Projects.Get
    (
    -- * Resource
      ScriptProjectsGetResource

    -- ** Constructing a Request
    , newScriptProjectsGet
    , ScriptProjectsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.get@ method which the
-- 'ScriptProjectsGet' request conforms to.
type ScriptProjectsGetResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "scriptId" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Project

-- | Gets a script project\'s metadata.
--
-- /See:/ 'newScriptProjectsGet' smart constructor.
data ScriptProjectsGet = ScriptProjectsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The script project\'s Drive ID.
    , scriptId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsGet' with the minimum fields required to make a request.
newScriptProjectsGet 
    ::  Core.Text
       -- ^  The script project\'s Drive ID. See 'scriptId'.
    -> ScriptProjectsGet
newScriptProjectsGet scriptId =
  ScriptProjectsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , scriptId = scriptId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ScriptProjectsGet where
        type Rs ScriptProjectsGet = Project
        type Scopes ScriptProjectsGet =
             '["https://www.googleapis.com/auth/script.projects",
               "https://www.googleapis.com/auth/script.projects.readonly"]
        requestClient ScriptProjectsGet{..}
          = go scriptId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              scriptService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ScriptProjectsGetResource)
                      Core.mempty

