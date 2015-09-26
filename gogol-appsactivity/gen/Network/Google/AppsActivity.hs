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
    -- * API Definition
      AppsActivity



    -- * Types

    -- ** Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

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

    -- ** EventItemAdditionalEventTypes
    , EventItemAdditionalEventTypes (..)

    -- ** EventPrimaryEventType
    , EventPrimaryEventType (..)

    -- ** ListActivitiesResponse
    , ListActivitiesResponse
    , listActivitiesResponse
    , larNextPageToken
    , larActivities

    -- ** Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents

    -- ** Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

    -- ** Permission
    , Permission
    , permission
    , pWithLink
    , pUser
    , pRole
    , pName
    , pType
    , pPermissionId

    -- ** PermissionChange
    , PermissionChange
    , permissionChange
    , pcAddedPermissions
    , pcRemovedPermissions

    -- ** PermissionRole
    , PermissionRole (..)

    -- ** PermissionType
    , PermissionType (..)

    -- ** Photo
    , Photo
    , photo
    , pUrl

    -- ** Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- ** Target
    , Target
    , target
    , tMimeType
    , tName
    , tId

    -- ** User
    , User
    , user
    , uPhoto
    , uName
    ) where

import           Network.Google.AppsActivity.Types

{- $resources
TODO
-}

type AppsActivity = ()

appsActivity :: Proxy AppsActivity
appsActivity = Proxy




