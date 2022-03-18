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
-- Module      : Gogol.Compute.GlobalOrganizationOperations.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Operations resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalOrganizationOperations.delete@.
module Gogol.Compute.GlobalOrganizationOperations.Delete
  ( -- * Resource
    ComputeGlobalOrganizationOperationsDeleteResource,

    -- ** Constructing a Request
    newComputeGlobalOrganizationOperationsDelete,
    ComputeGlobalOrganizationOperationsDelete,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.globalOrganizationOperations.delete@ method which the
-- 'ComputeGlobalOrganizationOperationsDelete' request conforms to.
type ComputeGlobalOrganizationOperationsDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes the specified Operations resource.
--
-- /See:/ 'newComputeGlobalOrganizationOperationsDelete' smart constructor.
data ComputeGlobalOrganizationOperationsDelete = ComputeGlobalOrganizationOperationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the Operations resource to delete.
    operation :: Core.Text,
    -- | Parent ID for this request.
    parentId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalOrganizationOperationsDelete' with the minimum fields required to make a request.
newComputeGlobalOrganizationOperationsDelete ::
  -- |  Name of the Operations resource to delete. See 'operation'.
  Core.Text ->
  ComputeGlobalOrganizationOperationsDelete
newComputeGlobalOrganizationOperationsDelete operation =
  ComputeGlobalOrganizationOperationsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      operation = operation,
      parentId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeGlobalOrganizationOperationsDelete
  where
  type
    Rs ComputeGlobalOrganizationOperationsDelete =
      ()
  type
    Scopes ComputeGlobalOrganizationOperationsDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient
    ComputeGlobalOrganizationOperationsDelete {..} =
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
                Core.Proxy
                  ComputeGlobalOrganizationOperationsDeleteResource
            )
            Core.mempty
