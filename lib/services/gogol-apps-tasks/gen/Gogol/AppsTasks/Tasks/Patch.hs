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
-- Module      : Gogol.AppsTasks.Tasks.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified task. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.patch@.
module Gogol.AppsTasks.Tasks.Patch
    (
    -- * Resource
      TasksTasksPatchResource

    -- ** Constructing a Request
    , newTasksTasksPatch
    , TasksTasksPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsTasks.Types

-- | A resource alias for @tasks.tasks.patch@ method which the
-- 'TasksTasksPatch' request conforms to.
type TasksTasksPatchResource =
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
                             Core.ReqBody '[Core.JSON] Task Core.:>
                               Core.Patch '[Core.JSON] Task

-- | Updates the specified task. This method supports patch semantics.
--
-- /See:/ 'newTasksTasksPatch' smart constructor.
data TasksTasksPatch = TasksTasksPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Task
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

-- | Creates a value of 'TasksTasksPatch' with the minimum fields required to make a request.
newTasksTasksPatch 
    ::  Task
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Task identifier. See 'task'.
    -> Core.Text
       -- ^  Task list identifier. See 'tasklist'.
    -> TasksTasksPatch
newTasksTasksPatch payload task tasklist =
  TasksTasksPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , task = task
    , tasklist = tasklist
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasksPatch where
        type Rs TasksTasksPatch = Task
        type Scopes TasksTasksPatch =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksTasksPatch{..}
          = go tasklist task xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appsTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy TasksTasksPatchResource)
                      Core.mempty

