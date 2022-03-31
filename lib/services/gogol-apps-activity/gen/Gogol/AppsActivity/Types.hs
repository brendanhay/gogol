{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsActivity.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsActivity.Types
  ( -- * Configuration
    appsActivityService,

    -- * OAuth Scopes
    Activity'FullControl,

    -- * Types

    -- ** Activity
    Activity (..),
    newActivity,

    -- ** Event
    Event (..),
    newEvent,

    -- ** Event_AdditionalEventTypesItem
    Event_AdditionalEventTypesItem (..),

    -- ** Event_PrimaryEventType
    Event_PrimaryEventType (..),

    -- ** ListActivitiesResponse
    ListActivitiesResponse (..),
    newListActivitiesResponse,

    -- ** Move
    Move (..),
    newMove,

    -- ** Parent
    Parent (..),
    newParent,

    -- ** Permission
    Permission (..),
    newPermission,

    -- ** Permission_Role
    Permission_Role (..),

    -- ** Permission_Type
    Permission_Type (..),

    -- ** PermissionChange
    PermissionChange (..),
    newPermissionChange,

    -- ** Photo
    Photo (..),
    newPhoto,

    -- ** Rename
    Rename (..),
    newRename,

    -- ** Target
    Target (..),
    newTarget,

    -- ** User
    User (..),
    newUser,

    -- ** ActivitiesListGroupingStrategy
    ActivitiesListGroupingStrategy (..),
  )
where

import Gogol.AppsActivity.Internal.Product
import Gogol.AppsActivity.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Drive Activity API. This contains the host and root path used as a starting point for constructing service requests.
appsActivityService :: Core.ServiceConfig
appsActivityService =
  Core.defaultService
    (Core.ServiceId "appsactivity:v1")
    "www.googleapis.com"

-- | View the activity history of your Google apps
type Activity'FullControl = "https://www.googleapis.com/auth/activity"
