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
-- Module      : Network.Google.Gmail.Users.Threads.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the threads in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.list@.
module Network.Google.Gmail.Users.Threads.List
  ( -- * Resource
    GmailUsersThreadsListResource,

    -- ** Constructing a Request
    newGmailUsersThreadsList,
    GmailUsersThreadsList,
  )
where

import Network.Google.Gmail.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @gmail.users.threads.list@ method which the
-- 'GmailUsersThreadsList' request conforms to.
type GmailUsersThreadsListResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "threads"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeSpamTrash" Core.Bool
    Core.:> Core.QueryParams "labelIds" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListThreadsResponse

-- | Lists the threads in the user\'s mailbox.
--
-- /See:/ 'newGmailUsersThreadsList' smart constructor.
data GmailUsersThreadsList = GmailUsersThreadsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Include threads from @SPAM@ and @TRASH@ in the results.
    includeSpamTrash :: Core.Bool,
    -- | Only return threads with labels that match all of the specified label IDs.
    labelIds :: (Core.Maybe [Core.Text]),
    -- | Maximum number of threads to return. This field defaults to 100. The maximum allowed value for this field is 500.
    maxResults :: Core.Word32,
    -- | Page token to retrieve a specific page of results in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Only return threads matching the specified query. Supports the same query format as the Gmail search box. For example, @\"from:someuser\@example.com rfc822msgid: is:unread\"@. Parameter cannot be used when accessing the api using the gmail.metadata scope.
    q :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersThreadsList' with the minimum fields required to make a request.
newGmailUsersThreadsList ::
  GmailUsersThreadsList
newGmailUsersThreadsList =
  GmailUsersThreadsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeSpamTrash = Core.False,
      labelIds = Core.Nothing,
      maxResults = 100,
      pageToken = Core.Nothing,
      q = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersThreadsList where
  type Rs GmailUsersThreadsList = ListThreadsResponse
  type
    Scopes GmailUsersThreadsList =
      '[ "https://mail.google.com/",
         "https://www.googleapis.com/auth/gmail.metadata",
         "https://www.googleapis.com/auth/gmail.modify",
         "https://www.googleapis.com/auth/gmail.readonly"
       ]
  requestClient GmailUsersThreadsList {..} =
    go
      userId
      xgafv
      accessToken
      callback
      (Core.Just includeSpamTrash)
      (labelIds Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      q
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersThreadsListResource
          )
          Core.mempty
