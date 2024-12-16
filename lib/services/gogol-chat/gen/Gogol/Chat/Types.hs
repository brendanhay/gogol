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
-- Module      : Gogol.Chat.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Chat.Types
    (
    -- * Configuration
      chatService

    -- * OAuth Scopes
    , Chat'Admin'Delete
    , Chat'Admin'Memberships
    , Chat'Admin'Memberships'Readonly
    , Chat'Admin'Spaces
    , Chat'Admin'Spaces'Readonly
    , Chat'App'Delete
    , Chat'App'Memberships
    , Chat'App'Spaces
    , Chat'App'Spaces'Create
    , Chat'Bot
    , Chat'Delete
    , Chat'Import
    , Chat'Memberships
    , Chat'Memberships'App
    , Chat'Memberships'Readonly
    , Chat'Messages
    , Chat'Messages'Create
    , Chat'Messages'Reactions
    , Chat'Messages'Reactions'Create
    , Chat'Messages'Reactions'Readonly
    , Chat'Messages'Readonly
    , Chat'Spaces
    , Chat'Spaces'Create
    , Chat'Spaces'Readonly
    , Chat'Users'Readstate
    , Chat'Users'Readstate'Readonly

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AccessSettings
    , AccessSettings (..)
    , newAccessSettings

    -- ** AccessSettings_AccessState
    , AccessSettings_AccessState (..)

    -- ** AccessoryWidget
    , AccessoryWidget (..)
    , newAccessoryWidget

    -- ** ActionParameter
    , ActionParameter (..)
    , newActionParameter

    -- ** ActionResponse
    , ActionResponse (..)
    , newActionResponse

    -- ** ActionResponse_Type
    , ActionResponse_Type (..)

    -- ** ActionStatus
    , ActionStatus (..)
    , newActionStatus

    -- ** ActionStatus_StatusCode
    , ActionStatus_StatusCode (..)

    -- ** Annotation
    , Annotation (..)
    , newAnnotation

    -- ** Annotation_Type
    , Annotation_Type (..)

    -- ** AttachedGif
    , AttachedGif (..)
    , newAttachedGif

    -- ** Attachment
    , Attachment (..)
    , newAttachment

    -- ** Attachment_Source
    , Attachment_Source (..)

    -- ** AttachmentDataRef
    , AttachmentDataRef (..)
    , newAttachmentDataRef

    -- ** Button
    , Button (..)
    , newButton

    -- ** Card
    , Card (..)
    , newCard

    -- ** CardAction
    , CardAction (..)
    , newCardAction

    -- ** CardHeader
    , CardHeader (..)
    , newCardHeader

    -- ** CardHeader_ImageStyle
    , CardHeader_ImageStyle (..)

    -- ** CardWithId
    , CardWithId (..)
    , newCardWithId

    -- ** ChatAppLogEntry
    , ChatAppLogEntry (..)
    , newChatAppLogEntry

    -- ** ChatClientDataSourceMarkup
    , ChatClientDataSourceMarkup (..)
    , newChatClientDataSourceMarkup

    -- ** ChatSpaceLinkData
    , ChatSpaceLinkData (..)
    , newChatSpaceLinkData

    -- ** Color
    , Color (..)
    , newColor

    -- ** CommonEventObject
    , CommonEventObject (..)
    , newCommonEventObject

    -- ** CommonEventObject_FormInputs
    , CommonEventObject_FormInputs (..)
    , newCommonEventObject_FormInputs

    -- ** CommonEventObject_HostApp
    , CommonEventObject_HostApp (..)

    -- ** CommonEventObject_Parameters
    , CommonEventObject_Parameters (..)
    , newCommonEventObject_Parameters

    -- ** CommonEventObject_Platform
    , CommonEventObject_Platform (..)

    -- ** CompleteImportSpaceRequest
    , CompleteImportSpaceRequest (..)
    , newCompleteImportSpaceRequest

    -- ** CompleteImportSpaceResponse
    , CompleteImportSpaceResponse (..)
    , newCompleteImportSpaceResponse

    -- ** CustomEmoji
    , CustomEmoji (..)
    , newCustomEmoji

    -- ** DateInput
    , DateInput (..)
    , newDateInput

    -- ** DateTimeInput
    , DateTimeInput (..)
    , newDateTimeInput

    -- ** DeletionMetadata
    , DeletionMetadata (..)
    , newDeletionMetadata

    -- ** DeletionMetadata_DeletionType
    , DeletionMetadata_DeletionType (..)

    -- ** DeprecatedEvent
    , DeprecatedEvent (..)
    , newDeprecatedEvent

    -- ** DeprecatedEvent_DialogEventType
    , DeprecatedEvent_DialogEventType (..)

    -- ** DeprecatedEvent_Type
    , DeprecatedEvent_Type (..)

    -- ** Dialog
    , Dialog (..)
    , newDialog

    -- ** DialogAction
    , DialogAction (..)
    , newDialogAction

    -- ** DriveDataRef
    , DriveDataRef (..)
    , newDriveDataRef

    -- ** DriveLinkData
    , DriveLinkData (..)
    , newDriveLinkData

    -- ** Emoji
    , Emoji (..)
    , newEmoji

    -- ** EmojiReactionSummary
    , EmojiReactionSummary (..)
    , newEmojiReactionSummary

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** FormAction
    , FormAction (..)
    , newFormAction

    -- ** GoogleAppsCardV1Action
    , GoogleAppsCardV1Action (..)
    , newGoogleAppsCardV1Action

    -- ** GoogleAppsCardV1Action_Interaction
    , GoogleAppsCardV1Action_Interaction (..)

    -- ** GoogleAppsCardV1Action_LoadIndicator
    , GoogleAppsCardV1Action_LoadIndicator (..)

    -- ** GoogleAppsCardV1ActionParameter
    , GoogleAppsCardV1ActionParameter (..)
    , newGoogleAppsCardV1ActionParameter

    -- ** GoogleAppsCardV1BorderStyle
    , GoogleAppsCardV1BorderStyle (..)
    , newGoogleAppsCardV1BorderStyle

    -- ** GoogleAppsCardV1BorderStyle_Type
    , GoogleAppsCardV1BorderStyle_Type (..)

    -- ** GoogleAppsCardV1Button
    , GoogleAppsCardV1Button (..)
    , newGoogleAppsCardV1Button

    -- ** GoogleAppsCardV1Button_Type
    , GoogleAppsCardV1Button_Type (..)

    -- ** GoogleAppsCardV1ButtonList
    , GoogleAppsCardV1ButtonList (..)
    , newGoogleAppsCardV1ButtonList

    -- ** GoogleAppsCardV1Card
    , GoogleAppsCardV1Card (..)
    , newGoogleAppsCardV1Card

    -- ** GoogleAppsCardV1Card_DisplayStyle
    , GoogleAppsCardV1Card_DisplayStyle (..)

    -- ** GoogleAppsCardV1Card_SectionDividerStyle
    , GoogleAppsCardV1Card_SectionDividerStyle (..)

    -- ** GoogleAppsCardV1CardAction
    , GoogleAppsCardV1CardAction (..)
    , newGoogleAppsCardV1CardAction

    -- ** GoogleAppsCardV1CardFixedFooter
    , GoogleAppsCardV1CardFixedFooter (..)
    , newGoogleAppsCardV1CardFixedFooter

    -- ** GoogleAppsCardV1CardHeader
    , GoogleAppsCardV1CardHeader (..)
    , newGoogleAppsCardV1CardHeader

    -- ** GoogleAppsCardV1CardHeader_ImageType
    , GoogleAppsCardV1CardHeader_ImageType (..)

    -- ** GoogleAppsCardV1Carousel
    , GoogleAppsCardV1Carousel (..)
    , newGoogleAppsCardV1Carousel

    -- ** GoogleAppsCardV1CarouselCard
    , GoogleAppsCardV1CarouselCard (..)
    , newGoogleAppsCardV1CarouselCard

    -- ** GoogleAppsCardV1Chip
    , GoogleAppsCardV1Chip (..)
    , newGoogleAppsCardV1Chip

    -- ** GoogleAppsCardV1ChipList
    , GoogleAppsCardV1ChipList (..)
    , newGoogleAppsCardV1ChipList

    -- ** GoogleAppsCardV1ChipList_Layout
    , GoogleAppsCardV1ChipList_Layout (..)

    -- ** GoogleAppsCardV1CollapseControl
    , GoogleAppsCardV1CollapseControl (..)
    , newGoogleAppsCardV1CollapseControl

    -- ** GoogleAppsCardV1CollapseControl_HorizontalAlignment
    , GoogleAppsCardV1CollapseControl_HorizontalAlignment (..)

    -- ** GoogleAppsCardV1Column
    , GoogleAppsCardV1Column (..)
    , newGoogleAppsCardV1Column

    -- ** GoogleAppsCardV1Column_HorizontalAlignment
    , GoogleAppsCardV1Column_HorizontalAlignment (..)

    -- ** GoogleAppsCardV1Column_HorizontalSizeStyle
    , GoogleAppsCardV1Column_HorizontalSizeStyle (..)

    -- ** GoogleAppsCardV1Column_VerticalAlignment
    , GoogleAppsCardV1Column_VerticalAlignment (..)

    -- ** GoogleAppsCardV1Columns
    , GoogleAppsCardV1Columns (..)
    , newGoogleAppsCardV1Columns

    -- ** GoogleAppsCardV1DateTimePicker
    , GoogleAppsCardV1DateTimePicker (..)
    , newGoogleAppsCardV1DateTimePicker

    -- ** GoogleAppsCardV1DateTimePicker_Type
    , GoogleAppsCardV1DateTimePicker_Type (..)

    -- ** GoogleAppsCardV1DecoratedText
    , GoogleAppsCardV1DecoratedText (..)
    , newGoogleAppsCardV1DecoratedText

    -- ** GoogleAppsCardV1Divider
    , GoogleAppsCardV1Divider (..)
    , newGoogleAppsCardV1Divider

    -- ** GoogleAppsCardV1Grid
    , GoogleAppsCardV1Grid (..)
    , newGoogleAppsCardV1Grid

    -- ** GoogleAppsCardV1GridItem
    , GoogleAppsCardV1GridItem (..)
    , newGoogleAppsCardV1GridItem

    -- ** GoogleAppsCardV1GridItem_Layout
    , GoogleAppsCardV1GridItem_Layout (..)

    -- ** GoogleAppsCardV1Icon
    , GoogleAppsCardV1Icon (..)
    , newGoogleAppsCardV1Icon

    -- ** GoogleAppsCardV1Icon_ImageType
    , GoogleAppsCardV1Icon_ImageType (..)

    -- ** GoogleAppsCardV1Image
    , GoogleAppsCardV1Image (..)
    , newGoogleAppsCardV1Image

    -- ** GoogleAppsCardV1ImageComponent
    , GoogleAppsCardV1ImageComponent (..)
    , newGoogleAppsCardV1ImageComponent

    -- ** GoogleAppsCardV1ImageCropStyle
    , GoogleAppsCardV1ImageCropStyle (..)
    , newGoogleAppsCardV1ImageCropStyle

    -- ** GoogleAppsCardV1ImageCropStyle_Type
    , GoogleAppsCardV1ImageCropStyle_Type (..)

    -- ** GoogleAppsCardV1MaterialIcon
    , GoogleAppsCardV1MaterialIcon (..)
    , newGoogleAppsCardV1MaterialIcon

    -- ** GoogleAppsCardV1NestedWidget
    , GoogleAppsCardV1NestedWidget (..)
    , newGoogleAppsCardV1NestedWidget

    -- ** GoogleAppsCardV1OnClick
    , GoogleAppsCardV1OnClick (..)
    , newGoogleAppsCardV1OnClick

    -- ** GoogleAppsCardV1OpenLink
    , GoogleAppsCardV1OpenLink (..)
    , newGoogleAppsCardV1OpenLink

    -- ** GoogleAppsCardV1OpenLink_OnClose
    , GoogleAppsCardV1OpenLink_OnClose (..)

    -- ** GoogleAppsCardV1OpenLink_OpenAs
    , GoogleAppsCardV1OpenLink_OpenAs (..)

    -- ** GoogleAppsCardV1OverflowMenu
    , GoogleAppsCardV1OverflowMenu (..)
    , newGoogleAppsCardV1OverflowMenu

    -- ** GoogleAppsCardV1OverflowMenuItem
    , GoogleAppsCardV1OverflowMenuItem (..)
    , newGoogleAppsCardV1OverflowMenuItem

    -- ** GoogleAppsCardV1PlatformDataSource
    , GoogleAppsCardV1PlatformDataSource (..)
    , newGoogleAppsCardV1PlatformDataSource

    -- ** GoogleAppsCardV1PlatformDataSource_CommonDataSource
    , GoogleAppsCardV1PlatformDataSource_CommonDataSource (..)

    -- ** GoogleAppsCardV1Section
    , GoogleAppsCardV1Section (..)
    , newGoogleAppsCardV1Section

    -- ** GoogleAppsCardV1SelectionInput
    , GoogleAppsCardV1SelectionInput (..)
    , newGoogleAppsCardV1SelectionInput

    -- ** GoogleAppsCardV1SelectionInput_Type
    , GoogleAppsCardV1SelectionInput_Type (..)

    -- ** GoogleAppsCardV1SelectionItem
    , GoogleAppsCardV1SelectionItem (..)
    , newGoogleAppsCardV1SelectionItem

    -- ** GoogleAppsCardV1SuggestionItem
    , GoogleAppsCardV1SuggestionItem (..)
    , newGoogleAppsCardV1SuggestionItem

    -- ** GoogleAppsCardV1Suggestions
    , GoogleAppsCardV1Suggestions (..)
    , newGoogleAppsCardV1Suggestions

    -- ** GoogleAppsCardV1SwitchControl
    , GoogleAppsCardV1SwitchControl (..)
    , newGoogleAppsCardV1SwitchControl

    -- ** GoogleAppsCardV1SwitchControl_ControlType
    , GoogleAppsCardV1SwitchControl_ControlType (..)

    -- ** GoogleAppsCardV1TextInput
    , GoogleAppsCardV1TextInput (..)
    , newGoogleAppsCardV1TextInput

    -- ** GoogleAppsCardV1TextInput_Type
    , GoogleAppsCardV1TextInput_Type (..)

    -- ** GoogleAppsCardV1TextParagraph
    , GoogleAppsCardV1TextParagraph (..)
    , newGoogleAppsCardV1TextParagraph

    -- ** GoogleAppsCardV1Widget
    , GoogleAppsCardV1Widget (..)
    , newGoogleAppsCardV1Widget

    -- ** GoogleAppsCardV1Widget_HorizontalAlignment
    , GoogleAppsCardV1Widget_HorizontalAlignment (..)

    -- ** GoogleAppsCardV1Widgets
    , GoogleAppsCardV1Widgets (..)
    , newGoogleAppsCardV1Widgets

    -- ** Group
    , Group (..)
    , newGroup

    -- ** HostAppDataSourceMarkup
    , HostAppDataSourceMarkup (..)
    , newHostAppDataSourceMarkup

    -- ** Image
    , Image (..)
    , newImage

    -- ** ImageButton
    , ImageButton (..)
    , newImageButton

    -- ** ImageButton_Icon
    , ImageButton_Icon (..)

    -- ** Inputs
    , Inputs (..)
    , newInputs

    -- ** KeyValue
    , KeyValue (..)
    , newKeyValue

    -- ** KeyValue_Icon
    , KeyValue_Icon (..)

    -- ** ListMembershipsResponse
    , ListMembershipsResponse (..)
    , newListMembershipsResponse

    -- ** ListMessagesResponse
    , ListMessagesResponse (..)
    , newListMessagesResponse

    -- ** ListReactionsResponse
    , ListReactionsResponse (..)
    , newListReactionsResponse

    -- ** ListSpaceEventsResponse
    , ListSpaceEventsResponse (..)
    , newListSpaceEventsResponse

    -- ** ListSpacesResponse
    , ListSpacesResponse (..)
    , newListSpacesResponse

    -- ** MatchedUrl
    , MatchedUrl (..)
    , newMatchedUrl

    -- ** Media
    , Media (..)
    , newMedia

    -- ** Membership
    , Membership (..)
    , newMembership

    -- ** Membership_Role
    , Membership_Role (..)

    -- ** Membership_State
    , Membership_State (..)

    -- ** MembershipBatchCreatedEventData
    , MembershipBatchCreatedEventData (..)
    , newMembershipBatchCreatedEventData

    -- ** MembershipBatchDeletedEventData
    , MembershipBatchDeletedEventData (..)
    , newMembershipBatchDeletedEventData

    -- ** MembershipBatchUpdatedEventData
    , MembershipBatchUpdatedEventData (..)
    , newMembershipBatchUpdatedEventData

    -- ** MembershipCount
    , MembershipCount (..)
    , newMembershipCount

    -- ** MembershipCreatedEventData
    , MembershipCreatedEventData (..)
    , newMembershipCreatedEventData

    -- ** MembershipDeletedEventData
    , MembershipDeletedEventData (..)
    , newMembershipDeletedEventData

    -- ** MembershipUpdatedEventData
    , MembershipUpdatedEventData (..)
    , newMembershipUpdatedEventData

    -- ** Message
    , Message (..)
    , newMessage

    -- ** MessageBatchCreatedEventData
    , MessageBatchCreatedEventData (..)
    , newMessageBatchCreatedEventData

    -- ** MessageBatchDeletedEventData
    , MessageBatchDeletedEventData (..)
    , newMessageBatchDeletedEventData

    -- ** MessageBatchUpdatedEventData
    , MessageBatchUpdatedEventData (..)
    , newMessageBatchUpdatedEventData

    -- ** MessageCreatedEventData
    , MessageCreatedEventData (..)
    , newMessageCreatedEventData

    -- ** MessageDeletedEventData
    , MessageDeletedEventData (..)
    , newMessageDeletedEventData

    -- ** MessageUpdatedEventData
    , MessageUpdatedEventData (..)
    , newMessageUpdatedEventData

    -- ** OnClick
    , OnClick (..)
    , newOnClick

    -- ** OpenLink
    , OpenLink (..)
    , newOpenLink

    -- ** PermissionSetting
    , PermissionSetting (..)
    , newPermissionSetting

    -- ** PermissionSettings
    , PermissionSettings (..)
    , newPermissionSettings

    -- ** QuotedMessageMetadata
    , QuotedMessageMetadata (..)
    , newQuotedMessageMetadata

    -- ** Reaction
    , Reaction (..)
    , newReaction

    -- ** ReactionBatchCreatedEventData
    , ReactionBatchCreatedEventData (..)
    , newReactionBatchCreatedEventData

    -- ** ReactionBatchDeletedEventData
    , ReactionBatchDeletedEventData (..)
    , newReactionBatchDeletedEventData

    -- ** ReactionCreatedEventData
    , ReactionCreatedEventData (..)
    , newReactionCreatedEventData

    -- ** ReactionDeletedEventData
    , ReactionDeletedEventData (..)
    , newReactionDeletedEventData

    -- ** RichLinkMetadata
    , RichLinkMetadata (..)
    , newRichLinkMetadata

    -- ** RichLinkMetadata_RichLinkType
    , RichLinkMetadata_RichLinkType (..)

    -- ** SearchSpacesResponse
    , SearchSpacesResponse (..)
    , newSearchSpacesResponse

    -- ** Section
    , Section (..)
    , newSection

    -- ** SelectionItems
    , SelectionItems (..)
    , newSelectionItems

    -- ** SetUpSpaceRequest
    , SetUpSpaceRequest (..)
    , newSetUpSpaceRequest

    -- ** SlashCommand
    , SlashCommand (..)
    , newSlashCommand

    -- ** SlashCommandMetadata
    , SlashCommandMetadata (..)
    , newSlashCommandMetadata

    -- ** SlashCommandMetadata_Type
    , SlashCommandMetadata_Type (..)

    -- ** Space
    , Space (..)
    , newSpace

    -- ** Space_PredefinedPermissionSettings
    , Space_PredefinedPermissionSettings (..)

    -- ** Space_SpaceHistoryState
    , Space_SpaceHistoryState (..)

    -- ** Space_SpaceThreadingState
    , Space_SpaceThreadingState (..)

    -- ** Space_SpaceType
    , Space_SpaceType (..)

    -- ** Space_Type
    , Space_Type (..)

    -- ** SpaceBatchUpdatedEventData
    , SpaceBatchUpdatedEventData (..)
    , newSpaceBatchUpdatedEventData

    -- ** SpaceDataSource
    , SpaceDataSource (..)
    , newSpaceDataSource

    -- ** SpaceDetails
    , SpaceDetails (..)
    , newSpaceDetails

    -- ** SpaceEvent
    , SpaceEvent (..)
    , newSpaceEvent

    -- ** SpaceReadState
    , SpaceReadState (..)
    , newSpaceReadState

    -- ** SpaceUpdatedEventData
    , SpaceUpdatedEventData (..)
    , newSpaceUpdatedEventData

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StringInputs
    , StringInputs (..)
    , newStringInputs

    -- ** TextButton
    , TextButton (..)
    , newTextButton

    -- ** TextParagraph
    , TextParagraph (..)
    , newTextParagraph

    -- ** Thread
    , Thread (..)
    , newThread

    -- ** ThreadReadState
    , ThreadReadState (..)
    , newThreadReadState

    -- ** TimeInput
    , TimeInput (..)
    , newTimeInput

    -- ** TimeZone
    , TimeZone (..)
    , newTimeZone

    -- ** UpdatedWidget
    , UpdatedWidget (..)
    , newUpdatedWidget

    -- ** UploadAttachmentRequest
    , UploadAttachmentRequest (..)
    , newUploadAttachmentRequest

    -- ** UploadAttachmentResponse
    , UploadAttachmentResponse (..)
    , newUploadAttachmentResponse

    -- ** User
    , User (..)
    , newUser

    -- ** User_Type
    , User_Type (..)

    -- ** UserMentionMetadata
    , UserMentionMetadata (..)
    , newUserMentionMetadata

    -- ** UserMentionMetadata_Type
    , UserMentionMetadata_Type (..)

    -- ** WidgetMarkup
    , WidgetMarkup (..)
    , newWidgetMarkup

    -- ** SpacesMessagesCreateMessageReplyOption
    , SpacesMessagesCreateMessageReplyOption (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Internal.Product
import Gogol.Chat.Internal.Sum

-- | Default request referring to version @v1@ of the Google Chat API. This contains the host and root path used as a starting point for constructing service requests.
chatService :: Core.ServiceConfig
chatService
  = Core.defaultService (Core.ServiceId "chat:v1")
      "chat.googleapis.com"

-- | Delete conversations and spaces owned by your organization and remove access to associated files in Google Chat
type Chat'Admin'Delete = "https://www.googleapis.com/auth/chat.admin.delete"

-- | View, add, update and remove members and managers in conversations owned by your organization
type Chat'Admin'Memberships = "https://www.googleapis.com/auth/chat.admin.memberships"

-- | View members and managers in conversations owned by your organization
type Chat'Admin'Memberships'Readonly = "https://www.googleapis.com/auth/chat.admin.memberships.readonly"

-- | View or edit display name, description, and other metadata for all Google Chat conversations owned by your organization
type Chat'Admin'Spaces = "https://www.googleapis.com/auth/chat.admin.spaces"

-- | View display name, description, and other metadata for all Google Chat conversations owned by your organization
type Chat'Admin'Spaces'Readonly = "https://www.googleapis.com/auth/chat.admin.spaces.readonly"

-- | On their own behalf, apps in Google Chat can delete conversations and spaces and remove access to associated files
type Chat'App'Delete = "https://www.googleapis.com/auth/chat.app.delete"

-- | On their own behalf, apps in Google Chat can see, add, update, and remove members from conversations and spaces
type Chat'App'Memberships = "https://www.googleapis.com/auth/chat.app.memberships"

-- | On their own behalf, apps in Google Chat can create conversations and spaces and see or update their metadata (including history settings and access settings)
type Chat'App'Spaces = "https://www.googleapis.com/auth/chat.app.spaces"

-- | On their own behalf, apps in Google Chat can create conversations and spaces
type Chat'App'Spaces'Create = "https://www.googleapis.com/auth/chat.app.spaces.create"

-- | Private Service: https:\/\/www.googleapis.com\/auth\/chat.bot
type Chat'Bot = "https://www.googleapis.com/auth/chat.bot"

-- | Delete conversations and spaces and remove access to associated files in Google Chat
type Chat'Delete = "https://www.googleapis.com/auth/chat.delete"

-- | Import spaces, messages, and memberships into Google Chat.
type Chat'Import = "https://www.googleapis.com/auth/chat.import"

-- | See, add, update, and remove members from conversations and spaces in Google Chat
type Chat'Memberships = "https://www.googleapis.com/auth/chat.memberships"

-- | Add and remove itself from conversations and spaces in Google Chat
type Chat'Memberships'App = "https://www.googleapis.com/auth/chat.memberships.app"

-- | View members in Google Chat conversations.
type Chat'Memberships'Readonly = "https://www.googleapis.com/auth/chat.memberships.readonly"

-- | See, compose, send, update, and delete messages and their associated attachments, and add, see, and delete reactions to messages.
type Chat'Messages = "https://www.googleapis.com/auth/chat.messages"

-- | Compose and send messages in Google Chat
type Chat'Messages'Create = "https://www.googleapis.com/auth/chat.messages.create"

-- | See, add, and delete reactions to messages in Google Chat
type Chat'Messages'Reactions = "https://www.googleapis.com/auth/chat.messages.reactions"

-- | Add reactions to messages in Google Chat
type Chat'Messages'Reactions'Create = "https://www.googleapis.com/auth/chat.messages.reactions.create"

-- | View reactions to messages in Google Chat
type Chat'Messages'Reactions'Readonly = "https://www.googleapis.com/auth/chat.messages.reactions.readonly"

-- | See messages and their associated reactions and attachments in Google Chat
type Chat'Messages'Readonly = "https://www.googleapis.com/auth/chat.messages.readonly"

-- | Create conversations and spaces and see or update metadata (including history settings and access settings) in Google Chat
type Chat'Spaces = "https://www.googleapis.com/auth/chat.spaces"

-- | Create new conversations and spaces in Google Chat
type Chat'Spaces'Create = "https://www.googleapis.com/auth/chat.spaces.create"

-- | View chat and spaces in Google Chat
type Chat'Spaces'Readonly = "https://www.googleapis.com/auth/chat.spaces.readonly"

-- | View and modify last read time for Google Chat conversations
type Chat'Users'Readstate = "https://www.googleapis.com/auth/chat.users.readstate"

-- | View last read time for Google Chat conversations
type Chat'Users'Readstate'Readonly = "https://www.googleapis.com/auth/chat.users.readstate.readonly"
