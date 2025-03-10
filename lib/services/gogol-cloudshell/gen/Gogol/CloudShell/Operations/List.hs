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
-- Module      : Gogol.CloudShell.Operations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.operations.list@.
module Gogol.CloudShell.Operations.List
  ( -- * Resource
    CloudShellOperationsListResource,

    -- ** Constructing a Request
    CloudShellOperationsList (..),
    newCloudShellOperationsList,
  )
where

import Gogol.CloudShell.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudshell.operations.list@ method which the
-- 'CloudShellOperationsList' request conforms to.
type CloudShellOperationsListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@.
--
-- /See:/ 'newCloudShellOperationsList' smart constructor.
data CloudShellOperationsList = CloudShellOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The standard list filter.
    filter :: (Core.Maybe Core.Text),
    -- | The name of the operation\'s parent resource.
    name :: Core.Text,
    -- | The standard list page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The standard list page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudShellOperationsList' with the minimum fields required to make a request.
newCloudShellOperationsList ::
  -- |  The name of the operation\'s parent resource. See 'name'.
  Core.Text ->
  CloudShellOperationsList
newCloudShellOperationsList name =
  CloudShellOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudShellOperationsList where
  type Rs CloudShellOperationsList = ListOperationsResponse
  type Scopes CloudShellOperationsList = '[CloudPlatform'FullControl]
  requestClient CloudShellOperationsList {..} =
    go
      name
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudShellService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudShellOperationsListResource)
          Core.mempty
