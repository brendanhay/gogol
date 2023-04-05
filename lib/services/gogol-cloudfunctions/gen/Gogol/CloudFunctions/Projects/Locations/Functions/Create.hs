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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return @ALREADY_EXISTS@ error.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.create@.
module Gogol.CloudFunctions.Projects.Locations.Functions.Create
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsCreateResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsCreate (..),
    newCloudFunctionsProjectsLocationsFunctionsCreate,
  )
where

import Gogol.CloudFunctions.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.create@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsCreate' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "functions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "functionId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Function
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return @ALREADY_EXISTS@ error.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsCreate' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsCreate = CloudFunctionsProjectsLocationsFunctionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID to use for the function, which will become the final component of the function\'s resource name. This value should be 4-63 characters, and valid characters are \/a-z-\/.
    functionId :: (Core.Maybe Core.Text),
    -- | Required. The project and location in which the function should be created, specified in the format @projects\/*\/locations\/*@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Function,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsCreate' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsCreate ::
  -- |  Required. The project and location in which the function should be created, specified in the format @projects\/*\/locations\/*@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Function ->
  CloudFunctionsProjectsLocationsFunctionsCreate
newCloudFunctionsProjectsLocationsFunctionsCreate parent payload =
  CloudFunctionsProjectsLocationsFunctionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      functionId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsFunctionsCreate
  where
  type
    Rs
      CloudFunctionsProjectsLocationsFunctionsCreate =
      Operation
  type
    Scopes
      CloudFunctionsProjectsLocationsFunctionsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        functionId
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
                  CloudFunctionsProjectsLocationsFunctionsCreateResource
            )
            Core.mempty
