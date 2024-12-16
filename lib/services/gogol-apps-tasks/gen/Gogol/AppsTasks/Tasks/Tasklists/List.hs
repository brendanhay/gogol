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
-- Module      : Gogol.AppsTasks.Tasks.Tasklists.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the authenticated user\'s task lists. A user can have up to 2000 lists at a time.
--
-- /See:/ <https://developers.google.com/tasks/ Google Tasks API Reference> for @tasks.tasklists.list@.
module Gogol.AppsTasks.Tasks.Tasklists.List
    (
    -- * Resource
      TasksTasklistsListResource

    -- ** Constructing a Request
    , TasksTasklistsList (..)
    , newTasksTasklistsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsTasks.Types

-- | A resource alias for @tasks.tasklists.list@ method which the
-- 'TasksTasklistsList' request conforms to.
type TasksTasklistsListResource =
     "tasks" Core.:>
       "v1" Core.:>
         "users" Core.:>
           "@me" Core.:>
             "lists" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "maxResults" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] TaskLists

-- | Returns all the authenticated user\'s task lists. A user can have up to 2000 lists at a time.
--
-- /See:/ 'newTasksTasklistsList' smart constructor.
data TasksTasklistsList = TasksTasklistsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Maximum number of task lists returned on one page. Optional. The default is 20 (max allowed: 100).
    , maxResults :: (Core.Maybe Core.Int32)
      -- | Token specifying the result page to return. Optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasklistsList' with the minimum fields required to make a request.
newTasksTasklistsList 
    ::  TasksTasklistsList
newTasksTasklistsList =
  TasksTasklistsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasklistsList where
        type Rs TasksTasklistsList = TaskLists
        type Scopes TasksTasklistsList =
             '[Tasks'FullControl, Tasks'Readonly]
        requestClient TasksTasklistsList{..}
          = go xgafv accessToken callback maxResults pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appsTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy TasksTasklistsListResource)
                      Core.mempty

