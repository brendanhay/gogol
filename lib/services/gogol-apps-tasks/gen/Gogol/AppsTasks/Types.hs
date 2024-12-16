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
-- Module      : Gogol.AppsTasks.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppsTasks.Types
    (
    -- * Configuration
      appsTasksService

    -- * OAuth Scopes
    , Tasks'FullControl
    , Tasks'Readonly

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AssignmentInfo
    , AssignmentInfo (..)
    , newAssignmentInfo

    -- ** AssignmentInfo_SurfaceType
    , AssignmentInfo_SurfaceType (..)

    -- ** DriveResourceInfo
    , DriveResourceInfo (..)
    , newDriveResourceInfo

    -- ** SpaceInfo
    , SpaceInfo (..)
    , newSpaceInfo

    -- ** Task
    , Task (..)
    , newTask

    -- ** Task_LinksItem
    , Task_LinksItem (..)
    , newTask_LinksItem

    -- ** TaskList
    , TaskList (..)
    , newTaskList

    -- ** TaskLists
    , TaskLists (..)
    , newTaskLists

    -- ** Tasks
    , Tasks (..)
    , newTasks
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsTasks.Internal.Product
import Gogol.AppsTasks.Internal.Sum

-- | Default request referring to version @v1@ of the Google Tasks API. This contains the host and root path used as a starting point for constructing service requests.
appsTasksService :: Core.ServiceConfig
appsTasksService
  = Core.defaultService (Core.ServiceId "tasks:v1")
      "tasks.googleapis.com"

-- | Create, edit, organize, and delete all your tasks
type Tasks'FullControl = "https://www.googleapis.com/auth/tasks"

-- | View your tasks
type Tasks'Readonly = "https://www.googleapis.com/auth/tasks.readonly"
