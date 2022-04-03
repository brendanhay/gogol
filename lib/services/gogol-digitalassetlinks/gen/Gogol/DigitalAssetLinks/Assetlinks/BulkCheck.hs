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
-- Module      : Gogol.DigitalAssetLinks.Assetlinks.BulkCheck
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send a bundle of statement checks in a single RPC to minimize latency and service load. Statements need not be all for the same source and\/or target. We recommend using this method when you need to check more than one statement in a short period of time.
--
-- /See:/ <https://developers.google.com/digital-asset-links/ Digital Asset Links API Reference> for @digitalassetlinks.assetlinks.bulkCheck@.
module Gogol.DigitalAssetLinks.Assetlinks.BulkCheck
  ( -- * Resource
    DigitalAssetLinksAssetlinksBulkCheckResource,

    -- ** Constructing a Request
    DigitalAssetLinksAssetlinksBulkCheck (..),
    newDigitalAssetLinksAssetlinksBulkCheck,
  )
where

import Gogol.DigitalAssetLinks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @digitalassetlinks.assetlinks.bulkCheck@ method which the
-- 'DigitalAssetLinksAssetlinksBulkCheck' request conforms to.
type DigitalAssetLinksAssetlinksBulkCheckResource =
  "v1"
    Core.:> "assetlinks:bulkCheck"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BulkCheckRequest
    Core.:> Core.Post '[Core.JSON] BulkCheckResponse

-- | Send a bundle of statement checks in a single RPC to minimize latency and service load. Statements need not be all for the same source and\/or target. We recommend using this method when you need to check more than one statement in a short period of time.
--
-- /See:/ 'newDigitalAssetLinksAssetlinksBulkCheck' smart constructor.
data DigitalAssetLinksAssetlinksBulkCheck = DigitalAssetLinksAssetlinksBulkCheck
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BulkCheckRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DigitalAssetLinksAssetlinksBulkCheck' with the minimum fields required to make a request.
newDigitalAssetLinksAssetlinksBulkCheck ::
  -- |  Multipart request metadata. See 'payload'.
  BulkCheckRequest ->
  DigitalAssetLinksAssetlinksBulkCheck
newDigitalAssetLinksAssetlinksBulkCheck payload =
  DigitalAssetLinksAssetlinksBulkCheck
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DigitalAssetLinksAssetlinksBulkCheck
  where
  type
    Rs DigitalAssetLinksAssetlinksBulkCheck =
      BulkCheckResponse
  type
    Scopes DigitalAssetLinksAssetlinksBulkCheck =
      '[]
  requestClient
    DigitalAssetLinksAssetlinksBulkCheck {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        digitalAssetLinksService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DigitalAssetLinksAssetlinksBulkCheckResource
            )
            Core.mempty
