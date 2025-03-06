{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsTasks.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsTasks.Internal.Product
  ( -- * AssignmentInfo
    AssignmentInfo (..),
    newAssignmentInfo,

    -- * DriveResourceInfo
    DriveResourceInfo (..),
    newDriveResourceInfo,

    -- * SpaceInfo
    SpaceInfo (..),
    newSpaceInfo,

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
  )
where

import Gogol.AppsTasks.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Information about the source of the task assignment (Document, Chat Space).
--
-- /See:/ 'newAssignmentInfo' smart constructor.
data AssignmentInfo = AssignmentInfo
  { -- | Output only. Information about the Drive file where this task originates from. Currently, the Drive file can only be a document. This field is read-only.
    driveResourceInfo :: (Core.Maybe DriveResourceInfo),
    -- | Output only. An absolute link to the original task in the surface of assignment (Docs, Chat spaces, etc.).
    linkToTask :: (Core.Maybe Core.Text),
    -- | Output only. Information about the Chat Space where this task originates from. This field is read-only.
    spaceInfo :: (Core.Maybe SpaceInfo),
    -- | Output only. The type of surface this assigned task originates from. Currently limited to DOCUMENT or SPACE.
    surfaceType :: (Core.Maybe AssignmentInfo_SurfaceType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AssignmentInfo' with the minimum fields required to make a request.
newAssignmentInfo ::
  AssignmentInfo
newAssignmentInfo =
  AssignmentInfo
    { driveResourceInfo = Core.Nothing,
      linkToTask = Core.Nothing,
      spaceInfo = Core.Nothing,
      surfaceType = Core.Nothing
    }

instance Core.FromJSON AssignmentInfo where
  parseJSON =
    Core.withObject
      "AssignmentInfo"
      ( \o ->
          AssignmentInfo
            Core.<$> (o Core..:? "driveResourceInfo")
            Core.<*> (o Core..:? "linkToTask")
            Core.<*> (o Core..:? "spaceInfo")
            Core.<*> (o Core..:? "surfaceType")
      )

instance Core.ToJSON AssignmentInfo where
  toJSON AssignmentInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("driveResourceInfo" Core..=) Core.<$> driveResourceInfo,
            ("linkToTask" Core..=) Core.<$> linkToTask,
            ("spaceInfo" Core..=) Core.<$> spaceInfo,
            ("surfaceType" Core..=) Core.<$> surfaceType
          ]
      )

-- | Information about the Drive resource where a task was assigned from (the document, sheet, etc.).
--
-- /See:/ 'newDriveResourceInfo' smart constructor.
data DriveResourceInfo = DriveResourceInfo
  { -- | Output only. Identifier of the file in the Drive API.
    driveFileId :: (Core.Maybe Core.Text),
    -- | Output only. Resource key required to access files shared via a shared link. Not required for all files. See also developers.google.com\/drive\/api\/guides\/resource-keys.
    resourceKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveResourceInfo' with the minimum fields required to make a request.
newDriveResourceInfo ::
  DriveResourceInfo
newDriveResourceInfo =
  DriveResourceInfo
    { driveFileId = Core.Nothing,
      resourceKey = Core.Nothing
    }

instance Core.FromJSON DriveResourceInfo where
  parseJSON =
    Core.withObject
      "DriveResourceInfo"
      ( \o ->
          DriveResourceInfo
            Core.<$> (o Core..:? "driveFileId")
            Core.<*> (o Core..:? "resourceKey")
      )

instance Core.ToJSON DriveResourceInfo where
  toJSON DriveResourceInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("driveFileId" Core..=) Core.<$> driveFileId,
            ("resourceKey" Core..=) Core.<$> resourceKey
          ]
      )

-- | Information about the Chat Space where a task was assigned from.
--
-- /See:/ 'newSpaceInfo' smart constructor.
newtype SpaceInfo = SpaceInfo
  { -- | Output only. The Chat space where this task originates from. The format is \"spaces\/{space}\".
    space :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceInfo' with the minimum fields required to make a request.
newSpaceInfo ::
  SpaceInfo
newSpaceInfo = SpaceInfo {space = Core.Nothing}

instance Core.FromJSON SpaceInfo where
  parseJSON =
    Core.withObject
      "SpaceInfo"
      (\o -> SpaceInfo Core.<$> (o Core..:? "space"))

instance Core.ToJSON SpaceInfo where
  toJSON SpaceInfo {..} =
    Core.object (Core.catMaybes [("space" Core..=) Core.<$> space])

--
-- /See:/ 'newTask' smart constructor.
data Task = Task
  { -- | Output only. Context information for assigned tasks. A task can be assigned to a user, currently possible from surfaces like Docs and Chat Spaces. This field is populated for tasks assigned to the current user and identifies where the task was assigned from. This field is read-only.
    assignmentInfo :: (Core.Maybe AssignmentInfo),
    -- | Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not been completed.
    completed :: (Core.Maybe Core.Text),
    -- | Flag indicating whether the task has been deleted. For assigned tasks this field is read-only. They can only be deleted by calling tasks.delete, in which case both the assigned task and the original task (in Docs or Chat Spaces) are deleted. To delete the assigned task only, navigate to the assignment surface and unassign the task from there. The default is False.
    deleted :: (Core.Maybe Core.Bool),
    -- | Due date of the task (as a RFC 3339 timestamp). Optional. The due date only records date information; the time portion of the timestamp is discarded when setting the due date. It isn\'t possible to read or write the time that a task is due via the API.
    due :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Flag indicating whether the task is hidden. This is the case if the task had been marked completed when the task list was last cleared. The default is False. This field is read-only.
    hidden :: (Core.Maybe Core.Bool),
    -- | Task identifier.
    id :: (Core.Maybe Core.Text),
    -- | Output only. Type of the resource. This is always \"tasks#task\".
    kind :: (Core.Maybe Core.Text),
    -- | Output only. Collection of links. This collection is read-only.
    links :: (Core.Maybe [Task_LinksItem]),
    -- | Notes describing the task. Tasks assigned from Google Docs cannot have notes. Optional. Maximum length allowed: 8192 characters.
    notes :: (Core.Maybe Core.Text),
    -- | Output only. Parent task identifier. This field is omitted if it is a top-level task. Use the \"move\" method to move the task under a different parent or to the top level. A parent task can never be an assigned task (from Chat Spaces, Docs). This field is read-only.
    parent :: (Core.Maybe Core.Text),
    -- | Output only. String indicating the position of the task among its sibling tasks under the same parent task or at the top level. If this string is greater than another task\'s corresponding position string according to lexicographical ordering, the task is positioned after the other task under the same parent task (or at the top level). Use the \"move\" method to move the task to another position.
    position :: (Core.Maybe Core.Text),
    -- | Output only. URL pointing to this task. Used to retrieve, update, or delete this task.
    selfLink :: (Core.Maybe Core.Text),
    -- | Status of the task. This is either \"needsAction\" or \"completed\".
    status :: (Core.Maybe Core.Text),
    -- | Title of the task. Maximum length allowed: 1024 characters.
    title :: (Core.Maybe Core.Text),
    -- | Output only. Last modification time of the task (as a RFC 3339 timestamp).
    updated :: (Core.Maybe Core.Text),
    -- | Output only. An absolute link to the task in the Google Tasks Web UI.
    webViewLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
newTask ::
  Task
newTask =
  Task
    { assignmentInfo = Core.Nothing,
      completed = Core.Nothing,
      deleted = Core.Nothing,
      due = Core.Nothing,
      etag = Core.Nothing,
      hidden = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      links = Core.Nothing,
      notes = Core.Nothing,
      parent = Core.Nothing,
      position = Core.Nothing,
      selfLink = Core.Nothing,
      status = Core.Nothing,
      title = Core.Nothing,
      updated = Core.Nothing,
      webViewLink = Core.Nothing
    }

instance Core.FromJSON Task where
  parseJSON =
    Core.withObject
      "Task"
      ( \o ->
          Task
            Core.<$> (o Core..:? "assignmentInfo")
            Core.<*> (o Core..:? "completed")
            Core.<*> (o Core..:? "deleted")
            Core.<*> (o Core..:? "due")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "hidden")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "links")
            Core.<*> (o Core..:? "notes")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "webViewLink")
      )

instance Core.ToJSON Task where
  toJSON Task {..} =
    Core.object
      ( Core.catMaybes
          [ ("assignmentInfo" Core..=) Core.<$> assignmentInfo,
            ("completed" Core..=) Core.<$> completed,
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
            ("updated" Core..=) Core.<$> updated,
            ("webViewLink" Core..=) Core.<$> webViewLink
          ]
      )

--
-- /See:/ 'newTask_LinksItem' smart constructor.
data Task_LinksItem = Task_LinksItem
  { -- | The description. In HTML speak: Everything between \<a> and \<\/a>.
    description :: (Core.Maybe Core.Text),
    -- | The URL.
    link :: (Core.Maybe Core.Text),
    -- | Type of the link, e.g. \"email\".
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Task_LinksItem' with the minimum fields required to make a request.
newTask_LinksItem ::
  Task_LinksItem
newTask_LinksItem =
  Task_LinksItem
    { description = Core.Nothing,
      link = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Task_LinksItem where
  parseJSON =
    Core.withObject
      "Task_LinksItem"
      ( \o ->
          Task_LinksItem
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Task_LinksItem where
  toJSON Task_LinksItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("link" Core..=) Core.<$> link,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newTaskList' smart constructor.
data TaskList = TaskList
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Task list identifier.
    id :: (Core.Maybe Core.Text),
    -- | Output only. Type of the resource. This is always \"tasks#taskList\".
    kind :: (Core.Maybe Core.Text),
    -- | Output only. URL pointing to this task list. Used to retrieve, update, or delete this task list.
    selfLink :: (Core.Maybe Core.Text),
    -- | Title of the task list. Maximum length allowed: 1024 characters.
    title :: (Core.Maybe Core.Text),
    -- | Output only. Last modification time of the task list (as a RFC 3339 timestamp).
    updated :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskList' with the minimum fields required to make a request.
newTaskList ::
  TaskList
newTaskList =
  TaskList
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      selfLink = Core.Nothing,
      title = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON TaskList where
  parseJSON =
    Core.withObject
      "TaskList"
      ( \o ->
          TaskList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON TaskList where
  toJSON TaskList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("title" Core..=) Core.<$> title,
            ("updated" Core..=) Core.<$> updated
          ]
      )

--
-- /See:/ 'newTaskLists' smart constructor.
data TaskLists = TaskLists
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Collection of task lists.
    items :: (Core.Maybe [TaskList]),
    -- | Type of the resource. This is always \"tasks#taskLists\".
    kind :: (Core.Maybe Core.Text),
    -- | Token that can be used to request the next page of this result.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskLists' with the minimum fields required to make a request.
newTaskLists ::
  TaskLists
newTaskLists =
  TaskLists
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON TaskLists where
  parseJSON =
    Core.withObject
      "TaskLists"
      ( \o ->
          TaskLists
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON TaskLists where
  toJSON TaskLists {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newTasks' smart constructor.
data Tasks = Tasks
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Collection of tasks.
    items :: (Core.Maybe [Task]),
    -- | Type of the resource. This is always \"tasks#tasks\".
    kind :: (Core.Maybe Core.Text),
    -- | Token used to access the next page of this result.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tasks' with the minimum fields required to make a request.
newTasks ::
  Tasks
newTasks =
  Tasks
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Tasks where
  parseJSON =
    Core.withObject
      "Tasks"
      ( \o ->
          Tasks
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Tasks where
  toJSON Tasks {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )
