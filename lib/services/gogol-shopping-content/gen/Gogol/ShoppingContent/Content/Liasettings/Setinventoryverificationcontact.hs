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
-- Module      : Gogol.ShoppingContent.Content.Liasettings.Setinventoryverificationcontact
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the inventory verification contract for the specified country.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.setinventoryverificationcontact@.
module Gogol.ShoppingContent.Content.Liasettings.Setinventoryverificationcontact
  ( -- * Resource
    ContentLiasettingsSetinventoryverificationcontactResource,

    -- ** Constructing a Request
    ContentLiasettingsSetinventoryverificationcontact (..),
    newContentLiasettingsSetinventoryverificationcontact,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.liasettings.setinventoryverificationcontact@ method which the
-- 'ContentLiasettingsSetinventoryverificationcontact' request conforms to.
type ContentLiasettingsSetinventoryverificationcontactResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "liasettings"
    Core.:> Core.Capture "accountId" Core.Word64
    Core.:> "setinventoryverificationcontact"
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "contactName" Core.Text
    Core.:> Core.QueryParam "contactEmail" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              LiasettingsSetInventoryVerificationContactResponse

-- | Sets the inventory verification contract for the specified country.
--
-- /See:/ 'newContentLiasettingsSetinventoryverificationcontact' smart constructor.
data ContentLiasettingsSetinventoryverificationcontact = ContentLiasettingsSetinventoryverificationcontact
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the account that manages the order. This cannot be a multi-client account.
    accountId :: Core.Word64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The email of the inventory verification contact.
    contactEmail :: Core.Text,
    -- | The name of the inventory verification contact.
    contactName :: Core.Text,
    -- | The country for which inventory verification is requested.
    country :: Core.Text,
    -- | The language for which inventory verification is requested.
    language :: Core.Text,
    -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    merchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLiasettingsSetinventoryverificationcontact' with the minimum fields required to make a request.
newContentLiasettingsSetinventoryverificationcontact ::
  -- |  The ID of the account that manages the order. This cannot be a multi-client account. See 'accountId'.
  Core.Word64 ->
  -- |  The email of the inventory verification contact. See 'contactEmail'.
  Core.Text ->
  -- |  The name of the inventory verification contact. See 'contactName'.
  Core.Text ->
  -- |  The country for which inventory verification is requested. See 'country'.
  Core.Text ->
  -- |  The language for which inventory verification is requested. See 'language'.
  Core.Text ->
  -- |  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
  Core.Word64 ->
  ContentLiasettingsSetinventoryverificationcontact
newContentLiasettingsSetinventoryverificationcontact
  accountId
  contactEmail
  contactName
  country
  language
  merchantId =
    ContentLiasettingsSetinventoryverificationcontact
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        accountId = accountId,
        callback = Core.Nothing,
        contactEmail = contactEmail,
        contactName = contactName,
        country = country,
        language = language,
        merchantId = merchantId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ContentLiasettingsSetinventoryverificationcontact
  where
  type
    Rs ContentLiasettingsSetinventoryverificationcontact =
      LiasettingsSetInventoryVerificationContactResponse
  type
    Scopes ContentLiasettingsSetinventoryverificationcontact =
      '[Content'FullControl]
  requestClient ContentLiasettingsSetinventoryverificationcontact {..} =
    go
      merchantId
      accountId
      (Core.Just country)
      (Core.Just language)
      (Core.Just contactName)
      (Core.Just contactEmail)
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ContentLiasettingsSetinventoryverificationcontactResource
          )
          Core.mempty
