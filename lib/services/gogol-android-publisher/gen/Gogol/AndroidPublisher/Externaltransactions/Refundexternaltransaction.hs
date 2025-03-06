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
-- Module      : Gogol.AndroidPublisher.Externaltransactions.Refundexternaltransaction
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds or partially refunds an existing external transaction.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.externaltransactions.refundexternaltransaction@.
module Gogol.AndroidPublisher.Externaltransactions.Refundexternaltransaction
  ( -- * Resource
    AndroidPublisherExternaltransactionsRefundexternaltransactionResource,

    -- ** Constructing a Request
    AndroidPublisherExternaltransactionsRefundexternaltransaction (..),
    newAndroidPublisherExternaltransactionsRefundexternaltransaction,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.externaltransactions.refundexternaltransaction@ method which the
-- 'AndroidPublisherExternaltransactionsRefundexternaltransaction' request conforms to.
type AndroidPublisherExternaltransactionsRefundexternaltransactionResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> Core.CaptureMode "name" "refund" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RefundExternalTransactionRequest
    Core.:> Core.Post '[Core.JSON] ExternalTransaction

-- | Refunds or partially refunds an existing external transaction.
--
-- /See:/ 'newAndroidPublisherExternaltransactionsRefundexternaltransaction' smart constructor.
data AndroidPublisherExternaltransactionsRefundexternaltransaction = AndroidPublisherExternaltransactionsRefundexternaltransaction
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the external transaction that will be refunded. Format: applications\/{package/name}\/externalTransactions\/{external/transaction}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RefundExternalTransactionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherExternaltransactionsRefundexternaltransaction' with the minimum fields required to make a request.
newAndroidPublisherExternaltransactionsRefundexternaltransaction ::
  -- |  Required. The name of the external transaction that will be refunded. Format: applications\/{package/name}\/externalTransactions\/{external/transaction} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RefundExternalTransactionRequest ->
  AndroidPublisherExternaltransactionsRefundexternaltransaction
newAndroidPublisherExternaltransactionsRefundexternaltransaction
  name
  payload =
    AndroidPublisherExternaltransactionsRefundexternaltransaction
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherExternaltransactionsRefundexternaltransaction
  where
  type
    Rs
      AndroidPublisherExternaltransactionsRefundexternaltransaction =
      ExternalTransaction
  type
    Scopes
      AndroidPublisherExternaltransactionsRefundexternaltransaction =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherExternaltransactionsRefundexternaltransaction {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherExternaltransactionsRefundexternaltransactionResource
            )
            Core.mempty
