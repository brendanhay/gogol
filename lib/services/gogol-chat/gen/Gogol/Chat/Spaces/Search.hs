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
-- Module      : Gogol.Chat.Spaces.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of spaces in a Google Workspace organization based on an administrator\'s search. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user#admin-privileges user authentication with administrator privileges>. In the request, set @use_admin_access@ to @true@.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.search@.
module Gogol.Chat.Spaces.Search
    (
    -- * Resource
      ChatSpacesSearchResource

    -- ** Constructing a Request
    , ChatSpacesSearch (..)
    , newChatSpacesSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.search@ method which the
-- 'ChatSpacesSearch' request conforms to.
type ChatSpacesSearchResource =
     "v1" Core.:>
       "spaces:search" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "orderBy" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "query" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "useAdminAccess" Core.Bool Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] SearchSpacesResponse

-- | Returns a list of spaces in a Google Workspace organization based on an administrator\'s search. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user#admin-privileges user authentication with administrator privileges>. In the request, set @use_admin_access@ to @true@.
--
-- /See:/ 'newChatSpacesSearch' smart constructor.
data ChatSpacesSearch = ChatSpacesSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. How the list of spaces is ordered. Supported attributes to order by are: - @membership_count.joined_direct_human_user_count@ — Denotes the count of human users that have directly joined a space. - @last_active_time@ — Denotes the time when last eligible item is added to any topic of this space. - @create_time@ — Denotes the time of the space creation. Valid ordering operation values are: - @ASC@ for ascending. Default value. - @DESC@ for descending. The supported syntax are: - @membership_count.joined_direct_human_user_count DESC@ - @membership_count.joined_direct_human_user_count ASC@ - @last_active_time DESC@ - @last_active_time ASC@ - @create_time DESC@ - @create_time ASC@
    , orderBy :: (Core.Maybe Core.Text)
      -- | The maximum number of spaces to return. The service may return fewer than this value. If unspecified, at most 100 spaces are returned. The maximum value is 1000. If you use a value more than 1000, it\'s automatically changed to 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token, received from the previous search spaces call. Provide this parameter to retrieve the subsequent page. When paginating, all other parameters provided should match the call that provided the page token. Passing different values to the other parameters might lead to unexpected results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. A search query. You can search by using the following parameters: - @create_time@ - @customer@ - @display_name@ - @external_user_allowed@ - @last_active_time@ - @space_history_state@ - @space_type@ @create_time@ and @last_active_time@ accept a timestamp in <https://www.rfc-editor.org/rfc/rfc3339 RFC-3339> format and the supported comparison operators are: @=@, @\<@, @>@, @\<=@, @>=@. @customer@ is required and is used to indicate which customer to fetch spaces from. @customers\/my_customer@ is the only supported value. @display_name@ only accepts the @HAS@ (@:@) operator. The text to match is first tokenized into tokens and each token is prefix-matched case-insensitively and independently as a substring anywhere in the space\'s @display_name@. For example, @Fun Eve@ matches @Fun event@ or @The evening was fun@, but not @notFun event@ or @even@. @external_user_allowed@ accepts either @true@ or @false@. @space_history_state@ only accepts values from the [@historyState@]
      -- (https:\/\/developers.google.com\/workspace\/chat\/api\/reference\/rest\/v1\/spaces#Space.HistoryState) field of a @space@ resource. @space_type@ is required and the only valid value is @SPACE@. Across different fields, only @AND@ operators are supported. A valid example is @space_type = \"SPACE\" AND display_name:\"Hello\"@ and an invalid example is @space_type = \"SPACE\" OR display_name:\"Hello\"@. Among the same field, @space_type@ doesn\'t support @AND@ or @OR@ operators. @display_name@, \'space/history/state\', and \'external/user/allowed\' only support @OR@ operators. @last_active_time@ and @create_time@ support both @AND@ and @OR@ operators. @AND@ can only be used to represent an interval, such as @last_active_time \< \"2022-01-01T00:00:00+00:00\" AND last_active_time > \"2023-01-01T00:00:00+00:00\"@. The following example queries are valid:
      -- @customer = \"customers\/my_customer\" AND space_type = \"SPACE\" customer = \"customers\/my_customer\" AND space_type = \"SPACE\" AND display_name:\"Hello World\" customer = \"customers\/my_customer\" AND space_type = \"SPACE\" AND (last_active_time \< \"2020-01-01T00:00:00+00:00\" OR last_active_time > \"2022-01-01T00:00:00+00:00\") customer = \"customers\/my_customer\" AND space_type = \"SPACE\" AND (display_name:\"Hello World\" OR display_name:\"Fun event\") AND (last_active_time > \"2020-01-01T00:00:00+00:00\" AND last_active_time \< \"2022-01-01T00:00:00+00:00\") customer = \"customers\/my_customer\" AND space_type = \"SPACE\" AND (create_time > \"2019-01-01T00:00:00+00:00\" AND create_time \< \"2020-01-01T00:00:00+00:00\") AND (external_user_allowed = \"true\") AND (space_history_state = \"HISTORY_ON\" OR space_history_state = \"HISTORY_OFF\")@
    , query :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | When @true@, the method runs using the user\'s Google Workspace administrator privileges. The calling user must be a Google Workspace administrator with the <https://support.google.com/a/answer/13369245 manage chat and spaces conversations privilege>. Requires either the @chat.admin.spaces.readonly@ or @chat.admin.spaces@ <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes OAuth 2.0 scope>. This method currently only supports admin access, thus only @true@ is accepted for this field.
    , useAdminAccess :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesSearch' with the minimum fields required to make a request.
newChatSpacesSearch 
    ::  ChatSpacesSearch
newChatSpacesSearch =
  ChatSpacesSearch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , query = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , useAdminAccess = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesSearch where
        type Rs ChatSpacesSearch = SearchSpacesResponse
        type Scopes ChatSpacesSearch =
             '[Chat'Admin'Spaces, Chat'Admin'Spaces'Readonly]
        requestClient ChatSpacesSearch{..}
          = go xgafv accessToken callback orderBy pageSize
              pageToken
              query
              uploadType
              uploadProtocol
              useAdminAccess
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatSpacesSearchResource)
                      Core.mempty

