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
-- Module      : Gogol.AndroidManagement.Enterprises.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes an enterprise and all accounts and data associated with it. Warning: this will result in a cascaded deletion of all AM API devices associated with the deleted enterprise. Only available for EMM-managed enterprises.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.delete@.
module Gogol.AndroidManagement.Enterprises.Delete
  ( -- * Resource
    AndroidManagementEnterprisesDeleteResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesDelete (..),
    newAndroidManagementEnterprisesDelete,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.delete@ method which the
-- 'AndroidManagementEnterprisesDelete' request conforms to.
type AndroidManagementEnterprisesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Permanently deletes an enterprise and all accounts and data associated with it. Warning: this will result in a cascaded deletion of all AM API devices associated with the deleted enterprise. Only available for EMM-managed enterprises.
--
-- /See:/ 'newAndroidManagementEnterprisesDelete' smart constructor.
data AndroidManagementEnterprisesDelete = AndroidManagementEnterprisesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the enterprise in the form enterprises\/{enterpriseId}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesDelete' with the minimum fields required to make a request.
newAndroidManagementEnterprisesDelete ::
  -- |  The name of the enterprise in the form enterprises\/{enterpriseId}. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesDelete
newAndroidManagementEnterprisesDelete name =
  AndroidManagementEnterprisesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidManagementEnterprisesDelete where
  type Rs AndroidManagementEnterprisesDelete = Empty
  type
    Scopes AndroidManagementEnterprisesDelete =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementEnterprisesDeleteResource
          )
          Core.mempty
