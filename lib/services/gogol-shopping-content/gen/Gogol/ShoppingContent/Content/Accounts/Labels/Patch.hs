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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Labels.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a label.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.labels.patch@.
module Gogol.ShoppingContent.Content.Accounts.Labels.Patch
  ( -- * Resource
    ContentAccountsLabelsPatchResource,

    -- ** Constructing a Request
    ContentAccountsLabelsPatch (..),
    newContentAccountsLabelsPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.labels.patch@ method which the
-- 'ContentAccountsLabelsPatch' request conforms to.
type ContentAccountsLabelsPatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "labels"
    Core.:> Core.Capture "labelId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccountLabel
    Core.:> Core.Patch '[Core.JSON] AccountLabel

-- | Updates a label.
--
-- /See:/ 'newContentAccountsLabelsPatch' smart constructor.
data ContentAccountsLabelsPatch = ContentAccountsLabelsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The id of the account this label belongs to.
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The id of the label to update.
    labelId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: AccountLabel,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsLabelsPatch' with the minimum fields required to make a request.
newContentAccountsLabelsPatch ::
  -- |  Required. The id of the account this label belongs to. See 'accountId'.
  Core.Int64 ->
  -- |  Required. The id of the label to update. See 'labelId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  AccountLabel ->
  ContentAccountsLabelsPatch
newContentAccountsLabelsPatch accountId labelId payload =
  ContentAccountsLabelsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      labelId = labelId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountsLabelsPatch where
  type Rs ContentAccountsLabelsPatch = AccountLabel
  type Scopes ContentAccountsLabelsPatch = '[Content'FullControl]
  requestClient ContentAccountsLabelsPatch {..} =
    go
      accountId
      labelId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentAccountsLabelsPatchResource)
          Core.mempty
