{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.GlobalOrganizationOperations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Operations resource. Gets a list of operations by making a @list()@ request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalOrganizationOperations.get@.
module Gogol.Compute.GlobalOrganizationOperations.Get
  ( -- * Resource
    ComputeGlobalOrganizationOperationsGetResource,

    -- ** Constructing a Request
    ComputeGlobalOrganizationOperationsGet (..),
    newComputeGlobalOrganizationOperationsGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.globalOrganizationOperations.get@ method which the
-- 'ComputeGlobalOrganizationOperationsGet' request conforms to.
type ComputeGlobalOrganizationOperationsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "locations"
    Core.:> "global"
    Core.:> "operations"
    Core.:> Core.Capture "operation" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parentId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Operation

-- | Retrieves the specified Operations resource. Gets a list of operations by making a @list()@ request.
--
-- /See:/ 'newComputeGlobalOrganizationOperationsGet' smart constructor.
data ComputeGlobalOrganizationOperationsGet = ComputeGlobalOrganizationOperationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the Operations resource to return, or its unique numeric identifier.
    operation :: Core.Text,
    -- | Parent ID for this request.
    parentId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalOrganizationOperationsGet' with the minimum fields required to make a request.
newComputeGlobalOrganizationOperationsGet ::
  -- |  Name of the Operations resource to return, or its unique numeric identifier. See 'operation'.
  Core.Text ->
  ComputeGlobalOrganizationOperationsGet
newComputeGlobalOrganizationOperationsGet operation =
  ComputeGlobalOrganizationOperationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      operation = operation,
      parentId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeGlobalOrganizationOperationsGet where
  type Rs ComputeGlobalOrganizationOperationsGet = Operation
  type
    Scopes ComputeGlobalOrganizationOperationsGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeGlobalOrganizationOperationsGet {..} =
    go
      operation
      xgafv
      accessToken
      callback
      parentId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeGlobalOrganizationOperationsGetResource
          )
          Core.mempty
