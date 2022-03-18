{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

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
--
module Gogol.Mirror.Types
    (
    -- * Configuration
      mirrorService

    -- * OAuth Scopes
    , glassLocationScope
    , glassTimelineScope

    -- * Types

    -- ** Account
    , Account (..)
    , newAccount

    -- ** Attachment
    , Attachment (..)
    , newAttachment

    -- ** AttachmentsListResponse
    , AttachmentsListResponse (..)
    , newAttachmentsListResponse

    -- ** AuthToken
    , AuthToken (..)
    , newAuthToken

    -- ** Command
    , Command (..)
    , newCommand

    -- ** Contact
    , Contact (..)
    , newContact

    -- ** ContactsListResponse
    , ContactsListResponse (..)
    , newContactsListResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** LocationsListResponse
    , LocationsListResponse (..)
    , newLocationsListResponse

    -- ** MenuItem
    , MenuItem (..)
    , newMenuItem

    -- ** MenuValue
    , MenuValue (..)
    , newMenuValue

    -- ** Notification
    , Notification (..)
    , newNotification

    -- ** NotificationConfig
    , NotificationConfig (..)
    , newNotificationConfig

    -- ** Setting
    , Setting (..)
    , newSetting

    -- ** Subscription
    , Subscription (..)
    , newSubscription

    -- ** SubscriptionsListResponse
    , SubscriptionsListResponse (..)
    , newSubscriptionsListResponse

    -- ** TimelineItem
    , TimelineItem (..)
    , newTimelineItem

    -- ** TimelineListResponse
    , TimelineListResponse (..)
    , newTimelineListResponse

    -- ** UserAction
    , UserAction (..)
    , newUserAction

    -- ** UserData
    , UserData (..)
    , newUserData

    -- ** TimelineListOrderBy
    , TimelineListOrderBy (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Internal.Product
import Gogol.Mirror.Internal.Sum

-- | Default request referring to version @v1@ of the Google Mirror API. This contains the host and root path used as a starting point for constructing service requests.
mirrorService :: Core.ServiceConfig
mirrorService
  = Core.defaultService (Core.ServiceId "mirror:v1")
      "www.googleapis.com"

-- | View your location
glassLocationScope :: Core.Proxy '["https://www.googleapis.com/auth/glass.location"]
glassLocationScope = Core.Proxy

-- | View and manage your Glass timeline
glassTimelineScope :: Core.Proxy '["https://www.googleapis.com/auth/glass.timeline"]
glassTimelineScope = Core.Proxy
