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
-- Module      : Gogol.AndroidPublisher.Externaltransactions.Createexternaltransaction
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new external transaction.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.externaltransactions.createexternaltransaction@.
module Gogol.AndroidPublisher.Externaltransactions.Createexternaltransaction
  ( -- * Resource
    AndroidPublisherExternaltransactionsCreateexternaltransactionResource,

    -- ** Constructing a Request
    AndroidPublisherExternaltransactionsCreateexternaltransaction (..),
    newAndroidPublisherExternaltransactionsCreateexternaltransaction,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.externaltransactions.createexternaltransaction@ method which the
-- 'AndroidPublisherExternaltransactionsCreateexternaltransaction' request conforms to.
type AndroidPublisherExternaltransactionsCreateexternaltransactionResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "externalTransactions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "externalTransactionId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ExternalTransaction
    Core.:> Core.Post '[Core.JSON] ExternalTransaction

-- | Creates a new external transaction.
--
-- /See:/ 'newAndroidPublisherExternaltransactionsCreateexternaltransaction' smart constructor.
data AndroidPublisherExternaltransactionsCreateexternaltransaction = AndroidPublisherExternaltransactionsCreateexternaltransaction
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The id to use for the external transaction. Must be unique across all other transactions for the app. This value should be 1-63 characters and valid characters are \/a-zA-Z0-9_-\/. Do not use this field to store any Personally Identifiable Information (PII) such as emails. Attempting to store PII in this field may result in requests being blocked.
    externalTransactionId :: (Core.Maybe Core.Text),
    -- | Required. The parent resource where this external transaction will be created. Format: applications\/{package_name}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ExternalTransaction,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherExternaltransactionsCreateexternaltransaction' with the minimum fields required to make a request.
newAndroidPublisherExternaltransactionsCreateexternaltransaction ::
  -- |  Required. The parent resource where this external transaction will be created. Format: applications\/{package_name} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ExternalTransaction ->
  AndroidPublisherExternaltransactionsCreateexternaltransaction
newAndroidPublisherExternaltransactionsCreateexternaltransaction
  parent
  payload =
    AndroidPublisherExternaltransactionsCreateexternaltransaction
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        externalTransactionId =
          Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherExternaltransactionsCreateexternaltransaction
  where
  type
    Rs
      AndroidPublisherExternaltransactionsCreateexternaltransaction =
      ExternalTransaction
  type
    Scopes
      AndroidPublisherExternaltransactionsCreateexternaltransaction =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherExternaltransactionsCreateexternaltransaction {..} =
      go
        parent
        xgafv
        accessToken
        callback
        externalTransactionId
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
                  AndroidPublisherExternaltransactionsCreateexternaltransactionResource
            )
            Core.mempty
