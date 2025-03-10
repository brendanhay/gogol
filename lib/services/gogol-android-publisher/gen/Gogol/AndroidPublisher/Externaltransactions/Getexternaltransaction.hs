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
-- Module      : Gogol.AndroidPublisher.Externaltransactions.Getexternaltransaction
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an existing external transaction.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.externaltransactions.getexternaltransaction@.
module Gogol.AndroidPublisher.Externaltransactions.Getexternaltransaction
  ( -- * Resource
    AndroidPublisherExternaltransactionsGetexternaltransactionResource,

    -- ** Constructing a Request
    AndroidPublisherExternaltransactionsGetexternaltransaction (..),
    newAndroidPublisherExternaltransactionsGetexternaltransaction,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.externaltransactions.getexternaltransaction@ method which the
-- 'AndroidPublisherExternaltransactionsGetexternaltransaction' request conforms to.
type AndroidPublisherExternaltransactionsGetexternaltransactionResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ExternalTransaction

-- | Gets an existing external transaction.
--
-- /See:/ 'newAndroidPublisherExternaltransactionsGetexternaltransaction' smart constructor.
data AndroidPublisherExternaltransactionsGetexternaltransaction = AndroidPublisherExternaltransactionsGetexternaltransaction
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the external transaction to retrieve. Format: applications\/{package/name}\/externalTransactions\/{external/transaction}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherExternaltransactionsGetexternaltransaction' with the minimum fields required to make a request.
newAndroidPublisherExternaltransactionsGetexternaltransaction ::
  -- |  Required. The name of the external transaction to retrieve. Format: applications\/{package/name}\/externalTransactions\/{external/transaction} See 'name'.
  Core.Text ->
  AndroidPublisherExternaltransactionsGetexternaltransaction
newAndroidPublisherExternaltransactionsGetexternaltransaction name =
  AndroidPublisherExternaltransactionsGetexternaltransaction
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherExternaltransactionsGetexternaltransaction
  where
  type
    Rs AndroidPublisherExternaltransactionsGetexternaltransaction =
      ExternalTransaction
  type
    Scopes
      AndroidPublisherExternaltransactionsGetexternaltransaction =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherExternaltransactionsGetexternaltransaction {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherExternaltransactionsGetexternaltransactionResource
            )
            Core.mempty
