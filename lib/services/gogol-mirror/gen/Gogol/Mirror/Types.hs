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
-- Module      : Gogol.Mirror.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Mirror.Types
  ( -- * Configuration
    mirrorService,

    -- * OAuth Scopes
    Glass'Location,
    Glass'Timeline,

    -- * Types

    -- ** Account
    Account (..),
    newAccount,

    -- ** Attachment
    Attachment (..),
    newAttachment,

    -- ** AttachmentsListResponse
    AttachmentsListResponse (..),
    newAttachmentsListResponse,

    -- ** AuthToken
    AuthToken (..),
    newAuthToken,

    -- ** Command
    Command (..),
    newCommand,

    -- ** Contact
    Contact (..),
    newContact,

    -- ** ContactsListResponse
    ContactsListResponse (..),
    newContactsListResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** LocationsListResponse
    LocationsListResponse (..),
    newLocationsListResponse,

    -- ** MenuItem
    MenuItem (..),
    newMenuItem,

    -- ** MenuValue
    MenuValue (..),
    newMenuValue,

    -- ** Notification
    Notification (..),
    newNotification,

    -- ** NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- ** Setting
    Setting (..),
    newSetting,

    -- ** Subscription
    Subscription (..),
    newSubscription,

    -- ** SubscriptionsListResponse
    SubscriptionsListResponse (..),
    newSubscriptionsListResponse,

    -- ** TimelineItem
    TimelineItem (..),
    newTimelineItem,

    -- ** TimelineListResponse
    TimelineListResponse (..),
    newTimelineListResponse,

    -- ** UserAction
    UserAction (..),
    newUserAction,

    -- ** UserData
    UserData (..),
    newUserData,

    -- ** TimelineListOrderBy
    TimelineListOrderBy (..),
  )
where

import Gogol.Mirror.Internal.Product
import Gogol.Mirror.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Google Mirror API. This contains the host and root path used as a starting point for constructing service requests.
mirrorService :: Core.ServiceConfig
mirrorService =
  Core.defaultService
    (Core.ServiceId "mirror:v1")
    "www.googleapis.com"

-- | View your location
type Glass'Location = "https://www.googleapis.com/auth/glass.location"

-- | View and manage your Glass timeline
type Glass'Timeline = "https://www.googleapis.com/auth/glass.timeline"
