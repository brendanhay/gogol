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
-- Module      : Gogol.AndroidEnterprise.Storelayoutpages.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all pages in the store.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.list@.
module Gogol.AndroidEnterprise.Storelayoutpages.List
  ( -- * Resource
    AndroidEnterpriseStorelayoutpagesListResource,

    -- ** Constructing a Request
    AndroidEnterpriseStorelayoutpagesList (..),
    newAndroidEnterpriseStorelayoutpagesList,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.storelayoutpages.list@ method which the
-- 'AndroidEnterpriseStorelayoutpagesList' request conforms to.
type AndroidEnterpriseStorelayoutpagesListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "storeLayout"
    Core.:> "pages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StoreLayoutPagesListResponse

-- | Retrieves the details of all pages in the store.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutpagesList' smart constructor.
data AndroidEnterpriseStorelayoutpagesList = AndroidEnterpriseStorelayoutpagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseStorelayoutpagesList' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutpagesList ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  AndroidEnterpriseStorelayoutpagesList
newAndroidEnterpriseStorelayoutpagesList enterpriseId =
  AndroidEnterpriseStorelayoutpagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidEnterpriseStorelayoutpagesList where
  type
    Rs AndroidEnterpriseStorelayoutpagesList =
      StoreLayoutPagesListResponse
  type
    Scopes AndroidEnterpriseStorelayoutpagesList =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseStorelayoutpagesList {..} =
    go
      enterpriseId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseStorelayoutpagesListResource
          )
          Core.mempty
