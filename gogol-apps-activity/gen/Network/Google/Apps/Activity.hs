{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Apps.Activity
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Provides a historical view of activity.
--
-- /See:/ <https://developers.google.com/google-apps/activity/ Google Apps Activity API Reference>
module Network.Google.Apps.Activity
    (
    -- * REST Resources

    -- ** Google Apps Activity API
      AppsActivity
    , appsActivity
    , appsActivityURL

    -- ** appsactivity.activities.list
    , module Network.Google.API.AppsActivity.Activities.List

    -- * Types

    -- ** EventPrimaryEventType
    , EventPrimaryEventType (..)

    -- ** ListActivitiesResponse
    , ListActivitiesResponse
    , listActivitiesResponse
    , larNextPageToken
    , larActivities

    -- ** Alt
    , Alt (..)

    -- ** Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

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

    -- ** ActivitiesList'GroupingStrategy
    , ActivitiesList'GroupingStrategy (..)

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

    -- ** Photo
    , Photo
    , photo
    , pUrl

    -- ** PermissionRole
    , PermissionRole (..)

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

    -- ** Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

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
    , uName
    ) where

import           Network.Google.API.AppsActivity.Activities.List
import           Network.Google.Apps.Activity.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsActivity = ActivitiesListAPI

appsActivity :: Proxy AppsActivity
appsActivity = Proxy
