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
-- Module      : Gogol.Mirror
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    glassLocationScope,
    glassTimelineScope,

    -- * Resources

    -- ** mirror.accounts.insert
    MirrorAccountsInsertResource,
    newMirrorAccountsInsert,
    MirrorAccountsInsert,

    -- ** mirror.contacts.delete
    MirrorContactsDeleteResource,
    newMirrorContactsDelete,
    MirrorContactsDelete,

    -- ** mirror.contacts.get
    MirrorContactsGetResource,
    newMirrorContactsGet,
    MirrorContactsGet,

    -- ** mirror.contacts.insert
    MirrorContactsInsertResource,
    newMirrorContactsInsert,
    MirrorContactsInsert,

    -- ** mirror.contacts.list
    MirrorContactsListResource,
    newMirrorContactsList,
    MirrorContactsList,

    -- ** mirror.contacts.patch
    MirrorContactsPatchResource,
    newMirrorContactsPatch,
    MirrorContactsPatch,

    -- ** mirror.contacts.update
    MirrorContactsUpdateResource,
    newMirrorContactsUpdate,
    MirrorContactsUpdate,

    -- ** mirror.locations.get
    MirrorLocationsGetResource,
    newMirrorLocationsGet,
    MirrorLocationsGet,

    -- ** mirror.locations.list
    MirrorLocationsListResource,
    newMirrorLocationsList,
    MirrorLocationsList,

    -- ** mirror.settings.get
    MirrorSettingsGetResource,
    newMirrorSettingsGet,
    MirrorSettingsGet,

    -- ** mirror.subscriptions.delete
    MirrorSubscriptionsDeleteResource,
    newMirrorSubscriptionsDelete,
    MirrorSubscriptionsDelete,

    -- ** mirror.subscriptions.insert
    MirrorSubscriptionsInsertResource,
    newMirrorSubscriptionsInsert,
    MirrorSubscriptionsInsert,

    -- ** mirror.subscriptions.list
    MirrorSubscriptionsListResource,
    newMirrorSubscriptionsList,
    MirrorSubscriptionsList,

    -- ** mirror.subscriptions.update
    MirrorSubscriptionsUpdateResource,
    newMirrorSubscriptionsUpdate,
    MirrorSubscriptionsUpdate,

    -- ** mirror.timeline.attachments.delete
    MirrorTimelineAttachmentsDeleteResource,
    newMirrorTimelineAttachmentsDelete,
    MirrorTimelineAttachmentsDelete,

    -- ** mirror.timeline.attachments.get
    MirrorTimelineAttachmentsGetResource,
    newMirrorTimelineAttachmentsGet,
    MirrorTimelineAttachmentsGet,

    -- ** mirror.timeline.attachments.insert
    MirrorTimelineAttachmentsInsertResource,
    newMirrorTimelineAttachmentsInsert,
    MirrorTimelineAttachmentsInsert,

    -- ** mirror.timeline.attachments.list
    MirrorTimelineAttachmentsListResource,
    newMirrorTimelineAttachmentsList,
    MirrorTimelineAttachmentsList,

    -- ** mirror.timeline.delete
    MirrorTimelineDeleteResource,
    newMirrorTimelineDelete,
    MirrorTimelineDelete,

    -- ** mirror.timeline.get
    MirrorTimelineGetResource,
    newMirrorTimelineGet,
    MirrorTimelineGet,

    -- ** mirror.timeline.insert
    MirrorTimelineInsertResource,
    newMirrorTimelineInsert,
    MirrorTimelineInsert,

    -- ** mirror.timeline.list
    MirrorTimelineListResource,
    newMirrorTimelineList,
    MirrorTimelineList,

    -- ** mirror.timeline.patch
    MirrorTimelinePatchResource,
    newMirrorTimelinePatch,
    MirrorTimelinePatch,

    -- ** mirror.timeline.update
    MirrorTimelineUpdateResource,
    newMirrorTimelineUpdate,
    MirrorTimelineUpdate,

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
