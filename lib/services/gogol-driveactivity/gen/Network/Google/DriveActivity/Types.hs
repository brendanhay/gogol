{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DriveActivity.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DriveActivity.Types
    (
    -- * Service Configuration
      driveActivityService

    -- * OAuth Scopes
    , driveActivityReadOnlyScope
    , driveActivityScope

    -- * Suggestion
    , Suggestion
    , suggestion
    , sSubtype

    -- * Drive
    , Drive
    , drive
    , dRoot
    , dName
    , dTitle

    -- * Impersonation
    , Impersonation
    , impersonation
    , iImpersonatedUser

    -- * Edit
    , Edit
    , edit

    -- * ActionDetail
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

    -- * DriveReference
    , DriveReference
    , driveReference
    , drName
    , drTitle

    -- * PermissionRole
    , PermissionRole (..)

    -- * Group
    , Group
    , group'
    , gEmail
    , gTitle

    -- * DriveFile
    , DriveFile
    , driveFile

    -- * TimeRange
    , TimeRange
    , timeRange
    , trStartTime
    , trEndTime

    -- * RestrictionChangeNewRestriction
    , RestrictionChangeNewRestriction (..)

    -- * DriveFolderType
    , DriveFolderType (..)

    -- * QueryDriveActivityRequest
    , QueryDriveActivityRequest
    , queryDriveActivityRequest
    , qdarAncestorName
    , qdarItemName
    , qdarConsolidationStrategy
    , qdarFilter
    , qdarPageToken
    , qdarPageSize

    -- * DriveItemReference
    , DriveItemReference
    , driveItemReference
    , dirDriveFile
    , dirFolder
    , dirName
    , dirDriveFolder
    , dirTitle
    , dirFile

    -- * KnownUser
    , KnownUser
    , knownUser
    , kuPersonName
    , kuIsCurrentUser

    -- * TargetReference
    , TargetReference
    , targetReference
    , trDrive
    , trTeamDrive
    , trDriveItem

    -- * Copy
    , Copy
    , copy
    , cOriginalObject

    -- * PermissionChange
    , PermissionChange
    , permissionChange
    , pcAddedPermissions
    , pcRemovedPermissions

    -- * QueryDriveActivityResponse
    , QueryDriveActivityResponse
    , queryDriveActivityResponse
    , qdarNextPageToken
    , qdarActivities

    -- * Post'
    , Post'
    , post
    , pSubtype

    -- * Restore
    , Restore
    , restore
    , rType

    -- * Domain
    , Domain
    , domain
    , domLegacyId
    , domName

    -- * Administrator
    , Administrator
    , administrator

    -- * DataLeakPreventionChange
    , DataLeakPreventionChange
    , dataLeakPreventionChange
    , dlpcType

    -- * Actor
    , Actor
    , actor
    , aImpersonation
    , aSystem
    , aAdministrator
    , aUser
    , aAnonymous

    -- * Folder
    , Folder
    , folder
    , fType

    -- * RestrictionChangeFeature
    , RestrictionChangeFeature (..)

    -- * Action
    , Action
    , action
    , aTimeRange
    , aActor
    , aTimestamp
    , aTarget
    , aDetail

    -- * TeamDrive
    , TeamDrive
    , teamDrive
    , tdRoot
    , tdName
    , tdTitle

    -- * UnknownUser
    , UnknownUser
    , unknownUser

    -- * Owner
    , Owner
    , owner
    , oDrive
    , oDomain
    , oTeamDrive
    , oUser

    -- * SystemEventType
    , SystemEventType (..)

    -- * ApplicationReference
    , ApplicationReference
    , applicationReference
    , arType

    -- * DeleteType
    , DeleteType (..)

    -- * ConsolidationStrategy
    , ConsolidationStrategy
    , consolidationStrategy
    , csNone
    , csLegacy

    -- * User
    , User
    , user
    , uKnownUser
    , uUnknownUser
    , uDeletedUser

    -- * DeletedUser
    , DeletedUser
    , deletedUser

    -- * Create
    , Create
    , create
    , cCopy
    , cNew
    , cUpload

    -- * PostSubtype
    , PostSubtype (..)

    -- * New
    , New
    , new

    -- * AssignmentSubtype
    , AssignmentSubtype (..)

    -- * TeamDriveReference
    , TeamDriveReference
    , teamDriveReference
    , tdrName
    , tdrTitle

    -- * Xgafv
    , Xgafv (..)

    -- * AnonymousUser
    , AnonymousUser
    , anonymousUser

    -- * DriveFolder
    , DriveFolder
    , driveFolder
    , dfType

    -- * Anyone
    , Anyone
    , anyone

    -- * RestrictionChange
    , RestrictionChange
    , restrictionChange
    , rcFeature
    , rcNewRestriction

    -- * Legacy
    , Legacy
    , legacy

    -- * FileComment
    , FileComment
    , fileComment
    , fcParent
    , fcLegacyDiscussionId
    , fcLegacyCommentId
    , fcLinkToDiscussion

    -- * RestoreType
    , RestoreType (..)

    -- * Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- * SuggestionSubtype
    , SuggestionSubtype (..)

    -- * Upload
    , Upload
    , upload

    -- * NoConsolidation
    , NoConsolidation
    , noConsolidation

    -- * Assignment
    , Assignment
    , assignment
    , aAssignedUser
    , aSubtype

    -- * SettingsChange
    , SettingsChange
    , settingsChange
    , scRestrictionChanges

    -- * Comment
    , Comment
    , comment
    , cSuggestion
    , cPost
    , cMentionedUsers
    , cAssignment

    -- * Permission
    , Permission
    , permission
    , pGroup
    , pDomain
    , pUser
    , pRole
    , pAnyone
    , pAllowDiscovery

    -- * DataLeakPreventionChangeType
    , DataLeakPreventionChangeType (..)

    -- * File
    , File
    , file

    -- * FolderType
    , FolderType (..)

    -- * Delete'
    , Delete'
    , delete'
    , dType

    -- * Target
    , Target
    , target
    , tDrive
    , tTeamDrive
    , tFileComment
    , tDriveItem

    -- * Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents

    -- * ApplicationReferenceType
    , ApplicationReferenceType (..)

    -- * DriveActivity
    , DriveActivity
    , driveActivity
    , daTimeRange
    , daActions
    , daActors
    , daTargets
    , daPrimaryActionDetail
    , daTimestamp

    -- * DriveItem
    , DriveItem
    , driveItem
    , diDriveFile
    , diFolder
    , diOwner
    , diMimeType
    , diName
    , diDriveFolder
    , diTitle
    , diFile

    -- * SystemEvent
    , SystemEvent
    , systemEvent
    , seType
    ) where

import Network.Google.DriveActivity.Types.Product
import Network.Google.DriveActivity.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the Drive Activity API. This contains the host and root path used as a starting point for constructing service requests.
driveActivityService :: ServiceConfig
driveActivityService
  = defaultService (ServiceId "driveactivity:v2")
      "driveactivity.googleapis.com"

-- | View the activity record of files in your Google Drive
driveActivityReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/drive.activity.readonly"]
driveActivityReadOnlyScope = Proxy

-- | View and add to the activity record of files in your Google Drive
driveActivityScope :: Proxy '["https://www.googleapis.com/auth/drive.activity"]
driveActivityScope = Proxy
