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
-- Module      : Gogol.AppsTasks.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsTasks.Types
  ( -- * Configuration
    appsTasksService,

    -- * OAuth Scopes
    tasksScope,
    tasksReadOnlyScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Task
    Task (..),
    newTask,

    -- ** Task_LinksItem
    Task_LinksItem (..),
    newTask_LinksItem,

    -- ** TaskList
    TaskList (..),
    newTaskList,

    -- ** TaskLists
    TaskLists (..),
    newTaskLists,

    -- ** Tasks
    Tasks (..),
    newTasks,
  )
where

import Gogol.AppsTasks.Internal.Product
import Gogol.AppsTasks.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Tasks API. This contains the host and root path used as a starting point for constructing service requests.
appsTasksService :: Core.ServiceConfig
appsTasksService =
  Core.defaultService
    (Core.ServiceId "tasks:v1")
    "tasks.googleapis.com"

-- | Create, edit, organize, and delete all your tasks
tasksScope :: Core.Proxy '["https://www.googleapis.com/auth/tasks"]
tasksScope = Core.Proxy

-- | View your tasks
tasksReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/tasks.readonly"]
tasksReadOnlyScope = Core.Proxy
