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
-- Module      : Gogol.Chat.Spaces.Members.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a membership.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.get@.
module Gogol.Chat.Spaces.Members.Get
  ( -- * Resource
    ChatSpacesMembersGetResource,

    -- ** Constructing a Request
    ChatSpacesMembersGet (..),
    newChatSpacesMembersGet,
  )
where

import Gogol.Chat.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @chat.spaces.members.get@ method which the
-- 'ChatSpacesMembersGet' request conforms to.
type ChatSpacesMembersGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Membership

-- | Returns a membership.
--
-- /See:/ 'newChatSpacesMembersGet' smart constructor.
data ChatSpacesMembersGet = ChatSpacesMembersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the membership to be retrieved, in the form \"spaces\//\/members\//\". Example: spaces\/AAAAAAAAAAAA\/members\/111111111111111111111
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersGet' with the minimum fields required to make a request.
newChatSpacesMembersGet ::
  -- |  Required. Resource name of the membership to be retrieved, in the form \"spaces\//\/members\//\". Example: spaces\/AAAAAAAAAAAA\/members\/111111111111111111111 See 'name'.
  Core.Text ->
  ChatSpacesMembersGet
newChatSpacesMembersGet name =
  ChatSpacesMembersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersGet where
  type Rs ChatSpacesMembersGet = Membership
  type Scopes ChatSpacesMembersGet = '[]
  requestClient ChatSpacesMembersGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ChatSpacesMembersGetResource
          )
          Core.mempty
