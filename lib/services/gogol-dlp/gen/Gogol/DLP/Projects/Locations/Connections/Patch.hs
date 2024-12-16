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
-- Module      : Gogol.DLP.Projects.Locations.Connections.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a Connection.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.connections.patch@.
module Gogol.DLP.Projects.Locations.Connections.Patch
    (
    -- * Resource
      DLPProjectsLocationsConnectionsPatchResource

    -- ** Constructing a Request
    , DLPProjectsLocationsConnectionsPatch (..)
    , newDLPProjectsLocationsConnectionsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.connections.patch@ method which the
-- 'DLPProjectsLocationsConnectionsPatch' request conforms to.
type DLPProjectsLocationsConnectionsPatchResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GooglePrivacyDlpV2UpdateConnectionRequest
                       Core.:>
                       Core.Patch '[Core.JSON] GooglePrivacyDlpV2Connection

-- | Update a Connection.
--
-- /See:/ 'newDLPProjectsLocationsConnectionsPatch' smart constructor.
data DLPProjectsLocationsConnectionsPatch = DLPProjectsLocationsConnectionsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name in the format: @projects\/{project}\/locations\/{location}\/connections\/{connection}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2UpdateConnectionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsConnectionsPatch' with the minimum fields required to make a request.
newDLPProjectsLocationsConnectionsPatch 
    ::  Core.Text
       -- ^  Required. Resource name in the format: @projects\/{project}\/locations\/{location}\/connections\/{connection}@. See 'name'.
    -> GooglePrivacyDlpV2UpdateConnectionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPProjectsLocationsConnectionsPatch
newDLPProjectsLocationsConnectionsPatch name payload =
  DLPProjectsLocationsConnectionsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsConnectionsPatch
         where
        type Rs DLPProjectsLocationsConnectionsPatch =
             GooglePrivacyDlpV2Connection
        type Scopes DLPProjectsLocationsConnectionsPatch =
             '[CloudPlatform'FullControl]
        requestClient
          DLPProjectsLocationsConnectionsPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsConnectionsPatchResource)
                      Core.mempty

