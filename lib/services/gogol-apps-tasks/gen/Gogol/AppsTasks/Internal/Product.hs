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
-- Module      : Gogol.AppsTasks.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppsTasks.Internal.Product
  (

    -- * Task
    Task (..),
    newTask,

    -- * Task_LinksItem
    Task_LinksItem (..),
    newTask_LinksItem,

    -- * TaskList
    TaskList (..),
    newTaskList,

    -- * TaskLists
    TaskLists (..),
    newTaskLists,

    -- * Tasks
    Tasks (..),
    newTasks,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsTasks.Internal.Sum

--
-- /See:/ 'newTask' smart constructor.
data Task = Task
    {
      -- | Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not been completed.
      completed :: (Core.Maybe Core.Text)
      -- | Flag indicating whether the task has been deleted. The default is False.
    , deleted :: (Core.Maybe Core.Bool)
      -- | Due date of the task (as a RFC 3339 timestamp). Optional. The due date only records date information; the time portion of the timestamp is discarded when setting the due date. It isn\'t possible to read or write the time that a task is due via the API.
    , due :: (Core.Maybe Core.Text)
      -- | ETag of the resource.
    , etag :: (Core.Maybe Core.Text)
      -- | Flag indicating whether the task is hidden. This is the case if the task had been marked completed when the task list was last cleared. The default is False. This field is read-only.
    , hidden :: (Core.Maybe Core.Bool)
      -- | Task identifier.
    , id :: (Core.Maybe Core.Text)
      -- | Type of the resource. This is always \"tasks#task\".
    , kind :: (Core.Maybe Core.Text)
      -- | Collection of links. This collection is read-only.
    , links :: (Core.Maybe [Task_LinksItem])
      -- | Notes describing the task. Optional.
    , notes :: (Core.Maybe Core.Text)
      -- | Parent task identifier. This field is omitted if it is a top-level task. This field is read-only. Use the \"move\" method to move the task under a different parent or to the top level.
    , parent :: (Core.Maybe Core.Text)
      -- | String indicating the position of the task among its sibling tasks under the same parent task or at the top level. If this string is greater than another task\'s corresponding position string according to lexicographical ordering, the task is positioned after the other task under the same parent task (or at the top level). This field is read-only. Use the \"move\" method to move the task to another position.
    , position :: (Core.Maybe Core.Text)
      -- | URL pointing to this task. Used to retrieve, update, or delete this task.
    , selfLink :: (Core.Maybe Core.Text)
      -- | Status of the task. This is either \"needsAction\" or \"completed\".
    , status :: (Core.Maybe Core.Text)
      -- | Title of the task.
    , title :: (Core.Maybe Core.Text)
      -- | Last modification time of the task (as a RFC 3339 timestamp).
    , updated :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
newTask 
    ::  Task
newTask =
  Task
    { completed = Core.Nothing
    , deleted = Core.Nothing
    , due = Core.Nothing
    , etag = Core.Nothing
    , hidden = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , links = Core.Nothing
    , notes = Core.Nothing
    , parent = Core.Nothing
    , position = Core.Nothing
    , selfLink = Core.Nothing
    , status = Core.Nothing
    , title = Core.Nothing
    , updated = Core.Nothing
    }

instance Core.FromJSON Task where
        parseJSON
          = Core.withObject "Task"
              (\ o ->
                 Task Core.<$>
                   (o Core..:? "completed") Core.<*>
                     (o Core..:? "deleted")
                     Core.<*> (o Core..:? "due")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "hidden")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "links" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "parent")
                     Core.<*> (o Core..:? "position")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "updated"))

instance Core.ToJSON Task where
        toJSON Task{..}
          = Core.object
              (Core.catMaybes
                 [("completed" Core..=) Core.<$> completed,
                  ("deleted" Core..=) Core.<$> deleted,
                  ("due" Core..=) Core.<$> due,
                  ("etag" Core..=) Core.<$> etag,
                  ("hidden" Core..=) Core.<$> hidden,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("links" Core..=) Core.<$> links,
                  ("notes" Core..=) Core.<$> notes,
                  ("parent" Core..=) Core.<$> parent,
                  ("position" Core..=) Core.<$> position,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("status" Core..=) Core.<$> status,
                  ("title" Core..=) Core.<$> title,
                  ("updated" Core..=) Core.<$> updated])


--
-- /See:/ 'newTask_LinksItem' smart constructor.
data Task_LinksItem = Task_LinksItem
    {
      -- | The description. In HTML speak: Everything between \<a> and \<\/a>.
      description :: (Core.Maybe Core.Text)
      -- | The URL.
    , link :: (Core.Maybe Core.Text)
      -- | Type of the link, e.g. \"email\".
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Task_LinksItem' with the minimum fields required to make a request.
newTask_LinksItem 
    ::  Task_LinksItem
newTask_LinksItem =
  Task_LinksItem
    {description = Core.Nothing, link = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Task_LinksItem where
        parseJSON
          = Core.withObject "Task_LinksItem"
              (\ o ->
                 Task_LinksItem Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "link")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Task_LinksItem where
        toJSON Task_LinksItem{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("link" Core..=) Core.<$> link,
                  ("type" Core..=) Core.<$> type'])


--
-- /See:/ 'newTaskList' smart constructor.
data TaskList = TaskList
    {
      -- | ETag of the resource.
      etag :: (Core.Maybe Core.Text)
      -- | Task list identifier.
    , id :: (Core.Maybe Core.Text)
      -- | Type of the resource. This is always \"tasks#taskList\".
    , kind :: (Core.Maybe Core.Text)
      -- | URL pointing to this task list. Used to retrieve, update, or delete this task list.
    , selfLink :: (Core.Maybe Core.Text)
      -- | Title of the task list.
    , title :: (Core.Maybe Core.Text)
      -- | Last modification time of the task list (as a RFC 3339 timestamp).
    , updated :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskList' with the minimum fields required to make a request.
newTaskList 
    ::  TaskList
newTaskList =
  TaskList
    { etag = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , selfLink = Core.Nothing
    , title = Core.Nothing
    , updated = Core.Nothing
    }

instance Core.FromJSON TaskList where
        parseJSON
          = Core.withObject "TaskList"
              (\ o ->
                 TaskList Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "updated"))

instance Core.ToJSON TaskList where
        toJSON TaskList{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("title" Core..=) Core.<$> title,
                  ("updated" Core..=) Core.<$> updated])


--
-- /See:/ 'newTaskLists' smart constructor.
data TaskLists = TaskLists
    {
      -- | ETag of the resource.
      etag :: (Core.Maybe Core.Text)
      -- | Collection of task lists.
    , items :: (Core.Maybe [TaskList])
      -- | Type of the resource. This is always \"tasks#taskLists\".
    , kind :: (Core.Maybe Core.Text)
      -- | Token that can be used to request the next page of this result.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskLists' with the minimum fields required to make a request.
newTaskLists 
    ::  TaskLists
newTaskLists =
  TaskLists
    { etag = Core.Nothing
    , items = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON TaskLists where
        parseJSON
          = Core.withObject "TaskLists"
              (\ o ->
                 TaskLists Core.<$>
                   (o Core..:? "etag") Core.<*>
                     (o Core..:? "items" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON TaskLists where
        toJSON TaskLists{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


--
-- /See:/ 'newTasks' smart constructor.
data Tasks = Tasks
    {
      -- | ETag of the resource.
      etag :: (Core.Maybe Core.Text)
      -- | Collection of tasks.
    , items :: (Core.Maybe [Task])
      -- | Type of the resource. This is always \"tasks#tasks\".
    , kind :: (Core.Maybe Core.Text)
      -- | Token used to access the next page of this result.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tasks' with the minimum fields required to make a request.
newTasks 
    ::  Tasks
newTasks =
  Tasks
    { etag = Core.Nothing
    , items = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON Tasks where
        parseJSON
          = Core.withObject "Tasks"
              (\ o ->
                 Tasks Core.<$>
                   (o Core..:? "etag") Core.<*>
                     (o Core..:? "items" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON Tasks where
        toJSON Tasks{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])

