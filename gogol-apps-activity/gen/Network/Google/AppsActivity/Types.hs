{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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
    -- * Service URL
      appsActivityURL

    -- * Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

    -- * EventPrimaryEventType
    , EventPrimaryEventType (..)

    -- * Photo
    , Photo
    , photo
    , pUrl

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

    -- * PermissionRole
    , PermissionRole (..)

    -- * ListActivitiesResponse
    , ListActivitiesResponse
    , listActivitiesResponse
    , larNextPageToken
    , larActivities

    -- * EventAdditionalEventTypes
    , EventAdditionalEventTypes (..)

    -- * AppsactivityActivitiesListGroupingStrategy
    , AppsactivityActivitiesListGroupingStrategy (..)

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

    -- * Alt
    , Alt (..)

    -- * Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents

    -- * Target
    , Target
    , target
    , tMimeType
    , tName
    , tId
    ) where

import           Network.Google.AppsActivity.Types.Product
import           Network.Google.AppsActivity.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Apps Activity API.
appsActivityURL :: BaseUrl
appsActivityURL
  = BaseUrl Https
      "https://www.googleapis.com/appsactivity/v1/"
      443
