{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AndroidEnterprise.Storelayoutclusters.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new cluster in a page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.insert@.
module Gogol.AndroidEnterprise.Storelayoutclusters.Insert
  ( -- * Resource
    AndroidEnterpriseStorelayoutclustersInsertResource,

    -- ** Constructing a Request
    AndroidEnterpriseStorelayoutclustersInsert (..),
    newAndroidEnterpriseStorelayoutclustersInsert,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.storelayoutclusters.insert@ method which the
-- 'AndroidEnterpriseStorelayoutclustersInsert' request conforms to.
type AndroidEnterpriseStorelayoutclustersInsertResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "storeLayout"
    Core.:> "pages"
    Core.:> Core.Capture "pageId" Core.Text
    Core.:> "clusters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StoreCluster
    Core.:> Core.Post '[Core.JSON] StoreCluster

-- | Inserts a new cluster in a page.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutclustersInsert' smart constructor.
data AndroidEnterpriseStorelayoutclustersInsert = AndroidEnterpriseStorelayoutclustersInsert
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
    -- | Multipart request metadata.
    payload :: StoreCluster,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseStorelayoutclustersInsert' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutclustersInsert ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the page. See 'pageId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StoreCluster ->
  AndroidEnterpriseStorelayoutclustersInsert
newAndroidEnterpriseStorelayoutclustersInsert
  enterpriseId
  pageId
  payload =
    AndroidEnterpriseStorelayoutclustersInsert
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        enterpriseId = enterpriseId,
        pageId = pageId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidEnterpriseStorelayoutclustersInsert
  where
  type Rs AndroidEnterpriseStorelayoutclustersInsert = StoreCluster
  type
    Scopes AndroidEnterpriseStorelayoutclustersInsert =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseStorelayoutclustersInsert {..} =
    go
      enterpriseId
      pageId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseStorelayoutclustersInsertResource
          )
          Core.mempty
