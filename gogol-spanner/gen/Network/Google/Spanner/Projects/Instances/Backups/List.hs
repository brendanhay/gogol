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
-- Module      : Network.Google.Spanner.Projects.Instances.Backups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists completed and pending backups. Backups returned are ordered by @create_time@ in descending order, starting from the most recent @create_time@.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.list@.
module Network.Google.Spanner.Projects.Instances.Backups.List
  ( -- * Resource
    SpannerProjectsInstancesBackupsListResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesBackupsList,
    SpannerProjectsInstancesBackupsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.list@ method which the
-- 'SpannerProjectsInstancesBackupsList' request conforms to.
type SpannerProjectsInstancesBackupsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBackupsResponse

-- | Lists completed and pending backups. Backups returned are ordered by @create_time@ in descending order, starting from the most recent @create_time@.
--
-- /See:/ 'newSpannerProjectsInstancesBackupsList' smart constructor.
data SpannerProjectsInstancesBackupsList = SpannerProjectsInstancesBackupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An expression that filters the list of returned backups. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: @\<@, @>@, @\<=@, @>=@, @!=@, @=@, or @:@. Colon @:@ is the contains operator. Filter rules are not case sensitive. The following fields in the Backup are eligible for filtering: * @name@ * @database@ * @state@ * @create_time@ (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * @expire_time@ (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * @version_time@ (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * @size_bytes@ You can combine multiple expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic, but you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * @name:Howl@ - The backup\'s name contains the string \"howl\". * @database:prod@ - The database\'s name contains the string
    -- \"prod\". * @state:CREATING@ - The backup is pending creation. * @state:READY@ - The backup is fully created and ready for use. * @(name:howl) AND (create_time \< \\\"2018-03-28T14:50:00Z\\\")@ - The backup name contains the string \"howl\" and @create_time@ of the backup is before 2018-03-28T14:50:00Z. * @expire_time \< \\\"2018-03-28T14:50:00Z\\\"@ - The backup @expire_time@ is before 2018-03-28T14:50:00Z. * @size_bytes > 10000000000@ - The backup\'s size is greater than 10GB
    filter :: (Core.Maybe Core.Text),
    -- | Number of backups to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListBackupsResponse to the same @parent@ and with the same @filter@.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The instance to list backups from. Values are of the form @projects\/\/instances\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesBackupsList' with the minimum fields required to make a request.
newSpannerProjectsInstancesBackupsList ::
  -- |  Required. The instance to list backups from. Values are of the form @projects\/\/instances\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstancesBackupsList
newSpannerProjectsInstancesBackupsList parent =
  SpannerProjectsInstancesBackupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesBackupsList
  where
  type
    Rs SpannerProjectsInstancesBackupsList =
      ListBackupsResponse
  type
    Scopes SpannerProjectsInstancesBackupsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/spanner.admin"
       ]
  requestClient SpannerProjectsInstancesBackupsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                SpannerProjectsInstancesBackupsListResource
          )
          Core.mempty
