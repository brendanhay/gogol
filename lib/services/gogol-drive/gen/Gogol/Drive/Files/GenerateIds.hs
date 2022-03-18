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
-- Module      : Gogol.Drive.Files.GenerateIds
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a set of file IDs which can be provided in create or copy requests.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.generateIds@.
module Gogol.Drive.Files.GenerateIds
    (
    -- * Resource
      DriveFilesGenerateIdsResource

    -- ** Constructing a Request
    , newDriveFilesGenerateIds
    , DriveFilesGenerateIds
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.files.generateIds@ method which the
-- 'DriveFilesGenerateIds' request conforms to.
type DriveFilesGenerateIdsResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           "generateIds" Core.:>
             Core.QueryParam "count" Core.Int32 Core.:>
               Core.QueryParam "space" Core.Text Core.:>
                 Core.QueryParam "type" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GeneratedIds

-- | Generates a set of file IDs which can be provided in create or copy requests.
--
-- /See:/ 'newDriveFilesGenerateIds' smart constructor.
data DriveFilesGenerateIds = DriveFilesGenerateIds
    {
      -- | The number of IDs to return.
      count :: Core.Int32
      -- | The space in which the IDs can be used to create new files. Supported values are \'drive\' and \'appDataFolder\'. (Default: \'drive\')
    , space :: Core.Text
      -- | The type of items which the IDs can be used for. Supported values are \'files\' and \'shortcuts\'. Note that \'shortcuts\' are only supported in the drive \'space\'. (Default: \'files\')
    , type' :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesGenerateIds' with the minimum fields required to make a request.
newDriveFilesGenerateIds 
    ::  DriveFilesGenerateIds
newDriveFilesGenerateIds =
  DriveFilesGenerateIds {count = 10, space = "drive", type' = "files"}

instance Core.GoogleRequest DriveFilesGenerateIds
         where
        type Rs DriveFilesGenerateIds = GeneratedIds
        type Scopes DriveFilesGenerateIds =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DriveFilesGenerateIds{..}
          = go (Core.Just count) (Core.Just space)
              (Core.Just type')
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveFilesGenerateIdsResource)
                      Core.mempty

