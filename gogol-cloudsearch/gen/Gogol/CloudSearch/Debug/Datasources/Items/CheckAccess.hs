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
-- Module      : Gogol.CloudSearch.Debug.Datasources.Items.CheckAccess
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether an item is accessible by specified principal. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.debug.datasources.items.checkAccess@.
module Gogol.CloudSearch.Debug.Datasources.Items.CheckAccess
  ( -- * Resource
    CloudSearchDebugDatasourcesItemsCheckAccessResource,

    -- ** Constructing a Request
    newCloudSearchDebugDatasourcesItemsCheckAccess,
    CloudSearchDebugDatasourcesItemsCheckAccess,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.debug.datasources.items.checkAccess@ method which the
-- 'CloudSearchDebugDatasourcesItemsCheckAccess' request conforms to.
type CloudSearchDebugDatasourcesItemsCheckAccessResource =
  "v1"
    Core.:> "debug"
    Core.:> Core.CaptureMode "name" "checkAccess" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "debugOptions.enableDebugging"
              Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Principal
    Core.:> Core.Post '[Core.JSON] CheckAccessResponse

-- | Checks whether an item is accessible by specified principal. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchDebugDatasourcesItemsCheckAccess' smart constructor.
data CloudSearchDebugDatasourcesItemsCheckAccess = CloudSearchDebugDatasourcesItemsCheckAccess
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | Item name, format: datasources\/{source/id}\/items\/{item/id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Principal,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchDebugDatasourcesItemsCheckAccess' with the minimum fields required to make a request.
newCloudSearchDebugDatasourcesItemsCheckAccess ::
  -- |  Item name, format: datasources\/{source/id}\/items\/{item/id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Principal ->
  CloudSearchDebugDatasourcesItemsCheckAccess
newCloudSearchDebugDatasourcesItemsCheckAccess name payload =
  CloudSearchDebugDatasourcesItemsCheckAccess
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchDebugDatasourcesItemsCheckAccess
  where
  type
    Rs CloudSearchDebugDatasourcesItemsCheckAccess =
      CheckAccessResponse
  type
    Scopes
      CloudSearchDebugDatasourcesItemsCheckAccess =
      '[ "https://www.googleapis.com/auth/cloud_search",
         "https://www.googleapis.com/auth/cloud_search.debug"
       ]
  requestClient
    CloudSearchDebugDatasourcesItemsCheckAccess {..} =
      go
        name
        xgafv
        accessToken
        callback
        debugOptionsEnableDebugging
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchDebugDatasourcesItemsCheckAccessResource
            )
            Core.mempty
