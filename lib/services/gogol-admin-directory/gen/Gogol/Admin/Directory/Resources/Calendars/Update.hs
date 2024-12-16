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
-- Module      : Gogol.Admin.Directory.Resources.Calendars.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a calendar resource. This method supports patch semantics, meaning you only need to include the fields you wish to update. Fields that are not present in the request will be preserved.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.update@.
module Gogol.Admin.Directory.Resources.Calendars.Update
    (
    -- * Resource
      DirectoryResourcesCalendarsUpdateResource

    -- ** Constructing a Request
    , DirectoryResourcesCalendarsUpdate (..)
    , newDirectoryResourcesCalendarsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.resources.calendars.update@ method which the
-- 'DirectoryResourcesCalendarsUpdate' request conforms to.
type DirectoryResourcesCalendarsUpdateResource =
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
                                 Core.ReqBody '[Core.JSON] CalendarResource
                                   Core.:>
                                   Core.Put '[Core.JSON] CalendarResource

-- | Updates a calendar resource. This method supports patch semantics, meaning you only need to include the fields you wish to update. Fields that are not present in the request will be preserved.
--
-- /See:/ 'newDirectoryResourcesCalendarsUpdate' smart constructor.
data DirectoryResourcesCalendarsUpdate = DirectoryResourcesCalendarsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The unique ID of the calendar resource to update.
    , calendarResourceId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    , customer :: Core.Text
      -- | Multipart request metadata.
    , payload :: CalendarResource
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesCalendarsUpdate' with the minimum fields required to make a request.
newDirectoryResourcesCalendarsUpdate 
    ::  Core.Text
       -- ^  The unique ID of the calendar resource to update. See 'calendarResourceId'.
    -> Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
    -> CalendarResource
       -- ^  Multipart request metadata. See 'payload'.
    -> DirectoryResourcesCalendarsUpdate
newDirectoryResourcesCalendarsUpdate calendarResourceId customer payload =
  DirectoryResourcesCalendarsUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , calendarResourceId = calendarResourceId
    , callback = Core.Nothing
    , customer = customer
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryResourcesCalendarsUpdate
         where
        type Rs DirectoryResourcesCalendarsUpdate =
             CalendarResource
        type Scopes DirectoryResourcesCalendarsUpdate =
             '[Admin'Directory'Resource'Calendar]
        requestClient DirectoryResourcesCalendarsUpdate{..}
          = go customer calendarResourceId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryResourcesCalendarsUpdateResource)
                      Core.mempty

