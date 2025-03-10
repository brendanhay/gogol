{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Mirror
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Interacts with Glass users via the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference>
module Gogol.Mirror
  ( -- * Configuration
    mirrorService,

    -- * OAuth Scopes
    Glass'Location,
    Glass'Timeline,

    -- * Resources

    -- ** mirror.accounts.insert
    MirrorAccountsInsertResource,
    MirrorAccountsInsert (..),
    newMirrorAccountsInsert,

    -- ** mirror.contacts.delete
    MirrorContactsDeleteResource,
    MirrorContactsDelete (..),
    newMirrorContactsDelete,

    -- ** mirror.contacts.get
    MirrorContactsGetResource,
    MirrorContactsGet (..),
    newMirrorContactsGet,

    -- ** mirror.contacts.insert
    MirrorContactsInsertResource,
    MirrorContactsInsert (..),
    newMirrorContactsInsert,

    -- ** mirror.contacts.list
    MirrorContactsListResource,
    MirrorContactsList (..),
    newMirrorContactsList,

    -- ** mirror.contacts.patch
    MirrorContactsPatchResource,
    MirrorContactsPatch (..),
    newMirrorContactsPatch,

    -- ** mirror.contacts.update
    MirrorContactsUpdateResource,
    MirrorContactsUpdate (..),
    newMirrorContactsUpdate,

    -- ** mirror.locations.get
    MirrorLocationsGetResource,
    MirrorLocationsGet (..),
    newMirrorLocationsGet,

    -- ** mirror.locations.list
    MirrorLocationsListResource,
    MirrorLocationsList (..),
    newMirrorLocationsList,

    -- ** mirror.settings.get
    MirrorSettingsGetResource,
    MirrorSettingsGet (..),
    newMirrorSettingsGet,

    -- ** mirror.subscriptions.delete
    MirrorSubscriptionsDeleteResource,
    MirrorSubscriptionsDelete (..),
    newMirrorSubscriptionsDelete,

    -- ** mirror.subscriptions.insert
    MirrorSubscriptionsInsertResource,
    MirrorSubscriptionsInsert (..),
    newMirrorSubscriptionsInsert,

    -- ** mirror.subscriptions.list
    MirrorSubscriptionsListResource,
    MirrorSubscriptionsList (..),
    newMirrorSubscriptionsList,

    -- ** mirror.subscriptions.update
    MirrorSubscriptionsUpdateResource,
    MirrorSubscriptionsUpdate (..),
    newMirrorSubscriptionsUpdate,

    -- ** mirror.timeline.attachments.delete
    MirrorTimelineAttachmentsDeleteResource,
    MirrorTimelineAttachmentsDelete (..),
    newMirrorTimelineAttachmentsDelete,

    -- ** mirror.timeline.attachments.get
    MirrorTimelineAttachmentsGetResource,
    MirrorTimelineAttachmentsGet (..),
    newMirrorTimelineAttachmentsGet,

    -- ** mirror.timeline.attachments.insert
    MirrorTimelineAttachmentsInsertResource,
    MirrorTimelineAttachmentsInsert (..),
    newMirrorTimelineAttachmentsInsert,

    -- ** mirror.timeline.attachments.list
    MirrorTimelineAttachmentsListResource,
    MirrorTimelineAttachmentsList (..),
    newMirrorTimelineAttachmentsList,

    -- ** mirror.timeline.delete
    MirrorTimelineDeleteResource,
    MirrorTimelineDelete (..),
    newMirrorTimelineDelete,

    -- ** mirror.timeline.get
    MirrorTimelineGetResource,
    MirrorTimelineGet (..),
    newMirrorTimelineGet,

    -- ** mirror.timeline.insert
    MirrorTimelineInsertResource,
    MirrorTimelineInsert (..),
    newMirrorTimelineInsert,

    -- ** mirror.timeline.list
    MirrorTimelineListResource,
    MirrorTimelineList (..),
    newMirrorTimelineList,

    -- ** mirror.timeline.patch
    MirrorTimelinePatchResource,
    MirrorTimelinePatch (..),
    newMirrorTimelinePatch,

    -- ** mirror.timeline.update
    MirrorTimelineUpdateResource,
    MirrorTimelineUpdate (..),
    newMirrorTimelineUpdate,

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

import Gogol.Mirror.Accounts.Insert
import Gogol.Mirror.Contacts.Delete
import Gogol.Mirror.Contacts.Get
import Gogol.Mirror.Contacts.Insert
import Gogol.Mirror.Contacts.List
import Gogol.Mirror.Contacts.Patch
import Gogol.Mirror.Contacts.Update
import Gogol.Mirror.Locations.Get
import Gogol.Mirror.Locations.List
import Gogol.Mirror.Settings.Get
import Gogol.Mirror.Subscriptions.Delete
import Gogol.Mirror.Subscriptions.Insert
import Gogol.Mirror.Subscriptions.List
import Gogol.Mirror.Subscriptions.Update
import Gogol.Mirror.Timeline.Attachments.Delete
import Gogol.Mirror.Timeline.Attachments.Get
import Gogol.Mirror.Timeline.Attachments.Insert
import Gogol.Mirror.Timeline.Attachments.List
import Gogol.Mirror.Timeline.Delete
import Gogol.Mirror.Timeline.Get
import Gogol.Mirror.Timeline.Insert
import Gogol.Mirror.Timeline.List
import Gogol.Mirror.Timeline.Patch
import Gogol.Mirror.Timeline.Update
import Gogol.Mirror.Types
