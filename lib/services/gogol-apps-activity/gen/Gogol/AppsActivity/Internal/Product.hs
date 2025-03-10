{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AppsActivity.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsActivity.Internal.Product
  ( -- * Activity
    Activity (..),
    newActivity,

    -- * Event
    Event (..),
    newEvent,

    -- * ListActivitiesResponse
    ListActivitiesResponse (..),
    newListActivitiesResponse,

    -- * Move
    Move (..),
    newMove,

    -- * Parent
    Parent (..),
    newParent,

    -- * Permission
    Permission (..),
    newPermission,

    -- * PermissionChange
    PermissionChange (..),
    newPermissionChange,

    -- * Photo
    Photo (..),
    newPhoto,

    -- * Rename
    Rename (..),
    newRename,

    -- * Target
    Target (..),
    newTarget,

    -- * User
    User (..),
    newUser,
  )
where

import Gogol.AppsActivity.Internal.Sum
import Gogol.Prelude qualified as Core

-- | An Activity resource is a combined view of multiple events. An activity has a list of individual events and a combined view of the common fields among all events.
--
-- /See:/ 'newActivity' smart constructor.
data Activity = Activity
  { -- | The fields common to all of the singleEvents that make up the Activity.
    combinedEvent :: (Core.Maybe Event),
    -- | A list of all the Events that make up the Activity.
    singleEvents :: (Core.Maybe [Event])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
newActivity ::
  Activity
newActivity =
  Activity
    { combinedEvent = Core.Nothing,
      singleEvents = Core.Nothing
    }

instance Core.FromJSON Activity where
  parseJSON =
    Core.withObject
      "Activity"
      ( \o ->
          Activity
            Core.<$> (o Core..:? "combinedEvent")
            Core.<*> (o Core..:? "singleEvents")
      )

instance Core.ToJSON Activity where
  toJSON Activity {..} =
    Core.object
      ( Core.catMaybes
          [ ("combinedEvent" Core..=) Core.<$> combinedEvent,
            ("singleEvents" Core..=) Core.<$> singleEvents
          ]
      )

-- | Represents the changes associated with an action taken by a user.
--
-- /See:/ 'newEvent' smart constructor.
data Event = Event
  { -- | Additional event types. Some events may have multiple types when multiple actions are part of a single event. For example, creating a document, renaming it, and sharing it may be part of a single file-creation event.
    additionalEventTypes :: (Core.Maybe [Event_AdditionalEventTypesItem]),
    -- | The time at which the event occurred formatted as Unix time in milliseconds.
    eventTimeMillis :: (Core.Maybe Core.Word64),
    -- | Whether this event is caused by a user being deleted.
    fromUserDeletion :: (Core.Maybe Core.Bool),
    -- | Extra information for move type events, such as changes in an object\'s parents.
    move :: (Core.Maybe Move),
    -- | Extra information for permissionChange type events, such as the user or group the new permission applies to.
    permissionChanges :: (Core.Maybe [PermissionChange]),
    -- | The main type of event that occurred.
    primaryEventType :: (Core.Maybe Event_PrimaryEventType),
    -- | Extra information for rename type events, such as the old and new names.
    rename :: (Core.Maybe Rename),
    -- | Information specific to the Target object modified by the event.
    target :: (Core.Maybe Target),
    -- | Represents the user responsible for the event.
    user :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
newEvent ::
  Event
newEvent =
  Event
    { additionalEventTypes = Core.Nothing,
      eventTimeMillis = Core.Nothing,
      fromUserDeletion = Core.Nothing,
      move = Core.Nothing,
      permissionChanges = Core.Nothing,
      primaryEventType = Core.Nothing,
      rename = Core.Nothing,
      target = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON Event where
  parseJSON =
    Core.withObject
      "Event"
      ( \o ->
          Event
            Core.<$> (o Core..:? "additionalEventTypes")
            Core.<*> (o Core..:? "eventTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "fromUserDeletion")
            Core.<*> (o Core..:? "move")
            Core.<*> (o Core..:? "permissionChanges")
            Core.<*> (o Core..:? "primaryEventType")
            Core.<*> (o Core..:? "rename")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON Event where
  toJSON Event {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalEventTypes" Core..=) Core.<$> additionalEventTypes,
            ("eventTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> eventTimeMillis,
            ("fromUserDeletion" Core..=) Core.<$> fromUserDeletion,
            ("move" Core..=) Core.<$> move,
            ("permissionChanges" Core..=) Core.<$> permissionChanges,
            ("primaryEventType" Core..=) Core.<$> primaryEventType,
            ("rename" Core..=) Core.<$> rename,
            ("target" Core..=) Core.<$> target,
            ("user" Core..=) Core.<$> user
          ]
      )

-- | The response from the list request. Contains a list of activities and a token to retrieve the next page of results.
--
-- /See:/ 'newListActivitiesResponse' smart constructor.
data ListActivitiesResponse = ListActivitiesResponse
  { -- | List of activities.
    activities :: (Core.Maybe [Activity]),
    -- | Token for the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListActivitiesResponse' with the minimum fields required to make a request.
newListActivitiesResponse ::
  ListActivitiesResponse
newListActivitiesResponse =
  ListActivitiesResponse
    { activities = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListActivitiesResponse where
  parseJSON =
    Core.withObject
      "ListActivitiesResponse"
      ( \o ->
          ListActivitiesResponse
            Core.<$> (o Core..:? "activities")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListActivitiesResponse where
  toJSON ListActivitiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("activities" Core..=) Core.<$> activities,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Contains information about changes in an object\'s parents as a result of a move type event.
--
-- /See:/ 'newMove' smart constructor.
data Move = Move
  { -- | The added parent(s).
    addedParents :: (Core.Maybe [Parent]),
    -- | The removed parent(s).
    removedParents :: (Core.Maybe [Parent])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Move' with the minimum fields required to make a request.
newMove ::
  Move
newMove =
  Move {addedParents = Core.Nothing, removedParents = Core.Nothing}

instance Core.FromJSON Move where
  parseJSON =
    Core.withObject
      "Move"
      ( \o ->
          Move
            Core.<$> (o Core..:? "addedParents")
            Core.<*> (o Core..:? "removedParents")
      )

instance Core.ToJSON Move where
  toJSON Move {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedParents" Core..=) Core.<$> addedParents,
            ("removedParents" Core..=) Core.<$> removedParents
          ]
      )

-- | Contains information about a parent object. For example, a folder in Drive is a parent for all files within it.
--
-- /See:/ 'newParent' smart constructor.
data Parent = Parent
  { -- | The parent\'s ID.
    id :: (Core.Maybe Core.Text),
    -- | Whether this is the root folder.
    isRoot :: (Core.Maybe Core.Bool),
    -- | The parent\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Parent' with the minimum fields required to make a request.
newParent ::
  Parent
newParent =
  Parent
    { id = Core.Nothing,
      isRoot = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Parent where
  parseJSON =
    Core.withObject
      "Parent"
      ( \o ->
          Parent
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "isRoot")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Parent where
  toJSON Parent {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("isRoot" Core..=) Core.<$> isRoot,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Contains information about the permissions and type of access allowed with regards to a Google Drive object. This is a subset of the fields contained in a corresponding Drive Permissions object.
--
-- /See:/ 'newPermission' smart constructor.
data Permission = Permission
  { -- | The name of the user or group the permission applies to.
    name :: (Core.Maybe Core.Text),
    -- | The ID for this permission. Corresponds to the Drive API\'s permission ID returned as part of the Drive Permissions resource.
    permissionId :: (Core.Maybe Core.Text),
    -- | Indicates the Google Drive permissions role. The role determines a user\'s ability to read, write, or comment on the file.
    role' :: (Core.Maybe Permission_Role),
    -- | Indicates how widely permissions are granted.
    type' :: (Core.Maybe Permission_Type),
    -- | The user\'s information if the type is USER.
    user :: (Core.Maybe User),
    -- | Whether the permission requires a link to the file.
    withLink :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
newPermission ::
  Permission
newPermission =
  Permission
    { name = Core.Nothing,
      permissionId = Core.Nothing,
      role' = Core.Nothing,
      type' = Core.Nothing,
      user = Core.Nothing,
      withLink = Core.Nothing
    }

instance Core.FromJSON Permission where
  parseJSON =
    Core.withObject
      "Permission"
      ( \o ->
          Permission
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "permissionId")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "withLink")
      )

instance Core.ToJSON Permission where
  toJSON Permission {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("permissionId" Core..=) Core.<$> permissionId,
            ("role" Core..=) Core.<$> role',
            ("type" Core..=) Core.<$> type',
            ("user" Core..=) Core.<$> user,
            ("withLink" Core..=) Core.<$> withLink
          ]
      )

-- | Contains information about a Drive object\'s permissions that changed as a result of a permissionChange type event.
--
-- /See:/ 'newPermissionChange' smart constructor.
data PermissionChange = PermissionChange
  { -- | Lists all Permission objects added.
    addedPermissions :: (Core.Maybe [Permission]),
    -- | Lists all Permission objects removed.
    removedPermissions :: (Core.Maybe [Permission])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PermissionChange' with the minimum fields required to make a request.
newPermissionChange ::
  PermissionChange
newPermissionChange =
  PermissionChange
    { addedPermissions = Core.Nothing,
      removedPermissions = Core.Nothing
    }

instance Core.FromJSON PermissionChange where
  parseJSON =
    Core.withObject
      "PermissionChange"
      ( \o ->
          PermissionChange
            Core.<$> (o Core..:? "addedPermissions")
            Core.<*> (o Core..:? "removedPermissions")
      )

instance Core.ToJSON PermissionChange where
  toJSON PermissionChange {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedPermissions" Core..=) Core.<$> addedPermissions,
            ("removedPermissions" Core..=) Core.<$> removedPermissions
          ]
      )

-- | Photo information for a user.
--
-- /See:/ 'newPhoto' smart constructor.
newtype Photo = Photo
  { -- | The URL of the photo.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
newPhoto ::
  Photo
newPhoto = Photo {url = Core.Nothing}

instance Core.FromJSON Photo where
  parseJSON =
    Core.withObject
      "Photo"
      (\o -> Photo Core.<$> (o Core..:? "url"))

instance Core.ToJSON Photo where
  toJSON Photo {..} =
    Core.object (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Contains information about a renametype event.
--
-- /See:/ 'newRename' smart constructor.
data Rename = Rename
  { -- | The new title.
    newTitle' :: (Core.Maybe Core.Text),
    -- | The old title.
    oldTitle :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rename' with the minimum fields required to make a request.
newRename ::
  Rename
newRename =
  Rename {newTitle' = Core.Nothing, oldTitle = Core.Nothing}

instance Core.FromJSON Rename where
  parseJSON =
    Core.withObject
      "Rename"
      ( \o ->
          Rename
            Core.<$> (o Core..:? "newTitle")
            Core.<*> (o Core..:? "oldTitle")
      )

instance Core.ToJSON Rename where
  toJSON Rename {..} =
    Core.object
      ( Core.catMaybes
          [ ("newTitle" Core..=) Core.<$> newTitle',
            ("oldTitle" Core..=) Core.<$> oldTitle
          ]
      )

-- | Information about the object modified by the event.
--
-- /See:/ 'newTarget' smart constructor.
data Target = Target
  { -- | The ID of the target. For example, in Google Drive, this is the file or folder ID.
    id :: (Core.Maybe Core.Text),
    -- | The MIME type of the target.
    mimeType :: (Core.Maybe Core.Text),
    -- | The name of the target. For example, in Google Drive, this is the title of the file.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Target' with the minimum fields required to make a request.
newTarget ::
  Target
newTarget =
  Target
    { id = Core.Nothing,
      mimeType = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Target where
  parseJSON =
    Core.withObject
      "Target"
      ( \o ->
          Target
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Target where
  toJSON Target {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A representation of a user.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | A boolean which indicates whether the specified User was deleted. If true, name, photo and permission_id will be omitted.
    isDeleted :: (Core.Maybe Core.Bool),
    -- | Whether the user is the authenticated user.
    isMe :: (Core.Maybe Core.Bool),
    -- | The displayable name of the user.
    name :: (Core.Maybe Core.Text),
    -- | The permission ID associated with this user. Equivalent to the Drive API\'s permission ID for this user, returned as part of the Drive Permissions resource.
    permissionId :: (Core.Maybe Core.Text),
    -- | The profile photo of the user. Not present if the user has no profile photo.
    photo :: (Core.Maybe Photo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { isDeleted = Core.Nothing,
      isMe = Core.Nothing,
      name = Core.Nothing,
      permissionId = Core.Nothing,
      photo = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "isDeleted")
            Core.<*> (o Core..:? "isMe")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "permissionId")
            Core.<*> (o Core..:? "photo")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("isDeleted" Core..=) Core.<$> isDeleted,
            ("isMe" Core..=) Core.<$> isMe,
            ("name" Core..=) Core.<$> name,
            ("permissionId" Core..=) Core.<$> permissionId,
            ("photo" Core..=) Core.<$> photo
          ]
      )
