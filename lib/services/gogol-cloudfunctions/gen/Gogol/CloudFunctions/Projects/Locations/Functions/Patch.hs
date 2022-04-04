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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates existing function.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.patch@.
module Gogol.CloudFunctions.Projects.Locations.Functions.Patch
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsPatchResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsPatch (..),
    newCloudFunctionsProjectsLocationsFunctionsPatch,
  )
where

import Gogol.CloudFunctions.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.patch@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsPatch' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsPatchResource =
  "v2beta"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Function
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates existing function.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsPatch' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsPatch = CloudFunctionsProjectsLocationsFunctionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A user-defined name of the function. Function names must be unique globally and match pattern @projects\/*\/locations\/*\/functions\/*@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Function,
    -- | The list of fields to be updated. If no field mask is provided, all provided fields in the request will be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsPatch' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsPatch ::
  -- |  A user-defined name of the function. Function names must be unique globally and match pattern @projects\/*\/locations\/*\/functions\/*@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Function ->
  CloudFunctionsProjectsLocationsFunctionsPatch
newCloudFunctionsProjectsLocationsFunctionsPatch name payload =
  CloudFunctionsProjectsLocationsFunctionsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsFunctionsPatch
  where
  type
    Rs CloudFunctionsProjectsLocationsFunctionsPatch =
      Operation
  type
    Scopes
      CloudFunctionsProjectsLocationsFunctionsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudFunctionsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudFunctionsProjectsLocationsFunctionsPatchResource
            )
            Core.mempty
