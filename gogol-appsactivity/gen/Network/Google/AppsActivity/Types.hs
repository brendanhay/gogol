{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AppsActivity.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsActivity.Types
    (
    -- * API Definition
      appsactivity


    -- * Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

    -- * Event
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

    -- * EventItemAdditionalEventTypes
    , EventItemAdditionalEventTypes (..)

    -- * EventPrimaryEventType
    , EventPrimaryEventType (..)

    -- * ListActivitiesResponse
    , ListActivitiesResponse
    , listActivitiesResponse
    , larNextPageToken
    , larActivities

    -- * Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents

    -- * Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

    -- * Permission
    , Permission
    , permission
    , pWithLink
    , pUser
    , pRole
    , pName
    , pType
    , pPermissionId

    -- * PermissionChange
    , PermissionChange
    , permissionChange
    , pcAddedPermissions
    , pcRemovedPermissions

    -- * PermissionRole
    , PermissionRole (..)

    -- * PermissionType
    , PermissionType (..)

    -- * Photo
    , Photo
    , photo
    , pUrl

    -- * Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- * Target
    , Target
    , target
    , tMimeType
    , tName
    , tId

    -- * User
    , User
    , user
    , uPhoto
    , uName
    ) where

import           Network.Google.AppsActivity.Types.Product
import           Network.Google.AppsActivity.Types.Sum
import           Network.Google.Prelude

appsactivity :: a
appsactivity = error "appsactivity"
