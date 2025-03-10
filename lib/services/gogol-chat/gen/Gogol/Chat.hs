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
-- Module      : Gogol.Chat
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Chat API lets you build Chat apps to integrate your services with Google Chat and manage Chat resources such as spaces, members, and messages.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference>
module Gogol.Chat
  ( -- * Configuration
    chatService,

    -- * OAuth Scopes
    Chat'Admin'Delete,
    Chat'Admin'Memberships,
    Chat'Admin'Memberships'Readonly,
    Chat'Admin'Spaces,
    Chat'Admin'Spaces'Readonly,
    Chat'App'Delete,
    Chat'App'Memberships,
    Chat'App'Spaces,
    Chat'App'Spaces'Create,
    Chat'Bot,
    Chat'Delete,
    Chat'Import,
    Chat'Memberships,
    Chat'Memberships'App,
    Chat'Memberships'Readonly,
    Chat'Messages,
    Chat'Messages'Create,
    Chat'Messages'Reactions,
    Chat'Messages'Reactions'Create,
    Chat'Messages'Reactions'Readonly,
    Chat'Messages'Readonly,
    Chat'Spaces,
    Chat'Spaces'Create,
    Chat'Spaces'Readonly,
    Chat'Users'Readstate,
    Chat'Users'Readstate'Readonly,
    Chat'Users'Spacesettings,

    -- * Resources

    -- ** chat.media.download
    ChatMediaDownloadResource,
    ChatMediaDownload (..),
    newChatMediaDownload,

    -- ** chat.media.upload
    ChatMediaUploadResource,
    ChatMediaUpload (..),
    newChatMediaUpload,

    -- ** chat.spaces.completeImport
    ChatSpacesCompleteImportResource,
    ChatSpacesCompleteImport (..),
    newChatSpacesCompleteImport,

    -- ** chat.spaces.create
    ChatSpacesCreateResource,
    ChatSpacesCreate (..),
    newChatSpacesCreate,

    -- ** chat.spaces.delete
    ChatSpacesDeleteResource,
    ChatSpacesDelete (..),
    newChatSpacesDelete,

    -- ** chat.spaces.findDirectMessage
    ChatSpacesFindDirectMessageResource,
    ChatSpacesFindDirectMessage (..),
    newChatSpacesFindDirectMessage,

    -- ** chat.spaces.get
    ChatSpacesGetResource,
    ChatSpacesGet (..),
    newChatSpacesGet,

    -- ** chat.spaces.list
    ChatSpacesListResource,
    ChatSpacesList (..),
    newChatSpacesList,

    -- ** chat.spaces.members.create
    ChatSpacesMembersCreateResource,
    ChatSpacesMembersCreate (..),
    newChatSpacesMembersCreate,

    -- ** chat.spaces.members.delete
    ChatSpacesMembersDeleteResource,
    ChatSpacesMembersDelete (..),
    newChatSpacesMembersDelete,

    -- ** chat.spaces.members.get
    ChatSpacesMembersGetResource,
    ChatSpacesMembersGet (..),
    newChatSpacesMembersGet,

    -- ** chat.spaces.members.list
    ChatSpacesMembersListResource,
    ChatSpacesMembersList (..),
    newChatSpacesMembersList,

    -- ** chat.spaces.members.patch
    ChatSpacesMembersPatchResource,
    ChatSpacesMembersPatch (..),
    newChatSpacesMembersPatch,

    -- ** chat.spaces.messages.attachments.get
    ChatSpacesMessagesAttachmentsGetResource,
    ChatSpacesMessagesAttachmentsGet (..),
    newChatSpacesMessagesAttachmentsGet,

    -- ** chat.spaces.messages.create
    ChatSpacesMessagesCreateResource,
    ChatSpacesMessagesCreate (..),
    newChatSpacesMessagesCreate,

    -- ** chat.spaces.messages.delete
    ChatSpacesMessagesDeleteResource,
    ChatSpacesMessagesDelete (..),
    newChatSpacesMessagesDelete,

    -- ** chat.spaces.messages.get
    ChatSpacesMessagesGetResource,
    ChatSpacesMessagesGet (..),
    newChatSpacesMessagesGet,

    -- ** chat.spaces.messages.list
    ChatSpacesMessagesListResource,
    ChatSpacesMessagesList (..),
    newChatSpacesMessagesList,

    -- ** chat.spaces.messages.patch
    ChatSpacesMessagesPatchResource,
    ChatSpacesMessagesPatch (..),
    newChatSpacesMessagesPatch,

    -- ** chat.spaces.messages.reactions.create
    ChatSpacesMessagesReactionsCreateResource,
    ChatSpacesMessagesReactionsCreate (..),
    newChatSpacesMessagesReactionsCreate,

    -- ** chat.spaces.messages.reactions.delete
    ChatSpacesMessagesReactionsDeleteResource,
    ChatSpacesMessagesReactionsDelete (..),
    newChatSpacesMessagesReactionsDelete,

    -- ** chat.spaces.messages.reactions.list
    ChatSpacesMessagesReactionsListResource,
    ChatSpacesMessagesReactionsList (..),
    newChatSpacesMessagesReactionsList,

    -- ** chat.spaces.messages.update
    ChatSpacesMessagesUpdateResource,
    ChatSpacesMessagesUpdate (..),
    newChatSpacesMessagesUpdate,

    -- ** chat.spaces.patch
    ChatSpacesPatchResource,
    ChatSpacesPatch (..),
    newChatSpacesPatch,

    -- ** chat.spaces.search
    ChatSpacesSearchResource,
    ChatSpacesSearch (..),
    newChatSpacesSearch,

    -- ** chat.spaces.setup
    ChatSpacesSetupResource,
    ChatSpacesSetup (..),
    newChatSpacesSetup,

    -- ** chat.spaces.spaceEvents.get
    ChatSpacesSpaceEventsGetResource,
    ChatSpacesSpaceEventsGet (..),
    newChatSpacesSpaceEventsGet,

    -- ** chat.spaces.spaceEvents.list
    ChatSpacesSpaceEventsListResource,
    ChatSpacesSpaceEventsList (..),
    newChatSpacesSpaceEventsList,

    -- ** chat.users.spaces.getSpaceReadState
    ChatUsersSpacesGetSpaceReadStateResource,
    ChatUsersSpacesGetSpaceReadState (..),
    newChatUsersSpacesGetSpaceReadState,

    -- ** chat.users.spaces.spaceNotificationSetting.get
    ChatUsersSpacesSpaceNotificationSettingGetResource,
    ChatUsersSpacesSpaceNotificationSettingGet (..),
    newChatUsersSpacesSpaceNotificationSettingGet,

    -- ** chat.users.spaces.spaceNotificationSetting.patch
    ChatUsersSpacesSpaceNotificationSettingPatchResource,
    ChatUsersSpacesSpaceNotificationSettingPatch (..),
    newChatUsersSpacesSpaceNotificationSettingPatch,

    -- ** chat.users.spaces.threads.getThreadReadState
    ChatUsersSpacesThreadsGetThreadReadStateResource,
    ChatUsersSpacesThreadsGetThreadReadState (..),
    newChatUsersSpacesThreadsGetThreadReadState,

    -- ** chat.users.spaces.updateSpaceReadState
    ChatUsersSpacesUpdateSpaceReadStateResource,
    ChatUsersSpacesUpdateSpaceReadState (..),
    newChatUsersSpacesUpdateSpaceReadState,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccessSettings
    AccessSettings (..),
    newAccessSettings,

    -- ** AccessSettings_AccessState
    AccessSettings_AccessState (..),

    -- ** AccessoryWidget
    AccessoryWidget (..),
    newAccessoryWidget,

    -- ** ActionParameter
    ActionParameter (..),
    newActionParameter,

    -- ** ActionResponse
    ActionResponse (..),
    newActionResponse,

    -- ** ActionResponse_Type
    ActionResponse_Type (..),

    -- ** ActionStatus
    ActionStatus (..),
    newActionStatus,

    -- ** ActionStatus_StatusCode
    ActionStatus_StatusCode (..),

    -- ** Annotation
    Annotation (..),
    newAnnotation,

    -- ** Annotation_Type
    Annotation_Type (..),

    -- ** AppCommandMetadata
    AppCommandMetadata (..),
    newAppCommandMetadata,

    -- ** AppCommandMetadata_AppCommandType
    AppCommandMetadata_AppCommandType (..),

    -- ** AttachedGif
    AttachedGif (..),
    newAttachedGif,

    -- ** Attachment
    Attachment (..),
    newAttachment,

    -- ** Attachment_Source
    Attachment_Source (..),

    -- ** AttachmentDataRef
    AttachmentDataRef (..),
    newAttachmentDataRef,

    -- ** Button
    Button (..),
    newButton,

    -- ** Card
    Card (..),
    newCard,

    -- ** CardAction
    CardAction (..),
    newCardAction,

    -- ** CardHeader
    CardHeader (..),
    newCardHeader,

    -- ** CardHeader_ImageStyle
    CardHeader_ImageStyle (..),

    -- ** CardWithId
    CardWithId (..),
    newCardWithId,

    -- ** ChatAppLogEntry
    ChatAppLogEntry (..),
    newChatAppLogEntry,

    -- ** ChatClientDataSourceMarkup
    ChatClientDataSourceMarkup (..),
    newChatClientDataSourceMarkup,

    -- ** ChatSpaceLinkData
    ChatSpaceLinkData (..),
    newChatSpaceLinkData,

    -- ** Color
    Color (..),
    newColor,

    -- ** CommonEventObject
    CommonEventObject (..),
    newCommonEventObject,

    -- ** CommonEventObject_FormInputs
    CommonEventObject_FormInputs (..),
    newCommonEventObject_FormInputs,

    -- ** CommonEventObject_HostApp
    CommonEventObject_HostApp (..),

    -- ** CommonEventObject_Parameters
    CommonEventObject_Parameters (..),
    newCommonEventObject_Parameters,

    -- ** CommonEventObject_Platform
    CommonEventObject_Platform (..),

    -- ** CompleteImportSpaceRequest
    CompleteImportSpaceRequest (..),
    newCompleteImportSpaceRequest,

    -- ** CompleteImportSpaceResponse
    CompleteImportSpaceResponse (..),
    newCompleteImportSpaceResponse,

    -- ** CustomEmoji
    CustomEmoji (..),
    newCustomEmoji,

    -- ** CustomEmojiMetadata
    CustomEmojiMetadata (..),
    newCustomEmojiMetadata,

    -- ** DateInput
    DateInput (..),
    newDateInput,

    -- ** DateTimeInput
    DateTimeInput (..),
    newDateTimeInput,

    -- ** DeletionMetadata
    DeletionMetadata (..),
    newDeletionMetadata,

    -- ** DeletionMetadata_DeletionType
    DeletionMetadata_DeletionType (..),

    -- ** DeprecatedEvent
    DeprecatedEvent (..),
    newDeprecatedEvent,

    -- ** DeprecatedEvent_DialogEventType
    DeprecatedEvent_DialogEventType (..),

    -- ** DeprecatedEvent_Type
    DeprecatedEvent_Type (..),

    -- ** Dialog
    Dialog (..),
    newDialog,

    -- ** DialogAction
    DialogAction (..),
    newDialogAction,

    -- ** DriveDataRef
    DriveDataRef (..),
    newDriveDataRef,

    -- ** DriveLinkData
    DriveLinkData (..),
    newDriveLinkData,

    -- ** Emoji
    Emoji (..),
    newEmoji,

    -- ** EmojiReactionSummary
    EmojiReactionSummary (..),
    newEmojiReactionSummary,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FormAction
    FormAction (..),
    newFormAction,

    -- ** GoogleAppsCardV1Action
    GoogleAppsCardV1Action (..),
    newGoogleAppsCardV1Action,

    -- ** GoogleAppsCardV1Action_Interaction
    GoogleAppsCardV1Action_Interaction (..),

    -- ** GoogleAppsCardV1Action_LoadIndicator
    GoogleAppsCardV1Action_LoadIndicator (..),

    -- ** GoogleAppsCardV1ActionParameter
    GoogleAppsCardV1ActionParameter (..),
    newGoogleAppsCardV1ActionParameter,

    -- ** GoogleAppsCardV1BorderStyle
    GoogleAppsCardV1BorderStyle (..),
    newGoogleAppsCardV1BorderStyle,

    -- ** GoogleAppsCardV1BorderStyle_Type
    GoogleAppsCardV1BorderStyle_Type (..),

    -- ** GoogleAppsCardV1Button
    GoogleAppsCardV1Button (..),
    newGoogleAppsCardV1Button,

    -- ** GoogleAppsCardV1Button_Type
    GoogleAppsCardV1Button_Type (..),

    -- ** GoogleAppsCardV1ButtonList
    GoogleAppsCardV1ButtonList (..),
    newGoogleAppsCardV1ButtonList,

    -- ** GoogleAppsCardV1Card
    GoogleAppsCardV1Card (..),
    newGoogleAppsCardV1Card,

    -- ** GoogleAppsCardV1Card_DisplayStyle
    GoogleAppsCardV1Card_DisplayStyle (..),

    -- ** GoogleAppsCardV1Card_SectionDividerStyle
    GoogleAppsCardV1Card_SectionDividerStyle (..),

    -- ** GoogleAppsCardV1CardAction
    GoogleAppsCardV1CardAction (..),
    newGoogleAppsCardV1CardAction,

    -- ** GoogleAppsCardV1CardFixedFooter
    GoogleAppsCardV1CardFixedFooter (..),
    newGoogleAppsCardV1CardFixedFooter,

    -- ** GoogleAppsCardV1CardHeader
    GoogleAppsCardV1CardHeader (..),
    newGoogleAppsCardV1CardHeader,

    -- ** GoogleAppsCardV1CardHeader_ImageType
    GoogleAppsCardV1CardHeader_ImageType (..),

    -- ** GoogleAppsCardV1Carousel
    GoogleAppsCardV1Carousel (..),
    newGoogleAppsCardV1Carousel,

    -- ** GoogleAppsCardV1CarouselCard
    GoogleAppsCardV1CarouselCard (..),
    newGoogleAppsCardV1CarouselCard,

    -- ** GoogleAppsCardV1Chip
    GoogleAppsCardV1Chip (..),
    newGoogleAppsCardV1Chip,

    -- ** GoogleAppsCardV1ChipList
    GoogleAppsCardV1ChipList (..),
    newGoogleAppsCardV1ChipList,

    -- ** GoogleAppsCardV1ChipList_Layout
    GoogleAppsCardV1ChipList_Layout (..),

    -- ** GoogleAppsCardV1CollapseControl
    GoogleAppsCardV1CollapseControl (..),
    newGoogleAppsCardV1CollapseControl,

    -- ** GoogleAppsCardV1CollapseControl_HorizontalAlignment
    GoogleAppsCardV1CollapseControl_HorizontalAlignment (..),

    -- ** GoogleAppsCardV1Column
    GoogleAppsCardV1Column (..),
    newGoogleAppsCardV1Column,

    -- ** GoogleAppsCardV1Column_HorizontalAlignment
    GoogleAppsCardV1Column_HorizontalAlignment (..),

    -- ** GoogleAppsCardV1Column_HorizontalSizeStyle
    GoogleAppsCardV1Column_HorizontalSizeStyle (..),

    -- ** GoogleAppsCardV1Column_VerticalAlignment
    GoogleAppsCardV1Column_VerticalAlignment (..),

    -- ** GoogleAppsCardV1Columns
    GoogleAppsCardV1Columns (..),
    newGoogleAppsCardV1Columns,

    -- ** GoogleAppsCardV1DateTimePicker
    GoogleAppsCardV1DateTimePicker (..),
    newGoogleAppsCardV1DateTimePicker,

    -- ** GoogleAppsCardV1DateTimePicker_Type
    GoogleAppsCardV1DateTimePicker_Type (..),

    -- ** GoogleAppsCardV1DecoratedText
    GoogleAppsCardV1DecoratedText (..),
    newGoogleAppsCardV1DecoratedText,

    -- ** GoogleAppsCardV1Divider
    GoogleAppsCardV1Divider (..),
    newGoogleAppsCardV1Divider,

    -- ** GoogleAppsCardV1Grid
    GoogleAppsCardV1Grid (..),
    newGoogleAppsCardV1Grid,

    -- ** GoogleAppsCardV1GridItem
    GoogleAppsCardV1GridItem (..),
    newGoogleAppsCardV1GridItem,

    -- ** GoogleAppsCardV1GridItem_Layout
    GoogleAppsCardV1GridItem_Layout (..),

    -- ** GoogleAppsCardV1Icon
    GoogleAppsCardV1Icon (..),
    newGoogleAppsCardV1Icon,

    -- ** GoogleAppsCardV1Icon_ImageType
    GoogleAppsCardV1Icon_ImageType (..),

    -- ** GoogleAppsCardV1Image
    GoogleAppsCardV1Image (..),
    newGoogleAppsCardV1Image,

    -- ** GoogleAppsCardV1ImageComponent
    GoogleAppsCardV1ImageComponent (..),
    newGoogleAppsCardV1ImageComponent,

    -- ** GoogleAppsCardV1ImageCropStyle
    GoogleAppsCardV1ImageCropStyle (..),
    newGoogleAppsCardV1ImageCropStyle,

    -- ** GoogleAppsCardV1ImageCropStyle_Type
    GoogleAppsCardV1ImageCropStyle_Type (..),

    -- ** GoogleAppsCardV1MaterialIcon
    GoogleAppsCardV1MaterialIcon (..),
    newGoogleAppsCardV1MaterialIcon,

    -- ** GoogleAppsCardV1NestedWidget
    GoogleAppsCardV1NestedWidget (..),
    newGoogleAppsCardV1NestedWidget,

    -- ** GoogleAppsCardV1OnClick
    GoogleAppsCardV1OnClick (..),
    newGoogleAppsCardV1OnClick,

    -- ** GoogleAppsCardV1OpenLink
    GoogleAppsCardV1OpenLink (..),
    newGoogleAppsCardV1OpenLink,

    -- ** GoogleAppsCardV1OpenLink_OnClose
    GoogleAppsCardV1OpenLink_OnClose (..),

    -- ** GoogleAppsCardV1OpenLink_OpenAs
    GoogleAppsCardV1OpenLink_OpenAs (..),

    -- ** GoogleAppsCardV1OverflowMenu
    GoogleAppsCardV1OverflowMenu (..),
    newGoogleAppsCardV1OverflowMenu,

    -- ** GoogleAppsCardV1OverflowMenuItem
    GoogleAppsCardV1OverflowMenuItem (..),
    newGoogleAppsCardV1OverflowMenuItem,

    -- ** GoogleAppsCardV1PlatformDataSource
    GoogleAppsCardV1PlatformDataSource (..),
    newGoogleAppsCardV1PlatformDataSource,

    -- ** GoogleAppsCardV1PlatformDataSource_CommonDataSource
    GoogleAppsCardV1PlatformDataSource_CommonDataSource (..),

    -- ** GoogleAppsCardV1Section
    GoogleAppsCardV1Section (..),
    newGoogleAppsCardV1Section,

    -- ** GoogleAppsCardV1SelectionInput
    GoogleAppsCardV1SelectionInput (..),
    newGoogleAppsCardV1SelectionInput,

    -- ** GoogleAppsCardV1SelectionInput_Type
    GoogleAppsCardV1SelectionInput_Type (..),

    -- ** GoogleAppsCardV1SelectionItem
    GoogleAppsCardV1SelectionItem (..),
    newGoogleAppsCardV1SelectionItem,

    -- ** GoogleAppsCardV1SuggestionItem
    GoogleAppsCardV1SuggestionItem (..),
    newGoogleAppsCardV1SuggestionItem,

    -- ** GoogleAppsCardV1Suggestions
    GoogleAppsCardV1Suggestions (..),
    newGoogleAppsCardV1Suggestions,

    -- ** GoogleAppsCardV1SwitchControl
    GoogleAppsCardV1SwitchControl (..),
    newGoogleAppsCardV1SwitchControl,

    -- ** GoogleAppsCardV1SwitchControl_ControlType
    GoogleAppsCardV1SwitchControl_ControlType (..),

    -- ** GoogleAppsCardV1TextInput
    GoogleAppsCardV1TextInput (..),
    newGoogleAppsCardV1TextInput,

    -- ** GoogleAppsCardV1TextInput_Type
    GoogleAppsCardV1TextInput_Type (..),

    -- ** GoogleAppsCardV1TextParagraph
    GoogleAppsCardV1TextParagraph (..),
    newGoogleAppsCardV1TextParagraph,

    -- ** GoogleAppsCardV1Validation
    GoogleAppsCardV1Validation (..),
    newGoogleAppsCardV1Validation,

    -- ** GoogleAppsCardV1Validation_InputType
    GoogleAppsCardV1Validation_InputType (..),

    -- ** GoogleAppsCardV1Widget
    GoogleAppsCardV1Widget (..),
    newGoogleAppsCardV1Widget,

    -- ** GoogleAppsCardV1Widget_HorizontalAlignment
    GoogleAppsCardV1Widget_HorizontalAlignment (..),

    -- ** GoogleAppsCardV1Widgets
    GoogleAppsCardV1Widgets (..),
    newGoogleAppsCardV1Widgets,

    -- ** Group
    Group (..),
    newGroup,

    -- ** HostAppDataSourceMarkup
    HostAppDataSourceMarkup (..),
    newHostAppDataSourceMarkup,

    -- ** Image
    Image (..),
    newImage,

    -- ** ImageButton
    ImageButton (..),
    newImageButton,

    -- ** ImageButton_Icon
    ImageButton_Icon (..),

    -- ** Inputs
    Inputs (..),
    newInputs,

    -- ** KeyValue
    KeyValue (..),
    newKeyValue,

    -- ** KeyValue_Icon
    KeyValue_Icon (..),

    -- ** ListMembershipsResponse
    ListMembershipsResponse (..),
    newListMembershipsResponse,

    -- ** ListMessagesResponse
    ListMessagesResponse (..),
    newListMessagesResponse,

    -- ** ListReactionsResponse
    ListReactionsResponse (..),
    newListReactionsResponse,

    -- ** ListSpaceEventsResponse
    ListSpaceEventsResponse (..),
    newListSpaceEventsResponse,

    -- ** ListSpacesResponse
    ListSpacesResponse (..),
    newListSpacesResponse,

    -- ** MatchedUrl
    MatchedUrl (..),
    newMatchedUrl,

    -- ** Media
    Media (..),
    newMedia,

    -- ** Membership
    Membership (..),
    newMembership,

    -- ** Membership_Role
    Membership_Role (..),

    -- ** Membership_State
    Membership_State (..),

    -- ** MembershipBatchCreatedEventData
    MembershipBatchCreatedEventData (..),
    newMembershipBatchCreatedEventData,

    -- ** MembershipBatchDeletedEventData
    MembershipBatchDeletedEventData (..),
    newMembershipBatchDeletedEventData,

    -- ** MembershipBatchUpdatedEventData
    MembershipBatchUpdatedEventData (..),
    newMembershipBatchUpdatedEventData,

    -- ** MembershipCount
    MembershipCount (..),
    newMembershipCount,

    -- ** MembershipCreatedEventData
    MembershipCreatedEventData (..),
    newMembershipCreatedEventData,

    -- ** MembershipDeletedEventData
    MembershipDeletedEventData (..),
    newMembershipDeletedEventData,

    -- ** MembershipUpdatedEventData
    MembershipUpdatedEventData (..),
    newMembershipUpdatedEventData,

    -- ** Message
    Message (..),
    newMessage,

    -- ** MessageBatchCreatedEventData
    MessageBatchCreatedEventData (..),
    newMessageBatchCreatedEventData,

    -- ** MessageBatchDeletedEventData
    MessageBatchDeletedEventData (..),
    newMessageBatchDeletedEventData,

    -- ** MessageBatchUpdatedEventData
    MessageBatchUpdatedEventData (..),
    newMessageBatchUpdatedEventData,

    -- ** MessageCreatedEventData
    MessageCreatedEventData (..),
    newMessageCreatedEventData,

    -- ** MessageDeletedEventData
    MessageDeletedEventData (..),
    newMessageDeletedEventData,

    -- ** MessageUpdatedEventData
    MessageUpdatedEventData (..),
    newMessageUpdatedEventData,

    -- ** OnClick
    OnClick (..),
    newOnClick,

    -- ** OpenLink
    OpenLink (..),
    newOpenLink,

    -- ** PermissionSetting
    PermissionSetting (..),
    newPermissionSetting,

    -- ** PermissionSettings
    PermissionSettings (..),
    newPermissionSettings,

    -- ** QuotedMessageMetadata
    QuotedMessageMetadata (..),
    newQuotedMessageMetadata,

    -- ** Reaction
    Reaction (..),
    newReaction,

    -- ** ReactionBatchCreatedEventData
    ReactionBatchCreatedEventData (..),
    newReactionBatchCreatedEventData,

    -- ** ReactionBatchDeletedEventData
    ReactionBatchDeletedEventData (..),
    newReactionBatchDeletedEventData,

    -- ** ReactionCreatedEventData
    ReactionCreatedEventData (..),
    newReactionCreatedEventData,

    -- ** ReactionDeletedEventData
    ReactionDeletedEventData (..),
    newReactionDeletedEventData,

    -- ** RichLinkMetadata
    RichLinkMetadata (..),
    newRichLinkMetadata,

    -- ** RichLinkMetadata_RichLinkType
    RichLinkMetadata_RichLinkType (..),

    -- ** SearchSpacesResponse
    SearchSpacesResponse (..),
    newSearchSpacesResponse,

    -- ** Section
    Section (..),
    newSection,

    -- ** SelectionItems
    SelectionItems (..),
    newSelectionItems,

    -- ** SetUpSpaceRequest
    SetUpSpaceRequest (..),
    newSetUpSpaceRequest,

    -- ** SlashCommand
    SlashCommand (..),
    newSlashCommand,

    -- ** SlashCommandMetadata
    SlashCommandMetadata (..),
    newSlashCommandMetadata,

    -- ** SlashCommandMetadata_Type
    SlashCommandMetadata_Type (..),

    -- ** Space
    Space (..),
    newSpace,

    -- ** Space_PredefinedPermissionSettings
    Space_PredefinedPermissionSettings (..),

    -- ** Space_SpaceHistoryState
    Space_SpaceHistoryState (..),

    -- ** Space_SpaceThreadingState
    Space_SpaceThreadingState (..),

    -- ** Space_SpaceType
    Space_SpaceType (..),

    -- ** Space_Type
    Space_Type (..),

    -- ** SpaceBatchUpdatedEventData
    SpaceBatchUpdatedEventData (..),
    newSpaceBatchUpdatedEventData,

    -- ** SpaceDataSource
    SpaceDataSource (..),
    newSpaceDataSource,

    -- ** SpaceDetails
    SpaceDetails (..),
    newSpaceDetails,

    -- ** SpaceEvent
    SpaceEvent (..),
    newSpaceEvent,

    -- ** SpaceNotificationSetting
    SpaceNotificationSetting (..),
    newSpaceNotificationSetting,

    -- ** SpaceNotificationSetting_MuteSetting
    SpaceNotificationSetting_MuteSetting (..),

    -- ** SpaceNotificationSetting_NotificationSetting
    SpaceNotificationSetting_NotificationSetting (..),

    -- ** SpaceReadState
    SpaceReadState (..),
    newSpaceReadState,

    -- ** SpaceUpdatedEventData
    SpaceUpdatedEventData (..),
    newSpaceUpdatedEventData,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StringInputs
    StringInputs (..),
    newStringInputs,

    -- ** TextButton
    TextButton (..),
    newTextButton,

    -- ** TextParagraph
    TextParagraph (..),
    newTextParagraph,

    -- ** Thread
    Thread (..),
    newThread,

    -- ** ThreadReadState
    ThreadReadState (..),
    newThreadReadState,

    -- ** TimeInput
    TimeInput (..),
    newTimeInput,

    -- ** TimeZone
    TimeZone (..),
    newTimeZone,

    -- ** UpdatedWidget
    UpdatedWidget (..),
    newUpdatedWidget,

    -- ** UploadAttachmentRequest
    UploadAttachmentRequest (..),
    newUploadAttachmentRequest,

    -- ** UploadAttachmentResponse
    UploadAttachmentResponse (..),
    newUploadAttachmentResponse,

    -- ** User
    User (..),
    newUser,

    -- ** User_Type
    User_Type (..),

    -- ** UserMentionMetadata
    UserMentionMetadata (..),
    newUserMentionMetadata,

    -- ** UserMentionMetadata_Type
    UserMentionMetadata_Type (..),

    -- ** WidgetMarkup
    WidgetMarkup (..),
    newWidgetMarkup,

    -- ** SpacesMessagesCreateMessageReplyOption
    SpacesMessagesCreateMessageReplyOption (..),
  )
where

import Gogol.Chat.Media.Download
import Gogol.Chat.Media.Upload
import Gogol.Chat.Spaces.CompleteImport
import Gogol.Chat.Spaces.Create
import Gogol.Chat.Spaces.Delete
import Gogol.Chat.Spaces.FindDirectMessage
import Gogol.Chat.Spaces.Get
import Gogol.Chat.Spaces.List
import Gogol.Chat.Spaces.Members.Create
import Gogol.Chat.Spaces.Members.Delete
import Gogol.Chat.Spaces.Members.Get
import Gogol.Chat.Spaces.Members.List
import Gogol.Chat.Spaces.Members.Patch
import Gogol.Chat.Spaces.Messages.Attachments.Get
import Gogol.Chat.Spaces.Messages.Create
import Gogol.Chat.Spaces.Messages.Delete
import Gogol.Chat.Spaces.Messages.Get
import Gogol.Chat.Spaces.Messages.List
import Gogol.Chat.Spaces.Messages.Patch
import Gogol.Chat.Spaces.Messages.Reactions.Create
import Gogol.Chat.Spaces.Messages.Reactions.Delete
import Gogol.Chat.Spaces.Messages.Reactions.List
import Gogol.Chat.Spaces.Messages.Update
import Gogol.Chat.Spaces.Patch
import Gogol.Chat.Spaces.Search
import Gogol.Chat.Spaces.Setup
import Gogol.Chat.Spaces.SpaceEvents.Get
import Gogol.Chat.Spaces.SpaceEvents.List
import Gogol.Chat.Types
import Gogol.Chat.Users.Spaces.GetSpaceReadState
import Gogol.Chat.Users.Spaces.SpaceNotificationSetting.Get
import Gogol.Chat.Users.Spaces.SpaceNotificationSetting.Patch
import Gogol.Chat.Users.Spaces.Threads.GetThreadReadState
import Gogol.Chat.Users.Spaces.UpdateSpaceReadState
