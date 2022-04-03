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
-- Module      : Gogol.Compute.ServiceAttachments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified ServiceAttachment resource in the given scope.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.serviceAttachments.get@.
module Gogol.Compute.ServiceAttachments.Get
  ( -- * Resource
    ComputeServiceAttachmentsGetResource,

    -- ** Constructing a Request
    ComputeServiceAttachmentsGet (..),
    newComputeServiceAttachmentsGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.serviceAttachments.get@ method which the
-- 'ComputeServiceAttachmentsGet' request conforms to.
type ComputeServiceAttachmentsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "serviceAttachments"
    Core.:> Core.Capture "serviceAttachment" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ServiceAttachment

-- | Returns the specified ServiceAttachment resource in the given scope.
--
-- /See:/ 'newComputeServiceAttachmentsGet' smart constructor.
data ComputeServiceAttachmentsGet = ComputeServiceAttachmentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region of this request.
    region :: Core.Text,
    -- | Name of the ServiceAttachment resource to return.
    serviceAttachment :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeServiceAttachmentsGet' with the minimum fields required to make a request.
newComputeServiceAttachmentsGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region of this request. See 'region'.
  Core.Text ->
  -- |  Name of the ServiceAttachment resource to return. See 'serviceAttachment'.
  Core.Text ->
  ComputeServiceAttachmentsGet
newComputeServiceAttachmentsGet project region serviceAttachment =
  ComputeServiceAttachmentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      region = region,
      serviceAttachment = serviceAttachment,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeServiceAttachmentsGet
  where
  type
    Rs ComputeServiceAttachmentsGet =
      ServiceAttachment
  type
    Scopes ComputeServiceAttachmentsGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeServiceAttachmentsGet {..} =
    go
      project
      region
      serviceAttachment
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeServiceAttachmentsGetResource
          )
          Core.mempty
