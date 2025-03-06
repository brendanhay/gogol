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
-- Module      : Gogol.AndroidEnterprise.Storelayoutclusters.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.update@.
module Gogol.AndroidEnterprise.Storelayoutclusters.Update
  ( -- * Resource
    AndroidEnterpriseStorelayoutclustersUpdateResource,

    -- ** Constructing a Request
    AndroidEnterpriseStorelayoutclustersUpdate (..),
    newAndroidEnterpriseStorelayoutclustersUpdate,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.storelayoutclusters.update@ method which the
-- 'AndroidEnterpriseStorelayoutclustersUpdate' request conforms to.
type AndroidEnterpriseStorelayoutclustersUpdateResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "storeLayout"
    Core.:> "pages"
    Core.:> Core.Capture "pageId" Core.Text
    Core.:> "clusters"
    Core.:> Core.Capture "clusterId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StoreCluster
    Core.:> Core.Put '[Core.JSON] StoreCluster

-- | Updates a cluster.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutclustersUpdate' smart constructor.
data AndroidEnterpriseStorelayoutclustersUpdate = AndroidEnterpriseStorelayoutclustersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the cluster.
    clusterId :: Core.Text,
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

-- | Creates a value of 'AndroidEnterpriseStorelayoutclustersUpdate' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutclustersUpdate ::
  -- |  The ID of the cluster. See 'clusterId'.
  Core.Text ->
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the page. See 'pageId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StoreCluster ->
  AndroidEnterpriseStorelayoutclustersUpdate
newAndroidEnterpriseStorelayoutclustersUpdate
  clusterId
  enterpriseId
  pageId
  payload =
    AndroidEnterpriseStorelayoutclustersUpdate
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        clusterId = clusterId,
        enterpriseId = enterpriseId,
        pageId = pageId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidEnterpriseStorelayoutclustersUpdate
  where
  type Rs AndroidEnterpriseStorelayoutclustersUpdate = StoreCluster
  type
    Scopes AndroidEnterpriseStorelayoutclustersUpdate =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseStorelayoutclustersUpdate {..} =
    go
      enterpriseId
      pageId
      clusterId
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
              Core.Proxy AndroidEnterpriseStorelayoutclustersUpdateResource
          )
          Core.mempty
