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
-- Module      : Gogol.Compute.PublicDelegatedPrefixes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified PublicDelegatedPrefix resource in the given region.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.get@.
module Gogol.Compute.PublicDelegatedPrefixes.Get
  ( -- * Resource
    ComputePublicDelegatedPrefixesGetResource,

    -- ** Constructing a Request
    ComputePublicDelegatedPrefixesGet (..),
    newComputePublicDelegatedPrefixesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.publicDelegatedPrefixes.get@ method which the
-- 'ComputePublicDelegatedPrefixesGet' request conforms to.
type ComputePublicDelegatedPrefixesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "publicDelegatedPrefixes"
    Core.:> Core.Capture "publicDelegatedPrefix" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PublicDelegatedPrefix

-- | Returns the specified PublicDelegatedPrefix resource in the given region.
--
-- /See:/ 'newComputePublicDelegatedPrefixesGet' smart constructor.
data ComputePublicDelegatedPrefixesGet = ComputePublicDelegatedPrefixesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the PublicDelegatedPrefix resource to return.
    publicDelegatedPrefix :: Core.Text,
    -- | Name of the region of this request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputePublicDelegatedPrefixesGet' with the minimum fields required to make a request.
newComputePublicDelegatedPrefixesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the PublicDelegatedPrefix resource to return. See 'publicDelegatedPrefix'.
  Core.Text ->
  -- |  Name of the region of this request. See 'region'.
  Core.Text ->
  ComputePublicDelegatedPrefixesGet
newComputePublicDelegatedPrefixesGet project publicDelegatedPrefix region =
  ComputePublicDelegatedPrefixesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      publicDelegatedPrefix = publicDelegatedPrefix,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputePublicDelegatedPrefixesGet
  where
  type
    Rs ComputePublicDelegatedPrefixesGet =
      PublicDelegatedPrefix
  type
    Scopes ComputePublicDelegatedPrefixesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputePublicDelegatedPrefixesGet {..} =
    go
      project
      region
      publicDelegatedPrefix
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
              Core.Proxy ComputePublicDelegatedPrefixesGetResource
          )
          Core.mempty
