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
-- Module      : Gogol.AcceleratedMobilePageUrl.AmpUrls.BatchGet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns AMP URL(s) and equivalent </amp/cache/overview#amp-cache-url-format AMP Cache URL(s)>.
--
-- /See:/ <https://developers.google.com/amp/cache/ Accelerated Mobile Pages (AMP) URL API Reference> for @acceleratedmobilepageurl.ampUrls.batchGet@.
module Gogol.AcceleratedMobilePageUrl.AmpUrls.BatchGet
  ( -- * Resource
    AcceleratedMobilePageUrlAmpUrlsBatchGetResource,

    -- ** Constructing a Request
    newAcceleratedMobilePageUrlAmpUrlsBatchGet,
    AcceleratedMobilePageUrlAmpUrlsBatchGet,
  )
where

import Gogol.AcceleratedMobilePageUrl.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @acceleratedmobilepageurl.ampUrls.batchGet@ method which the
-- 'AcceleratedMobilePageUrlAmpUrlsBatchGet' request conforms to.
type AcceleratedMobilePageUrlAmpUrlsBatchGetResource =
  "v1"
    Core.:> "ampUrls:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchGetAmpUrlsRequest
    Core.:> Core.Post '[Core.JSON] BatchGetAmpUrlsResponse

-- | Returns AMP URL(s) and equivalent </amp/cache/overview#amp-cache-url-format AMP Cache URL(s)>.
--
-- /See:/ 'newAcceleratedMobilePageUrlAmpUrlsBatchGet' smart constructor.
data AcceleratedMobilePageUrlAmpUrlsBatchGet = AcceleratedMobilePageUrlAmpUrlsBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchGetAmpUrlsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceleratedMobilePageUrlAmpUrlsBatchGet' with the minimum fields required to make a request.
newAcceleratedMobilePageUrlAmpUrlsBatchGet ::
  -- |  Multipart request metadata. See 'payload'.
  BatchGetAmpUrlsRequest ->
  AcceleratedMobilePageUrlAmpUrlsBatchGet
newAcceleratedMobilePageUrlAmpUrlsBatchGet payload =
  AcceleratedMobilePageUrlAmpUrlsBatchGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AcceleratedMobilePageUrlAmpUrlsBatchGet
  where
  type
    Rs AcceleratedMobilePageUrlAmpUrlsBatchGet =
      BatchGetAmpUrlsResponse
  type
    Scopes AcceleratedMobilePageUrlAmpUrlsBatchGet =
      '[]
  requestClient
    AcceleratedMobilePageUrlAmpUrlsBatchGet {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        acceleratedMobilePageUrlService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AcceleratedMobilePageUrlAmpUrlsBatchGetResource
            )
            Core.mempty
