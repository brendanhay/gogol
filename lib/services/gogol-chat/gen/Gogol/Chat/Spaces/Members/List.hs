{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Chat.Spaces.Members.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists human memberships in a space.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.list@.
module Gogol.Chat.Spaces.Members.List
    (
    -- * Resource
      ChatSpacesMembersListResource

    -- ** Constructing a Request
    , newChatSpacesMembersList
    , ChatSpacesMembersList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.members.list@ method which the
-- 'ChatSpacesMembersList' request conforms to.
type ChatSpacesMembersListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "members" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListMembershipsResponse

-- | Lists human memberships in a space.
--
-- /See:/ 'newChatSpacesMembersList' smart constructor.
data ChatSpacesMembersList = ChatSpacesMembersList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Requested page size. The value is capped at 1000. Server may return fewer results than requested. If unspecified, server will default to 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying a page of results the server should return.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the space for which membership list is to be fetched, in the form \"spaces\/*\". Example: spaces\/AAAAAAAAAAAA
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersList' with the minimum fields required to make a request.
newChatSpacesMembersList 
    ::  Core.Text
       -- ^  Required. The resource name of the space for which membership list is to be fetched, in the form \"spaces\/*\". Example: spaces\/AAAAAAAAAAAA See 'parent'.
    -> ChatSpacesMembersList
newChatSpacesMembersList parent =
  ChatSpacesMembersList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersList
         where
        type Rs ChatSpacesMembersList =
             ListMembershipsResponse
        type Scopes ChatSpacesMembersList = '[]
        requestClient ChatSpacesMembersList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMembersListResource)
                      Core.mempty

