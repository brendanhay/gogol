{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Script.Projects.Versions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the versions of a script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.versions.list@.
module Gogol.Script.Projects.Versions.List
    (
    -- * Resource
      ScriptProjectsVersionsListResource

    -- ** Constructing a Request
    , ScriptProjectsVersionsList (..)
    , newScriptProjectsVersionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.versions.list@ method which the
-- 'ScriptProjectsVersionsList' request conforms to.
type ScriptProjectsVersionsListResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "scriptId" Core.Text Core.:>
           "versions" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListVersionsResponse

-- | List the versions of a script project.
--
-- /See:/ 'newScriptProjectsVersionsList' smart constructor.
data ScriptProjectsVersionsList = ScriptProjectsVersionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of versions on each returned page. Defaults to 50.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The token for continuing a previous list request on the next page. This should be set to the value of @nextPageToken@ from a previous response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The script project\'s Drive ID.
    , scriptId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsVersionsList' with the minimum fields required to make a request.
newScriptProjectsVersionsList 
    ::  Core.Text
       -- ^  The script project\'s Drive ID. See 'scriptId'.
    -> ScriptProjectsVersionsList
newScriptProjectsVersionsList scriptId =
  ScriptProjectsVersionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , scriptId = scriptId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ScriptProjectsVersionsList
         where
        type Rs ScriptProjectsVersionsList =
             ListVersionsResponse
        type Scopes ScriptProjectsVersionsList =
             '[Script'Projects, Script'Projects'Readonly]
        requestClient ScriptProjectsVersionsList{..}
          = go scriptId xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              scriptService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ScriptProjectsVersionsListResource)
                      Core.mempty

