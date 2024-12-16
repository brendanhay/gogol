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
-- Module      : Gogol.Drive.Changes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the changes for a user or shared drive. For more information, see <https://developers.google.com/drive/api/guides/manage-changes Retrieve changes>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.changes.list@.
module Gogol.Drive.Changes.List
    (
    -- * Resource
      DriveChangesListResource

    -- ** Constructing a Request
    , DriveChangesList (..)
    , newDriveChangesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.changes.list@ method which the
-- 'DriveChangesList' request conforms to.
type DriveChangesListResource =
     "drive" Core.:>
       "v3" Core.:>
         "changes" Core.:>
           Core.QueryParam "pageToken" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "driveId" Core.Text Core.:>
                     Core.QueryParam "includeCorpusRemovals" Core.Bool
                       Core.:>
                       Core.QueryParam "includeItemsFromAllDrives" Core.Bool
                         Core.:>
                         Core.QueryParam "includeLabels" Core.Text Core.:>
                           Core.QueryParam "includePermissionsForView" Core.Text
                             Core.:>
                             Core.QueryParam "includeRemoved" Core.Bool Core.:>
                               Core.QueryParam "includeTeamDriveItems" Core.Bool
                                 Core.:>
                                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                                   Core.QueryParam "restrictToMyDrive" Core.Bool
                                     Core.:>
                                     Core.QueryParam "spaces" Core.Text Core.:>
                                       Core.QueryParam "supportsAllDrives"
                                         Core.Bool
                                         Core.:>
                                         Core.QueryParam "supportsTeamDrives"
                                           Core.Bool
                                           Core.:>
                                           Core.QueryParam "teamDriveId"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam "uploadType"
                                               Core.Text
                                               Core.:>
                                               Core.QueryParam "upload_protocol"
                                                 Core.Text
                                                 Core.:>
                                                 Core.QueryParam "alt"
                                                   Core.AltJSON
                                                   Core.:>
                                                   Core.Get '[Core.JSON]
                                                     ChangeList

-- | Lists the changes for a user or shared drive. For more information, see <https://developers.google.com/drive/api/guides/manage-changes Retrieve changes>.
--
-- /See:/ 'newDriveChangesList' smart constructor.
data DriveChangesList = DriveChangesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The shared drive from which changes will be returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.
    , driveId :: (Core.Maybe Core.Text)
      -- | Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.
    , includeCorpusRemovals :: Core.Bool
      -- | Whether both My Drive and shared drive items should be included in results.
    , includeItemsFromAllDrives :: Core.Bool
      -- | A comma-separated list of IDs of labels to include in the @labelInfo@ part of the response.
    , includeLabels :: (Core.Maybe Core.Text)
      -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    , includePermissionsForView :: (Core.Maybe Core.Text)
      -- | Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.
    , includeRemoved :: Core.Bool
      -- | Deprecated: Use @includeItemsFromAllDrives@ instead.
    , includeTeamDriveItems :: Core.Bool
      -- | The maximum number of changes to return per page.
    , pageSize :: Core.Int32
      -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response or to the response from the getStartPageToken method.
    , pageToken :: Core.Text
      -- | Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.
    , restrictToMyDrive :: Core.Bool
      -- | A comma-separated list of spaces to query within the corpora. Supported values are \'drive\' and \'appDataFolder\'.
    , spaces :: Core.Text
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated: Use @supportsAllDrives@ instead.
    , supportsTeamDrives :: Core.Bool
      -- | Deprecated: Use @driveId@ instead.
    , teamDriveId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveChangesList' with the minimum fields required to make a request.
newDriveChangesList 
    ::  Core.Text
       -- ^  The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response or to the response from the getStartPageToken method. See 'pageToken'.
    -> DriveChangesList
newDriveChangesList pageToken =
  DriveChangesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , driveId = Core.Nothing
    , includeCorpusRemovals = Core.False
    , includeItemsFromAllDrives = Core.False
    , includeLabels = Core.Nothing
    , includePermissionsForView = Core.Nothing
    , includeRemoved = Core.True
    , includeTeamDriveItems = Core.False
    , pageSize = 100
    , pageToken = pageToken
    , restrictToMyDrive = Core.False
    , spaces = "drive"
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    , teamDriveId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveChangesList where
        type Rs DriveChangesList = ChangeList
        type Scopes DriveChangesList =
             '[Drive'FullControl, Drive'Appdata, Drive'File,
               Drive'Meet'Readonly, Drive'Metadata,
               Drive'Metadata'Readonly, Drive'Photos'Readonly,
               Drive'Readonly]
        requestClient DriveChangesList{..}
          = go (Core.Just pageToken) xgafv accessToken callback
              driveId
              (Core.Just includeCorpusRemovals)
              (Core.Just includeItemsFromAllDrives)
              includeLabels
              includePermissionsForView
              (Core.Just includeRemoved)
              (Core.Just includeTeamDriveItems)
              (Core.Just pageSize)
              (Core.Just restrictToMyDrive)
              (Core.Just spaces)
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              teamDriveId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveChangesListResource)
                      Core.mempty

