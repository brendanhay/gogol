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
-- Module      : Gogol.AppsTasks.Tasks.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new task on the specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.insert@.
module Gogol.AppsTasks.Tasks.Insert
    (
    -- * Resource
      TasksTasksInsertResource

    -- ** Constructing a Request
    , newTasksTasksInsert
    , TasksTasksInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsTasks.Types

-- | A resource alias for @tasks.tasks.insert@ method which the
-- 'TasksTasksInsert' request conforms to.
type TasksTasksInsertResource =
     "tasks" Core.:>
       "v1" Core.:>
         "lists" Core.:>
           Core.Capture "tasklist" Core.Text Core.:>
             "tasks" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "parent" Core.Text Core.:>
                       Core.QueryParam "previous" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] Task Core.:>
                                 Core.Post '[Core.JSON] Task

-- | Creates a new task on the specified task list.
--
-- /See:/ 'newTasksTasksInsert' smart constructor.
data TasksTasksInsert = TasksTasksInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Parent task identifier. If the task is created at the top level, this parameter is omitted. Optional.
    , parent :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Task
      -- | Previous sibling task identifier. If the task is created at the first position among its siblings, this parameter is omitted. Optional.
    , previous :: (Core.Maybe Core.Text)
      -- | Task list identifier.
    , tasklist :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasksInsert' with the minimum fields required to make a request.
newTasksTasksInsert 
    ::  Task
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Task list identifier. See 'tasklist'.
    -> TasksTasksInsert
newTasksTasksInsert payload tasklist =
  TasksTasksInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = Core.Nothing
    , payload = payload
    , previous = Core.Nothing
    , tasklist = tasklist
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasksInsert where
        type Rs TasksTasksInsert = Task
        type Scopes TasksTasksInsert =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksTasksInsert{..}
          = go tasklist xgafv accessToken callback parent
              previous
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appsTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy TasksTasksInsertResource)
                      Core.mempty

