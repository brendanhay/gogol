{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DriveActivity
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a historical view of activity in Google Drive.
--
-- /See:/ <https://developers.google.com/drive/activity/ Drive Activity API Reference>
module Network.Google.DriveActivity
    (
    -- * Service Configuration
      driveActivityService

    -- * OAuth Scopes
    , driveActivityReadOnlyScope
    , driveActivityScope

    -- * API Declaration
    , DriveActivityAPI

    -- * Resources

    -- ** driveactivity.activity.query
    , module Network.Google.Resource.DriveActivity.Activity.Query

    -- * Types

    -- ** Suggestion
    , Suggestion
    , suggestion
    , sSubtype

    -- ** Impersonation
    , Impersonation
    , impersonation
    , iImpersonatedUser

    -- ** Edit
    , Edit
    , edit

    -- ** ActionDetail
    , ActionDetail
    , actionDetail
    , adEdit
    , adPermissionChange
    , adRestore
    , adReference
    , adCreate
    , adRename
    , adComment
    , adSettingsChange
    , adDlpChange
    , adDelete
    , adMove

    -- ** PermissionRole
    , PermissionRole (..)

    -- ** Group
    , Group
    , group'
    , gEmail
    , gTitle

    -- ** TimeRange
    , TimeRange
    , timeRange
    , trStartTime
    , trEndTime

    -- ** RestrictionChangeNewRestriction
    , RestrictionChangeNewRestriction (..)

    -- ** QueryDriveActivityRequest
    , QueryDriveActivityRequest
    , queryDriveActivityRequest
    , qdarAncestorName
    , qdarItemName
    , qdarConsolidationStrategy
    , qdarFilter
    , qdarPageToken
    , qdarPageSize

    -- ** DriveItemReference
    , DriveItemReference
    , driveItemReference
    , dirFolder
    , dirName
    , dirTitle
    , dirFile

    -- ** KnownUser
    , KnownUser
    , knownUser
    , kuPersonName
    , kuIsCurrentUser

    -- ** TargetReference
    , TargetReference
    , targetReference
    , trTeamDrive
    , trDriveItem

    -- ** Copy
    , Copy
    , copy
    , cOriginalObject

    -- ** PermissionChange
    , PermissionChange
    , permissionChange
    , pcAddedPermissions
    , pcRemovedPermissions

    -- ** QueryDriveActivityResponse
    , QueryDriveActivityResponse
    , queryDriveActivityResponse
    , qdarNextPageToken
    , qdarActivities

    -- ** Post'
    , Post'
    , post
    , pSubtype

    -- ** Restore
    , Restore
    , restore
    , rType

    -- ** Domain
    , Domain
    , domain
    , dLegacyId
    , dName

    -- ** Administrator
    , Administrator
    , administrator

    -- ** DataLeakPreventionChange
    , DataLeakPreventionChange
    , dataLeakPreventionChange
    , dlpcType

    -- ** Actor
    , Actor
    , actor
    , aImpersonation
    , aSystem
    , aAdministrator
    , aUser
    , aAnonymous

    -- ** Folder
    , Folder
    , folder
    , fType

    -- ** RestrictionChangeFeature
    , RestrictionChangeFeature (..)

    -- ** Action
    , Action
    , action
    , aTimeRange
    , aActor
    , aTimestamp
    , aTarget
    , aDetail

    -- ** TeamDrive
    , TeamDrive
    , teamDrive
    , tdRoot
    , tdName
    , tdTitle

    -- ** UnknownUser
    , UnknownUser
    , unknownUser

    -- ** Owner
    , Owner
    , owner
    , oDomain
    , oTeamDrive
    , oUser

    -- ** SystemEventType
    , SystemEventType (..)

    -- ** ApplicationReference
    , ApplicationReference
    , applicationReference
    , arType

    -- ** DeleteType
    , DeleteType (..)

    -- ** ConsolidationStrategy
    , ConsolidationStrategy
    , consolidationStrategy
    , csNone
    , csLegacy

    -- ** User
    , User
    , user
    , uKnownUser
    , uUnknownUser
    , uDeletedUser

    -- ** DeletedUser
    , DeletedUser
    , deletedUser

    -- ** Create
    , Create
    , create
    , cCopy
    , cNew
    , cUpload

    -- ** PostSubtype
    , PostSubtype (..)

    -- ** New
    , New
    , new

    -- ** AssignmentSubtype
    , AssignmentSubtype (..)

    -- ** TeamDriveReference
    , TeamDriveReference
    , teamDriveReference
    , tdrName
    , tdrTitle

    -- ** Xgafv
    , Xgafv (..)

    -- ** AnonymousUser
    , AnonymousUser
    , anonymousUser

    -- ** Anyone
    , Anyone
    , anyone

    -- ** RestrictionChange
    , RestrictionChange
    , restrictionChange
    , rcFeature
    , rcNewRestriction

    -- ** Legacy
    , Legacy
    , legacy

    -- ** FileComment
    , FileComment
    , fileComment
    , fcParent
    , fcLegacyDiscussionId
    , fcLegacyCommentId
    , fcLinkToDiscussion

    -- ** RestoreType
    , RestoreType (..)

    -- ** Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- ** SuggestionSubtype
    , SuggestionSubtype (..)

    -- ** Upload
    , Upload
    , upload

    -- ** NoConsolidation
    , NoConsolidation
    , noConsolidation

    -- ** Assignment
    , Assignment
    , assignment
    , aSubtype

    -- ** SettingsChange
    , SettingsChange
    , settingsChange
    , scRestrictionChanges

    -- ** Comment
    , Comment
    , comment
    , cSuggestion
    , cPost
    , cMentionedUsers
    , cAssignment

    -- ** Permission
    , Permission
    , permission
    , pGroup
    , pDomain
    , pUser
    , pRole
    , pAnyone
    , pAllowDiscovery

    -- ** DataLeakPreventionChangeType
    , DataLeakPreventionChangeType (..)

    -- ** File
    , File
    , file

    -- ** FolderType
    , FolderType (..)

    -- ** Delete'
    , Delete'
    , delete'
    , dType

    -- ** Target
    , Target
    , target
    , tTeamDrive
    , tFileComment
    , tDriveItem

    -- ** Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents

    -- ** ApplicationReferenceType
    , ApplicationReferenceType (..)

    -- ** DriveActivity
    , DriveActivity
    , driveActivity
    , daTimeRange
    , daActions
    , daActors
    , daTargets
    , daPrimaryActionDetail
    , daTimestamp

    -- ** DriveItem
    , DriveItem
    , driveItem
    , diFolder
    , diOwner
    , diMimeType
    , diName
    , diTitle
    , diFile

    -- ** SystemEvent
    , SystemEvent
    , systemEvent
    , seType
    ) where

import           Network.Google.DriveActivity.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DriveActivity.Activity.Query

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Drive Activity API service.
type DriveActivityAPI = ActivityQueryResource
