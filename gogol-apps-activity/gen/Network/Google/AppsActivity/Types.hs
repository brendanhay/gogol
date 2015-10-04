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

    -- * Photo
    , Photo
    , photo
    , pURL

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

    -- * PrimaryEventType
    , PrimaryEventType (..)

    -- * User
    , User
    , user
    , uPhoto
    , uName

    -- * GroupingStrategy
    , GroupingStrategy (..)

    -- * Role
    , Role (..)

    -- * Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

    -- * Type
    , Type (..)

    -- * Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- * AdditionalEventTypesItem
    , AdditionalEventTypesItem (..)

    -- * Permission
    , Permission
    , permission
    , pWithLink
    , pUser
    , pRole
    , pName
    , pType
    , pPermissionId

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
