{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsActivity.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsActivity.Types
    (
    -- * Service Configuration
      appsActivityService

    -- * OAuth Scopes
    , activityScope

    -- * Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

    -- * Photo
    , Photo
    , photo
    , pURL

    -- * EventPrimaryEventType
    , EventPrimaryEventType (..)

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
    , uIsDeleted
    , uName
    , uIsMe
    , uPermissionId

    -- * EventAdditionalEventTypesItem
    , EventAdditionalEventTypesItem (..)

    -- * Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

    -- * ActivitiesListGroupingStrategy
    , ActivitiesListGroupingStrategy (..)

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
    ) where

import Network.Google.AppsActivity.Types.Product
import Network.Google.AppsActivity.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Drive Activity API. This contains the host and root path used as a starting point for constructing service requests.
appsActivityService :: ServiceConfig
appsActivityService
  = defaultService (ServiceId "appsactivity:v1")
      "www.googleapis.com"

-- | View the activity history of your Google apps
activityScope :: Proxy '["https://www.googleapis.com/auth/activity"]
activityScope = Proxy
