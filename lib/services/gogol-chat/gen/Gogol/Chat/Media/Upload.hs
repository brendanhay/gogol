{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Chat.Media.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an attachment. For an example, see <https://developers.google.com/workspace/chat/upload-media-attachments Upload media as a file attachment>. Requires user <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authentication>. You can upload attachments up to 200 MB. Certain file types aren\'t supported. For details, see <https://support.google.com/chat/answer/7651457?&co=GENIE.Platform%3DDesktop#File%20types%20blocked%20in%20Google%20Chat File types blocked by Google Chat>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.media.upload@.
module Gogol.Chat.Media.Upload
    (
    -- * Resource
      ChatMediaUploadResource

    -- ** Constructing a Request
    , ChatMediaUpload (..)
    , newChatMediaUpload
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.media.upload@ method which the
-- 'ChatMediaUpload' request conforms to.
type ChatMediaUploadResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "attachments:upload" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] UploadAttachmentRequest
                         Core.:>
                         Core.Post '[Core.JSON] UploadAttachmentResponse
       Core.:<|>
       "upload" Core.:>
         "v1" Core.:>
           Core.Capture "parent" Core.Text Core.:>
             "attachments:upload" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.QueryParam "uploadType" Core.Multipart Core.:>
                             Core.MultipartRelated '[Core.JSON]
                               UploadAttachmentRequest
                               Core.:>
                               Core.Post '[Core.JSON] UploadAttachmentResponse

-- | Uploads an attachment. For an example, see <https://developers.google.com/workspace/chat/upload-media-attachments Upload media as a file attachment>. Requires user <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authentication>. You can upload attachments up to 200 MB. Certain file types aren\'t supported. For details, see <https://support.google.com/chat/answer/7651457?&co=GENIE.Platform%3DDesktop#File%20types%20blocked%20in%20Google%20Chat File types blocked by Google Chat>.
--
-- /See:/ 'newChatMediaUpload' smart constructor.
data ChatMediaUpload = ChatMediaUpload
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the Chat space in which the attachment is uploaded. Format \"spaces\/{space}\".
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: UploadAttachmentRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatMediaUpload' with the minimum fields required to make a request.
newChatMediaUpload 
    ::  Core.Text
       -- ^  Required. Resource name of the Chat space in which the attachment is uploaded. Format \"spaces\/{space}\". See 'parent'.
    -> UploadAttachmentRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatMediaUpload
newChatMediaUpload parent payload =
  ChatMediaUpload
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatMediaUpload where
        type Rs ChatMediaUpload = UploadAttachmentResponse
        type Scopes ChatMediaUpload =
             '[Chat'Import, Chat'Messages, Chat'Messages'Create]
        requestClient ChatMediaUpload{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatMediaUploadResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload ChatMediaUpload)
         where
        type Rs (Core.MediaUpload ChatMediaUpload) =
             UploadAttachmentResponse
        type Scopes (Core.MediaUpload ChatMediaUpload) =
             Core.Scopes ChatMediaUpload
        requestClient
          (Core.MediaUpload ChatMediaUpload{..} body)
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              (Core.Just Core.Multipart)
              payload
              body
              chatService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatMediaUploadResource)
                      Core.mempty

