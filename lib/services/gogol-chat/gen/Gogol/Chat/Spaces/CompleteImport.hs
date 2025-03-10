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
-- Module      : Gogol.Chat.Spaces.CompleteImport
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes the <https://developers.google.com/workspace/chat/import-data import process> for the specified space and makes it visible to users. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication> and domain-wide delegation. For more information, see <https://developers.google.com/workspace/chat/authorize-import Authorize Google Chat apps to import data>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.completeImport@.
module Gogol.Chat.Spaces.CompleteImport
  ( -- * Resource
    ChatSpacesCompleteImportResource,

    -- ** Constructing a Request
    ChatSpacesCompleteImport (..),
    newChatSpacesCompleteImport,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.completeImport@ method which the
-- 'ChatSpacesCompleteImport' request conforms to.
type ChatSpacesCompleteImportResource =
  "v1"
    Core.:> Core.CaptureMode "name" "completeImport" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CompleteImportSpaceRequest
    Core.:> Core.Post '[Core.JSON] CompleteImportSpaceResponse

-- | Completes the <https://developers.google.com/workspace/chat/import-data import process> for the specified space and makes it visible to users. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication> and domain-wide delegation. For more information, see <https://developers.google.com/workspace/chat/authorize-import Authorize Google Chat apps to import data>.
--
-- /See:/ 'newChatSpacesCompleteImport' smart constructor.
data ChatSpacesCompleteImport = ChatSpacesCompleteImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the import mode space. Format: @spaces\/{space}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CompleteImportSpaceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesCompleteImport' with the minimum fields required to make a request.
newChatSpacesCompleteImport ::
  -- |  Required. Resource name of the import mode space. Format: @spaces\/{space}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CompleteImportSpaceRequest ->
  ChatSpacesCompleteImport
newChatSpacesCompleteImport name payload =
  ChatSpacesCompleteImport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesCompleteImport where
  type Rs ChatSpacesCompleteImport = CompleteImportSpaceResponse
  type Scopes ChatSpacesCompleteImport = '[Chat'Import]
  requestClient ChatSpacesCompleteImport {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesCompleteImportResource)
          Core.mempty
