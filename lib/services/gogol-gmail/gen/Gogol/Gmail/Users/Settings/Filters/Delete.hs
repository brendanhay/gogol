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
-- Module      : Gogol.Gmail.Users.Settings.Filters.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a filter.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.filters.delete@.
module Gogol.Gmail.Users.Settings.Filters.Delete
    (
    -- * Resource
      GmailUsersSettingsFiltersDeleteResource

    -- ** Constructing a Request
    , newGmailUsersSettingsFiltersDelete
    , GmailUsersSettingsFiltersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.settings.filters.delete@ method which the
-- 'GmailUsersSettingsFiltersDelete' request conforms to.
type GmailUsersSettingsFiltersDeleteResource =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "settings" Core.:>
               "filters" Core.:>
                 Core.Capture "id" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] ()

-- | Deletes a filter.
--
-- /See:/ 'newGmailUsersSettingsFiltersDelete' smart constructor.
data GmailUsersSettingsFiltersDelete = GmailUsersSettingsFiltersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the filter to be deleted.
    , id :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsFiltersDelete' with the minimum fields required to make a request.
newGmailUsersSettingsFiltersDelete 
    ::  Core.Text
       -- ^  The ID of the filter to be deleted. See 'id'.
    -> GmailUsersSettingsFiltersDelete
newGmailUsersSettingsFiltersDelete id =
  GmailUsersSettingsFiltersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersSettingsFiltersDelete
         where
        type Rs GmailUsersSettingsFiltersDelete = ()
        type Scopes GmailUsersSettingsFiltersDelete =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient GmailUsersSettingsFiltersDelete{..}
          = go userId id xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GmailUsersSettingsFiltersDeleteResource)
                      Core.mempty

