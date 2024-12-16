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
-- Module      : Gogol.GroupsMigration.Archive.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new mail into the archive of the Google group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference> for @groupsmigration.archive.insert@.
module Gogol.GroupsMigration.Archive.Insert
    (
    -- * Resource
      GroupsMigrationArchiveInsertResource

    -- ** Constructing a Request
    , GroupsMigrationArchiveInsert (..)
    , newGroupsMigrationArchiveInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GroupsMigration.Types

-- | A resource alias for @groupsmigration.archive.insert@ method which the
-- 'GroupsMigrationArchiveInsert' request conforms to.
type GroupsMigrationArchiveInsertResource =
     "groups" Core.:>
       "v1" Core.:>
         "groups" Core.:>
           Core.Capture "groupId" Core.Text Core.:>
             "archive" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON] Groups
       Core.:<|>
       "upload" Core.:>
         "groups" Core.:>
           "v1" Core.:>
             "groups" Core.:>
               Core.Capture "groupId" Core.Text Core.:>
                 "archive" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.QueryParam "uploadType" Core.AltMedia
                                 Core.:>
                                 Core.AltMedia Core.:>
                                   Core.Post '[Core.JSON] Groups

-- | Inserts a new mail into the archive of the Google group.
--
-- /See:/ 'newGroupsMigrationArchiveInsert' smart constructor.
data GroupsMigrationArchiveInsert = GroupsMigrationArchiveInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The group ID
    , groupId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupsMigrationArchiveInsert' with the minimum fields required to make a request.
newGroupsMigrationArchiveInsert 
    ::  Core.Text
       -- ^  The group ID See 'groupId'.
    -> GroupsMigrationArchiveInsert
newGroupsMigrationArchiveInsert groupId =
  GroupsMigrationArchiveInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , groupId = groupId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GroupsMigrationArchiveInsert
         where
        type Rs GroupsMigrationArchiveInsert = Groups
        type Scopes GroupsMigrationArchiveInsert =
             '[Apps'Groups'Migration]
        requestClient GroupsMigrationArchiveInsert{..}
          = go groupId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              groupsMigrationService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GroupsMigrationArchiveInsertResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload GroupsMigrationArchiveInsert)
         where
        type Rs
               (Core.MediaUpload GroupsMigrationArchiveInsert)
             = Groups
        type Scopes
               (Core.MediaUpload GroupsMigrationArchiveInsert)
             = Core.Scopes GroupsMigrationArchiveInsert
        requestClient
          (Core.MediaUpload GroupsMigrationArchiveInsert{..}
             body)
          = go groupId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              (Core.Just Core.AltMedia)
              body
              groupsMigrationService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GroupsMigrationArchiveInsertResource)
                      Core.mempty

