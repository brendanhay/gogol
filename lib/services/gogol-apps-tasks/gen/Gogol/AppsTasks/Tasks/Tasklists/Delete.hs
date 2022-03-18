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
-- Module      : Gogol.AppsTasks.Tasks.Tasklists.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.delete@.
module Gogol.AppsTasks.Tasks.Tasklists.Delete
    (
    -- * Resource
      TasksTasklistsDeleteResource

    -- ** Constructing a Request
    , newTasksTasklistsDelete
    , TasksTasklistsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsTasks.Types

-- | A resource alias for @tasks.tasklists.delete@ method which the
-- 'TasksTasklistsDelete' request conforms to.
type TasksTasklistsDeleteResource =
     "tasks" Core.:>
       "v1" Core.:>
         "users" Core.:>
           "@me" Core.:>
             "lists" Core.:>
               Core.Capture "tasklist" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ 'newTasksTasklistsDelete' smart constructor.
data TasksTasklistsDelete = TasksTasklistsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Task list identifier.
    , tasklist :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasklistsDelete' with the minimum fields required to make a request.
newTasksTasklistsDelete 
    ::  Core.Text
       -- ^  Task list identifier. See 'tasklist'.
    -> TasksTasklistsDelete
newTasksTasklistsDelete tasklist =
  TasksTasklistsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , tasklist = tasklist
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasklistsDelete
         where
        type Rs TasksTasklistsDelete = ()
        type Scopes TasksTasklistsDelete =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksTasklistsDelete{..}
          = go tasklist xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appsTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy TasksTasklistsDeleteResource)
                      Core.mempty

