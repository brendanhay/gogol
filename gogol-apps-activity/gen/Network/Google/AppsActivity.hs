{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- | Provides a historical view of activity.
--
-- /See:/ <https://developers.google.com/google-apps/activity/ Google Apps Activity API Reference>
module Network.Google.AppsActivity
    (
    -- * API
      AppsActivityAPI
    , appsActivityAPI
    , appsActivityURL

    -- * Service Methods

    -- * REST Resources

    -- ** AppsactivityActivitiesList
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

    -- ** PrimaryEventType
    , PrimaryEventType (..)

    -- ** User
    , User
    , user
    , uPhoto
    , uName

    -- ** GroupingStrategy
    , GroupingStrategy (..)

    -- ** Role
    , Role (..)

    -- ** Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

    -- ** Type
    , Type (..)

    -- ** Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- ** AdditionalEventTypesItem
    , AdditionalEventTypesItem (..)

    -- ** Permission
    , Permission
    , permission
    , pWithLink
    , pUser
    , pRole
    , pName
    , pType
    , pPermissionId

    -- ** Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents

    -- ** Target
    , Target
    , target
    , tMimeType
    , tName
    , tId
    ) where

import           Network.Google.AppsActivity.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AppsActivity.Activities.List

{- $resources
TODO
-}

type AppsActivityAPI = ActivitiesListResource

appsActivityAPI :: Proxy AppsActivityAPI
appsActivityAPI = Proxy
