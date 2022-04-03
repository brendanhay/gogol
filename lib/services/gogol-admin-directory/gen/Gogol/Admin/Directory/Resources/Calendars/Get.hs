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
-- Module      : Gogol.Admin.Directory.Resources.Calendars.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.get@.
module Gogol.Admin.Directory.Resources.Calendars.Get
  ( -- * Resource
    DirectoryResourcesCalendarsGetResource,

    -- ** Constructing a Request
    DirectoryResourcesCalendarsGet (..),
    newDirectoryResourcesCalendarsGet,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.resources.calendars.get@ method which the
-- 'DirectoryResourcesCalendarsGet' request conforms to.
type DirectoryResourcesCalendarsGetResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "resources"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarResourceId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CalendarResource

-- | Retrieves a calendar resource.
--
-- /See:/ 'newDirectoryResourcesCalendarsGet' smart constructor.
data DirectoryResourcesCalendarsGet = DirectoryResourcesCalendarsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The unique ID of the calendar resource to retrieve.
    calendarResourceId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    customer :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesCalendarsGet' with the minimum fields required to make a request.
newDirectoryResourcesCalendarsGet ::
  -- |  The unique ID of the calendar resource to retrieve. See 'calendarResourceId'.
  Core.Text ->
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
  Core.Text ->
  DirectoryResourcesCalendarsGet
newDirectoryResourcesCalendarsGet calendarResourceId customer =
  DirectoryResourcesCalendarsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      calendarResourceId = calendarResourceId,
      callback = Core.Nothing,
      customer = customer,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DirectoryResourcesCalendarsGet
  where
  type
    Rs DirectoryResourcesCalendarsGet =
      CalendarResource
  type
    Scopes DirectoryResourcesCalendarsGet =
      '[ Admin'Directory'Resource'Calendar,
         Admin'Directory'Resource'Calendar'Readonly
       ]
  requestClient DirectoryResourcesCalendarsGet {..} =
    go
      customer
      calendarResourceId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryResourcesCalendarsGetResource
          )
          Core.mempty
