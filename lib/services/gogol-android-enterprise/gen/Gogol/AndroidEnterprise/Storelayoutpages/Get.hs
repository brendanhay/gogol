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
-- Module      : Gogol.AndroidEnterprise.Storelayoutpages.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.get@.
module Gogol.AndroidEnterprise.Storelayoutpages.Get
  ( -- * Resource
    AndroidEnterpriseStorelayoutpagesGetResource,

    -- ** Constructing a Request
    AndroidEnterpriseStorelayoutpagesGet (..),
    newAndroidEnterpriseStorelayoutpagesGet,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.storelayoutpages.get@ method which the
-- 'AndroidEnterpriseStorelayoutpagesGet' request conforms to.
type AndroidEnterpriseStorelayoutpagesGetResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "storeLayout"
    Core.:> "pages"
    Core.:> Core.Capture "pageId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StorePage

-- | Retrieves details of a store page.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutpagesGet' smart constructor.
data AndroidEnterpriseStorelayoutpagesGet = AndroidEnterpriseStorelayoutpagesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The ID of the page.
    pageId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseStorelayoutpagesGet' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutpagesGet ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the page. See 'pageId'.
  Core.Text ->
  AndroidEnterpriseStorelayoutpagesGet
newAndroidEnterpriseStorelayoutpagesGet enterpriseId pageId =
  AndroidEnterpriseStorelayoutpagesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      pageId = pageId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidEnterpriseStorelayoutpagesGet where
  type Rs AndroidEnterpriseStorelayoutpagesGet = StorePage
  type
    Scopes AndroidEnterpriseStorelayoutpagesGet =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseStorelayoutpagesGet {..} =
    go
      enterpriseId
      pageId
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
              Core.Proxy AndroidEnterpriseStorelayoutpagesGetResource
          )
          Core.mempty
