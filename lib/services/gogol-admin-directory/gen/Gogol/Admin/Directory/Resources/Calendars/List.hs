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
-- Module      : Gogol.Admin.Directory.Resources.Calendars.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of calendar resources for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.list@.
module Gogol.Admin.Directory.Resources.Calendars.List
    (
    -- * Resource
      DirectoryResourcesCalendarsListResource

    -- ** Constructing a Request
    , newDirectoryResourcesCalendarsList
    , DirectoryResourcesCalendarsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.resources.calendars.list@ method which the
-- 'DirectoryResourcesCalendarsList' request conforms to.
type DirectoryResourcesCalendarsListResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customer" Core.Text Core.:>
               "resources" Core.:>
                 "calendars" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "maxResults" Core.Int32 Core.:>
                           Core.QueryParam "orderBy" Core.Text Core.:>
                             Core.QueryParam "pageToken" Core.Text Core.:>
                               Core.QueryParam "query" Core.Text Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON] CalendarResources

-- | Retrieves a list of calendar resources for an account.
--
-- /See:/ 'newDirectoryResourcesCalendarsList' smart constructor.
data DirectoryResourcesCalendarsList = DirectoryResourcesCalendarsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    , customer :: Core.Text
      -- | Maximum number of results to return.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | Field(s) to sort results by in either ascending or descending order. Supported fields include @resourceId@, @resourceName@, @capacity@, @buildingId@, and @floorName@. If no order is specified, defaults to ascending. Should be of the form \"field [asc|desc], field [asc|desc], ...\". For example @buildingId, capacity desc@ would return results sorted first by @buildingId@ in ascending order then by @capacity@ in descending order.
    , orderBy :: (Core.Maybe Core.Text)
      -- | Token to specify the next page in the list.
    , pageToken :: (Core.Maybe Core.Text)
      -- | String query used to filter results. Should be of the form \"field operator value\" where field can be any of supported fields and operators can be any of supported operations. Operators include \'=\' for exact match, \'!=\' for mismatch and \':\' for prefix match or HAS match where applicable. For prefix match, the value should always be followed by a *. Logical operators NOT and AND are supported (in this order of precedence). Supported fields include @generatedResourceName@, @name@, @buildingId@, @floor_name@, @capacity@, @featureInstances.feature.name@, @resourceEmail@, @resourceCategory@. For example @buildingId=US-NYC-9TH AND featureInstances.feature.name:Phone@.
    , query :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesCalendarsList' with the minimum fields required to make a request.
newDirectoryResourcesCalendarsList 
    ::  Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
    -> DirectoryResourcesCalendarsList
newDirectoryResourcesCalendarsList customer =
  DirectoryResourcesCalendarsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customer = customer
    , maxResults = Core.Nothing
    , orderBy = Core.Nothing
    , pageToken = Core.Nothing
    , query = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryResourcesCalendarsList
         where
        type Rs DirectoryResourcesCalendarsList =
             CalendarResources
        type Scopes DirectoryResourcesCalendarsList =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient DirectoryResourcesCalendarsList{..}
          = go customer xgafv accessToken callback maxResults
              orderBy
              pageToken
              query
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryResourcesCalendarsListResource)
                      Core.mempty

