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
-- Module      : Gogol.Dataproc.Projects.Locations.SessionTemplates.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the session template synchronously.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessionTemplates.patch@.
module Gogol.Dataproc.Projects.Locations.SessionTemplates.Patch
    (
    -- * Resource
      DataprocProjectsLocationsSessionTemplatesPatchResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsSessionTemplatesPatch (..)
    , newDataprocProjectsLocationsSessionTemplatesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.sessionTemplates.patch@ method which the
-- 'DataprocProjectsLocationsSessionTemplatesPatch' request conforms to.
type DataprocProjectsLocationsSessionTemplatesPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SessionTemplate Core.:>
                       Core.Patch '[Core.JSON] SessionTemplate

-- | Updates the session template synchronously.
--
-- /See:/ 'newDataprocProjectsLocationsSessionTemplatesPatch' smart constructor.
data DataprocProjectsLocationsSessionTemplatesPatch = DataprocProjectsLocationsSessionTemplatesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the session template.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SessionTemplate
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionTemplatesPatch' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionTemplatesPatch 
    ::  Core.Text
       -- ^  Required. The resource name of the session template. See 'name'.
    -> SessionTemplate
       -- ^  Multipart request metadata. See 'payload'.
    -> DataprocProjectsLocationsSessionTemplatesPatch
newDataprocProjectsLocationsSessionTemplatesPatch name payload =
  DataprocProjectsLocationsSessionTemplatesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsSessionTemplatesPatch
         where
        type Rs
               DataprocProjectsLocationsSessionTemplatesPatch
             = SessionTemplate
        type Scopes
               DataprocProjectsLocationsSessionTemplatesPatch
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsSessionTemplatesPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsSessionTemplatesPatchResource)
                      Core.mempty

