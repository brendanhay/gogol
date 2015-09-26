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
    -- * Resources
      AppsActivity
    , ActivitiesAPI
    , ActivitiesList

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

import           Network.Google.Apps.Activity.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsActivity = ActivitiesAPI

type ActivitiesAPI = ActivitiesList

-- | Returns a list of activities visible to the current logged in user.
-- Visible activities are determined by the visiblity settings of the
-- object that was acted on, e.g. Drive files a user can see. An activity
-- is a record of past events. Multiple events may be merged if they are
-- similar. A request is scoped to activities from a given Google service
-- using the source parameter.
type ActivitiesList =
     "appsactivity" :> "v1" :> "activities" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "drive.fileId" Text
       :> QueryParam "drive.ancestorId" Text
       :> QueryParam "groupingStrategy" Text
       :> QueryParam "userId" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
