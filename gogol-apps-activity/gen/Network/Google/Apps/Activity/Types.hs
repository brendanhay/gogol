{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Activity.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Activity.Types
    (
    -- * Service URL
      appsActivityURL

    -- * EventPrimaryEventType
    , EventPrimaryEventType (..)

    -- * ListActivitiesResponse
    , ListActivitiesResponse
    , listActivitiesResponse
    , larNextPageToken
    , larActivities

    -- * Alt
    , Alt (..)

    -- * Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

    -- * Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- * Permission
    , Permission
    , permission
    , pWithLink
    , pUser
    , pRole
    , pName
    , pType
    , pPermissionId

    -- * ActivitiesList'GroupingStrategy
    , ActivitiesList'GroupingStrategy (..)

    -- * Target
    , Target
    , target
    , tMimeType
    , tName
    , tId

    -- * Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents

    -- * Photo
    , Photo
    , photo
    , pUrl

    -- * PermissionRole
    , PermissionRole (..)

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

    -- * Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

    -- * PermissionChange
    , PermissionChange
    , permissionChange
    , pcAddedPermissions
    , pcRemovedPermissions

    -- * PermissionType
    , PermissionType (..)

    -- * User
    , User
    , user
    , uPhoto
    , uName
    ) where

import           Network.Google.Apps.Activity.Types.Product
import           Network.Google.Apps.Activity.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Apps Activity API.
appsActivityURL :: BaseUrl
appsActivityURL
  = BaseUrl Https
      "https://www.googleapis.com/appsactivity/v1/"
      443
