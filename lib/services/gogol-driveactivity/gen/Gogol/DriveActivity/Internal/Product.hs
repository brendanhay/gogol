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
-- Module      : Gogol.DriveActivity.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DriveActivity.Internal.Product
  ( -- * Action
    Action (..),
    newAction,

    -- * ActionDetail
    ActionDetail (..),
    newActionDetail,

    -- * Actor
    Actor (..),
    newActor,

    -- * Administrator
    Administrator (..),
    newAdministrator,

    -- * AnonymousUser
    AnonymousUser (..),
    newAnonymousUser,

    -- * Anyone
    Anyone (..),
    newAnyone,

    -- * ApplicationReference
    ApplicationReference (..),
    newApplicationReference,

    -- * Assignment
    Assignment (..),
    newAssignment,

    -- * Comment
    Comment (..),
    newComment,

    -- * ConsolidationStrategy
    ConsolidationStrategy (..),
    newConsolidationStrategy,

    -- * Copy
    Copy (..),
    newCopy,

    -- * Create
    Create (..),
    newCreate,

    -- * DataLeakPreventionChange
    DataLeakPreventionChange (..),
    newDataLeakPreventionChange,

    -- * Delete'
    Delete' (..),
    newDelete,

    -- * DeletedUser
    DeletedUser (..),
    newDeletedUser,

    -- * Domain
    Domain (..),
    newDomain,

    -- * Drive
    Drive (..),
    newDrive,

    -- * DriveActivity
    DriveActivity (..),
    newDriveActivity,

    -- * DriveFile
    DriveFile (..),
    newDriveFile,

    -- * DriveFolder
    DriveFolder (..),
    newDriveFolder,

    -- * DriveItem
    DriveItem (..),
    newDriveItem,

    -- * DriveItemReference
    DriveItemReference (..),
    newDriveItemReference,

    -- * DriveReference
    DriveReference (..),
    newDriveReference,

    -- * Edit
    Edit (..),
    newEdit,

    -- * File
    File (..),
    newFile,

    -- * FileComment
    FileComment (..),
    newFileComment,

    -- * Folder
    Folder (..),
    newFolder,

    -- * Group
    Group (..),
    newGroup,

    -- * Impersonation
    Impersonation (..),
    newImpersonation,

    -- * KnownUser
    KnownUser (..),
    newKnownUser,

    -- * Legacy
    Legacy (..),
    newLegacy,

    -- * Move
    Move (..),
    newMove,

    -- * New
    New (..),
    newNew,

    -- * NoConsolidation
    NoConsolidation (..),
    newNoConsolidation,

    -- * Owner
    Owner (..),
    newOwner,

    -- * Permission
    Permission (..),
    newPermission,

    -- * PermissionChange
    PermissionChange (..),
    newPermissionChange,

    -- * Post'
    Post' (..),
    newPost,

    -- * QueryDriveActivityRequest
    QueryDriveActivityRequest (..),
    newQueryDriveActivityRequest,

    -- * QueryDriveActivityResponse
    QueryDriveActivityResponse (..),
    newQueryDriveActivityResponse,

    -- * Rename
    Rename (..),
    newRename,

    -- * Restore
    Restore (..),
    newRestore,

    -- * RestrictionChange
    RestrictionChange (..),
    newRestrictionChange,

    -- * SettingsChange
    SettingsChange (..),
    newSettingsChange,

    -- * Suggestion
    Suggestion (..),
    newSuggestion,

    -- * SystemEvent
    SystemEvent (..),
    newSystemEvent,

    -- * Target
    Target (..),
    newTarget,

    -- * TargetReference
    TargetReference (..),
    newTargetReference,

    -- * TeamDrive
    TeamDrive (..),
    newTeamDrive,

    -- * TeamDriveReference
    TeamDriveReference (..),
    newTeamDriveReference,

    -- * TimeRange
    TimeRange (..),
    newTimeRange,

    -- * UnknownUser
    UnknownUser (..),
    newUnknownUser,

    -- * Upload
    Upload (..),
    newUpload,

    -- * User
    User (..),
    newUser,
  )
where

import Gogol.DriveActivity.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Information about the action.
--
-- /See:/ 'newAction' smart constructor.
data Action = Action
  { -- | The actor responsible for this action (or empty if all actors are responsible).
    actor :: (Core.Maybe Actor),
    -- | The type and detailed information about the action.
    detail :: (Core.Maybe ActionDetail),
    -- | The target this action affects (or empty if affecting all targets). This represents the state of the target immediately after this action occurred.
    target :: (Core.Maybe Target),
    -- | The action occurred over this time range.
    timeRange :: (Core.Maybe TimeRange),
    -- | The action occurred at this specific time.
    timestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
newAction ::
  Action
newAction =
  Action
    { actor = Core.Nothing,
      detail = Core.Nothing,
      target = Core.Nothing,
      timeRange = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON Action where
  parseJSON =
    Core.withObject
      "Action"
      ( \o ->
          Action
            Core.<$> (o Core..:? "actor")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "timeRange")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON Action where
  toJSON Action {..} =
    Core.object
      ( Core.catMaybes
          [ ("actor" Core..=) Core.<$> actor,
            ("detail" Core..=) Core.<$> detail,
            ("target" Core..=) Core.<$> target,
            ("timeRange" Core..=) Core.<$> timeRange,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | Data describing the type and additional information of an action.
--
-- /See:/ 'newActionDetail' smart constructor.
data ActionDetail = ActionDetail
  { -- | A change about comments was made.
    comment :: (Core.Maybe Comment),
    -- | An object was created.
    create :: (Core.Maybe Create),
    -- | An object was deleted.
    delete :: (Core.Maybe Delete'),
    -- | A change happened in data leak prevention status.
    dlpChange :: (Core.Maybe DataLeakPreventionChange),
    -- | An object was edited.
    edit :: (Core.Maybe Edit),
    -- | An object was moved.
    move :: (Core.Maybe Move),
    -- | The permission on an object was changed.
    permissionChange :: (Core.Maybe PermissionChange),
    -- | An object was referenced in an application outside of Drive\/Docs.
    reference :: (Core.Maybe ApplicationReference),
    -- | An object was renamed.
    rename :: (Core.Maybe Rename),
    -- | A deleted object was restored.
    restore :: (Core.Maybe Restore),
    -- | Settings were changed.
    settingsChange :: (Core.Maybe SettingsChange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionDetail' with the minimum fields required to make a request.
newActionDetail ::
  ActionDetail
newActionDetail =
  ActionDetail
    { comment = Core.Nothing,
      create = Core.Nothing,
      delete = Core.Nothing,
      dlpChange = Core.Nothing,
      edit = Core.Nothing,
      move = Core.Nothing,
      permissionChange = Core.Nothing,
      reference = Core.Nothing,
      rename = Core.Nothing,
      restore = Core.Nothing,
      settingsChange = Core.Nothing
    }

instance Core.FromJSON ActionDetail where
  parseJSON =
    Core.withObject
      "ActionDetail"
      ( \o ->
          ActionDetail
            Core.<$> (o Core..:? "comment")
            Core.<*> (o Core..:? "create")
            Core.<*> (o Core..:? "delete")
            Core.<*> (o Core..:? "dlpChange")
            Core.<*> (o Core..:? "edit")
            Core.<*> (o Core..:? "move")
            Core.<*> (o Core..:? "permissionChange")
            Core.<*> (o Core..:? "reference")
            Core.<*> (o Core..:? "rename")
            Core.<*> (o Core..:? "restore")
            Core.<*> (o Core..:? "settingsChange")
      )

instance Core.ToJSON ActionDetail where
  toJSON ActionDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("comment" Core..=) Core.<$> comment,
            ("create" Core..=) Core.<$> create,
            ("delete" Core..=) Core.<$> delete,
            ("dlpChange" Core..=) Core.<$> dlpChange,
            ("edit" Core..=) Core.<$> edit,
            ("move" Core..=) Core.<$> move,
            ("permissionChange" Core..=)
              Core.<$> permissionChange,
            ("reference" Core..=) Core.<$> reference,
            ("rename" Core..=) Core.<$> rename,
            ("restore" Core..=) Core.<$> restore,
            ("settingsChange" Core..=) Core.<$> settingsChange
          ]
      )

-- | The actor of a Drive activity.
--
-- /See:/ 'newActor' smart constructor.
data Actor = Actor
  { -- | An administrator.
    administrator :: (Core.Maybe Administrator),
    -- | An anonymous user.
    anonymous :: (Core.Maybe AnonymousUser),
    -- | An account acting on behalf of another.
    impersonation :: (Core.Maybe Impersonation),
    -- | A non-user actor (i.e. system triggered).
    system :: (Core.Maybe SystemEvent),
    -- | An end user.
    user :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Actor' with the minimum fields required to make a request.
newActor ::
  Actor
newActor =
  Actor
    { administrator = Core.Nothing,
      anonymous = Core.Nothing,
      impersonation = Core.Nothing,
      system = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON Actor where
  parseJSON =
    Core.withObject
      "Actor"
      ( \o ->
          Actor
            Core.<$> (o Core..:? "administrator")
            Core.<*> (o Core..:? "anonymous")
            Core.<*> (o Core..:? "impersonation")
            Core.<*> (o Core..:? "system")
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON Actor where
  toJSON Actor {..} =
    Core.object
      ( Core.catMaybes
          [ ("administrator" Core..=) Core.<$> administrator,
            ("anonymous" Core..=) Core.<$> anonymous,
            ("impersonation" Core..=) Core.<$> impersonation,
            ("system" Core..=) Core.<$> system,
            ("user" Core..=) Core.<$> user
          ]
      )

-- | Empty message representing an administrator.
--
-- /See:/ 'newAdministrator' smart constructor.
data Administrator = Administrator
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Administrator' with the minimum fields required to make a request.
newAdministrator ::
  Administrator
newAdministrator = Administrator

instance Core.FromJSON Administrator where
  parseJSON =
    Core.withObject
      "Administrator"
      (\o -> Core.pure Administrator)

instance Core.ToJSON Administrator where
  toJSON = Core.const Core.emptyObject

-- | Empty message representing an anonymous user or indicating the authenticated user should be anonymized.
--
-- /See:/ 'newAnonymousUser' smart constructor.
data AnonymousUser = AnonymousUser
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnonymousUser' with the minimum fields required to make a request.
newAnonymousUser ::
  AnonymousUser
newAnonymousUser = AnonymousUser

instance Core.FromJSON AnonymousUser where
  parseJSON =
    Core.withObject
      "AnonymousUser"
      (\o -> Core.pure AnonymousUser)

instance Core.ToJSON AnonymousUser where
  toJSON = Core.const Core.emptyObject

-- | Represents any user (including a logged out user).
--
-- /See:/ 'newAnyone' smart constructor.
data Anyone = Anyone
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Anyone' with the minimum fields required to make a request.
newAnyone ::
  Anyone
newAnyone = Anyone

instance Core.FromJSON Anyone where
  parseJSON =
    Core.withObject "Anyone" (\o -> Core.pure Anyone)

instance Core.ToJSON Anyone where
  toJSON = Core.const Core.emptyObject

-- | Activity in applications other than Drive.
--
-- /See:/ 'newApplicationReference' smart constructor.
newtype ApplicationReference = ApplicationReference
  { -- | The reference type corresponding to this event.
    type' :: (Core.Maybe ApplicationReference_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationReference' with the minimum fields required to make a request.
newApplicationReference ::
  ApplicationReference
newApplicationReference = ApplicationReference {type' = Core.Nothing}

instance Core.FromJSON ApplicationReference where
  parseJSON =
    Core.withObject
      "ApplicationReference"
      ( \o ->
          ApplicationReference Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON ApplicationReference where
  toJSON ApplicationReference {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | A comment with an assignment.
--
-- /See:/ 'newAssignment' smart constructor.
data Assignment = Assignment
  { -- | The user to whom the comment was assigned.
    assignedUser :: (Core.Maybe User),
    -- | The sub-type of this event.
    subtype :: (Core.Maybe Assignment_Subtype)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Assignment' with the minimum fields required to make a request.
newAssignment ::
  Assignment
newAssignment = Assignment {assignedUser = Core.Nothing, subtype = Core.Nothing}

instance Core.FromJSON Assignment where
  parseJSON =
    Core.withObject
      "Assignment"
      ( \o ->
          Assignment
            Core.<$> (o Core..:? "assignedUser")
            Core.<*> (o Core..:? "subtype")
      )

instance Core.ToJSON Assignment where
  toJSON Assignment {..} =
    Core.object
      ( Core.catMaybes
          [ ("assignedUser" Core..=) Core.<$> assignedUser,
            ("subtype" Core..=) Core.<$> subtype
          ]
      )

-- | A change about comments on an object.
--
-- /See:/ 'newComment' smart constructor.
data Comment = Comment
  { -- | A change on an assignment.
    assignment :: (Core.Maybe Assignment),
    -- | Users who are mentioned in this comment.
    mentionedUsers :: (Core.Maybe [User]),
    -- | A change on a regular posted comment.
    post :: (Core.Maybe Post'),
    -- | A change on a suggestion.
    suggestion :: (Core.Maybe Suggestion)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
newComment ::
  Comment
newComment =
  Comment
    { assignment = Core.Nothing,
      mentionedUsers = Core.Nothing,
      post = Core.Nothing,
      suggestion = Core.Nothing
    }

instance Core.FromJSON Comment where
  parseJSON =
    Core.withObject
      "Comment"
      ( \o ->
          Comment
            Core.<$> (o Core..:? "assignment")
            Core.<*> (o Core..:? "mentionedUsers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "post")
            Core.<*> (o Core..:? "suggestion")
      )

instance Core.ToJSON Comment where
  toJSON Comment {..} =
    Core.object
      ( Core.catMaybes
          [ ("assignment" Core..=) Core.<$> assignment,
            ("mentionedUsers" Core..=) Core.<$> mentionedUsers,
            ("post" Core..=) Core.<$> post,
            ("suggestion" Core..=) Core.<$> suggestion
          ]
      )

-- | How the individual activities are consolidated. A set of activities may be consolidated into one combined activity if they are related in some way, such as one actor performing the same action on multiple targets, or multiple actors performing the same action on a single target. The strategy defines the rules for which activities are related.
--
-- /See:/ 'newConsolidationStrategy' smart constructor.
data ConsolidationStrategy = ConsolidationStrategy
  { -- | The individual activities are consolidated using the legacy strategy.
    legacy :: (Core.Maybe Legacy),
    -- | The individual activities are not consolidated.
    none :: (Core.Maybe NoConsolidation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsolidationStrategy' with the minimum fields required to make a request.
newConsolidationStrategy ::
  ConsolidationStrategy
newConsolidationStrategy =
  ConsolidationStrategy {legacy = Core.Nothing, none = Core.Nothing}

instance Core.FromJSON ConsolidationStrategy where
  parseJSON =
    Core.withObject
      "ConsolidationStrategy"
      ( \o ->
          ConsolidationStrategy
            Core.<$> (o Core..:? "legacy") Core.<*> (o Core..:? "none")
      )

instance Core.ToJSON ConsolidationStrategy where
  toJSON ConsolidationStrategy {..} =
    Core.object
      ( Core.catMaybes
          [ ("legacy" Core..=) Core.<$> legacy,
            ("none" Core..=) Core.<$> none
          ]
      )

-- | An object was created by copying an existing object.
--
-- /See:/ 'newCopy' smart constructor.
newtype Copy = Copy
  { -- | The original object.
    originalObject :: (Core.Maybe TargetReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Copy' with the minimum fields required to make a request.
newCopy ::
  Copy
newCopy = Copy {originalObject = Core.Nothing}

instance Core.FromJSON Copy where
  parseJSON =
    Core.withObject
      "Copy"
      (\o -> Copy Core.<$> (o Core..:? "originalObject"))

instance Core.ToJSON Copy where
  toJSON Copy {..} =
    Core.object
      ( Core.catMaybes
          [("originalObject" Core..=) Core.<$> originalObject]
      )

-- | An object was created.
--
-- /See:/ 'newCreate' smart constructor.
data Create = Create
  { -- | If present, indicates the object was created by copying an existing Drive object.
    copy :: (Core.Maybe Copy),
    -- | If present, indicates the object was newly created (e.g. as a blank document), not derived from a Drive object or external object.
    new' :: (Core.Maybe New),
    -- | If present, indicates the object originated externally and was uploaded to Drive.
    upload :: (Core.Maybe Upload)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Create' with the minimum fields required to make a request.
newCreate ::
  Create
newCreate =
  Create {copy = Core.Nothing, new' = Core.Nothing, upload = Core.Nothing}

instance Core.FromJSON Create where
  parseJSON =
    Core.withObject
      "Create"
      ( \o ->
          Create
            Core.<$> (o Core..:? "copy")
            Core.<*> (o Core..:? "new")
            Core.<*> (o Core..:? "upload")
      )

instance Core.ToJSON Create where
  toJSON Create {..} =
    Core.object
      ( Core.catMaybes
          [ ("copy" Core..=) Core.<$> copy,
            ("new" Core..=) Core.<$> new',
            ("upload" Core..=) Core.<$> upload
          ]
      )

-- | A change in the object\'s data leak prevention status.
--
-- /See:/ 'newDataLeakPreventionChange' smart constructor.
newtype DataLeakPreventionChange = DataLeakPreventionChange
  { -- | The type of Data Leak Prevention (DLP) change.
    type' :: (Core.Maybe DataLeakPreventionChange_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataLeakPreventionChange' with the minimum fields required to make a request.
newDataLeakPreventionChange ::
  DataLeakPreventionChange
newDataLeakPreventionChange = DataLeakPreventionChange {type' = Core.Nothing}

instance Core.FromJSON DataLeakPreventionChange where
  parseJSON =
    Core.withObject
      "DataLeakPreventionChange"
      ( \o ->
          DataLeakPreventionChange
            Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON DataLeakPreventionChange where
  toJSON DataLeakPreventionChange {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | An object was deleted.
--
-- /See:/ 'newDelete' smart constructor.
newtype Delete' = Delete'
  { -- | The type of delete action taken.
    type' :: (Core.Maybe Delete_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Delete' with the minimum fields required to make a request.
newDelete ::
  Delete'
newDelete = Delete' {type' = Core.Nothing}

instance Core.FromJSON Delete' where
  parseJSON =
    Core.withObject
      "Delete'"
      (\o -> Delete' Core.<$> (o Core..:? "type"))

instance Core.ToJSON Delete' where
  toJSON Delete' {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | A user whose account has since been deleted.
--
-- /See:/ 'newDeletedUser' smart constructor.
data DeletedUser = DeletedUser
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeletedUser' with the minimum fields required to make a request.
newDeletedUser ::
  DeletedUser
newDeletedUser = DeletedUser

instance Core.FromJSON DeletedUser where
  parseJSON =
    Core.withObject
      "DeletedUser"
      (\o -> Core.pure DeletedUser)

instance Core.ToJSON DeletedUser where
  toJSON = Core.const Core.emptyObject

-- | Information about a domain.
--
-- /See:/ 'newDomain' smart constructor.
data Domain = Domain
  { -- | An opaque string used to identify this domain.
    legacyId :: (Core.Maybe Core.Text),
    -- | The name of the domain, e.g. @google.com@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Domain' with the minimum fields required to make a request.
newDomain ::
  Domain
newDomain = Domain {legacyId = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Domain where
  parseJSON =
    Core.withObject
      "Domain"
      ( \o ->
          Domain
            Core.<$> (o Core..:? "legacyId") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Domain where
  toJSON Domain {..} =
    Core.object
      ( Core.catMaybes
          [ ("legacyId" Core..=) Core.<$> legacyId,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Information about a shared drive.
--
-- /See:/ 'newDrive' smart constructor.
data Drive = Drive
  { -- | The resource name of the shared drive. The format is @COLLECTION_ID\/DRIVE_ID@. Clients should not assume a specific collection ID for this resource name.
    name :: (Core.Maybe Core.Text),
    -- | The root of this shared drive.
    root :: (Core.Maybe DriveItem),
    -- | The title of the shared drive.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive' with the minimum fields required to make a request.
newDrive ::
  Drive
newDrive =
  Drive {name = Core.Nothing, root = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON Drive where
  parseJSON =
    Core.withObject
      "Drive"
      ( \o ->
          Drive
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "root")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Drive where
  toJSON Drive {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("root" Core..=) Core.<$> root,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A single Drive activity comprising one or more Actions by one or more Actors on one or more Targets. Some Action groupings occur spontaneously, such as moving an item into a shared folder triggering a permission change. Other groupings of related Actions, such as multiple Actors editing one item or moving multiple files into a new folder, are controlled by the selection of a ConsolidationStrategy in the QueryDriveActivityRequest.
--
-- /See:/ 'newDriveActivity' smart constructor.
data DriveActivity = DriveActivity
  { -- | Details on all actions in this activity.
    actions :: (Core.Maybe [Action]),
    -- | All actor(s) responsible for the activity.
    actors :: (Core.Maybe [Actor]),
    -- | Key information about the primary action for this activity. This is either representative, or the most important, of all actions in the activity, according to the ConsolidationStrategy in the request.
    primaryActionDetail :: (Core.Maybe ActionDetail),
    -- | All Google Drive objects this activity is about (e.g. file, folder, drive). This represents the state of the target immediately after the actions occurred.
    targets :: (Core.Maybe [Target]),
    -- | The activity occurred over this time range.
    timeRange :: (Core.Maybe TimeRange),
    -- | The activity occurred at this specific time.
    timestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveActivity' with the minimum fields required to make a request.
newDriveActivity ::
  DriveActivity
newDriveActivity =
  DriveActivity
    { actions = Core.Nothing,
      actors = Core.Nothing,
      primaryActionDetail = Core.Nothing,
      targets = Core.Nothing,
      timeRange = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON DriveActivity where
  parseJSON =
    Core.withObject
      "DriveActivity"
      ( \o ->
          DriveActivity
            Core.<$> (o Core..:? "actions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "actors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "primaryActionDetail")
            Core.<*> (o Core..:? "targets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "timeRange")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON DriveActivity where
  toJSON DriveActivity {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("actors" Core..=) Core.<$> actors,
            ("primaryActionDetail" Core..=)
              Core.<$> primaryActionDetail,
            ("targets" Core..=) Core.<$> targets,
            ("timeRange" Core..=) Core.<$> timeRange,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | A Drive item which is a file.
--
-- /See:/ 'newDriveFile' smart constructor.
data DriveFile = DriveFile
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFile' with the minimum fields required to make a request.
newDriveFile ::
  DriveFile
newDriveFile = DriveFile

instance Core.FromJSON DriveFile where
  parseJSON =
    Core.withObject
      "DriveFile"
      (\o -> Core.pure DriveFile)

instance Core.ToJSON DriveFile where
  toJSON = Core.const Core.emptyObject

-- | A Drive item which is a folder.
--
-- /See:/ 'newDriveFolder' smart constructor.
newtype DriveFolder = DriveFolder
  { -- | The type of Drive folder.
    type' :: (Core.Maybe DriveFolder_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFolder' with the minimum fields required to make a request.
newDriveFolder ::
  DriveFolder
newDriveFolder = DriveFolder {type' = Core.Nothing}

instance Core.FromJSON DriveFolder where
  parseJSON =
    Core.withObject
      "DriveFolder"
      (\o -> DriveFolder Core.<$> (o Core..:? "type"))

instance Core.ToJSON DriveFolder where
  toJSON DriveFolder {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | A Drive item, such as a file or folder.
--
-- /See:/ 'newDriveItem' smart constructor.
data DriveItem = DriveItem
  { -- | The Drive item is a file.
    driveFile :: (Core.Maybe DriveFile),
    -- | The Drive item is a folder. Includes information about the type of folder.
    driveFolder :: (Core.Maybe DriveFolder),
    -- | This field is deprecated; please use the @driveFile@ field instead.
    file :: (Core.Maybe File),
    -- | This field is deprecated; please use the @driveFolder@ field instead.
    folder :: (Core.Maybe Folder),
    -- | The MIME type of the Drive item. See https:\/\/developers.google.com\/drive\/v3\/web\/mime-types.
    mimeType :: (Core.Maybe Core.Text),
    -- | The target Drive item. The format is @items\/ITEM_ID@.
    name :: (Core.Maybe Core.Text),
    -- | Information about the owner of this Drive item.
    owner :: (Core.Maybe Owner),
    -- | The title of the Drive item.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveItem' with the minimum fields required to make a request.
newDriveItem ::
  DriveItem
newDriveItem =
  DriveItem
    { driveFile = Core.Nothing,
      driveFolder = Core.Nothing,
      file = Core.Nothing,
      folder = Core.Nothing,
      mimeType = Core.Nothing,
      name = Core.Nothing,
      owner = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON DriveItem where
  parseJSON =
    Core.withObject
      "DriveItem"
      ( \o ->
          DriveItem
            Core.<$> (o Core..:? "driveFile")
            Core.<*> (o Core..:? "driveFolder")
            Core.<*> (o Core..:? "file")
            Core.<*> (o Core..:? "folder")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "owner")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON DriveItem where
  toJSON DriveItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("driveFile" Core..=) Core.<$> driveFile,
            ("driveFolder" Core..=) Core.<$> driveFolder,
            ("file" Core..=) Core.<$> file,
            ("folder" Core..=) Core.<$> folder,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("name" Core..=) Core.<$> name,
            ("owner" Core..=) Core.<$> owner,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A lightweight reference to a Drive item, such as a file or folder.
--
-- /See:/ 'newDriveItemReference' smart constructor.
data DriveItemReference = DriveItemReference
  { -- | The Drive item is a file.
    driveFile :: (Core.Maybe DriveFile),
    -- | The Drive item is a folder. Includes information about the type of folder.
    driveFolder :: (Core.Maybe DriveFolder),
    -- | This field is deprecated; please use the @driveFile@ field instead.
    file :: (Core.Maybe File),
    -- | This field is deprecated; please use the @driveFolder@ field instead.
    folder :: (Core.Maybe Folder),
    -- | The target Drive item. The format is @items\/ITEM_ID@.
    name :: (Core.Maybe Core.Text),
    -- | The title of the Drive item.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveItemReference' with the minimum fields required to make a request.
newDriveItemReference ::
  DriveItemReference
newDriveItemReference =
  DriveItemReference
    { driveFile = Core.Nothing,
      driveFolder = Core.Nothing,
      file = Core.Nothing,
      folder = Core.Nothing,
      name = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON DriveItemReference where
  parseJSON =
    Core.withObject
      "DriveItemReference"
      ( \o ->
          DriveItemReference
            Core.<$> (o Core..:? "driveFile")
            Core.<*> (o Core..:? "driveFolder")
            Core.<*> (o Core..:? "file")
            Core.<*> (o Core..:? "folder")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON DriveItemReference where
  toJSON DriveItemReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("driveFile" Core..=) Core.<$> driveFile,
            ("driveFolder" Core..=) Core.<$> driveFolder,
            ("file" Core..=) Core.<$> file,
            ("folder" Core..=) Core.<$> folder,
            ("name" Core..=) Core.<$> name,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A lightweight reference to a shared drive.
--
-- /See:/ 'newDriveReference' smart constructor.
data DriveReference = DriveReference
  { -- | The resource name of the shared drive. The format is @COLLECTION_ID\/DRIVE_ID@. Clients should not assume a specific collection ID for this resource name.
    name :: (Core.Maybe Core.Text),
    -- | The title of the shared drive.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveReference' with the minimum fields required to make a request.
newDriveReference ::
  DriveReference
newDriveReference = DriveReference {name = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON DriveReference where
  parseJSON =
    Core.withObject
      "DriveReference"
      ( \o ->
          DriveReference
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON DriveReference where
  toJSON DriveReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | An empty message indicating an object was edited.
--
-- /See:/ 'newEdit' smart constructor.
data Edit = Edit
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Edit' with the minimum fields required to make a request.
newEdit ::
  Edit
newEdit = Edit

instance Core.FromJSON Edit where
  parseJSON =
    Core.withObject "Edit" (\o -> Core.pure Edit)

instance Core.ToJSON Edit where
  toJSON = Core.const Core.emptyObject

-- | This item is deprecated; please see @DriveFile@ instead.
--
-- /See:/ 'newFile' smart constructor.
data File = File
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
newFile ::
  File
newFile = File

instance Core.FromJSON File where
  parseJSON =
    Core.withObject "File" (\o -> Core.pure File)

instance Core.ToJSON File where
  toJSON = Core.const Core.emptyObject

-- | A comment on a file.
--
-- /See:/ 'newFileComment' smart constructor.
data FileComment = FileComment
  { -- | The comment in the discussion thread. This identifier is an opaque string compatible with the Drive API; see https:\/\/developers.google.com\/drive\/v3\/reference\/comments\/get
    legacyCommentId :: (Core.Maybe Core.Text),
    -- | The discussion thread to which the comment was added. This identifier is an opaque string compatible with the Drive API and references the first comment in a discussion; see https:\/\/developers.google.com\/drive\/v3\/reference\/comments\/get
    legacyDiscussionId :: (Core.Maybe Core.Text),
    -- | The link to the discussion thread containing this comment, for example, @https:\/\/docs.google.com\/DOCUMENT_ID\/edit?disco=THREAD_ID@.
    linkToDiscussion :: (Core.Maybe Core.Text),
    -- | The Drive item containing this comment.
    parent :: (Core.Maybe DriveItem)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileComment' with the minimum fields required to make a request.
newFileComment ::
  FileComment
newFileComment =
  FileComment
    { legacyCommentId = Core.Nothing,
      legacyDiscussionId = Core.Nothing,
      linkToDiscussion = Core.Nothing,
      parent = Core.Nothing
    }

instance Core.FromJSON FileComment where
  parseJSON =
    Core.withObject
      "FileComment"
      ( \o ->
          FileComment
            Core.<$> (o Core..:? "legacyCommentId")
            Core.<*> (o Core..:? "legacyDiscussionId")
            Core.<*> (o Core..:? "linkToDiscussion")
            Core.<*> (o Core..:? "parent")
      )

instance Core.ToJSON FileComment where
  toJSON FileComment {..} =
    Core.object
      ( Core.catMaybes
          [ ("legacyCommentId" Core..=)
              Core.<$> legacyCommentId,
            ("legacyDiscussionId" Core..=)
              Core.<$> legacyDiscussionId,
            ("linkToDiscussion" Core..=)
              Core.<$> linkToDiscussion,
            ("parent" Core..=) Core.<$> parent
          ]
      )

-- | This item is deprecated; please see @DriveFolder@ instead.
--
-- /See:/ 'newFolder' smart constructor.
newtype Folder = Folder
  { -- | This field is deprecated; please see @DriveFolder.type@ instead.
    type' :: (Core.Maybe Folder_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Folder' with the minimum fields required to make a request.
newFolder ::
  Folder
newFolder = Folder {type' = Core.Nothing}

instance Core.FromJSON Folder where
  parseJSON =
    Core.withObject
      "Folder"
      (\o -> Folder Core.<$> (o Core..:? "type"))

instance Core.ToJSON Folder where
  toJSON Folder {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | Information about a group.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group
  { -- | The email address of the group.
    email :: (Core.Maybe Core.Text),
    -- | The title of the group.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup ::
  Group
newGroup = Group {email = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON Group where
  parseJSON =
    Core.withObject
      "Group"
      ( \o ->
          Group
            Core.<$> (o Core..:? "email") Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Group where
  toJSON Group {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Information about an impersonation, where an admin acts on behalf of an end user. Information about the acting admin is not currently available.
--
-- /See:/ 'newImpersonation' smart constructor.
newtype Impersonation = Impersonation
  { -- | The impersonated user.
    impersonatedUser :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Impersonation' with the minimum fields required to make a request.
newImpersonation ::
  Impersonation
newImpersonation = Impersonation {impersonatedUser = Core.Nothing}

instance Core.FromJSON Impersonation where
  parseJSON =
    Core.withObject
      "Impersonation"
      ( \o ->
          Impersonation
            Core.<$> (o Core..:? "impersonatedUser")
      )

instance Core.ToJSON Impersonation where
  toJSON Impersonation {..} =
    Core.object
      ( Core.catMaybes
          [ ("impersonatedUser" Core..=)
              Core.<$> impersonatedUser
          ]
      )

-- | A known user.
--
-- /See:/ 'newKnownUser' smart constructor.
data KnownUser = KnownUser
  { -- | True if this is the user making the request.
    isCurrentUser :: (Core.Maybe Core.Bool),
    -- | The identifier for this user that can be used with the People API to get more information. The format is @people\/ACCOUNT_ID@. See https:\/\/developers.google.com\/people\/.
    personName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KnownUser' with the minimum fields required to make a request.
newKnownUser ::
  KnownUser
newKnownUser =
  KnownUser {isCurrentUser = Core.Nothing, personName = Core.Nothing}

instance Core.FromJSON KnownUser where
  parseJSON =
    Core.withObject
      "KnownUser"
      ( \o ->
          KnownUser
            Core.<$> (o Core..:? "isCurrentUser")
            Core.<*> (o Core..:? "personName")
      )

instance Core.ToJSON KnownUser where
  toJSON KnownUser {..} =
    Core.object
      ( Core.catMaybes
          [ ("isCurrentUser" Core..=) Core.<$> isCurrentUser,
            ("personName" Core..=) Core.<$> personName
          ]
      )

-- | A strategy which consolidates activities using the grouping rules from the legacy V1 Activity API. Similar actions occurring within a window of time can be grouped across multiple targets (such as moving a set of files at once) or multiple actors (such as several users editing the same item). Grouping rules for this strategy are specific to each type of action.
--
-- /See:/ 'newLegacy' smart constructor.
data Legacy = Legacy
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Legacy' with the minimum fields required to make a request.
newLegacy ::
  Legacy
newLegacy = Legacy

instance Core.FromJSON Legacy where
  parseJSON =
    Core.withObject "Legacy" (\o -> Core.pure Legacy)

instance Core.ToJSON Legacy where
  toJSON = Core.const Core.emptyObject

-- | An object was moved.
--
-- /See:/ 'newMove' smart constructor.
data Move = Move
  { -- | The added parent object(s).
    addedParents :: (Core.Maybe [TargetReference]),
    -- | The removed parent object(s).
    removedParents :: (Core.Maybe [TargetReference])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Move' with the minimum fields required to make a request.
newMove ::
  Move
newMove = Move {addedParents = Core.Nothing, removedParents = Core.Nothing}

instance Core.FromJSON Move where
  parseJSON =
    Core.withObject
      "Move"
      ( \o ->
          Move
            Core.<$> (o Core..:? "addedParents" Core..!= Core.mempty)
            Core.<*> (o Core..:? "removedParents" Core..!= Core.mempty)
      )

instance Core.ToJSON Move where
  toJSON Move {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedParents" Core..=) Core.<$> addedParents,
            ("removedParents" Core..=) Core.<$> removedParents
          ]
      )

-- | An object was created from scratch.
--
-- /See:/ 'newNew' smart constructor.
data New = New
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'New' with the minimum fields required to make a request.
newNew ::
  New
newNew = New

instance Core.FromJSON New where
  parseJSON =
    Core.withObject "New" (\o -> Core.pure New)

instance Core.ToJSON New where
  toJSON = Core.const Core.emptyObject

-- | A strategy which does no consolidation of individual activities.
--
-- /See:/ 'newNoConsolidation' smart constructor.
data NoConsolidation = NoConsolidation
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NoConsolidation' with the minimum fields required to make a request.
newNoConsolidation ::
  NoConsolidation
newNoConsolidation = NoConsolidation

instance Core.FromJSON NoConsolidation where
  parseJSON =
    Core.withObject
      "NoConsolidation"
      (\o -> Core.pure NoConsolidation)

instance Core.ToJSON NoConsolidation where
  toJSON = Core.const Core.emptyObject

-- | Information about the owner of a Drive item.
--
-- /See:/ 'newOwner' smart constructor.
data Owner = Owner
  { -- | The domain of the Drive item owner.
    domain :: (Core.Maybe Domain),
    -- | The drive that owns the item.
    drive :: (Core.Maybe DriveReference),
    -- | This field is deprecated; please use the @drive@ field instead.
    teamDrive :: (Core.Maybe TeamDriveReference),
    -- | The user that owns the Drive item.
    user :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Owner' with the minimum fields required to make a request.
newOwner ::
  Owner
newOwner =
  Owner
    { domain = Core.Nothing,
      drive = Core.Nothing,
      teamDrive = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON Owner where
  parseJSON =
    Core.withObject
      "Owner"
      ( \o ->
          Owner
            Core.<$> (o Core..:? "domain")
            Core.<*> (o Core..:? "drive")
            Core.<*> (o Core..:? "teamDrive")
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON Owner where
  toJSON Owner {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("drive" Core..=) Core.<$> drive,
            ("teamDrive" Core..=) Core.<$> teamDrive,
            ("user" Core..=) Core.<$> user
          ]
      )

-- | The permission setting of an object.
--
-- /See:/ 'newPermission' smart constructor.
data Permission = Permission
  { -- | If true, the item can be discovered (e.g. in the user\'s \"Shared with me\" collection) without needing a link to the item.
    allowDiscovery :: (Core.Maybe Core.Bool),
    -- | If set, this permission applies to anyone, even logged out users.
    anyone :: (Core.Maybe Anyone),
    -- | The domain to whom this permission applies.
    domain :: (Core.Maybe Domain),
    -- | The group to whom this permission applies.
    group' :: (Core.Maybe Group),
    -- | Indicates the <https://developers.google.com/drive/web/manage-sharing#roles Google Drive permissions role>. The role determines a user\'s ability to read, write, and comment on items.
    role' :: (Core.Maybe Permission_Role),
    -- | The user to whom this permission applies.
    user :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
newPermission ::
  Permission
newPermission =
  Permission
    { allowDiscovery = Core.Nothing,
      anyone = Core.Nothing,
      domain = Core.Nothing,
      group' = Core.Nothing,
      role' = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON Permission where
  parseJSON =
    Core.withObject
      "Permission"
      ( \o ->
          Permission
            Core.<$> (o Core..:? "allowDiscovery")
            Core.<*> (o Core..:? "anyone")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "group")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON Permission where
  toJSON Permission {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowDiscovery" Core..=) Core.<$> allowDiscovery,
            ("anyone" Core..=) Core.<$> anyone,
            ("domain" Core..=) Core.<$> domain,
            ("group" Core..=) Core.<$> group',
            ("role" Core..=) Core.<$> role',
            ("user" Core..=) Core.<$> user
          ]
      )

-- | A change of the permission setting on an item.
--
-- /See:/ 'newPermissionChange' smart constructor.
data PermissionChange = PermissionChange
  { -- | The set of permissions added by this change.
    addedPermissions :: (Core.Maybe [Permission]),
    -- | The set of permissions removed by this change.
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
            Core.<$> (o Core..:? "addedPermissions" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "removedPermissions"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON PermissionChange where
  toJSON PermissionChange {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedPermissions" Core..=)
              Core.<$> addedPermissions,
            ("removedPermissions" Core..=)
              Core.<$> removedPermissions
          ]
      )

-- | A regular posted comment.
--
-- /See:/ 'newPost' smart constructor.
newtype Post' = Post'
  { -- | The sub-type of this event.
    subtype :: (Core.Maybe Post_Subtype)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Post' with the minimum fields required to make a request.
newPost ::
  Post'
newPost = Post' {subtype = Core.Nothing}

instance Core.FromJSON Post' where
  parseJSON =
    Core.withObject
      "Post'"
      (\o -> Post' Core.<$> (o Core..:? "subtype"))

instance Core.ToJSON Post' where
  toJSON Post' {..} =
    Core.object
      ( Core.catMaybes
          [("subtype" Core..=) Core.<$> subtype]
      )

-- | The request message for querying Drive activity.
--
-- /See:/ 'newQueryDriveActivityRequest' smart constructor.
data QueryDriveActivityRequest = QueryDriveActivityRequest
  { -- | Return activities for this Drive folder and all children and descendants. The format is @items\/ITEM_ID@.
    ancestorName :: (Core.Maybe Core.Text),
    -- | Details on how to consolidate related actions that make up the activity. If not set, then related actions are not consolidated.
    consolidationStrategy :: (Core.Maybe ConsolidationStrategy),
    -- | The filtering for items returned from this query request. The format of the filter string is a sequence of expressions, joined by an optional \"AND\", where each expression is of the form \"field operator value\". Supported fields: - @time@: Uses numerical operators on date values either in terms of milliseconds since Jan 1, 1970 or in RFC 3339 format. Examples: - @time > 1452409200000 AND time \<= 1492812924310@ - @time >= \"2016-01-10T01:02:03-05:00\"@ - @detail.action_detail_case@: Uses the \"has\" operator (:) and either a singular value or a list of allowed action types enclosed in parentheses. Examples: - @detail.action_detail_case: RENAME@ - @detail.action_detail_case:(CREATE EDIT)@ - @-detail.action_detail_case:MOVE@
    filter :: (Core.Maybe Core.Text),
    -- | Return activities for this Drive item. The format is @items\/ITEM_ID@.
    itemName :: (Core.Maybe Core.Text),
    -- | The miminum number of activities desired in the response; the server will attempt to return at least this quanitity. The server may also return fewer activities if it has a partial response ready before the request times out. If not set, a default value is used.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The token identifying which page of results to return. Set this to the next/page/token value returned from a previous query to obtain the following page of results. If not set, the first page of results will be returned.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryDriveActivityRequest' with the minimum fields required to make a request.
newQueryDriveActivityRequest ::
  QueryDriveActivityRequest
newQueryDriveActivityRequest =
  QueryDriveActivityRequest
    { ancestorName = Core.Nothing,
      consolidationStrategy = Core.Nothing,
      filter = Core.Nothing,
      itemName = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing
    }

instance Core.FromJSON QueryDriveActivityRequest where
  parseJSON =
    Core.withObject
      "QueryDriveActivityRequest"
      ( \o ->
          QueryDriveActivityRequest
            Core.<$> (o Core..:? "ancestorName")
            Core.<*> (o Core..:? "consolidationStrategy")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "itemName")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
      )

instance Core.ToJSON QueryDriveActivityRequest where
  toJSON QueryDriveActivityRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("ancestorName" Core..=) Core.<$> ancestorName,
            ("consolidationStrategy" Core..=)
              Core.<$> consolidationStrategy,
            ("filter" Core..=) Core.<$> filter,
            ("itemName" Core..=) Core.<$> itemName,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken
          ]
      )

-- | Response message for querying Drive activity.
--
-- /See:/ 'newQueryDriveActivityResponse' smart constructor.
data QueryDriveActivityResponse = QueryDriveActivityResponse
  { -- | List of activity requested.
    activities :: (Core.Maybe [DriveActivity]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryDriveActivityResponse' with the minimum fields required to make a request.
newQueryDriveActivityResponse ::
  QueryDriveActivityResponse
newQueryDriveActivityResponse =
  QueryDriveActivityResponse
    { activities = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON QueryDriveActivityResponse where
  parseJSON =
    Core.withObject
      "QueryDriveActivityResponse"
      ( \o ->
          QueryDriveActivityResponse
            Core.<$> (o Core..:? "activities" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON QueryDriveActivityResponse where
  toJSON QueryDriveActivityResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("activities" Core..=) Core.<$> activities,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An object was renamed.
--
-- /See:/ 'newRename' smart constructor.
data Rename = Rename
  { -- | The new title of the drive object.
    newTitle' :: (Core.Maybe Core.Text),
    -- | The previous title of the drive object.
    oldTitle :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rename' with the minimum fields required to make a request.
newRename ::
  Rename
newRename = Rename {newTitle' = Core.Nothing, oldTitle = Core.Nothing}

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

-- | A deleted object was restored.
--
-- /See:/ 'newRestore' smart constructor.
newtype Restore = Restore
  { -- | The type of restore action taken.
    type' :: (Core.Maybe Restore_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Restore' with the minimum fields required to make a request.
newRestore ::
  Restore
newRestore = Restore {type' = Core.Nothing}

instance Core.FromJSON Restore where
  parseJSON =
    Core.withObject
      "Restore"
      (\o -> Restore Core.<$> (o Core..:? "type"))

instance Core.ToJSON Restore where
  toJSON Restore {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | Information about restriction policy changes to a feature.
--
-- /See:/ 'newRestrictionChange' smart constructor.
data RestrictionChange = RestrictionChange
  { -- | The feature which had a change in restriction policy.
    feature :: (Core.Maybe RestrictionChange_Feature),
    -- | The restriction in place after the change.
    newRestriction' :: (Core.Maybe RestrictionChange_NewRestriction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestrictionChange' with the minimum fields required to make a request.
newRestrictionChange ::
  RestrictionChange
newRestrictionChange =
  RestrictionChange {feature = Core.Nothing, newRestriction' = Core.Nothing}

instance Core.FromJSON RestrictionChange where
  parseJSON =
    Core.withObject
      "RestrictionChange"
      ( \o ->
          RestrictionChange
            Core.<$> (o Core..:? "feature")
            Core.<*> (o Core..:? "newRestriction")
      )

instance Core.ToJSON RestrictionChange where
  toJSON RestrictionChange {..} =
    Core.object
      ( Core.catMaybes
          [ ("feature" Core..=) Core.<$> feature,
            ("newRestriction" Core..=) Core.<$> newRestriction'
          ]
      )

-- | Information about settings changes.
--
-- /See:/ 'newSettingsChange' smart constructor.
newtype SettingsChange = SettingsChange
  { -- | The set of changes made to restrictions.
    restrictionChanges :: (Core.Maybe [RestrictionChange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SettingsChange' with the minimum fields required to make a request.
newSettingsChange ::
  SettingsChange
newSettingsChange = SettingsChange {restrictionChanges = Core.Nothing}

instance Core.FromJSON SettingsChange where
  parseJSON =
    Core.withObject
      "SettingsChange"
      ( \o ->
          SettingsChange
            Core.<$> ( o Core..:? "restrictionChanges"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON SettingsChange where
  toJSON SettingsChange {..} =
    Core.object
      ( Core.catMaybes
          [ ("restrictionChanges" Core..=)
              Core.<$> restrictionChanges
          ]
      )

-- | A suggestion.
--
-- /See:/ 'newSuggestion' smart constructor.
newtype Suggestion = Suggestion
  { -- | The sub-type of this event.
    subtype :: (Core.Maybe Suggestion_Subtype)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Suggestion' with the minimum fields required to make a request.
newSuggestion ::
  Suggestion
newSuggestion = Suggestion {subtype = Core.Nothing}

instance Core.FromJSON Suggestion where
  parseJSON =
    Core.withObject
      "Suggestion"
      (\o -> Suggestion Core.<$> (o Core..:? "subtype"))

instance Core.ToJSON Suggestion where
  toJSON Suggestion {..} =
    Core.object
      ( Core.catMaybes
          [("subtype" Core..=) Core.<$> subtype]
      )

-- | Event triggered by system operations instead of end users.
--
-- /See:/ 'newSystemEvent' smart constructor.
newtype SystemEvent = SystemEvent
  { -- | The type of the system event that may triggered activity.
    type' :: (Core.Maybe SystemEvent_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemEvent' with the minimum fields required to make a request.
newSystemEvent ::
  SystemEvent
newSystemEvent = SystemEvent {type' = Core.Nothing}

instance Core.FromJSON SystemEvent where
  parseJSON =
    Core.withObject
      "SystemEvent"
      (\o -> SystemEvent Core.<$> (o Core..:? "type"))

instance Core.ToJSON SystemEvent where
  toJSON SystemEvent {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | Information about the target of activity.
--
-- /See:/ 'newTarget' smart constructor.
data Target = Target
  { -- | The target is a shared drive.
    drive :: (Core.Maybe Drive),
    -- | The target is a Drive item.
    driveItem :: (Core.Maybe DriveItem),
    -- | The target is a comment on a Drive file.
    fileComment :: (Core.Maybe FileComment),
    -- | This field is deprecated; please use the @drive@ field instead.
    teamDrive :: (Core.Maybe TeamDrive)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Target' with the minimum fields required to make a request.
newTarget ::
  Target
newTarget =
  Target
    { drive = Core.Nothing,
      driveItem = Core.Nothing,
      fileComment = Core.Nothing,
      teamDrive = Core.Nothing
    }

instance Core.FromJSON Target where
  parseJSON =
    Core.withObject
      "Target"
      ( \o ->
          Target
            Core.<$> (o Core..:? "drive")
            Core.<*> (o Core..:? "driveItem")
            Core.<*> (o Core..:? "fileComment")
            Core.<*> (o Core..:? "teamDrive")
      )

instance Core.ToJSON Target where
  toJSON Target {..} =
    Core.object
      ( Core.catMaybes
          [ ("drive" Core..=) Core.<$> drive,
            ("driveItem" Core..=) Core.<$> driveItem,
            ("fileComment" Core..=) Core.<$> fileComment,
            ("teamDrive" Core..=) Core.<$> teamDrive
          ]
      )

-- | A lightweight reference to the target of activity.
--
-- /See:/ 'newTargetReference' smart constructor.
data TargetReference = TargetReference
  { -- | The target is a shared drive.
    drive :: (Core.Maybe DriveReference),
    -- | The target is a Drive item.
    driveItem :: (Core.Maybe DriveItemReference),
    -- | This field is deprecated; please use the @drive@ field instead.
    teamDrive :: (Core.Maybe TeamDriveReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetReference' with the minimum fields required to make a request.
newTargetReference ::
  TargetReference
newTargetReference =
  TargetReference
    { drive = Core.Nothing,
      driveItem = Core.Nothing,
      teamDrive = Core.Nothing
    }

instance Core.FromJSON TargetReference where
  parseJSON =
    Core.withObject
      "TargetReference"
      ( \o ->
          TargetReference
            Core.<$> (o Core..:? "drive")
            Core.<*> (o Core..:? "driveItem")
            Core.<*> (o Core..:? "teamDrive")
      )

instance Core.ToJSON TargetReference where
  toJSON TargetReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("drive" Core..=) Core.<$> drive,
            ("driveItem" Core..=) Core.<$> driveItem,
            ("teamDrive" Core..=) Core.<$> teamDrive
          ]
      )

-- | This item is deprecated; please see @Drive@ instead.
--
-- /See:/ 'newTeamDrive' smart constructor.
data TeamDrive = TeamDrive
  { -- | This field is deprecated; please see @Drive.name@ instead.
    name :: (Core.Maybe Core.Text),
    -- | This field is deprecated; please see @Drive.root@ instead.
    root :: (Core.Maybe DriveItem),
    -- | This field is deprecated; please see @Drive.title@ instead.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive' with the minimum fields required to make a request.
newTeamDrive ::
  TeamDrive
newTeamDrive =
  TeamDrive {name = Core.Nothing, root = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON TeamDrive where
  parseJSON =
    Core.withObject
      "TeamDrive"
      ( \o ->
          TeamDrive
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "root")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON TeamDrive where
  toJSON TeamDrive {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("root" Core..=) Core.<$> root,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | This item is deprecated; please see @DriveReference@ instead.
--
-- /See:/ 'newTeamDriveReference' smart constructor.
data TeamDriveReference = TeamDriveReference
  { -- | This field is deprecated; please see @DriveReference.name@ instead.
    name :: (Core.Maybe Core.Text),
    -- | This field is deprecated; please see @DriveReference.title@ instead.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDriveReference' with the minimum fields required to make a request.
newTeamDriveReference ::
  TeamDriveReference
newTeamDriveReference =
  TeamDriveReference {name = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON TeamDriveReference where
  parseJSON =
    Core.withObject
      "TeamDriveReference"
      ( \o ->
          TeamDriveReference
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON TeamDriveReference where
  toJSON TeamDriveReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Information about time ranges.
--
-- /See:/ 'newTimeRange' smart constructor.
data TimeRange = TimeRange
  { -- | The end of the time range.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The start of the time range.
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeRange' with the minimum fields required to make a request.
newTimeRange ::
  TimeRange
newTimeRange = TimeRange {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimeRange where
  parseJSON =
    Core.withObject
      "TimeRange"
      ( \o ->
          TimeRange
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimeRange where
  toJSON TimeRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | A user about whom nothing is currently known.
--
-- /See:/ 'newUnknownUser' smart constructor.
data UnknownUser = UnknownUser
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnknownUser' with the minimum fields required to make a request.
newUnknownUser ::
  UnknownUser
newUnknownUser = UnknownUser

instance Core.FromJSON UnknownUser where
  parseJSON =
    Core.withObject
      "UnknownUser"
      (\o -> Core.pure UnknownUser)

instance Core.ToJSON UnknownUser where
  toJSON = Core.const Core.emptyObject

-- | An object was uploaded into Drive.
--
-- /See:/ 'newUpload' smart constructor.
data Upload = Upload
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Upload' with the minimum fields required to make a request.
newUpload ::
  Upload
newUpload = Upload

instance Core.FromJSON Upload where
  parseJSON =
    Core.withObject "Upload" (\o -> Core.pure Upload)

instance Core.ToJSON Upload where
  toJSON = Core.const Core.emptyObject

-- | Information about an end user.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | A user whose account has since been deleted.
    deletedUser :: (Core.Maybe DeletedUser),
    -- | A known user.
    knownUser :: (Core.Maybe KnownUser),
    -- | A user about whom nothing is currently known.
    unknownUser :: (Core.Maybe UnknownUser)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { deletedUser = Core.Nothing,
      knownUser = Core.Nothing,
      unknownUser = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "deletedUser")
            Core.<*> (o Core..:? "knownUser")
            Core.<*> (o Core..:? "unknownUser")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("deletedUser" Core..=) Core.<$> deletedUser,
            ("knownUser" Core..=) Core.<$> knownUser,
            ("unknownUser" Core..=) Core.<$> unknownUser
          ]
      )
