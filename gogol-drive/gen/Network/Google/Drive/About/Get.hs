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
-- Module      : Network.Google.Drive.About.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the user, the user\'s Drive, and system capabilities.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.about.get@.
module Network.Google.Drive.About.Get
  ( -- * Resource
    DriveAboutGetResource,

    -- ** Constructing a Request
    newDriveAboutGet,
    DriveAboutGet,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.about.get@ method which the
-- 'DriveAboutGet' request conforms to.
type DriveAboutGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "about"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] About

-- | Gets information about the user, the user\'s Drive, and system capabilities.
--
-- /See:/ 'newDriveAboutGet' smart constructor.
data DriveAboutGet = DriveAboutGet
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveAboutGet' with the minimum fields required to make a request.
newDriveAboutGet ::
  DriveAboutGet
newDriveAboutGet = DriveAboutGet

instance Core.GoogleRequest DriveAboutGet where
  type Rs DriveAboutGet = About
  type
    Scopes DriveAboutGet =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.appdata",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.metadata",
         "https://www.googleapis.com/auth/drive.metadata.readonly",
         "https://www.googleapis.com/auth/drive.photos.readonly",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveAboutGet {} =
    go (Core.Just Core.AltJSON) driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveAboutGetResource)
          Core.mempty
