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
-- Module      : Gogol.Chat.Media.Download
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads media. Download is supported on the URI @\/v1\/media\/{+name}?alt=media@.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.media.download@.
module Gogol.Chat.Media.Download
    (
    -- * Resource
      ChatMediaDownloadResource

    -- ** Constructing a Request
    , ChatMediaDownload (..)
    , newChatMediaDownload
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.media.download@ method which the
-- 'ChatMediaDownload' request conforms to.
type ChatMediaDownloadResource =
     "v1" Core.:>
       "media" Core.:>
         Core.Capture "resourceName" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Media
       Core.:<|>
       "v1" Core.:>
         "media" Core.:>
           Core.Capture "resourceName" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltMedia Core.:>
                         Core.Get '[Core.OctetStream] Core.Stream

-- | Downloads media. Download is supported on the URI @\/v1\/media\/{+name}?alt=media@.
--
-- /See:/ 'newChatMediaDownload' smart constructor.
data ChatMediaDownload = ChatMediaDownload
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the media that is being downloaded. See ReadRequest.resource_name.
    , resourceName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatMediaDownload' with the minimum fields required to make a request.
newChatMediaDownload 
    ::  Core.Text
       -- ^  Name of the media that is being downloaded. See ReadRequest.resource_name. See 'resourceName'.
    -> ChatMediaDownload
newChatMediaDownload resourceName =
  ChatMediaDownload
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , resourceName = resourceName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatMediaDownload where
        type Rs ChatMediaDownload = Media
        type Scopes ChatMediaDownload =
             '[Chat'Bot, Chat'Messages, Chat'Messages'Readonly]
        requestClient ChatMediaDownload{..}
          = go resourceName xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatMediaDownloadResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaDownload ChatMediaDownload)
         where
        type Rs (Core.MediaDownload ChatMediaDownload) =
             Core.Stream
        type Scopes (Core.MediaDownload ChatMediaDownload) =
             Core.Scopes ChatMediaDownload
        requestClient
          (Core.MediaDownload ChatMediaDownload{..})
          = go resourceName xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltMedia)
              chatService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatMediaDownloadResource)
                      Core.mempty

