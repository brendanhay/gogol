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
-- Module      : Gogol.Admin.Directory.Resources.Calendars.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.delete@.
module Gogol.Admin.Directory.Resources.Calendars.Delete
    (
    -- * Resource
      DirectoryResourcesCalendarsDeleteResource

    -- ** Constructing a Request
    , DirectoryResourcesCalendarsDelete (..)
    , newDirectoryResourcesCalendarsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.resources.calendars.delete@ method which the
-- 'DirectoryResourcesCalendarsDelete' request conforms to.
type DirectoryResourcesCalendarsDeleteResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customer" Core.Text Core.:>
               "resources" Core.:>
                 "calendars" Core.:>
                   Core.Capture "calendarResourceId" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Delete '[Core.JSON] ()

-- | Deletes a calendar resource.
--
-- /See:/ 'newDirectoryResourcesCalendarsDelete' smart constructor.
data DirectoryResourcesCalendarsDelete = DirectoryResourcesCalendarsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The unique ID of the calendar resource to delete.
    , calendarResourceId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    , customer :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesCalendarsDelete' with the minimum fields required to make a request.
newDirectoryResourcesCalendarsDelete 
    ::  Core.Text
       -- ^  The unique ID of the calendar resource to delete. See 'calendarResourceId'.
    -> Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
    -> DirectoryResourcesCalendarsDelete
newDirectoryResourcesCalendarsDelete calendarResourceId customer =
  DirectoryResourcesCalendarsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , calendarResourceId = calendarResourceId
    , callback = Core.Nothing
    , customer = customer
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryResourcesCalendarsDelete
         where
        type Rs DirectoryResourcesCalendarsDelete = ()
        type Scopes DirectoryResourcesCalendarsDelete =
             '[Admin'Directory'Resource'Calendar]
        requestClient DirectoryResourcesCalendarsDelete{..}
          = go customer calendarResourceId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryResourcesCalendarsDeleteResource)
                      Core.mempty

