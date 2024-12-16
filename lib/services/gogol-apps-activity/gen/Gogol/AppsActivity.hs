{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsActivity
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a historical view of activity.
--
-- /See:/ <https://developers.google.com/google-apps/activity/ Drive Activity API Reference>
module Gogol.AppsActivity
    (
    -- * Configuration
      appsActivityService

    -- * OAuth Scopes
    , Activity'FullControl

    -- * Resources

    -- ** appsactivity.activities.list
    , AppsActivityActivitiesListResource
    , AppsActivityActivitiesList (..)
    , newAppsActivityActivitiesList

    -- * Types

    -- ** Activity
    , Activity (..)
    , newActivity

    -- ** Event
    , Event (..)
    , newEvent

    -- ** Event_AdditionalEventTypesItem
    , Event_AdditionalEventTypesItem (..)

    -- ** Event_PrimaryEventType
    , Event_PrimaryEventType (..)

    -- ** ListActivitiesResponse
    , ListActivitiesResponse (..)
    , newListActivitiesResponse

    -- ** Move
    , Move (..)
    , newMove

    -- ** Parent
    , Parent (..)
    , newParent

    -- ** Permission
    , Permission (..)
    , newPermission

    -- ** Permission_Role
    , Permission_Role (..)

    -- ** Permission_Type
    , Permission_Type (..)

    -- ** PermissionChange
    , PermissionChange (..)
    , newPermissionChange

    -- ** Photo
    , Photo (..)
    , newPhoto

    -- ** Rename
    , Rename (..)
    , newRename

    -- ** Target
    , Target (..)
    , newTarget

    -- ** User
    , User (..)
    , newUser

    -- ** ActivitiesListGroupingStrategy
    , ActivitiesListGroupingStrategy (..)
    ) where

import Gogol.AppsActivity.Activities.List
import Gogol.AppsActivity.Types
