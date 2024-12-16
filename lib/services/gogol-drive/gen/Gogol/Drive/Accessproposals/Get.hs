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
-- Module      : Gogol.Drive.Accessproposals.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an AccessProposal by ID.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.accessproposals.get@.
module Gogol.Drive.Accessproposals.Get
    (
    -- * Resource
      DriveAccessproposalsGetResource

    -- ** Constructing a Request
    , DriveAccessproposalsGet (..)
    , newDriveAccessproposalsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.accessproposals.get@ method which the
-- 'DriveAccessproposalsGet' request conforms to.
type DriveAccessproposalsGetResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "accessproposals" Core.:>
               Core.Capture "proposalId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] AccessProposal

-- | Retrieves an AccessProposal by ID.
--
-- /See:/ 'newDriveAccessproposalsGet' smart constructor.
data DriveAccessproposalsGet = DriveAccessproposalsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The id of the item the request is on.
    , fileId :: Core.Text
      -- | Required. The id of the access proposal to resolve.
    , proposalId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveAccessproposalsGet' with the minimum fields required to make a request.
newDriveAccessproposalsGet 
    ::  Core.Text
       -- ^  Required. The id of the item the request is on. See 'fileId'.
    -> Core.Text
       -- ^  Required. The id of the access proposal to resolve. See 'proposalId'.
    -> DriveAccessproposalsGet
newDriveAccessproposalsGet fileId proposalId =
  DriveAccessproposalsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , fileId = fileId
    , proposalId = proposalId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveAccessproposalsGet
         where
        type Rs DriveAccessproposalsGet = AccessProposal
        type Scopes DriveAccessproposalsGet =
             '[Drive'FullControl, Drive'File, Drive'Metadata,
               Drive'Metadata'Readonly, Drive'Readonly]
        requestClient DriveAccessproposalsGet{..}
          = go fileId proposalId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveAccessproposalsGetResource)
                      Core.mempty

