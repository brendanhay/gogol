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
-- Module      : Gogol.DoubleClickSearch.Conversion.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a batch of new conversions into DoubleClick Search.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.conversion.insert@.
module Gogol.DoubleClickSearch.Conversion.Insert
  ( -- * Resource
    DoubleClickSearchConversionInsertResource,

    -- ** Constructing a Request
    newDoubleClickSearchConversionInsert,
    DoubleClickSearchConversionInsert,
  )
where

import Gogol.DoubleClickSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclicksearch.conversion.insert@ method which the
-- 'DoubleClickSearchConversionInsert' request conforms to.
type DoubleClickSearchConversionInsertResource =
  "doubleclicksearch"
    Core.:> "v2"
    Core.:> "conversion"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ConversionList
    Core.:> Core.Post '[Core.JSON] ConversionList

-- | Inserts a batch of new conversions into DoubleClick Search.
--
-- /See:/ 'newDoubleClickSearchConversionInsert' smart constructor.
data DoubleClickSearchConversionInsert = DoubleClickSearchConversionInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ConversionList,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchConversionInsert' with the minimum fields required to make a request.
newDoubleClickSearchConversionInsert ::
  -- |  Multipart request metadata. See 'payload'.
  ConversionList ->
  DoubleClickSearchConversionInsert
newDoubleClickSearchConversionInsert payload =
  DoubleClickSearchConversionInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleClickSearchConversionInsert
  where
  type
    Rs DoubleClickSearchConversionInsert =
      ConversionList
  type
    Scopes DoubleClickSearchConversionInsert =
      '[Doubleclicksearch'FullControl]
  requestClient DoubleClickSearchConversionInsert {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      doubleClickSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DoubleClickSearchConversionInsertResource
          )
          Core.mempty
