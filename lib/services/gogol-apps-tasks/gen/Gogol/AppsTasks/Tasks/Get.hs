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
-- Module      : Gogol.AppsTasks.Tasks.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified task.
--
-- /See:/ <https://developers.google.com/tasks/ Google Tasks API Reference> for @tasks.tasks.get@.
module Gogol.AppsTasks.Tasks.Get
    (
    -- * Resource
      TasksTasksGetResource

    -- ** Constructing a Request
    , TasksTasksGet (..)
    , newTasksTasksGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsTasks.Types

-- | A resource alias for @tasks.tasks.get@ method which the
-- 'TasksTasksGet' request conforms to.
type TasksTasksGetResource =
     "tasks" Core.:>
       "v1" Core.:>
         "lists" Core.:>
           Core.Capture "tasklist" Core.Text Core.:>
             "tasks" Core.:>
               Core.Capture "task" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] Task

-- | Returns the specified task.
--
-- /See:/ 'newTasksTasksGet' smart constructor.
data TasksTasksGet = TasksTasksGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Task identifier.
    , task :: Core.Text
      -- | Task list identifier.
    , tasklist :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasksGet' with the minimum fields required to make a request.
newTasksTasksGet 
    ::  Core.Text
       -- ^  Task identifier. See 'task'.
    -> Core.Text
       -- ^  Task list identifier. See 'tasklist'.
    -> TasksTasksGet
newTasksTasksGet task tasklist =
  TasksTasksGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , task = task
    , tasklist = tasklist
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasksGet where
        type Rs TasksTasksGet = Task
        type Scopes TasksTasksGet =
             '[Tasks'FullControl, Tasks'Readonly]
        requestClient TasksTasksGet{..}
          = go tasklist task xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appsTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy TasksTasksGetResource)
                      Core.mempty

