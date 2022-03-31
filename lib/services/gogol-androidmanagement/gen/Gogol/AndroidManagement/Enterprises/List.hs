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
-- Module      : Gogol.AndroidManagement.Enterprises.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists EMM-managed enterprises. Only BASIC fields are returned.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.list@.
module Gogol.AndroidManagement.Enterprises.List
  ( -- * Resource
    AndroidManagementEnterprisesListResource,

    -- ** Constructing a Request
    newAndroidManagementEnterprisesList,
    AndroidManagementEnterprisesList,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.list@ method which the
-- 'AndroidManagementEnterprisesList' request conforms to.
type AndroidManagementEnterprisesListResource =
  "v1"
    Core.:> "enterprises"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" EnterprisesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListEnterprisesResponse

-- | Lists EMM-managed enterprises. Only BASIC fields are returned.
--
-- /See:/ 'newAndroidManagementEnterprisesList' smart constructor.
data AndroidManagementEnterprisesList = AndroidManagementEnterprisesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The requested page size. The actual page size may be fixed to a min or max value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results returned by the server.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The Cloud project ID of the EMM managing the enterprises.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies which Enterprise fields to return. This method only supports BASIC.
    view :: (Core.Maybe EnterprisesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesList' with the minimum fields required to make a request.
newAndroidManagementEnterprisesList ::
  AndroidManagementEnterprisesList
newAndroidManagementEnterprisesList =
  AndroidManagementEnterprisesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesList
  where
  type
    Rs AndroidManagementEnterprisesList =
      ListEnterprisesResponse
  type
    Scopes AndroidManagementEnterprisesList =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      projectId
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementEnterprisesListResource
          )
          Core.mempty
