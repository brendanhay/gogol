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
-- Module      : Gogol.AndroidEnterprise.Storelayoutpages.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.insert@.
module Gogol.AndroidEnterprise.Storelayoutpages.Insert
  ( -- * Resource
    AndroidEnterpriseStorelayoutpagesInsertResource,

    -- ** Constructing a Request
    AndroidEnterpriseStorelayoutpagesInsert (..),
    newAndroidEnterpriseStorelayoutpagesInsert,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.storelayoutpages.insert@ method which the
-- 'AndroidEnterpriseStorelayoutpagesInsert' request conforms to.
type AndroidEnterpriseStorelayoutpagesInsertResource =
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
    Core.:> Core.ReqBody '[Core.JSON] StorePage
    Core.:> Core.Post '[Core.JSON] StorePage

-- | Inserts a new store page.
--
-- /See:/ 'newAndroidEnterpriseStorelayoutpagesInsert' smart constructor.
data AndroidEnterpriseStorelayoutpagesInsert = AndroidEnterpriseStorelayoutpagesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: StorePage,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseStorelayoutpagesInsert' with the minimum fields required to make a request.
newAndroidEnterpriseStorelayoutpagesInsert ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StorePage ->
  AndroidEnterpriseStorelayoutpagesInsert
newAndroidEnterpriseStorelayoutpagesInsert enterpriseId payload =
  AndroidEnterpriseStorelayoutpagesInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseStorelayoutpagesInsert
  where
  type
    Rs AndroidEnterpriseStorelayoutpagesInsert =
      StorePage
  type
    Scopes AndroidEnterpriseStorelayoutpagesInsert =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseStorelayoutpagesInsert {..} =
      go
        enterpriseId
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
                Core.Proxy
                  AndroidEnterpriseStorelayoutpagesInsertResource
            )
            Core.mempty
