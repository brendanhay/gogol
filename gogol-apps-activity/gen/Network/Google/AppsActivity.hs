{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsActivity
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a historical view of activity.
--
-- /See:/ <https://developers.google.com/google-apps/activity/ Google Apps Activity API Reference>
module Network.Google.AppsActivity
    (
    -- * Service Configuration
      appsActivityService

    -- * OAuth Scopes
    , driveMetadataReadonlyScope
    , activityScope
    , driveReadonlyScope
    , driveScope
    , driveMetadataScope

    -- * API Declaration
    , AppsActivityAPI

    -- * Resources

    -- ** appsactivity.activities.list
    , module Network.Google.Resource.AppsActivity.Activities.List

    -- * Types

    -- ** Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

    -- ** Photo
    , Photo
    , photo
    , pURL

    -- ** EventPrimaryEventType
    , EventPrimaryEventType (..)

    -- ** Event
    , Event
    , event
    , ePrimaryEventType
    , eUser
    , eEventTimeMillis
    , eRename
    , eFromUserDeletion
    , eAdditionalEventTypes
    , ePermissionChanges
    , eTarget
    , eMove

    -- ** PermissionRole
    , PermissionRole (..)

    -- ** ListActivitiesResponse
    , ListActivitiesResponse
    , listActivitiesResponse
    , larNextPageToken
    , larActivities

    -- ** PermissionChange
    , PermissionChange
    , permissionChange
    , pcAddedPermissions
    , pcRemovedPermissions

    -- ** PermissionType
    , PermissionType (..)

    -- ** User
    , User
    , user
    , uPhoto
    , uIsDeleted
    , uName
    , uPermissionId

    -- ** EventAdditionalEventTypesItem
    , EventAdditionalEventTypesItem (..)

    -- ** Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

    -- ** ActivitiesListGroupingStrategy
    , ActivitiesListGroupingStrategy (..)

    -- ** Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- ** Permission
    , Permission
    , permission
    , pWithLink
    , pUser
    , pRole
    , pName
    , pType
    , pPermissionId

    -- ** Target
    , Target
    , target
    , tMimeType
    , tName
    , tId

    -- ** Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents
    ) where

import           Network.Google.AppsActivity.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AppsActivity.Activities.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Apps Activity API service.
type AppsActivityAPI = ActivitiesListResource
