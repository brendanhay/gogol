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
-- Module      : Gogol.Chat.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Chat.Internal.Product
  (

    -- * AccessSettings
    AccessSettings (..),
    newAccessSettings,

    -- * AccessoryWidget
    AccessoryWidget (..),
    newAccessoryWidget,

    -- * ActionParameter
    ActionParameter (..),
    newActionParameter,

    -- * ActionResponse
    ActionResponse (..),
    newActionResponse,

    -- * ActionStatus
    ActionStatus (..),
    newActionStatus,

    -- * Annotation
    Annotation (..),
    newAnnotation,

    -- * AttachedGif
    AttachedGif (..),
    newAttachedGif,

    -- * Attachment
    Attachment (..),
    newAttachment,

    -- * AttachmentDataRef
    AttachmentDataRef (..),
    newAttachmentDataRef,

    -- * Button
    Button (..),
    newButton,

    -- * Card
    Card (..),
    newCard,

    -- * CardAction
    CardAction (..),
    newCardAction,

    -- * CardHeader
    CardHeader (..),
    newCardHeader,

    -- * CardWithId
    CardWithId (..),
    newCardWithId,

    -- * ChatAppLogEntry
    ChatAppLogEntry (..),
    newChatAppLogEntry,

    -- * ChatClientDataSourceMarkup
    ChatClientDataSourceMarkup (..),
    newChatClientDataSourceMarkup,

    -- * ChatSpaceLinkData
    ChatSpaceLinkData (..),
    newChatSpaceLinkData,

    -- * Color
    Color (..),
    newColor,

    -- * CommonEventObject
    CommonEventObject (..),
    newCommonEventObject,

    -- * CommonEventObject_FormInputs
    CommonEventObject_FormInputs (..),
    newCommonEventObject_FormInputs,

    -- * CommonEventObject_Parameters
    CommonEventObject_Parameters (..),
    newCommonEventObject_Parameters,

    -- * CompleteImportSpaceRequest
    CompleteImportSpaceRequest (..),
    newCompleteImportSpaceRequest,

    -- * CompleteImportSpaceResponse
    CompleteImportSpaceResponse (..),
    newCompleteImportSpaceResponse,

    -- * CustomEmoji
    CustomEmoji (..),
    newCustomEmoji,

    -- * DateInput
    DateInput (..),
    newDateInput,

    -- * DateTimeInput
    DateTimeInput (..),
    newDateTimeInput,

    -- * DeletionMetadata
    DeletionMetadata (..),
    newDeletionMetadata,

    -- * DeprecatedEvent
    DeprecatedEvent (..),
    newDeprecatedEvent,

    -- * Dialog
    Dialog (..),
    newDialog,

    -- * DialogAction
    DialogAction (..),
    newDialogAction,

    -- * DriveDataRef
    DriveDataRef (..),
    newDriveDataRef,

    -- * DriveLinkData
    DriveLinkData (..),
    newDriveLinkData,

    -- * Emoji
    Emoji (..),
    newEmoji,

    -- * EmojiReactionSummary
    EmojiReactionSummary (..),
    newEmojiReactionSummary,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FormAction
    FormAction (..),
    newFormAction,

    -- * GoogleAppsCardV1Action
    GoogleAppsCardV1Action (..),
    newGoogleAppsCardV1Action,

    -- * GoogleAppsCardV1ActionParameter
    GoogleAppsCardV1ActionParameter (..),
    newGoogleAppsCardV1ActionParameter,

    -- * GoogleAppsCardV1BorderStyle
    GoogleAppsCardV1BorderStyle (..),
    newGoogleAppsCardV1BorderStyle,

    -- * GoogleAppsCardV1Button
    GoogleAppsCardV1Button (..),
    newGoogleAppsCardV1Button,

    -- * GoogleAppsCardV1ButtonList
    GoogleAppsCardV1ButtonList (..),
    newGoogleAppsCardV1ButtonList,

    -- * GoogleAppsCardV1Card
    GoogleAppsCardV1Card (..),
    newGoogleAppsCardV1Card,

    -- * GoogleAppsCardV1CardAction
    GoogleAppsCardV1CardAction (..),
    newGoogleAppsCardV1CardAction,

    -- * GoogleAppsCardV1CardFixedFooter
    GoogleAppsCardV1CardFixedFooter (..),
    newGoogleAppsCardV1CardFixedFooter,

    -- * GoogleAppsCardV1CardHeader
    GoogleAppsCardV1CardHeader (..),
    newGoogleAppsCardV1CardHeader,

    -- * GoogleAppsCardV1Carousel
    GoogleAppsCardV1Carousel (..),
    newGoogleAppsCardV1Carousel,

    -- * GoogleAppsCardV1CarouselCard
    GoogleAppsCardV1CarouselCard (..),
    newGoogleAppsCardV1CarouselCard,

    -- * GoogleAppsCardV1Chip
    GoogleAppsCardV1Chip (..),
    newGoogleAppsCardV1Chip,

    -- * GoogleAppsCardV1ChipList
    GoogleAppsCardV1ChipList (..),
    newGoogleAppsCardV1ChipList,

    -- * GoogleAppsCardV1CollapseControl
    GoogleAppsCardV1CollapseControl (..),
    newGoogleAppsCardV1CollapseControl,

    -- * GoogleAppsCardV1Column
    GoogleAppsCardV1Column (..),
    newGoogleAppsCardV1Column,

    -- * GoogleAppsCardV1Columns
    GoogleAppsCardV1Columns (..),
    newGoogleAppsCardV1Columns,

    -- * GoogleAppsCardV1DateTimePicker
    GoogleAppsCardV1DateTimePicker (..),
    newGoogleAppsCardV1DateTimePicker,

    -- * GoogleAppsCardV1DecoratedText
    GoogleAppsCardV1DecoratedText (..),
    newGoogleAppsCardV1DecoratedText,

    -- * GoogleAppsCardV1Divider
    GoogleAppsCardV1Divider (..),
    newGoogleAppsCardV1Divider,

    -- * GoogleAppsCardV1Grid
    GoogleAppsCardV1Grid (..),
    newGoogleAppsCardV1Grid,

    -- * GoogleAppsCardV1GridItem
    GoogleAppsCardV1GridItem (..),
    newGoogleAppsCardV1GridItem,

    -- * GoogleAppsCardV1Icon
    GoogleAppsCardV1Icon (..),
    newGoogleAppsCardV1Icon,

    -- * GoogleAppsCardV1Image
    GoogleAppsCardV1Image (..),
    newGoogleAppsCardV1Image,

    -- * GoogleAppsCardV1ImageComponent
    GoogleAppsCardV1ImageComponent (..),
    newGoogleAppsCardV1ImageComponent,

    -- * GoogleAppsCardV1ImageCropStyle
    GoogleAppsCardV1ImageCropStyle (..),
    newGoogleAppsCardV1ImageCropStyle,

    -- * GoogleAppsCardV1MaterialIcon
    GoogleAppsCardV1MaterialIcon (..),
    newGoogleAppsCardV1MaterialIcon,

    -- * GoogleAppsCardV1NestedWidget
    GoogleAppsCardV1NestedWidget (..),
    newGoogleAppsCardV1NestedWidget,

    -- * GoogleAppsCardV1OnClick
    GoogleAppsCardV1OnClick (..),
    newGoogleAppsCardV1OnClick,

    -- * GoogleAppsCardV1OpenLink
    GoogleAppsCardV1OpenLink (..),
    newGoogleAppsCardV1OpenLink,

    -- * GoogleAppsCardV1OverflowMenu
    GoogleAppsCardV1OverflowMenu (..),
    newGoogleAppsCardV1OverflowMenu,

    -- * GoogleAppsCardV1OverflowMenuItem
    GoogleAppsCardV1OverflowMenuItem (..),
    newGoogleAppsCardV1OverflowMenuItem,

    -- * GoogleAppsCardV1PlatformDataSource
    GoogleAppsCardV1PlatformDataSource (..),
    newGoogleAppsCardV1PlatformDataSource,

    -- * GoogleAppsCardV1Section
    GoogleAppsCardV1Section (..),
    newGoogleAppsCardV1Section,

    -- * GoogleAppsCardV1SelectionInput
    GoogleAppsCardV1SelectionInput (..),
    newGoogleAppsCardV1SelectionInput,

    -- * GoogleAppsCardV1SelectionItem
    GoogleAppsCardV1SelectionItem (..),
    newGoogleAppsCardV1SelectionItem,

    -- * GoogleAppsCardV1SuggestionItem
    GoogleAppsCardV1SuggestionItem (..),
    newGoogleAppsCardV1SuggestionItem,

    -- * GoogleAppsCardV1Suggestions
    GoogleAppsCardV1Suggestions (..),
    newGoogleAppsCardV1Suggestions,

    -- * GoogleAppsCardV1SwitchControl
    GoogleAppsCardV1SwitchControl (..),
    newGoogleAppsCardV1SwitchControl,

    -- * GoogleAppsCardV1TextInput
    GoogleAppsCardV1TextInput (..),
    newGoogleAppsCardV1TextInput,

    -- * GoogleAppsCardV1TextParagraph
    GoogleAppsCardV1TextParagraph (..),
    newGoogleAppsCardV1TextParagraph,

    -- * GoogleAppsCardV1Widget
    GoogleAppsCardV1Widget (..),
    newGoogleAppsCardV1Widget,

    -- * GoogleAppsCardV1Widgets
    GoogleAppsCardV1Widgets (..),
    newGoogleAppsCardV1Widgets,

    -- * Group
    Group (..),
    newGroup,

    -- * HostAppDataSourceMarkup
    HostAppDataSourceMarkup (..),
    newHostAppDataSourceMarkup,

    -- * Image
    Image (..),
    newImage,

    -- * ImageButton
    ImageButton (..),
    newImageButton,

    -- * Inputs
    Inputs (..),
    newInputs,

    -- * KeyValue
    KeyValue (..),
    newKeyValue,

    -- * ListMembershipsResponse
    ListMembershipsResponse (..),
    newListMembershipsResponse,

    -- * ListMessagesResponse
    ListMessagesResponse (..),
    newListMessagesResponse,

    -- * ListReactionsResponse
    ListReactionsResponse (..),
    newListReactionsResponse,

    -- * ListSpaceEventsResponse
    ListSpaceEventsResponse (..),
    newListSpaceEventsResponse,

    -- * ListSpacesResponse
    ListSpacesResponse (..),
    newListSpacesResponse,

    -- * MatchedUrl
    MatchedUrl (..),
    newMatchedUrl,

    -- * Media
    Media (..),
    newMedia,

    -- * Membership
    Membership (..),
    newMembership,

    -- * MembershipBatchCreatedEventData
    MembershipBatchCreatedEventData (..),
    newMembershipBatchCreatedEventData,

    -- * MembershipBatchDeletedEventData
    MembershipBatchDeletedEventData (..),
    newMembershipBatchDeletedEventData,

    -- * MembershipBatchUpdatedEventData
    MembershipBatchUpdatedEventData (..),
    newMembershipBatchUpdatedEventData,

    -- * MembershipCount
    MembershipCount (..),
    newMembershipCount,

    -- * MembershipCreatedEventData
    MembershipCreatedEventData (..),
    newMembershipCreatedEventData,

    -- * MembershipDeletedEventData
    MembershipDeletedEventData (..),
    newMembershipDeletedEventData,

    -- * MembershipUpdatedEventData
    MembershipUpdatedEventData (..),
    newMembershipUpdatedEventData,

    -- * Message
    Message (..),
    newMessage,

    -- * MessageBatchCreatedEventData
    MessageBatchCreatedEventData (..),
    newMessageBatchCreatedEventData,

    -- * MessageBatchDeletedEventData
    MessageBatchDeletedEventData (..),
    newMessageBatchDeletedEventData,

    -- * MessageBatchUpdatedEventData
    MessageBatchUpdatedEventData (..),
    newMessageBatchUpdatedEventData,

    -- * MessageCreatedEventData
    MessageCreatedEventData (..),
    newMessageCreatedEventData,

    -- * MessageDeletedEventData
    MessageDeletedEventData (..),
    newMessageDeletedEventData,

    -- * MessageUpdatedEventData
    MessageUpdatedEventData (..),
    newMessageUpdatedEventData,

    -- * OnClick
    OnClick (..),
    newOnClick,

    -- * OpenLink
    OpenLink (..),
    newOpenLink,

    -- * PermissionSetting
    PermissionSetting (..),
    newPermissionSetting,

    -- * PermissionSettings
    PermissionSettings (..),
    newPermissionSettings,

    -- * QuotedMessageMetadata
    QuotedMessageMetadata (..),
    newQuotedMessageMetadata,

    -- * Reaction
    Reaction (..),
    newReaction,

    -- * ReactionBatchCreatedEventData
    ReactionBatchCreatedEventData (..),
    newReactionBatchCreatedEventData,

    -- * ReactionBatchDeletedEventData
    ReactionBatchDeletedEventData (..),
    newReactionBatchDeletedEventData,

    -- * ReactionCreatedEventData
    ReactionCreatedEventData (..),
    newReactionCreatedEventData,

    -- * ReactionDeletedEventData
    ReactionDeletedEventData (..),
    newReactionDeletedEventData,

    -- * RichLinkMetadata
    RichLinkMetadata (..),
    newRichLinkMetadata,

    -- * SearchSpacesResponse
    SearchSpacesResponse (..),
    newSearchSpacesResponse,

    -- * Section
    Section (..),
    newSection,

    -- * SelectionItems
    SelectionItems (..),
    newSelectionItems,

    -- * SetUpSpaceRequest
    SetUpSpaceRequest (..),
    newSetUpSpaceRequest,

    -- * SlashCommand
    SlashCommand (..),
    newSlashCommand,

    -- * SlashCommandMetadata
    SlashCommandMetadata (..),
    newSlashCommandMetadata,

    -- * Space
    Space (..),
    newSpace,

    -- * SpaceBatchUpdatedEventData
    SpaceBatchUpdatedEventData (..),
    newSpaceBatchUpdatedEventData,

    -- * SpaceDataSource
    SpaceDataSource (..),
    newSpaceDataSource,

    -- * SpaceDetails
    SpaceDetails (..),
    newSpaceDetails,

    -- * SpaceEvent
    SpaceEvent (..),
    newSpaceEvent,

    -- * SpaceReadState
    SpaceReadState (..),
    newSpaceReadState,

    -- * SpaceUpdatedEventData
    SpaceUpdatedEventData (..),
    newSpaceUpdatedEventData,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StringInputs
    StringInputs (..),
    newStringInputs,

    -- * TextButton
    TextButton (..),
    newTextButton,

    -- * TextParagraph
    TextParagraph (..),
    newTextParagraph,

    -- * Thread
    Thread (..),
    newThread,

    -- * ThreadReadState
    ThreadReadState (..),
    newThreadReadState,

    -- * TimeInput
    TimeInput (..),
    newTimeInput,

    -- * TimeZone
    TimeZone (..),
    newTimeZone,

    -- * UpdatedWidget
    UpdatedWidget (..),
    newUpdatedWidget,

    -- * UploadAttachmentRequest
    UploadAttachmentRequest (..),
    newUploadAttachmentRequest,

    -- * UploadAttachmentResponse
    UploadAttachmentResponse (..),
    newUploadAttachmentResponse,

    -- * User
    User (..),
    newUser,

    -- * UserMentionMetadata
    UserMentionMetadata (..),
    newUserMentionMetadata,

    -- * WidgetMarkup
    WidgetMarkup (..),
    newWidgetMarkup,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Internal.Sum

-- | Represents the <https://support.google.com/chat/answer/11971020 access setting> of the space.
--
-- /See:/ 'newAccessSettings' smart constructor.
data AccessSettings = AccessSettings
    {
      -- | Output only. Indicates the access state of the space.
      accessState :: (Core.Maybe AccessSettings_AccessState)
      -- | Optional. The resource name of the <https://support.google.com/a/answer/9934697 target audience> who can discover the space, join the space, and preview the messages in the space. If unset, only users or Google Groups who have been individually invited or added to the space can access it. For details, see <https://developers.google.com/workspace/chat/space-target-audience Make a space discoverable to a target audience>. Format: @audiences\/{audience}@ To use the default target audience for the Google Workspace organization, set to @audiences\/default@. Reading the target audience supports: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> with the @chat.app.spaces@ scope in <https://developers.google.com/workspace/preview Developer Preview>. This field is not populated when using the
      -- @chat.bot@ scope with <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication>. Setting the target audience requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
    , audience :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSettings' with the minimum fields required to make a request.
newAccessSettings 
    ::  AccessSettings
newAccessSettings =
  AccessSettings {accessState = Core.Nothing, audience = Core.Nothing}

instance Core.FromJSON AccessSettings where
        parseJSON
          = Core.withObject "AccessSettings"
              (\ o ->
                 AccessSettings Core.<$>
                   (o Core..:? "accessState") Core.<*>
                     (o Core..:? "audience"))

instance Core.ToJSON AccessSettings where
        toJSON AccessSettings{..}
          = Core.object
              (Core.catMaybes
                 [("accessState" Core..=) Core.<$> accessState,
                  ("audience" Core..=) Core.<$> audience])


-- | One or more interactive widgets that appear at the bottom of a message. For details, see <https://developers.google.com/workspace/chat/create-messages#add-accessory-widgets Add interactive widgets at the bottom of a message>.
--
-- /See:/ 'newAccessoryWidget' smart constructor.
newtype AccessoryWidget = AccessoryWidget
    {
      -- | A list of buttons.
      buttonList :: (Core.Maybe GoogleAppsCardV1ButtonList)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessoryWidget' with the minimum fields required to make a request.
newAccessoryWidget 
    ::  AccessoryWidget
newAccessoryWidget = AccessoryWidget {buttonList = Core.Nothing}

instance Core.FromJSON AccessoryWidget where
        parseJSON
          = Core.withObject "AccessoryWidget"
              (\ o ->
                 AccessoryWidget Core.<$> (o Core..:? "buttonList"))

instance Core.ToJSON AccessoryWidget where
        toJSON AccessoryWidget{..}
          = Core.object
              (Core.catMaybes
                 [("buttonList" Core..=) Core.<$> buttonList])


-- | List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze one day, snooze next week. You might use @action method = snooze()@, passing the snooze type and snooze time in the list of string parameters.
--
-- /See:/ 'newActionParameter' smart constructor.
data ActionParameter = ActionParameter
    {
      -- | The name of the parameter for the action script.
      key :: (Core.Maybe Core.Text)
      -- | The value of the parameter.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionParameter' with the minimum fields required to make a request.
newActionParameter 
    ::  ActionParameter
newActionParameter = ActionParameter {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ActionParameter where
        parseJSON
          = Core.withObject "ActionParameter"
              (\ o ->
                 ActionParameter Core.<$>
                   (o Core..:? "key") Core.<*> (o Core..:? "value"))

instance Core.ToJSON ActionParameter where
        toJSON ActionParameter{..}
          = Core.object
              (Core.catMaybes
                 [("key" Core..=) Core.<$> key,
                  ("value" Core..=) Core.<$> value])


-- | Parameters that a Chat app can use to configure how its response is posted.
--
-- /See:/ 'newActionResponse' smart constructor.
data ActionResponse = ActionResponse
    {
      -- | Input only. A response to an interaction event related to a <https://developers.google.com/workspace/chat/dialogs dialog>. Must be accompanied by @ResponseType.Dialog@.
      dialogAction :: (Core.Maybe DialogAction)
      -- | Input only. The type of Chat app response.
    , type' :: (Core.Maybe ActionResponse_Type)
      -- | Input only. The response of the updated widget.
    , updatedWidget :: (Core.Maybe UpdatedWidget)
      -- | Input only. URL for users to authenticate or configure. (Only for @REQUEST_CONFIG@ response types.)
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionResponse' with the minimum fields required to make a request.
newActionResponse 
    ::  ActionResponse
newActionResponse =
  ActionResponse
    { dialogAction = Core.Nothing
    , type' = Core.Nothing
    , updatedWidget = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON ActionResponse where
        parseJSON
          = Core.withObject "ActionResponse"
              (\ o ->
                 ActionResponse Core.<$>
                   (o Core..:? "dialogAction") Core.<*>
                     (o Core..:? "type")
                     Core.<*> (o Core..:? "updatedWidget")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON ActionResponse where
        toJSON ActionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("dialogAction" Core..=) Core.<$> dialogAction,
                  ("type" Core..=) Core.<$> type',
                  ("updatedWidget" Core..=) Core.<$> updatedWidget,
                  ("url" Core..=) Core.<$> url])


-- | Represents the status for a request to either invoke or submit a <https://developers.google.com/workspace/chat/dialogs dialog>.
--
-- /See:/ 'newActionStatus' smart constructor.
data ActionStatus = ActionStatus
    {
      -- | The status code.
      statusCode :: (Core.Maybe ActionStatus_StatusCode)
      -- | The message to send users about the status of their request. If unset, a generic message based on the @status_code@ is sent.
    , userFacingMessage :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionStatus' with the minimum fields required to make a request.
newActionStatus 
    ::  ActionStatus
newActionStatus =
  ActionStatus {statusCode = Core.Nothing, userFacingMessage = Core.Nothing}

instance Core.FromJSON ActionStatus where
        parseJSON
          = Core.withObject "ActionStatus"
              (\ o ->
                 ActionStatus Core.<$>
                   (o Core..:? "statusCode") Core.<*>
                     (o Core..:? "userFacingMessage"))

instance Core.ToJSON ActionStatus where
        toJSON ActionStatus{..}
          = Core.object
              (Core.catMaybes
                 [("statusCode" Core..=) Core.<$> statusCode,
                  ("userFacingMessage" Core..=) Core.<$>
                    userFacingMessage])


-- | Output only. Annotations associated with the plain-text body of the message. To add basic formatting to a text message, see <https://developers.google.com/workspace/chat/format-messages Format text messages>. Example plain-text message body: @Hello \@FooBot how are you!\"@ The corresponding annotations metadata: @\"annotations\":[{ \"type\":\"USER_MENTION\", \"startIndex\":6, \"length\":7, \"userMention\": { \"user\": { \"name\":\"users\/{user}\", \"displayName\":\"FooBot\", \"avatarUrl\":\"https:\/\/goo.gl\/aeDtrS\", \"type\":\"BOT\" }, \"type\":\"MENTION\" } }]@
--
-- /See:/ 'newAnnotation' smart constructor.
data Annotation = Annotation
    {
      -- | Length of the substring in the plain-text message body this annotation corresponds to.
      length :: (Core.Maybe Core.Int32)
      -- | The metadata for a rich link.
    , richLinkMetadata :: (Core.Maybe RichLinkMetadata)
      -- | The metadata for a slash command.
    , slashCommand :: (Core.Maybe SlashCommandMetadata)
      -- | Start index (0-based, inclusive) in the plain-text message body this annotation corresponds to.
    , startIndex :: (Core.Maybe Core.Int32)
      -- | The type of this annotation.
    , type' :: (Core.Maybe Annotation_Type)
      -- | The metadata of user mention.
    , userMention :: (Core.Maybe UserMentionMetadata)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
newAnnotation 
    ::  Annotation
newAnnotation =
  Annotation
    { length = Core.Nothing
    , richLinkMetadata = Core.Nothing
    , slashCommand = Core.Nothing
    , startIndex = Core.Nothing
    , type' = Core.Nothing
    , userMention = Core.Nothing
    }

instance Core.FromJSON Annotation where
        parseJSON
          = Core.withObject "Annotation"
              (\ o ->
                 Annotation Core.<$>
                   (o Core..:? "length") Core.<*>
                     (o Core..:? "richLinkMetadata")
                     Core.<*> (o Core..:? "slashCommand")
                     Core.<*> (o Core..:? "startIndex")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "userMention"))

instance Core.ToJSON Annotation where
        toJSON Annotation{..}
          = Core.object
              (Core.catMaybes
                 [("length" Core..=) Core.<$> length,
                  ("richLinkMetadata" Core..=) Core.<$>
                    richLinkMetadata,
                  ("slashCommand" Core..=) Core.<$> slashCommand,
                  ("startIndex" Core..=) Core.<$> startIndex,
                  ("type" Core..=) Core.<$> type',
                  ("userMention" Core..=) Core.<$> userMention])


-- | A GIF image that\'s specified by a URL.
--
-- /See:/ 'newAttachedGif' smart constructor.
newtype AttachedGif = AttachedGif
    {
      -- | Output only. The URL that hosts the GIF image.
      uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttachedGif' with the minimum fields required to make a request.
newAttachedGif 
    ::  AttachedGif
newAttachedGif = AttachedGif {uri = Core.Nothing}

instance Core.FromJSON AttachedGif where
        parseJSON
          = Core.withObject "AttachedGif"
              (\ o -> AttachedGif Core.<$> (o Core..:? "uri"))

instance Core.ToJSON AttachedGif where
        toJSON AttachedGif{..}
          = Core.object
              (Core.catMaybes [("uri" Core..=) Core.<$> uri])


-- | An attachment in Google Chat.
--
-- /See:/ 'newAttachment' smart constructor.
data Attachment = Attachment
    {
      -- | Optional. A reference to the attachment data. This field is used to create or update messages with attachments, or with the media API to download the attachment data.
      attachmentDataRef :: (Core.Maybe AttachmentDataRef)
      -- | Output only. The original file name for the content, not the full path.
    , contentName :: (Core.Maybe Core.Text)
      -- | Output only. The content type (MIME type) of the file.
    , contentType :: (Core.Maybe Core.Text)
      -- | Output only. The download URL which should be used to allow a human user to download the attachment. Chat apps shouldn\'t use this URL to download attachment content.
    , downloadUri :: (Core.Maybe Core.Text)
      -- | Output only. A reference to the Google Drive attachment. This field is used with the Google Drive API.
    , driveDataRef :: (Core.Maybe DriveDataRef)
      -- | Optional. Resource name of the attachment, in the form @spaces\/{space}\/messages\/{message}\/attachments\/{attachment}@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The source of the attachment.
    , source :: (Core.Maybe Attachment_Source)
      -- | Output only. The thumbnail URL which should be used to preview the attachment to a human user. Chat apps shouldn\'t use this URL to download attachment content.
    , thumbnailUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
newAttachment 
    ::  Attachment
newAttachment =
  Attachment
    { attachmentDataRef = Core.Nothing
    , contentName = Core.Nothing
    , contentType = Core.Nothing
    , downloadUri = Core.Nothing
    , driveDataRef = Core.Nothing
    , name = Core.Nothing
    , source = Core.Nothing
    , thumbnailUri = Core.Nothing
    }

instance Core.FromJSON Attachment where
        parseJSON
          = Core.withObject "Attachment"
              (\ o ->
                 Attachment Core.<$>
                   (o Core..:? "attachmentDataRef") Core.<*>
                     (o Core..:? "contentName")
                     Core.<*> (o Core..:? "contentType")
                     Core.<*> (o Core..:? "downloadUri")
                     Core.<*> (o Core..:? "driveDataRef")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "source")
                     Core.<*> (o Core..:? "thumbnailUri"))

instance Core.ToJSON Attachment where
        toJSON Attachment{..}
          = Core.object
              (Core.catMaybes
                 [("attachmentDataRef" Core..=) Core.<$>
                    attachmentDataRef,
                  ("contentName" Core..=) Core.<$> contentName,
                  ("contentType" Core..=) Core.<$> contentType,
                  ("downloadUri" Core..=) Core.<$> downloadUri,
                  ("driveDataRef" Core..=) Core.<$> driveDataRef,
                  ("name" Core..=) Core.<$> name,
                  ("source" Core..=) Core.<$> source,
                  ("thumbnailUri" Core..=) Core.<$> thumbnailUri])


-- | A reference to the attachment data.
--
-- /See:/ 'newAttachmentDataRef' smart constructor.
data AttachmentDataRef = AttachmentDataRef
    {
      -- | Optional. Opaque token containing a reference to an uploaded attachment. Treated by clients as an opaque string and used to create or update Chat messages with attachments.
      attachmentUploadToken :: (Core.Maybe Core.Text)
      -- | Optional. The resource name of the attachment data. This field is used with the media API to download the attachment data.
    , resourceName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttachmentDataRef' with the minimum fields required to make a request.
newAttachmentDataRef 
    ::  AttachmentDataRef
newAttachmentDataRef =
  AttachmentDataRef
    {attachmentUploadToken = Core.Nothing, resourceName = Core.Nothing}

instance Core.FromJSON AttachmentDataRef where
        parseJSON
          = Core.withObject "AttachmentDataRef"
              (\ o ->
                 AttachmentDataRef Core.<$>
                   (o Core..:? "attachmentUploadToken") Core.<*>
                     (o Core..:? "resourceName"))

instance Core.ToJSON AttachmentDataRef where
        toJSON AttachmentDataRef{..}
          = Core.object
              (Core.catMaybes
                 [("attachmentUploadToken" Core..=) Core.<$>
                    attachmentUploadToken,
                  ("resourceName" Core..=) Core.<$> resourceName])


-- | A button. Can be a text button or an image button.
--
-- /See:/ 'newButton' smart constructor.
data Button = Button
    {
      -- | A button with image and @onclick@ action.
      imageButton :: (Core.Maybe ImageButton)
      -- | A button with text and @onclick@ action.
    , textButton :: (Core.Maybe TextButton)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Button' with the minimum fields required to make a request.
newButton 
    ::  Button
newButton = Button {imageButton = Core.Nothing, textButton = Core.Nothing}

instance Core.FromJSON Button where
        parseJSON
          = Core.withObject "Button"
              (\ o ->
                 Button Core.<$>
                   (o Core..:? "imageButton") Core.<*>
                     (o Core..:? "textButton"))

instance Core.ToJSON Button where
        toJSON Button{..}
          = Core.object
              (Core.catMaybes
                 [("imageButton" Core..=) Core.<$> imageButton,
                  ("textButton" Core..=) Core.<$> textButton])


-- | A card is a UI element that can contain UI widgets such as text and images.
--
-- /See:/ 'newCard' smart constructor.
data Card = Card
    {
      -- | The actions of this card.
      cardActions :: (Core.Maybe [CardAction])
      -- | The header of the card. A header usually contains a title and an image.
    , header :: (Core.Maybe CardHeader)
      -- | Name of the card.
    , name :: (Core.Maybe Core.Text)
      -- | Sections are separated by a line divider.
    , sections :: (Core.Maybe [Section])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Card' with the minimum fields required to make a request.
newCard 
    ::  Card
newCard =
  Card
    { cardActions = Core.Nothing
    , header = Core.Nothing
    , name = Core.Nothing
    , sections = Core.Nothing
    }

instance Core.FromJSON Card where
        parseJSON
          = Core.withObject "Card"
              (\ o ->
                 Card Core.<$>
                   (o Core..:? "cardActions") Core.<*>
                     (o Core..:? "header")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "sections"))

instance Core.ToJSON Card where
        toJSON Card{..}
          = Core.object
              (Core.catMaybes
                 [("cardActions" Core..=) Core.<$> cardActions,
                  ("header" Core..=) Core.<$> header,
                  ("name" Core..=) Core.<$> name,
                  ("sections" Core..=) Core.<$> sections])


-- | A card action is the action associated with the card. For an invoice card, a typical action would be: delete invoice, email invoice or open the invoice in browser. Not supported by Google Chat apps.
--
-- /See:/ 'newCardAction' smart constructor.
data CardAction = CardAction
    {
      -- | The label used to be displayed in the action menu item.
      actionLabel :: (Core.Maybe Core.Text)
      -- | The onclick action for this action item.
    , onClick :: (Core.Maybe OnClick)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CardAction' with the minimum fields required to make a request.
newCardAction 
    ::  CardAction
newCardAction = CardAction {actionLabel = Core.Nothing, onClick = Core.Nothing}

instance Core.FromJSON CardAction where
        parseJSON
          = Core.withObject "CardAction"
              (\ o ->
                 CardAction Core.<$>
                   (o Core..:? "actionLabel") Core.<*>
                     (o Core..:? "onClick"))

instance Core.ToJSON CardAction where
        toJSON CardAction{..}
          = Core.object
              (Core.catMaybes
                 [("actionLabel" Core..=) Core.<$> actionLabel,
                  ("onClick" Core..=) Core.<$> onClick])


--
-- /See:/ 'newCardHeader' smart constructor.
data CardHeader = CardHeader
    {
      -- | The image\'s type (for example, square border or circular border).
      imageStyle :: (Core.Maybe CardHeader_ImageStyle)
      -- | The URL of the image in the card header.
    , imageUrl :: (Core.Maybe Core.Text)
      -- | The subtitle of the card header.
    , subtitle :: (Core.Maybe Core.Text)
      -- | The title must be specified. The header has a fixed height: if both a title and subtitle is specified, each takes up one line. If only the title is specified, it takes up both lines.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CardHeader' with the minimum fields required to make a request.
newCardHeader 
    ::  CardHeader
newCardHeader =
  CardHeader
    { imageStyle = Core.Nothing
    , imageUrl = Core.Nothing
    , subtitle = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON CardHeader where
        parseJSON
          = Core.withObject "CardHeader"
              (\ o ->
                 CardHeader Core.<$>
                   (o Core..:? "imageStyle") Core.<*>
                     (o Core..:? "imageUrl")
                     Core.<*> (o Core..:? "subtitle")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON CardHeader where
        toJSON CardHeader{..}
          = Core.object
              (Core.catMaybes
                 [("imageStyle" Core..=) Core.<$> imageStyle,
                  ("imageUrl" Core..=) Core.<$> imageUrl,
                  ("subtitle" Core..=) Core.<$> subtitle,
                  ("title" Core..=) Core.<$> title])


-- | A <https://developers.google.com/workspace/chat/api/reference/rest/v1/cards card> in a Google Chat message. Only Chat apps can create cards. If your Chat app <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticates as a user>, the message can\'t contain cards. <https://addons.gsuite.google.com/uikit/builder Card builder>
--
-- /See:/ 'newCardWithId' smart constructor.
data CardWithId = CardWithId
    {
      -- | A card. Maximum size is 32 KB.
      card :: (Core.Maybe GoogleAppsCardV1Card)
      -- | Required if the message contains multiple cards. A unique identifier for a card in a message.
    , cardId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CardWithId' with the minimum fields required to make a request.
newCardWithId 
    ::  CardWithId
newCardWithId = CardWithId {card = Core.Nothing, cardId = Core.Nothing}

instance Core.FromJSON CardWithId where
        parseJSON
          = Core.withObject "CardWithId"
              (\ o ->
                 CardWithId Core.<$>
                   (o Core..:? "card") Core.<*> (o Core..:? "cardId"))

instance Core.ToJSON CardWithId where
        toJSON CardWithId{..}
          = Core.object
              (Core.catMaybes
                 [("card" Core..=) Core.<$> card,
                  ("cardId" Core..=) Core.<$> cardId])


-- | JSON payload of error messages. If the Cloud Logging API is enabled, these error messages are logged to <https://cloud.google.com/logging/docs Google Cloud Logging>.
--
-- /See:/ 'newChatAppLogEntry' smart constructor.
data ChatAppLogEntry = ChatAppLogEntry
    {
      -- | The deployment that caused the error. For Chat apps built in Apps Script, this is the deployment ID defined by Apps Script.
      deployment :: (Core.Maybe Core.Text)
      -- | The unencrypted @callback_method@ name that was running when the error was encountered.
    , deploymentFunction :: (Core.Maybe Core.Text)
      -- | The error code and message.
    , error :: (Core.Maybe Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatAppLogEntry' with the minimum fields required to make a request.
newChatAppLogEntry 
    ::  ChatAppLogEntry
newChatAppLogEntry =
  ChatAppLogEntry
    { deployment = Core.Nothing
    , deploymentFunction = Core.Nothing
    , error = Core.Nothing
    }

instance Core.FromJSON ChatAppLogEntry where
        parseJSON
          = Core.withObject "ChatAppLogEntry"
              (\ o ->
                 ChatAppLogEntry Core.<$>
                   (o Core..:? "deployment") Core.<*>
                     (o Core..:? "deploymentFunction")
                     Core.<*> (o Core..:? "error"))

instance Core.ToJSON ChatAppLogEntry where
        toJSON ChatAppLogEntry{..}
          = Core.object
              (Core.catMaybes
                 [("deployment" Core..=) Core.<$> deployment,
                  ("deploymentFunction" Core..=) Core.<$>
                    deploymentFunction,
                  ("error" Core..=) Core.<$> error])


-- | For a @SelectionInput@ widget that uses a multiselect menu, a data source from Google Chat. The data source populates selection items for the multiselect menu. For example, a user can select Google Chat spaces that they\'re a member of. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newChatClientDataSourceMarkup' smart constructor.
newtype ChatClientDataSourceMarkup = ChatClientDataSourceMarkup
    {
      -- | Google Chat spaces that the user is a member of.
      spaceDataSource :: (Core.Maybe SpaceDataSource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatClientDataSourceMarkup' with the minimum fields required to make a request.
newChatClientDataSourceMarkup 
    ::  ChatClientDataSourceMarkup
newChatClientDataSourceMarkup =
  ChatClientDataSourceMarkup {spaceDataSource = Core.Nothing}

instance Core.FromJSON ChatClientDataSourceMarkup
         where
        parseJSON
          = Core.withObject "ChatClientDataSourceMarkup"
              (\ o ->
                 ChatClientDataSourceMarkup Core.<$>
                   (o Core..:? "spaceDataSource"))

instance Core.ToJSON ChatClientDataSourceMarkup where
        toJSON ChatClientDataSourceMarkup{..}
          = Core.object
              (Core.catMaybes
                 [("spaceDataSource" Core..=) Core.<$>
                    spaceDataSource])


-- | Data for Chat space links.
--
-- /See:/ 'newChatSpaceLinkData' smart constructor.
data ChatSpaceLinkData = ChatSpaceLinkData
    {
      -- | The message of the linked Chat space resource. Format: @spaces\/{space}\/messages\/{message}@
      message :: (Core.Maybe Core.Text)
      -- | The space of the linked Chat space resource. Format: @spaces\/{space}@
    , space :: (Core.Maybe Core.Text)
      -- | The thread of the linked Chat space resource. Format: @spaces\/{space}\/threads\/{thread}@
    , thread :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpaceLinkData' with the minimum fields required to make a request.
newChatSpaceLinkData 
    ::  ChatSpaceLinkData
newChatSpaceLinkData =
  ChatSpaceLinkData
    {message = Core.Nothing, space = Core.Nothing, thread = Core.Nothing}

instance Core.FromJSON ChatSpaceLinkData where
        parseJSON
          = Core.withObject "ChatSpaceLinkData"
              (\ o ->
                 ChatSpaceLinkData Core.<$>
                   (o Core..:? "message") Core.<*> (o Core..:? "space")
                     Core.<*> (o Core..:? "thread"))

instance Core.ToJSON ChatSpaceLinkData where
        toJSON ChatSpaceLinkData{..}
          = Core.object
              (Core.catMaybes
                 [("message" Core..=) Core.<$> message,
                  ("space" Core..=) Core.<$> space,
                  ("thread" Core..=) Core.<$> thread])


-- | Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of @java.awt.Color@ in Java; it can also be trivially provided to UIColor\'s @+colorWithRed:green:blue:alpha@ method in iOS; and, with just a little work, it can be easily formatted into a CSS @rgba()@ string in JavaScript. This reference page doesn\'t have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most @1e-5@. Example (Java): import com.google.type.Color; \/\/ ... public static java.awt.Color fromProto(Color
-- protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red \/ denominator) .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); } return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/ ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha/wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha/wrapper != nil) { alpha = [alpha/wrapper value]; }
-- return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } \/\/ ... Example (JavaScript): \/\/ ... var protoToCssColor = function(rgb/color) { var redFrac = rgb/color.red || 0.0; var greenFrac = rgb/color.green || 0.0; var blueFrac = rgb/color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!(\'alpha\' in rgb/color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\', alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor =
-- function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \< missingZeros; i++) { resultBuilder.push(\'0\'); } resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/ ...
--
-- /See:/ 'newColor' smart constructor.
data Color = Color
    {
      -- | The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: @pixel color = alpha * (this color) + (1.0 - alpha) * (background color)@ This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).
      alpha :: (Core.Maybe Core.Double)
      -- | The amount of blue in the color as a value in the interval [0, 1].
    , blue :: (Core.Maybe Core.Double)
      -- | The amount of green in the color as a value in the interval [0, 1].
    , green :: (Core.Maybe Core.Double)
      -- | The amount of red in the color as a value in the interval [0, 1].
    , red :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
newColor 
    ::  Color
newColor =
  Color
    { alpha = Core.Nothing
    , blue = Core.Nothing
    , green = Core.Nothing
    , red = Core.Nothing
    }

instance Core.FromJSON Color where
        parseJSON
          = Core.withObject "Color"
              (\ o ->
                 Color Core.<$>
                   (o Core..:? "alpha") Core.<*> (o Core..:? "blue")
                     Core.<*> (o Core..:? "green")
                     Core.<*> (o Core..:? "red"))

instance Core.ToJSON Color where
        toJSON Color{..}
          = Core.object
              (Core.catMaybes
                 [("alpha" Core..=) Core.<$> alpha,
                  ("blue" Core..=) Core.<$> blue,
                  ("green" Core..=) Core.<$> green,
                  ("red" Core..=) Core.<$> red])


-- | Represents information about the user\'s client, such as locale, host app, and platform. For Chat apps, @CommonEventObject@ includes data submitted by users interacting with cards, like data entered in <https://developers.google.com/chat/how-tos/dialogs dialogs>.
--
-- /See:/ 'newCommonEventObject' smart constructor.
data CommonEventObject = CommonEventObject
    {
      -- | A map containing the values that a user inputs in a widget from a card or dialog. The map keys are the string IDs assigned to each widget, and the values represent inputs to the widget. For details, see <https://developers.google.com/chat/ui/read-form-data Process information inputted by users>.
      formInputs :: (Core.Maybe CommonEventObject_FormInputs)
      -- | The hostApp enum which indicates the app the add-on is invoked from. Always @CHAT@ for Chat apps.
    , hostApp :: (Core.Maybe CommonEventObject_HostApp)
      -- | Name of the invoked function associated with the widget. Only set for Chat apps.
    , invokedFunction :: (Core.Maybe Core.Text)
      -- | Custom </chat/api/reference/rest/v1/cards#ActionParameter parameters> passed to the invoked function. Both keys and values must be strings.
    , parameters :: (Core.Maybe CommonEventObject_Parameters)
      -- | The platform enum which indicates the platform where the event originates (@WEB@, @IOS@, or @ANDROID@). Not supported by Chat apps.
    , platform :: (Core.Maybe CommonEventObject_Platform)
      -- | The timezone ID and offset from Coordinated Universal Time (UTC). Only supported for the event types <https://developers.google.com/chat/api/reference/rest/v1/EventType#ENUM_VALUES.CARD_CLICKED CARD_CLICKED> and <https://developers.google.com/chat/api/reference/rest/v1/DialogEventType#ENUM_VALUES.SUBMIT_DIALOG SUBMIT_DIALOG>.
    , timeZone :: (Core.Maybe TimeZone)
      -- | The full @locale.displayName@ in the format of [ISO 639 language code]-[ISO 3166 country\/region code] such as \"en-US\".
    , userLocale :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonEventObject' with the minimum fields required to make a request.
newCommonEventObject 
    ::  CommonEventObject
newCommonEventObject =
  CommonEventObject
    { formInputs = Core.Nothing
    , hostApp = Core.Nothing
    , invokedFunction = Core.Nothing
    , parameters = Core.Nothing
    , platform = Core.Nothing
    , timeZone = Core.Nothing
    , userLocale = Core.Nothing
    }

instance Core.FromJSON CommonEventObject where
        parseJSON
          = Core.withObject "CommonEventObject"
              (\ o ->
                 CommonEventObject Core.<$>
                   (o Core..:? "formInputs") Core.<*>
                     (o Core..:? "hostApp")
                     Core.<*> (o Core..:? "invokedFunction")
                     Core.<*> (o Core..:? "parameters")
                     Core.<*> (o Core..:? "platform")
                     Core.<*> (o Core..:? "timeZone")
                     Core.<*> (o Core..:? "userLocale"))

instance Core.ToJSON CommonEventObject where
        toJSON CommonEventObject{..}
          = Core.object
              (Core.catMaybes
                 [("formInputs" Core..=) Core.<$> formInputs,
                  ("hostApp" Core..=) Core.<$> hostApp,
                  ("invokedFunction" Core..=) Core.<$> invokedFunction,
                  ("parameters" Core..=) Core.<$> parameters,
                  ("platform" Core..=) Core.<$> platform,
                  ("timeZone" Core..=) Core.<$> timeZone,
                  ("userLocale" Core..=) Core.<$> userLocale])


-- | A map containing the values that a user inputs in a widget from a card or dialog. The map keys are the string IDs assigned to each widget, and the values represent inputs to the widget. For details, see <https://developers.google.com/chat/ui/read-form-data Process information inputted by users>.
--
-- /See:/ 'newCommonEventObject_FormInputs' smart constructor.
newtype CommonEventObject_FormInputs = CommonEventObject_FormInputs
    {
      -- | 
      additional :: (Core.HashMap Core.Text Inputs)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonEventObject_FormInputs' with the minimum fields required to make a request.
newCommonEventObject_FormInputs 
    ::  Core.HashMap Core.Text Inputs
       -- ^  See 'additional'.
    -> CommonEventObject_FormInputs
newCommonEventObject_FormInputs additional =
  CommonEventObject_FormInputs {additional = additional}

instance Core.FromJSON CommonEventObject_FormInputs
         where
        parseJSON
          = Core.withObject "CommonEventObject_FormInputs"
              (\ o ->
                 CommonEventObject_FormInputs Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON CommonEventObject_FormInputs
         where
        toJSON CommonEventObject_FormInputs{..}
          = Core.toJSON additional


-- | Custom </chat/api/reference/rest/v1/cards#ActionParameter parameters> passed to the invoked function. Both keys and values must be strings.
--
-- /See:/ 'newCommonEventObject_Parameters' smart constructor.
newtype CommonEventObject_Parameters = CommonEventObject_Parameters
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonEventObject_Parameters' with the minimum fields required to make a request.
newCommonEventObject_Parameters 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> CommonEventObject_Parameters
newCommonEventObject_Parameters additional =
  CommonEventObject_Parameters {additional = additional}

instance Core.FromJSON CommonEventObject_Parameters
         where
        parseJSON
          = Core.withObject "CommonEventObject_Parameters"
              (\ o ->
                 CommonEventObject_Parameters Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON CommonEventObject_Parameters
         where
        toJSON CommonEventObject_Parameters{..}
          = Core.toJSON additional


-- | Request message for completing the import process for a space.
--
-- /See:/ 'newCompleteImportSpaceRequest' smart constructor.
data CompleteImportSpaceRequest = CompleteImportSpaceRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteImportSpaceRequest' with the minimum fields required to make a request.
newCompleteImportSpaceRequest 
    ::  CompleteImportSpaceRequest
newCompleteImportSpaceRequest = CompleteImportSpaceRequest

instance Core.FromJSON CompleteImportSpaceRequest
         where
        parseJSON
          = Core.withObject "CompleteImportSpaceRequest"
              (\ o -> Core.pure CompleteImportSpaceRequest)

instance Core.ToJSON CompleteImportSpaceRequest where
        toJSON = Core.const Core.emptyObject


-- | Response message for completing the import process for a space.
--
-- /See:/ 'newCompleteImportSpaceResponse' smart constructor.
newtype CompleteImportSpaceResponse = CompleteImportSpaceResponse
    {
      -- | The import mode space.
      space :: (Core.Maybe Space)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteImportSpaceResponse' with the minimum fields required to make a request.
newCompleteImportSpaceResponse 
    ::  CompleteImportSpaceResponse
newCompleteImportSpaceResponse =
  CompleteImportSpaceResponse {space = Core.Nothing}

instance Core.FromJSON CompleteImportSpaceResponse
         where
        parseJSON
          = Core.withObject "CompleteImportSpaceResponse"
              (\ o ->
                 CompleteImportSpaceResponse Core.<$>
                   (o Core..:? "space"))

instance Core.ToJSON CompleteImportSpaceResponse
         where
        toJSON CompleteImportSpaceResponse{..}
          = Core.object
              (Core.catMaybes [("space" Core..=) Core.<$> space])


-- | Represents a custom emoji.
--
-- /See:/ 'newCustomEmoji' smart constructor.
newtype CustomEmoji = CustomEmoji
    {
      -- | Output only. Unique key for the custom emoji resource.
      uid :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomEmoji' with the minimum fields required to make a request.
newCustomEmoji 
    ::  CustomEmoji
newCustomEmoji = CustomEmoji {uid = Core.Nothing}

instance Core.FromJSON CustomEmoji where
        parseJSON
          = Core.withObject "CustomEmoji"
              (\ o -> CustomEmoji Core.<$> (o Core..:? "uid"))

instance Core.ToJSON CustomEmoji where
        toJSON CustomEmoji{..}
          = Core.object
              (Core.catMaybes [("uid" Core..=) Core.<$> uid])


-- | Date input values.
--
-- /See:/ 'newDateInput' smart constructor.
newtype DateInput = DateInput
    {
      -- | Time since epoch time, in milliseconds.
      msSinceEpoch :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateInput' with the minimum fields required to make a request.
newDateInput 
    ::  DateInput
newDateInput = DateInput {msSinceEpoch = Core.Nothing}

instance Core.FromJSON DateInput where
        parseJSON
          = Core.withObject "DateInput"
              (\ o ->
                 DateInput Core.<$>
                   (o Core..:? "msSinceEpoch" Core.<&>
                      Core.fmap Core.fromAsText))

instance Core.ToJSON DateInput where
        toJSON DateInput{..}
          = Core.object
              (Core.catMaybes
                 [("msSinceEpoch" Core..=) Core.. Core.AsText Core.<$>
                    msSinceEpoch])


-- | Date and time input values.
--
-- /See:/ 'newDateTimeInput' smart constructor.
data DateTimeInput = DateTimeInput
    {
      -- | Whether the @datetime@ input includes a calendar date.
      hasDate :: (Core.Maybe Core.Bool)
      -- | Whether the @datetime@ input includes a timestamp.
    , hasTime :: (Core.Maybe Core.Bool)
      -- | Time since epoch time, in milliseconds.
    , msSinceEpoch :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateTimeInput' with the minimum fields required to make a request.
newDateTimeInput 
    ::  DateTimeInput
newDateTimeInput =
  DateTimeInput
    { hasDate = Core.Nothing
    , hasTime = Core.Nothing
    , msSinceEpoch = Core.Nothing
    }

instance Core.FromJSON DateTimeInput where
        parseJSON
          = Core.withObject "DateTimeInput"
              (\ o ->
                 DateTimeInput Core.<$>
                   (o Core..:? "hasDate") Core.<*>
                     (o Core..:? "hasTime")
                     Core.<*>
                     (o Core..:? "msSinceEpoch" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON DateTimeInput where
        toJSON DateTimeInput{..}
          = Core.object
              (Core.catMaybes
                 [("hasDate" Core..=) Core.<$> hasDate,
                  ("hasTime" Core..=) Core.<$> hasTime,
                  ("msSinceEpoch" Core..=) Core.. Core.AsText Core.<$>
                    msSinceEpoch])


-- | Information about a deleted message. A message is deleted when @delete_time@ is set.
--
-- /See:/ 'newDeletionMetadata' smart constructor.
newtype DeletionMetadata = DeletionMetadata
    {
      -- | Indicates who deleted the message.
      deletionType :: (Core.Maybe DeletionMetadata_DeletionType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeletionMetadata' with the minimum fields required to make a request.
newDeletionMetadata 
    ::  DeletionMetadata
newDeletionMetadata = DeletionMetadata {deletionType = Core.Nothing}

instance Core.FromJSON DeletionMetadata where
        parseJSON
          = Core.withObject "DeletionMetadata"
              (\ o ->
                 DeletionMetadata Core.<$>
                   (o Core..:? "deletionType"))

instance Core.ToJSON DeletionMetadata where
        toJSON DeletionMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("deletionType" Core..=) Core.<$> deletionType])


-- | A Google Chat app interaction event that represents and contains data about a user\'s interaction with a Chat app. To configure your Chat app to receive interaction events, see <https://developers.google.com/workspace/chat/receive-respond-interactions Receive and respond to user interactions>. In addition to receiving events from user interactions, Chat apps can receive events about changes to spaces, such as when a new member is added to a space. To learn about space events, see <https://developers.google.com/workspace/chat/events-overview Work with events from Google Chat>.
--
-- /See:/ 'newDeprecatedEvent' smart constructor.
data DeprecatedEvent = DeprecatedEvent
    {
      -- | For @CARD_CLICKED@ interaction events, the form action data associated when a user clicks a card or dialog. To learn more, see <https://developers.google.com/workspace/chat/read-form-data Read form data input by users on cards>.
      action :: (Core.Maybe FormAction)
      -- | Represents information about the user\'s client, such as locale, host app, and platform. For Chat apps, @CommonEventObject@ includes information submitted by users interacting with <https://developers.google.com/workspace/chat/dialogs dialogs>, like data entered on a card.
    , common :: (Core.Maybe CommonEventObject)
      -- | For @MESSAGE@ interaction events, the URL that users must be redirected to after they complete an authorization or configuration flow outside of Google Chat. For more information, see <https://developers.google.com/workspace/chat/connect-web-services-tools Connect a Chat app with other services and tools>.
    , configCompleteRedirectUrl :: (Core.Maybe Core.Text)
      -- | The type of <https://developers.google.com/workspace/chat/dialogs dialog> interaction event received.
    , dialogEventType :: (Core.Maybe DeprecatedEvent_DialogEventType)
      -- | The timestamp indicating when the interaction event occurred.
    , eventTime :: (Core.Maybe Core.DateTime)
      -- | For @CARD_CLICKED@ and @MESSAGE@ interaction events, whether the user is interacting with or about to interact with a <https://developers.google.com/workspace/chat/dialogs dialog>.
    , isDialogEvent :: (Core.Maybe Core.Bool)
      -- | For @ADDED_TO_SPACE@, @CARD_CLICKED@, and @MESSAGE@ interaction events, the message that triggered the interaction event, if applicable.
    , message :: (Core.Maybe Message)
      -- | The space in which the user interacted with the Chat app.
    , space :: (Core.Maybe Space)
      -- | The Chat app-defined key for the thread related to the interaction event. See </chat/api/reference/rest/v1/spaces.messages#Thread.FIELDS.thread_key spaces.messages.thread.threadKey> for more information.
    , threadKey :: (Core.Maybe Core.Text)
      -- | A secret value that legacy Chat apps can use to verify if a request is from Google. Google randomly generates the token, and its value remains static. You can obtain, revoke, or regenerate the token from the <https://console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-chat Chat API configuration page> in the Google Cloud Console. Modern Chat apps don\'t use this field. It is absent from API responses and the <https://console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-chat Chat API configuration page>.
    , token :: (Core.Maybe Core.Text)
      -- | The </workspace/chat/api/reference/rest/v1/EventType type> of user interaction with the Chat app, such as @MESSAGE@ or @ADDED_TO_SPACE@.
    , type' :: (Core.Maybe DeprecatedEvent_Type)
      -- | The user that interacted with the Chat app.
    , user :: (Core.Maybe User)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeprecatedEvent' with the minimum fields required to make a request.
newDeprecatedEvent 
    ::  DeprecatedEvent
newDeprecatedEvent =
  DeprecatedEvent
    { action = Core.Nothing
    , common = Core.Nothing
    , configCompleteRedirectUrl = Core.Nothing
    , dialogEventType = Core.Nothing
    , eventTime = Core.Nothing
    , isDialogEvent = Core.Nothing
    , message = Core.Nothing
    , space = Core.Nothing
    , threadKey = Core.Nothing
    , token = Core.Nothing
    , type' = Core.Nothing
    , user = Core.Nothing
    }

instance Core.FromJSON DeprecatedEvent where
        parseJSON
          = Core.withObject "DeprecatedEvent"
              (\ o ->
                 DeprecatedEvent Core.<$>
                   (o Core..:? "action") Core.<*> (o Core..:? "common")
                     Core.<*> (o Core..:? "configCompleteRedirectUrl")
                     Core.<*> (o Core..:? "dialogEventType")
                     Core.<*> (o Core..:? "eventTime")
                     Core.<*> (o Core..:? "isDialogEvent")
                     Core.<*> (o Core..:? "message")
                     Core.<*> (o Core..:? "space")
                     Core.<*> (o Core..:? "threadKey")
                     Core.<*> (o Core..:? "token")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "user"))

instance Core.ToJSON DeprecatedEvent where
        toJSON DeprecatedEvent{..}
          = Core.object
              (Core.catMaybes
                 [("action" Core..=) Core.<$> action,
                  ("common" Core..=) Core.<$> common,
                  ("configCompleteRedirectUrl" Core..=) Core.<$>
                    configCompleteRedirectUrl,
                  ("dialogEventType" Core..=) Core.<$> dialogEventType,
                  ("eventTime" Core..=) Core.<$> eventTime,
                  ("isDialogEvent" Core..=) Core.<$> isDialogEvent,
                  ("message" Core..=) Core.<$> message,
                  ("space" Core..=) Core.<$> space,
                  ("threadKey" Core..=) Core.<$> threadKey,
                  ("token" Core..=) Core.<$> token,
                  ("type" Core..=) Core.<$> type',
                  ("user" Core..=) Core.<$> user])


-- | Wrapper around the card body of the dialog.
--
-- /See:/ 'newDialog' smart constructor.
newtype Dialog = Dialog
    {
      -- | Input only. Body of the dialog, which is rendered in a modal. Google Chat apps don\'t support the following card entities: @DateTimePicker@, @OnChangeAction@.
      body :: (Core.Maybe GoogleAppsCardV1Card)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dialog' with the minimum fields required to make a request.
newDialog 
    ::  Dialog
newDialog = Dialog {body = Core.Nothing}

instance Core.FromJSON Dialog where
        parseJSON
          = Core.withObject "Dialog"
              (\ o -> Dialog Core.<$> (o Core..:? "body"))

instance Core.ToJSON Dialog where
        toJSON Dialog{..}
          = Core.object
              (Core.catMaybes [("body" Core..=) Core.<$> body])


-- | Contains a <https://developers.google.com/workspace/chat/dialogs dialog> and request status code.
--
-- /See:/ 'newDialogAction' smart constructor.
data DialogAction = DialogAction
    {
      -- | Input only. Status for a request to either invoke or submit a <https://developers.google.com/workspace/chat/dialogs dialog>. Displays a status and message to users, if necessary. For example, in case of an error or success.
      actionStatus :: (Core.Maybe ActionStatus)
      -- | Input only. <https://developers.google.com/workspace/chat/dialogs Dialog> for the request.
    , dialog :: (Core.Maybe Dialog)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogAction' with the minimum fields required to make a request.
newDialogAction 
    ::  DialogAction
newDialogAction =
  DialogAction {actionStatus = Core.Nothing, dialog = Core.Nothing}

instance Core.FromJSON DialogAction where
        parseJSON
          = Core.withObject "DialogAction"
              (\ o ->
                 DialogAction Core.<$>
                   (o Core..:? "actionStatus") Core.<*>
                     (o Core..:? "dialog"))

instance Core.ToJSON DialogAction where
        toJSON DialogAction{..}
          = Core.object
              (Core.catMaybes
                 [("actionStatus" Core..=) Core.<$> actionStatus,
                  ("dialog" Core..=) Core.<$> dialog])


-- | A reference to the data of a drive attachment.
--
-- /See:/ 'newDriveDataRef' smart constructor.
newtype DriveDataRef = DriveDataRef
    {
      -- | The ID for the drive file. Use with the Drive API.
      driveFileId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDataRef' with the minimum fields required to make a request.
newDriveDataRef 
    ::  DriveDataRef
newDriveDataRef = DriveDataRef {driveFileId = Core.Nothing}

instance Core.FromJSON DriveDataRef where
        parseJSON
          = Core.withObject "DriveDataRef"
              (\ o ->
                 DriveDataRef Core.<$> (o Core..:? "driveFileId"))

instance Core.ToJSON DriveDataRef where
        toJSON DriveDataRef{..}
          = Core.object
              (Core.catMaybes
                 [("driveFileId" Core..=) Core.<$> driveFileId])


-- | Data for Google Drive links.
--
-- /See:/ 'newDriveLinkData' smart constructor.
data DriveLinkData = DriveLinkData
    {
      -- | A <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages.attachments#drivedataref DriveDataRef> which references a Google Drive file.
      driveDataRef :: (Core.Maybe DriveDataRef)
      -- | The mime type of the linked Google Drive resource.
    , mimeType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveLinkData' with the minimum fields required to make a request.
newDriveLinkData 
    ::  DriveLinkData
newDriveLinkData =
  DriveLinkData {driveDataRef = Core.Nothing, mimeType = Core.Nothing}

instance Core.FromJSON DriveLinkData where
        parseJSON
          = Core.withObject "DriveLinkData"
              (\ o ->
                 DriveLinkData Core.<$>
                   (o Core..:? "driveDataRef") Core.<*>
                     (o Core..:? "mimeType"))

instance Core.ToJSON DriveLinkData where
        toJSON DriveLinkData{..}
          = Core.object
              (Core.catMaybes
                 [("driveDataRef" Core..=) Core.<$> driveDataRef,
                  ("mimeType" Core..=) Core.<$> mimeType])


-- | An emoji that is used as a reaction to a message.
--
-- /See:/ 'newEmoji' smart constructor.
data Emoji = Emoji
    {
      -- | Output only. A custom emoji.
      customEmoji :: (Core.Maybe CustomEmoji)
      -- | Optional. A basic emoji represented by a unicode string.
    , unicode :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Emoji' with the minimum fields required to make a request.
newEmoji 
    ::  Emoji
newEmoji = Emoji {customEmoji = Core.Nothing, unicode = Core.Nothing}

instance Core.FromJSON Emoji where
        parseJSON
          = Core.withObject "Emoji"
              (\ o ->
                 Emoji Core.<$>
                   (o Core..:? "customEmoji") Core.<*>
                     (o Core..:? "unicode"))

instance Core.ToJSON Emoji where
        toJSON Emoji{..}
          = Core.object
              (Core.catMaybes
                 [("customEmoji" Core..=) Core.<$> customEmoji,
                  ("unicode" Core..=) Core.<$> unicode])


-- | The number of people who reacted to a message with a specific emoji.
--
-- /See:/ 'newEmojiReactionSummary' smart constructor.
data EmojiReactionSummary = EmojiReactionSummary
    {
      -- | Output only. Emoji associated with the reactions.
      emoji :: (Core.Maybe Emoji)
      -- | Output only. The total number of reactions using the associated emoji.
    , reactionCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmojiReactionSummary' with the minimum fields required to make a request.
newEmojiReactionSummary 
    ::  EmojiReactionSummary
newEmojiReactionSummary =
  EmojiReactionSummary {emoji = Core.Nothing, reactionCount = Core.Nothing}

instance Core.FromJSON EmojiReactionSummary where
        parseJSON
          = Core.withObject "EmojiReactionSummary"
              (\ o ->
                 EmojiReactionSummary Core.<$>
                   (o Core..:? "emoji") Core.<*>
                     (o Core..:? "reactionCount"))

instance Core.ToJSON EmojiReactionSummary where
        toJSON EmojiReactionSummary{..}
          = Core.object
              (Core.catMaybes
                 [("emoji" Core..=) Core.<$> emoji,
                  ("reactionCount" Core..=) Core.<$> reactionCount])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | A form action describes the behavior when the form is submitted. For example, you can invoke Apps Script to handle the form.
--
-- /See:/ 'newFormAction' smart constructor.
data FormAction = FormAction
    {
      -- | The method name is used to identify which part of the form triggered the form submission. This information is echoed back to the Chat app as part of the card click event. You can use the same method name for several elements that trigger a common behavior.
      actionMethodName :: (Core.Maybe Core.Text)
      -- | List of action parameters.
    , parameters :: (Core.Maybe [ActionParameter])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FormAction' with the minimum fields required to make a request.
newFormAction 
    ::  FormAction
newFormAction =
  FormAction {actionMethodName = Core.Nothing, parameters = Core.Nothing}

instance Core.FromJSON FormAction where
        parseJSON
          = Core.withObject "FormAction"
              (\ o ->
                 FormAction Core.<$>
                   (o Core..:? "actionMethodName") Core.<*>
                     (o Core..:? "parameters"))

instance Core.ToJSON FormAction where
        toJSON FormAction{..}
          = Core.object
              (Core.catMaybes
                 [("actionMethodName" Core..=) Core.<$>
                    actionMethodName,
                  ("parameters" Core..=) Core.<$> parameters])


-- | An action that describes the behavior when the form is submitted. For example, you can invoke an Apps Script script to handle the form. If the action is triggered, the form values are sent to the server. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Action' smart constructor.
data GoogleAppsCardV1Action = GoogleAppsCardV1Action
    {
      -- | A custom function to invoke when the containing element is clicked or otherwise activated. For example usage, see <https://developers.google.com/workspace/chat/read-form-data Read form data>.
      function :: (Core.Maybe Core.Text)
      -- | Optional. Required when opening a <https://developers.google.com/workspace/chat/dialogs dialog>. What to do in response to an interaction with a user, such as a user clicking a button in a card message. If unspecified, the app responds by executing an @action@—like opening a link or running a function—as normal. By specifying an @interaction@, the app can respond in special interactive ways. For example, by setting @interaction@ to @OPEN_DIALOG@, the app can open a <https://developers.google.com/workspace/chat/dialogs dialog>. When specified, a loading indicator isn\'t shown. If specified for an add-on, the entire card is stripped and nothing is shown in the client. <https://developers.google.com/workspace/chat Google Chat apps>:
    , interaction :: (Core.Maybe GoogleAppsCardV1Action_Interaction)
      -- | Specifies the loading indicator that the action displays while making the call to the action.
    , loadIndicator :: (Core.Maybe GoogleAppsCardV1Action_LoadIndicator)
      -- | List of action parameters.
    , parameters :: (Core.Maybe [GoogleAppsCardV1ActionParameter])
      -- | Indicates whether form values persist after the action. The default value is @false@. If @true@, form values remain after the action is triggered. To let the user make changes while the action is being processed, set <https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator LoadIndicator> to @NONE@. For <https://developers.google.com/workspace/chat/api/guides/v1/messages/create#create card messages> in Chat apps, you must also set the action\'s <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages#responsetype ResponseType> to @UPDATE_MESSAGE@ and use the same <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages#CardWithId card_id> from the card that contained the action. If @false@, the form values are cleared when the action is triggered. To prevent the user from making changes while the action is being processed, set
      -- <https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator LoadIndicator> to @SPINNER@.
    , persistValues :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Action' with the minimum fields required to make a request.
newGoogleAppsCardV1Action 
    ::  GoogleAppsCardV1Action
newGoogleAppsCardV1Action =
  GoogleAppsCardV1Action
    { function = Core.Nothing
    , interaction = Core.Nothing
    , loadIndicator = Core.Nothing
    , parameters = Core.Nothing
    , persistValues = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Action where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Action"
              (\ o ->
                 GoogleAppsCardV1Action Core.<$>
                   (o Core..:? "function") Core.<*>
                     (o Core..:? "interaction")
                     Core.<*> (o Core..:? "loadIndicator")
                     Core.<*> (o Core..:? "parameters")
                     Core.<*> (o Core..:? "persistValues"))

instance Core.ToJSON GoogleAppsCardV1Action where
        toJSON GoogleAppsCardV1Action{..}
          = Core.object
              (Core.catMaybes
                 [("function" Core..=) Core.<$> function,
                  ("interaction" Core..=) Core.<$> interaction,
                  ("loadIndicator" Core..=) Core.<$> loadIndicator,
                  ("parameters" Core..=) Core.<$> parameters,
                  ("persistValues" Core..=) Core.<$> persistValues])


-- | List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze one day, or snooze next week. You might use @action method = snooze()@, passing the snooze type and snooze time in the list of string parameters. To learn more, see <https://developers.google.com/workspace/chat/api/reference/rest/v1/Event#commoneventobject CommonEventObject>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1ActionParameter' smart constructor.
data GoogleAppsCardV1ActionParameter = GoogleAppsCardV1ActionParameter
    {
      -- | The name of the parameter for the action script.
      key :: (Core.Maybe Core.Text)
      -- | The value of the parameter.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ActionParameter' with the minimum fields required to make a request.
newGoogleAppsCardV1ActionParameter 
    ::  GoogleAppsCardV1ActionParameter
newGoogleAppsCardV1ActionParameter =
  GoogleAppsCardV1ActionParameter {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCardV1ActionParameter
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1ActionParameter"
              (\ o ->
                 GoogleAppsCardV1ActionParameter Core.<$>
                   (o Core..:? "key") Core.<*> (o Core..:? "value"))

instance Core.ToJSON GoogleAppsCardV1ActionParameter
         where
        toJSON GoogleAppsCardV1ActionParameter{..}
          = Core.object
              (Core.catMaybes
                 [("key" Core..=) Core.<$> key,
                  ("value" Core..=) Core.<$> value])


-- | The style options for the border of a card or widget, including the border type and color. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1BorderStyle' smart constructor.
data GoogleAppsCardV1BorderStyle = GoogleAppsCardV1BorderStyle
    {
      -- | The corner radius for the border.
      cornerRadius :: (Core.Maybe Core.Int32)
      -- | The colors to use when the type is @BORDER_TYPE_STROKE@. To set the stroke color, specify a value for the @red@, @green@, and @blue@ fields. The value must be a float number between 0 and 1 based on the RGB color value, where @0@ (0\/255) represents the absence of color and @1@ (255\/255) represents the maximum intensity of the color. For example, the following sets the color to red at its maximum intensity: @\"color\": { \"red\": 1, \"green\": 0, \"blue\": 0, }@ The @alpha@ field is unavailable for stroke color. If specified, this field is ignored.
    , strokeColor :: (Core.Maybe Color)
      -- | The border type.
    , type' :: (Core.Maybe GoogleAppsCardV1BorderStyle_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1BorderStyle' with the minimum fields required to make a request.
newGoogleAppsCardV1BorderStyle 
    ::  GoogleAppsCardV1BorderStyle
newGoogleAppsCardV1BorderStyle =
  GoogleAppsCardV1BorderStyle
    { cornerRadius = Core.Nothing
    , strokeColor = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1BorderStyle
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1BorderStyle"
              (\ o ->
                 GoogleAppsCardV1BorderStyle Core.<$>
                   (o Core..:? "cornerRadius") Core.<*>
                     (o Core..:? "strokeColor")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleAppsCardV1BorderStyle
         where
        toJSON GoogleAppsCardV1BorderStyle{..}
          = Core.object
              (Core.catMaybes
                 [("cornerRadius" Core..=) Core.<$> cornerRadius,
                  ("strokeColor" Core..=) Core.<$> strokeColor,
                  ("type" Core..=) Core.<$> type'])


-- | A text, icon, or text and icon button that users can click. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/design-interactive-card-dialog#add_a_button Add a button>. To make an image a clickable button, specify an @Image@ (not an @ImageComponent@) and set an @onClick@ action. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Button' smart constructor.
data GoogleAppsCardV1Button = GoogleAppsCardV1Button
    {
      -- | The alternative text that\'s used for accessibility. Set descriptive text that lets users know what the button does. For example, if a button opens a hyperlink, you might write: \"Opens a new browser tab and navigates to the Google Chat developer documentation at https:\/\/developers.google.com\/workspace\/chat\".
      altText :: (Core.Maybe Core.Text)
      -- | Optional. The color of the button. If set, the button @type@ is set to @FILLED@ and the color of @text@ and @icon@ fields are set to a contrasting color for readability. For example, if the button color is set to blue, any text or icons in the button are set to white. To set the button color, specify a value for the @red@, @green@, and @blue@ fields. The value must be a float number between 0 and 1 based on the RGB color value, where @0@ (0\/255) represents the absence of color and @1@ (255\/255) represents the maximum intensity of the color. For example, the following sets the color to red at its maximum intensity: @\"color\": { \"red\": 1, \"green\": 0, \"blue\": 0, }@ The @alpha@ field is unavailable for button color. If specified, this field is ignored.
    , color :: (Core.Maybe Color)
      -- | If @true@, the button is displayed in an inactive state and doesn\'t respond to user actions.
    , disabled :: (Core.Maybe Core.Bool)
      -- | An icon displayed inside the button. If both @icon@ and @text@ are set, then the icon appears before the text.
    , icon :: (Core.Maybe GoogleAppsCardV1Icon)
      -- | Required. The action to perform when a user clicks the button, such as opening a hyperlink or running a custom function.
    , onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
      -- | The text displayed inside the button.
    , text :: (Core.Maybe Core.Text)
      -- | Optional. The type of a button. If unset, button type defaults to @OUTLINED@. If the @color@ field is set, the button type is forced to @FILLED@ and any value set for this field is ignored. <https://developers.google.com/workspace/chat Google Chat apps>:
    , type' :: (Core.Maybe GoogleAppsCardV1Button_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Button' with the minimum fields required to make a request.
newGoogleAppsCardV1Button 
    ::  GoogleAppsCardV1Button
newGoogleAppsCardV1Button =
  GoogleAppsCardV1Button
    { altText = Core.Nothing
    , color = Core.Nothing
    , disabled = Core.Nothing
    , icon = Core.Nothing
    , onClick = Core.Nothing
    , text = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Button where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Button"
              (\ o ->
                 GoogleAppsCardV1Button Core.<$>
                   (o Core..:? "altText") Core.<*> (o Core..:? "color")
                     Core.<*> (o Core..:? "disabled")
                     Core.<*> (o Core..:? "icon")
                     Core.<*> (o Core..:? "onClick")
                     Core.<*> (o Core..:? "text")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleAppsCardV1Button where
        toJSON GoogleAppsCardV1Button{..}
          = Core.object
              (Core.catMaybes
                 [("altText" Core..=) Core.<$> altText,
                  ("color" Core..=) Core.<$> color,
                  ("disabled" Core..=) Core.<$> disabled,
                  ("icon" Core..=) Core.<$> icon,
                  ("onClick" Core..=) Core.<$> onClick,
                  ("text" Core..=) Core.<$> text,
                  ("type" Core..=) Core.<$> type'])


-- | A list of buttons layed out horizontally. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/design-interactive-card-dialog#add_a_button Add a button>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1ButtonList' smart constructor.
newtype GoogleAppsCardV1ButtonList = GoogleAppsCardV1ButtonList
    {
      -- | An array of buttons.
      buttons :: (Core.Maybe [GoogleAppsCardV1Button])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ButtonList' with the minimum fields required to make a request.
newGoogleAppsCardV1ButtonList 
    ::  GoogleAppsCardV1ButtonList
newGoogleAppsCardV1ButtonList =
  GoogleAppsCardV1ButtonList {buttons = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1ButtonList
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1ButtonList"
              (\ o ->
                 GoogleAppsCardV1ButtonList Core.<$>
                   (o Core..:? "buttons"))

instance Core.ToJSON GoogleAppsCardV1ButtonList where
        toJSON GoogleAppsCardV1ButtonList{..}
          = Core.object
              (Core.catMaybes
                 [("buttons" Core..=) Core.<$> buttons])


-- | A card interface displayed in a Google Chat message or Google Workspace Add-on. Cards support a defined layout, interactive UI elements like buttons, and rich media like images. Use cards to present detailed information, gather information from users, and guide users to take a next step. <https://addons.gsuite.google.com/uikit/builder Card builder> To learn how to build cards, see the following documentation: * For Google Chat apps, see <https://developers.google.com/workspace/chat/design-components-card-dialog Design the components of a card or dialog>. * For Google Workspace Add-ons, see <https://developers.google.com/apps-script/add-ons/concepts/cards Card-based interfaces>. Note: You can add up to 100 widgets per card. Any widgets beyond this limit are ignored. This limit applies to both card messages and dialogs in Google Chat apps, and to cards in Google Workspace Add-ons. __Example: Card message for a Google Chat app__
-- <<https://developers.google.com/workspace/chat/images/card_api_reference.png Example contact card>> To create the sample card message in Google Chat, use the following JSON:
-- @{ \"cardsV2\": [ { \"cardId\": \"unique-card-id\", \"card\": { \"header\": { \"title\": \"Sasha\", \"subtitle\": \"Software Engineer\", \"imageUrl\": \"https:\/\/developers.google.com\/workspace\/chat\/images\/quickstart-app-avatar.png\", \"imageType\": \"CIRCLE\", \"imageAltText\": \"Avatar for Sasha\" }, \"sections\": [ { \"header\": \"Contact Info\", \"collapsible\": true, \"uncollapsibleWidgetsCount\": 1, \"widgets\": [ { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"EMAIL\" }, \"text\": \"sasha\@example.com\" } }, { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"PERSON\" }, \"text\": \"Online\" } }, { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"PHONE\" }, \"text\": \"+1 (555) 555-1234\" } }, { \"buttonList\": { \"buttons\": [ { \"text\": \"Share\", \"onClick\": { \"openLink\": { \"url\": \"https:\/\/example.com\/share\" } } }, { \"text\": \"Edit\", \"onClick\": { \"action\": { \"function\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"EDIT\" } ] } } } ] } } ] } ] } } ] }@
--
-- /See:/ 'newGoogleAppsCardV1Card' smart constructor.
data GoogleAppsCardV1Card = GoogleAppsCardV1Card
    {
      -- | The card\'s actions. Actions are added to the card\'s toolbar menu. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>: For example, the following JSON constructs a card action menu with @Settings@ and @Send Feedback@ options: @\"card_actions\": [ { \"actionLabel\": \"Settings\", \"onClick\": { \"action\": { \"functionName\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"SETTING\" } ], \"loadIndicator\": \"LoadIndicator.SPINNER\" } } }, { \"actionLabel\": \"Send Feedback\", \"onClick\": { \"openLink\": { \"url\": \"https:\/\/example.com\/feedback\" } } } ]@
      cardActions :: (Core.Maybe [GoogleAppsCardV1CardAction])
      -- | In Google Workspace Add-ons, sets the display properties of the @peekCardHeader@. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
    , displayStyle :: (Core.Maybe GoogleAppsCardV1Card_DisplayStyle)
      -- | The fixed footer shown at the bottom of this card. Setting @fixedFooter@ without specifying a @primaryButton@ or a @secondaryButton@ causes an error. For Chat apps, you can use fixed footers in <https://developers.google.com/workspace/chat/dialogs dialogs>, but not <https://developers.google.com/workspace/chat/create-messages#create card messages>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
    , fixedFooter :: (Core.Maybe GoogleAppsCardV1CardFixedFooter)
      -- | The header of the card. A header usually contains a leading image and a title. Headers always appear at the top of a card.
    , header :: (Core.Maybe GoogleAppsCardV1CardHeader)
      -- | Name of the card. Used as a card identifier in card navigation. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
    , name :: (Core.Maybe Core.Text)
      -- | When displaying contextual content, the peek card header acts as a placeholder so that the user can navigate forward between the homepage cards and the contextual cards. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
    , peekCardHeader :: (Core.Maybe GoogleAppsCardV1CardHeader)
      -- | The divider style between the header, sections and footer.
    , sectionDividerStyle :: (Core.Maybe GoogleAppsCardV1Card_SectionDividerStyle)
      -- | Contains a collection of widgets. Each section has its own, optional header. Sections are visually separated by a line divider. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/design-components-card-dialog#define_a_section_of_a_card Define a section of a card>.
    , sections :: (Core.Maybe [GoogleAppsCardV1Section])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Card' with the minimum fields required to make a request.
newGoogleAppsCardV1Card 
    ::  GoogleAppsCardV1Card
newGoogleAppsCardV1Card =
  GoogleAppsCardV1Card
    { cardActions = Core.Nothing
    , displayStyle = Core.Nothing
    , fixedFooter = Core.Nothing
    , header = Core.Nothing
    , name = Core.Nothing
    , peekCardHeader = Core.Nothing
    , sectionDividerStyle = Core.Nothing
    , sections = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Card where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Card"
              (\ o ->
                 GoogleAppsCardV1Card Core.<$>
                   (o Core..:? "cardActions") Core.<*>
                     (o Core..:? "displayStyle")
                     Core.<*> (o Core..:? "fixedFooter")
                     Core.<*> (o Core..:? "header")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "peekCardHeader")
                     Core.<*> (o Core..:? "sectionDividerStyle")
                     Core.<*> (o Core..:? "sections"))

instance Core.ToJSON GoogleAppsCardV1Card where
        toJSON GoogleAppsCardV1Card{..}
          = Core.object
              (Core.catMaybes
                 [("cardActions" Core..=) Core.<$> cardActions,
                  ("displayStyle" Core..=) Core.<$> displayStyle,
                  ("fixedFooter" Core..=) Core.<$> fixedFooter,
                  ("header" Core..=) Core.<$> header,
                  ("name" Core..=) Core.<$> name,
                  ("peekCardHeader" Core..=) Core.<$> peekCardHeader,
                  ("sectionDividerStyle" Core..=) Core.<$>
                    sectionDividerStyle,
                  ("sections" Core..=) Core.<$> sections])


-- | A card action is the action associated with the card. For example, an invoice card might include actions such as delete invoice, email invoice, or open the invoice in a browser. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
--
-- /See:/ 'newGoogleAppsCardV1CardAction' smart constructor.
data GoogleAppsCardV1CardAction = GoogleAppsCardV1CardAction
    {
      -- | The label that displays as the action menu item.
      actionLabel :: (Core.Maybe Core.Text)
      -- | The @onClick@ action for this action item.
    , onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CardAction' with the minimum fields required to make a request.
newGoogleAppsCardV1CardAction 
    ::  GoogleAppsCardV1CardAction
newGoogleAppsCardV1CardAction =
  GoogleAppsCardV1CardAction
    {actionLabel = Core.Nothing, onClick = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1CardAction
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1CardAction"
              (\ o ->
                 GoogleAppsCardV1CardAction Core.<$>
                   (o Core..:? "actionLabel") Core.<*>
                     (o Core..:? "onClick"))

instance Core.ToJSON GoogleAppsCardV1CardAction where
        toJSON GoogleAppsCardV1CardAction{..}
          = Core.object
              (Core.catMaybes
                 [("actionLabel" Core..=) Core.<$> actionLabel,
                  ("onClick" Core..=) Core.<$> onClick])


-- | A persistent (sticky) footer that that appears at the bottom of the card. Setting @fixedFooter@ without specifying a @primaryButton@ or a @secondaryButton@ causes an error. For Chat apps, you can use fixed footers in <https://developers.google.com/workspace/chat/dialogs dialogs>, but not <https://developers.google.com/workspace/chat/create-messages#create card messages>. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/design-components-card-dialog#add_a_persistent_footer Add a persistent footer>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1CardFixedFooter' smart constructor.
data GoogleAppsCardV1CardFixedFooter = GoogleAppsCardV1CardFixedFooter
    {
      -- | The primary button of the fixed footer. The button must be a text button with text and color set.
      primaryButton :: (Core.Maybe GoogleAppsCardV1Button)
      -- | The secondary button of the fixed footer. The button must be a text button with text and color set. If @secondaryButton@ is set, you must also set @primaryButton@.
    , secondaryButton :: (Core.Maybe GoogleAppsCardV1Button)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CardFixedFooter' with the minimum fields required to make a request.
newGoogleAppsCardV1CardFixedFooter 
    ::  GoogleAppsCardV1CardFixedFooter
newGoogleAppsCardV1CardFixedFooter =
  GoogleAppsCardV1CardFixedFooter
    {primaryButton = Core.Nothing, secondaryButton = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCardV1CardFixedFooter
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1CardFixedFooter"
              (\ o ->
                 GoogleAppsCardV1CardFixedFooter Core.<$>
                   (o Core..:? "primaryButton") Core.<*>
                     (o Core..:? "secondaryButton"))

instance Core.ToJSON GoogleAppsCardV1CardFixedFooter
         where
        toJSON GoogleAppsCardV1CardFixedFooter{..}
          = Core.object
              (Core.catMaybes
                 [("primaryButton" Core..=) Core.<$> primaryButton,
                  ("secondaryButton" Core..=) Core.<$>
                    secondaryButton])


-- | Represents a card header. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/design-components-card-dialog#add_a_header Add a header>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1CardHeader' smart constructor.
data GoogleAppsCardV1CardHeader = GoogleAppsCardV1CardHeader
    {
      -- | The alternative text of this image that\'s used for accessibility.
      imageAltText :: (Core.Maybe Core.Text)
      -- | The shape used to crop the image. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
    , imageType :: (Core.Maybe GoogleAppsCardV1CardHeader_ImageType)
      -- | The HTTPS URL of the image in the card header.
    , imageUrl :: (Core.Maybe Core.Text)
      -- | The subtitle of the card header. If specified, appears on its own line below the @title@.
    , subtitle :: (Core.Maybe Core.Text)
      -- | Required. The title of the card header. The header has a fixed height: if both a title and subtitle are specified, each takes up one line. If only the title is specified, it takes up both lines.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CardHeader' with the minimum fields required to make a request.
newGoogleAppsCardV1CardHeader 
    ::  GoogleAppsCardV1CardHeader
newGoogleAppsCardV1CardHeader =
  GoogleAppsCardV1CardHeader
    { imageAltText = Core.Nothing
    , imageType = Core.Nothing
    , imageUrl = Core.Nothing
    , subtitle = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1CardHeader
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1CardHeader"
              (\ o ->
                 GoogleAppsCardV1CardHeader Core.<$>
                   (o Core..:? "imageAltText") Core.<*>
                     (o Core..:? "imageType")
                     Core.<*> (o Core..:? "imageUrl")
                     Core.<*> (o Core..:? "subtitle")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON GoogleAppsCardV1CardHeader where
        toJSON GoogleAppsCardV1CardHeader{..}
          = Core.object
              (Core.catMaybes
                 [("imageAltText" Core..=) Core.<$> imageAltText,
                  ("imageType" Core..=) Core.<$> imageType,
                  ("imageUrl" Core..=) Core.<$> imageUrl,
                  ("subtitle" Core..=) Core.<$> subtitle,
                  ("title" Core..=) Core.<$> title])


-- | <https://developers.google.com/workspace/preview Developer Preview>: A carousel, also known as a slider, rotates and displays a list of widgets in a slideshow format, with buttons navigating to the previous or next widget. For example, this is a JSON representation of a carousel that contains three text paragraph widgets. @{ \"carouselCards\": [ { \"widgets\": [ { \"textParagraph\": { \"text\": \"First text paragraph in carousel\", } } ] }, { \"widgets\": [ { \"textParagraph\": { \"text\": \"Second text paragraph in carousel\", } } ] }, { \"widgets\": [ { \"textParagraph\": { \"text\": \"Third text paragraph in carousel\", } } ] } ] }@ <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Carousel' smart constructor.
newtype GoogleAppsCardV1Carousel = GoogleAppsCardV1Carousel
    {
      -- | A list of cards included in the carousel.
      carouselCards :: (Core.Maybe [GoogleAppsCardV1CarouselCard])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Carousel' with the minimum fields required to make a request.
newGoogleAppsCardV1Carousel 
    ::  GoogleAppsCardV1Carousel
newGoogleAppsCardV1Carousel =
  GoogleAppsCardV1Carousel {carouselCards = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1Carousel where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Carousel"
              (\ o ->
                 GoogleAppsCardV1Carousel Core.<$>
                   (o Core..:? "carouselCards"))

instance Core.ToJSON GoogleAppsCardV1Carousel where
        toJSON GoogleAppsCardV1Carousel{..}
          = Core.object
              (Core.catMaybes
                 [("carouselCards" Core..=) Core.<$> carouselCards])


-- | <https://developers.google.com/workspace/preview Developer Preview>: A card that can be displayed as a carousel item. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1CarouselCard' smart constructor.
data GoogleAppsCardV1CarouselCard = GoogleAppsCardV1CarouselCard
    {
      -- | A list of widgets displayed at the bottom of the carousel card. The widgets are displayed in the order that they are specified.
      footerWidgets :: (Core.Maybe [GoogleAppsCardV1NestedWidget])
      -- | A list of widgets displayed in the carousel card. The widgets are displayed in the order that they are specified.
    , widgets :: (Core.Maybe [GoogleAppsCardV1NestedWidget])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CarouselCard' with the minimum fields required to make a request.
newGoogleAppsCardV1CarouselCard 
    ::  GoogleAppsCardV1CarouselCard
newGoogleAppsCardV1CarouselCard =
  GoogleAppsCardV1CarouselCard
    {footerWidgets = Core.Nothing, widgets = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1CarouselCard
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1CarouselCard"
              (\ o ->
                 GoogleAppsCardV1CarouselCard Core.<$>
                   (o Core..:? "footerWidgets") Core.<*>
                     (o Core..:? "widgets"))

instance Core.ToJSON GoogleAppsCardV1CarouselCard
         where
        toJSON GoogleAppsCardV1CarouselCard{..}
          = Core.object
              (Core.catMaybes
                 [("footerWidgets" Core..=) Core.<$> footerWidgets,
                  ("widgets" Core..=) Core.<$> widgets])


-- | A text, icon, or text and icon chip that users can click. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Chip' smart constructor.
data GoogleAppsCardV1Chip = GoogleAppsCardV1Chip
    {
      -- | The alternative text that\'s used for accessibility. Set descriptive text that lets users know what the chip does. For example, if a chip opens a hyperlink, write: \"Opens a new browser tab and navigates to the Google Chat developer documentation at https:\/\/developers.google.com\/workspace\/chat\".
      altText :: (Core.Maybe Core.Text)
      -- | Whether the chip is in an inactive state and ignores user actions. Defaults to @false@.
    , disabled :: (Core.Maybe Core.Bool)
      -- | Whether the chip is in an active state and responds to user actions. Defaults to @true@. Deprecated. Use @disabled@ instead.
    , enabled :: (Core.Maybe Core.Bool)
      -- | The icon image. If both @icon@ and @text@ are set, then the icon appears before the text.
    , icon :: (Core.Maybe GoogleAppsCardV1Icon)
      -- | The text displayed inside the chip.
    , label :: (Core.Maybe Core.Text)
      -- | Optional. The action to perform when a user clicks the chip, such as opening a hyperlink or running a custom function.
    , onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Chip' with the minimum fields required to make a request.
newGoogleAppsCardV1Chip 
    ::  GoogleAppsCardV1Chip
newGoogleAppsCardV1Chip =
  GoogleAppsCardV1Chip
    { altText = Core.Nothing
    , disabled = Core.Nothing
    , enabled = Core.Nothing
    , icon = Core.Nothing
    , label = Core.Nothing
    , onClick = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Chip where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Chip"
              (\ o ->
                 GoogleAppsCardV1Chip Core.<$>
                   (o Core..:? "altText") Core.<*>
                     (o Core..:? "disabled")
                     Core.<*> (o Core..:? "enabled")
                     Core.<*> (o Core..:? "icon")
                     Core.<*> (o Core..:? "label")
                     Core.<*> (o Core..:? "onClick"))

instance Core.ToJSON GoogleAppsCardV1Chip where
        toJSON GoogleAppsCardV1Chip{..}
          = Core.object
              (Core.catMaybes
                 [("altText" Core..=) Core.<$> altText,
                  ("disabled" Core..=) Core.<$> disabled,
                  ("enabled" Core..=) Core.<$> enabled,
                  ("icon" Core..=) Core.<$> icon,
                  ("label" Core..=) Core.<$> label,
                  ("onClick" Core..=) Core.<$> onClick])


-- | A list of chips layed out horizontally, which can either scroll horizontally or wrap to the next line. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1ChipList' smart constructor.
data GoogleAppsCardV1ChipList = GoogleAppsCardV1ChipList
    {
      -- | An array of chips.
      chips :: (Core.Maybe [GoogleAppsCardV1Chip])
      -- | Specified chip list layout.
    , layout :: (Core.Maybe GoogleAppsCardV1ChipList_Layout)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ChipList' with the minimum fields required to make a request.
newGoogleAppsCardV1ChipList 
    ::  GoogleAppsCardV1ChipList
newGoogleAppsCardV1ChipList =
  GoogleAppsCardV1ChipList {chips = Core.Nothing, layout = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1ChipList where
        parseJSON
          = Core.withObject "GoogleAppsCardV1ChipList"
              (\ o ->
                 GoogleAppsCardV1ChipList Core.<$>
                   (o Core..:? "chips") Core.<*> (o Core..:? "layout"))

instance Core.ToJSON GoogleAppsCardV1ChipList where
        toJSON GoogleAppsCardV1ChipList{..}
          = Core.object
              (Core.catMaybes
                 [("chips" Core..=) Core.<$> chips,
                  ("layout" Core..=) Core.<$> layout])


-- | Represent an expand and collapse control. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1CollapseControl' smart constructor.
data GoogleAppsCardV1CollapseControl = GoogleAppsCardV1CollapseControl
    {
      -- | Optional. Define a customizable button to collapse the section. Both expand/button and collapse/button field must be set. Only one field set will not take into effect. If this field isn\'t set, the default button is used.
      collapseButton :: (Core.Maybe GoogleAppsCardV1Button)
      -- | Optional. Define a customizable button to expand the section. Both expand/button and collapse/button field must be set. Only one field set will not take into effect. If this field isn\'t set, the default button is used.
    , expandButton :: (Core.Maybe GoogleAppsCardV1Button)
      -- | The horizontal alignment of the expand and collapse button.
    , horizontalAlignment :: (Core.Maybe GoogleAppsCardV1CollapseControl_HorizontalAlignment)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CollapseControl' with the minimum fields required to make a request.
newGoogleAppsCardV1CollapseControl 
    ::  GoogleAppsCardV1CollapseControl
newGoogleAppsCardV1CollapseControl =
  GoogleAppsCardV1CollapseControl
    { collapseButton = Core.Nothing
    , expandButton = Core.Nothing
    , horizontalAlignment = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCardV1CollapseControl
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1CollapseControl"
              (\ o ->
                 GoogleAppsCardV1CollapseControl Core.<$>
                   (o Core..:? "collapseButton") Core.<*>
                     (o Core..:? "expandButton")
                     Core.<*> (o Core..:? "horizontalAlignment"))

instance Core.ToJSON GoogleAppsCardV1CollapseControl
         where
        toJSON GoogleAppsCardV1CollapseControl{..}
          = Core.object
              (Core.catMaybes
                 [("collapseButton" Core..=) Core.<$> collapseButton,
                  ("expandButton" Core..=) Core.<$> expandButton,
                  ("horizontalAlignment" Core..=) Core.<$>
                    horizontalAlignment])


-- | A column. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>
--
-- /See:/ 'newGoogleAppsCardV1Column' smart constructor.
data GoogleAppsCardV1Column = GoogleAppsCardV1Column
    {
      -- | Specifies whether widgets align to the left, right, or center of a column.
      horizontalAlignment :: (Core.Maybe GoogleAppsCardV1Column_HorizontalAlignment)
      -- | Specifies how a column fills the width of the card.
    , horizontalSizeStyle :: (Core.Maybe GoogleAppsCardV1Column_HorizontalSizeStyle)
      -- | Specifies whether widgets align to the top, bottom, or center of a column.
    , verticalAlignment :: (Core.Maybe GoogleAppsCardV1Column_VerticalAlignment)
      -- | An array of widgets included in a column. Widgets appear in the order that they are specified.
    , widgets :: (Core.Maybe [GoogleAppsCardV1Widgets])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Column' with the minimum fields required to make a request.
newGoogleAppsCardV1Column 
    ::  GoogleAppsCardV1Column
newGoogleAppsCardV1Column =
  GoogleAppsCardV1Column
    { horizontalAlignment = Core.Nothing
    , horizontalSizeStyle = Core.Nothing
    , verticalAlignment = Core.Nothing
    , widgets = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Column where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Column"
              (\ o ->
                 GoogleAppsCardV1Column Core.<$>
                   (o Core..:? "horizontalAlignment") Core.<*>
                     (o Core..:? "horizontalSizeStyle")
                     Core.<*> (o Core..:? "verticalAlignment")
                     Core.<*> (o Core..:? "widgets"))

instance Core.ToJSON GoogleAppsCardV1Column where
        toJSON GoogleAppsCardV1Column{..}
          = Core.object
              (Core.catMaybes
                 [("horizontalAlignment" Core..=) Core.<$>
                    horizontalAlignment,
                  ("horizontalSizeStyle" Core..=) Core.<$>
                    horizontalSizeStyle,
                  ("verticalAlignment" Core..=) Core.<$>
                    verticalAlignment,
                  ("widgets" Core..=) Core.<$> widgets])


-- | The @Columns@ widget displays up to 2 columns in a card or dialog. You can add widgets to each column; the widgets appear in the order that they are specified. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/format-structure-card-dialog#display_cards_and_dialogs_in_columns Display cards and dialogs in columns>. The height of each column is determined by the taller column. For example, if the first column is taller than the second column, both columns have the height of the first column. Because each column can contain a different number of widgets, you can\'t define rows or align widgets between the columns. Columns are displayed side-by-side. You can customize the width of each column using the @HorizontalSizeStyle@ field. If the user\'s screen width is too narrow, the second column wraps below the first: * On web, the second column wraps if the screen width is less than or equal to 480 pixels. * On iOS devices, the second column wraps if the screen width is less than or
-- equal to 300 pt. * On Android devices, the second column wraps if the screen width is less than or equal to 320 dp. To include more than two columns, or to use rows, use the @Grid@ widget. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>: The add-on UIs that support columns include: * The dialog displayed when users open the add-on from an email draft. * The dialog displayed when users open the add-on from the __Add attachment__ menu in a Google Calendar event.
--
-- /See:/ 'newGoogleAppsCardV1Columns' smart constructor.
newtype GoogleAppsCardV1Columns = GoogleAppsCardV1Columns
    {
      -- | An array of columns. You can include up to 2 columns in a card or dialog.
      columnItems :: (Core.Maybe [GoogleAppsCardV1Column])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Columns' with the minimum fields required to make a request.
newGoogleAppsCardV1Columns 
    ::  GoogleAppsCardV1Columns
newGoogleAppsCardV1Columns =
  GoogleAppsCardV1Columns {columnItems = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1Columns where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Columns"
              (\ o ->
                 GoogleAppsCardV1Columns Core.<$>
                   (o Core..:? "columnItems"))

instance Core.ToJSON GoogleAppsCardV1Columns where
        toJSON GoogleAppsCardV1Columns{..}
          = Core.object
              (Core.catMaybes
                 [("columnItems" Core..=) Core.<$> columnItems])


-- | Lets users input a date, a time, or both a date and a time. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/design-interactive-card-dialog#let_a_user_pick_a_date_and_time Let a user pick a date and time>. Users can input text or use the picker to select dates and times. If users input an invalid date or time, the picker shows an error that prompts users to input the information correctly. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1DateTimePicker' smart constructor.
data GoogleAppsCardV1DateTimePicker = GoogleAppsCardV1DateTimePicker
    {
      -- | The text that prompts users to input a date, a time, or a date and time. For example, if users are scheduling an appointment, use a label such as @Appointment date@ or @Appointment date and time@.
      label :: (Core.Maybe Core.Text)
      -- | The name by which the @DateTimePicker@ is identified in a form input event. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , name :: (Core.Maybe Core.Text)
      -- | Triggered when the user clicks __Save__ or __Clear__ from the @DateTimePicker@ interface.
    , onChangeAction :: (Core.Maybe GoogleAppsCardV1Action)
      -- | The number representing the time zone offset from UTC, in minutes. If set, the @value_ms_epoch@ is displayed in the specified time zone. If unset, the value defaults to the user\'s time zone setting.
    , timezoneOffsetDate :: (Core.Maybe Core.Int32)
      -- | Whether the widget supports inputting a date, a time, or the date and time.
    , type' :: (Core.Maybe GoogleAppsCardV1DateTimePicker_Type)
      -- | The default value displayed in the widget, in milliseconds since <https://en.wikipedia.org/wiki/Unix_time Unix epoch time>. Specify the value based on the type of picker (@DateTimePickerType@): * @DATE_AND_TIME@: a calendar date and time in UTC. For example, to represent January 1, 2023 at 12:00 PM UTC, use @1672574400000@. * @DATE_ONLY@: a calendar date at 00:00:00 UTC. For example, to represent January 1, 2023, use @1672531200000@. * @TIME_ONLY@: a time in UTC. For example, to represent 12:00 PM, use @43200000@ (or @12 * 60 * 60 * 1000@).
    , valueMsEpoch :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1DateTimePicker' with the minimum fields required to make a request.
newGoogleAppsCardV1DateTimePicker 
    ::  GoogleAppsCardV1DateTimePicker
newGoogleAppsCardV1DateTimePicker =
  GoogleAppsCardV1DateTimePicker
    { label = Core.Nothing
    , name = Core.Nothing
    , onChangeAction = Core.Nothing
    , timezoneOffsetDate = Core.Nothing
    , type' = Core.Nothing
    , valueMsEpoch = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1DateTimePicker
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1DateTimePicker"
              (\ o ->
                 GoogleAppsCardV1DateTimePicker Core.<$>
                   (o Core..:? "label") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "onChangeAction")
                     Core.<*> (o Core..:? "timezoneOffsetDate")
                     Core.<*> (o Core..:? "type")
                     Core.<*>
                     (o Core..:? "valueMsEpoch" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON GoogleAppsCardV1DateTimePicker
         where
        toJSON GoogleAppsCardV1DateTimePicker{..}
          = Core.object
              (Core.catMaybes
                 [("label" Core..=) Core.<$> label,
                  ("name" Core..=) Core.<$> name,
                  ("onChangeAction" Core..=) Core.<$> onChangeAction,
                  ("timezoneOffsetDate" Core..=) Core.<$>
                    timezoneOffsetDate,
                  ("type" Core..=) Core.<$> type',
                  ("valueMsEpoch" Core..=) Core.. Core.AsText Core.<$>
                    valueMsEpoch])


-- | A widget that displays text with optional decorations such as a label above or below the text, an icon in front of the text, a selection widget, or a button after the text. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/add-text-image-card-dialog#display_text_with_decorative_elements Display text with decorative text>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1DecoratedText' smart constructor.
data GoogleAppsCardV1DecoratedText = GoogleAppsCardV1DecoratedText
    {
      -- | The text that appears below @text@. Always wraps.
      bottomLabel :: (Core.Maybe Core.Text)
      -- | A button that a user can click to trigger an action.
    , button :: (Core.Maybe GoogleAppsCardV1Button)
      -- | An icon displayed after the text. Supports <https://developers.google.com/workspace/chat/format-messages#builtinicons built-in> and <https://developers.google.com/workspace/chat/format-messages#customicons custom> icons.
    , endIcon :: (Core.Maybe GoogleAppsCardV1Icon)
      -- | Deprecated in favor of @startIcon@.
    , icon :: (Core.Maybe GoogleAppsCardV1Icon)
      -- | This action is triggered when users click @topLabel@ or @bottomLabel@.
    , onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
      -- | The icon displayed in front of the text.
    , startIcon :: (Core.Maybe GoogleAppsCardV1Icon)
      -- | A switch widget that a user can click to change its state and trigger an action.
    , switchControl :: (Core.Maybe GoogleAppsCardV1SwitchControl)
      -- | Required. The primary text. Supports simple formatting. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>.
    , text :: (Core.Maybe Core.Text)
      -- | The text that appears above @text@. Always truncates.
    , topLabel :: (Core.Maybe Core.Text)
      -- | The wrap text setting. If @true@, the text wraps and displays on multiple lines. Otherwise, the text is truncated. Only applies to @text@, not @topLabel@ and @bottomLabel@.
    , wrapText :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1DecoratedText' with the minimum fields required to make a request.
newGoogleAppsCardV1DecoratedText 
    ::  GoogleAppsCardV1DecoratedText
newGoogleAppsCardV1DecoratedText =
  GoogleAppsCardV1DecoratedText
    { bottomLabel = Core.Nothing
    , button = Core.Nothing
    , endIcon = Core.Nothing
    , icon = Core.Nothing
    , onClick = Core.Nothing
    , startIcon = Core.Nothing
    , switchControl = Core.Nothing
    , text = Core.Nothing
    , topLabel = Core.Nothing
    , wrapText = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1DecoratedText
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1DecoratedText"
              (\ o ->
                 GoogleAppsCardV1DecoratedText Core.<$>
                   (o Core..:? "bottomLabel") Core.<*>
                     (o Core..:? "button")
                     Core.<*> (o Core..:? "endIcon")
                     Core.<*> (o Core..:? "icon")
                     Core.<*> (o Core..:? "onClick")
                     Core.<*> (o Core..:? "startIcon")
                     Core.<*> (o Core..:? "switchControl")
                     Core.<*> (o Core..:? "text")
                     Core.<*> (o Core..:? "topLabel")
                     Core.<*> (o Core..:? "wrapText"))

instance Core.ToJSON GoogleAppsCardV1DecoratedText
         where
        toJSON GoogleAppsCardV1DecoratedText{..}
          = Core.object
              (Core.catMaybes
                 [("bottomLabel" Core..=) Core.<$> bottomLabel,
                  ("button" Core..=) Core.<$> button,
                  ("endIcon" Core..=) Core.<$> endIcon,
                  ("icon" Core..=) Core.<$> icon,
                  ("onClick" Core..=) Core.<$> onClick,
                  ("startIcon" Core..=) Core.<$> startIcon,
                  ("switchControl" Core..=) Core.<$> switchControl,
                  ("text" Core..=) Core.<$> text,
                  ("topLabel" Core..=) Core.<$> topLabel,
                  ("wrapText" Core..=) Core.<$> wrapText])


-- | Displays a divider between widgets as a horizontal line. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/format-structure-card-dialog#add_a_horizontal_divider_between_widgets Add a horizontal divider between widgets>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>: For example, the following JSON creates a divider: @\"divider\": {}@
--
-- /See:/ 'newGoogleAppsCardV1Divider' smart constructor.
data GoogleAppsCardV1Divider = GoogleAppsCardV1Divider
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Divider' with the minimum fields required to make a request.
newGoogleAppsCardV1Divider 
    ::  GoogleAppsCardV1Divider
newGoogleAppsCardV1Divider = GoogleAppsCardV1Divider

instance Core.FromJSON GoogleAppsCardV1Divider where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Divider"
              (\ o -> Core.pure GoogleAppsCardV1Divider)

instance Core.ToJSON GoogleAppsCardV1Divider where
        toJSON = Core.const Core.emptyObject


-- | Displays a grid with a collection of items. Items can only include text or images. For responsive columns, or to include more than text or images, use @Columns@. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/format-structure-card-dialog#display_a_grid_with_a_collection_of_items Display a Grid with a collection of items>. A grid supports any number of columns and items. The number of rows is determined by items divided by columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items and 2 columns has 6 rows. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>: For example, the following JSON creates a 2 column grid with a single item:
-- @\"grid\": { \"title\": \"A fine collection of items\", \"columnCount\": 2, \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4 }, \"items\": [ { \"image\": { \"imageUri\": \"https:\/\/www.example.com\/image.png\", \"cropStyle\": { \"type\": \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\": \"An item\", \"textAlignment\": \"CENTER\" } ], \"onClick\": { \"openLink\": { \"url\": \"https:\/\/www.example.com\" } } }@
--
-- /See:/ 'newGoogleAppsCardV1Grid' smart constructor.
data GoogleAppsCardV1Grid = GoogleAppsCardV1Grid
    {
      -- | The border style to apply to each grid item.
      borderStyle :: (Core.Maybe GoogleAppsCardV1BorderStyle)
      -- | The number of columns to display in the grid. A default value is used if this field isn\'t specified, and that default value is different depending on where the grid is shown (dialog versus companion).
    , columnCount :: (Core.Maybe Core.Int32)
      -- | The items to display in the grid.
    , items :: (Core.Maybe [GoogleAppsCardV1GridItem])
      -- | This callback is reused by each individual grid item, but with the item\'s identifier and index in the items list added to the callback\'s parameters.
    , onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
      -- | The text that displays in the grid header.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Grid' with the minimum fields required to make a request.
newGoogleAppsCardV1Grid 
    ::  GoogleAppsCardV1Grid
newGoogleAppsCardV1Grid =
  GoogleAppsCardV1Grid
    { borderStyle = Core.Nothing
    , columnCount = Core.Nothing
    , items = Core.Nothing
    , onClick = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Grid where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Grid"
              (\ o ->
                 GoogleAppsCardV1Grid Core.<$>
                   (o Core..:? "borderStyle") Core.<*>
                     (o Core..:? "columnCount")
                     Core.<*> (o Core..:? "items")
                     Core.<*> (o Core..:? "onClick")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON GoogleAppsCardV1Grid where
        toJSON GoogleAppsCardV1Grid{..}
          = Core.object
              (Core.catMaybes
                 [("borderStyle" Core..=) Core.<$> borderStyle,
                  ("columnCount" Core..=) Core.<$> columnCount,
                  ("items" Core..=) Core.<$> items,
                  ("onClick" Core..=) Core.<$> onClick,
                  ("title" Core..=) Core.<$> title])


-- | Represents an item in a grid layout. Items can contain text, an image, or both text and an image. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1GridItem' smart constructor.
data GoogleAppsCardV1GridItem = GoogleAppsCardV1GridItem
    {
      -- | A user-specified identifier for this grid item. This identifier is returned in the parent grid\'s @onClick@ callback parameters.
      id :: (Core.Maybe Core.Text)
      -- | The image that displays in the grid item.
    , image :: (Core.Maybe GoogleAppsCardV1ImageComponent)
      -- | The layout to use for the grid item.
    , layout :: (Core.Maybe GoogleAppsCardV1GridItem_Layout)
      -- | The grid item\'s subtitle.
    , subtitle :: (Core.Maybe Core.Text)
      -- | The grid item\'s title.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1GridItem' with the minimum fields required to make a request.
newGoogleAppsCardV1GridItem 
    ::  GoogleAppsCardV1GridItem
newGoogleAppsCardV1GridItem =
  GoogleAppsCardV1GridItem
    { id = Core.Nothing
    , image = Core.Nothing
    , layout = Core.Nothing
    , subtitle = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1GridItem where
        parseJSON
          = Core.withObject "GoogleAppsCardV1GridItem"
              (\ o ->
                 GoogleAppsCardV1GridItem Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "layout")
                     Core.<*> (o Core..:? "subtitle")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON GoogleAppsCardV1GridItem where
        toJSON GoogleAppsCardV1GridItem{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("image" Core..=) Core.<$> image,
                  ("layout" Core..=) Core.<$> layout,
                  ("subtitle" Core..=) Core.<$> subtitle,
                  ("title" Core..=) Core.<$> title])


-- | An icon displayed in a widget on a card. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/add-text-image-card-dialog#add_an_icon Add an icon>. Supports <https://developers.google.com/workspace/chat/format-messages#builtinicons built-in> and <https://developers.google.com/workspace/chat/format-messages#customicons custom> icons. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Icon' smart constructor.
data GoogleAppsCardV1Icon = GoogleAppsCardV1Icon
    {
      -- | Optional. A description of the icon used for accessibility. If unspecified, the default value @Button@ is provided. As a best practice, you should set a helpful description for what the icon displays, and if applicable, what it does. For example, @A user\'s account portrait@, or @Opens a new browser tab and navigates to the Google Chat developer documentation at https:\/\/developers.google.com\/workspace\/chat@. If the icon is set in a @Button@, the @altText@ appears as helper text when the user hovers over the button. However, if the button also sets @text@, the icon\'s @altText@ is ignored.
      altText :: (Core.Maybe Core.Text)
      -- | Display a custom icon hosted at an HTTPS URL. For example: @\"iconUrl\": \"https:\/\/developers.google.com\/workspace\/chat\/images\/quickstart-app-avatar.png\"@ Supported file types include @.png@ and @.jpg@.
    , iconUrl :: (Core.Maybe Core.Text)
      -- | The crop style applied to the image. In some cases, applying a @CIRCLE@ crop causes the image to be drawn larger than a built-in icon.
    , imageType :: (Core.Maybe GoogleAppsCardV1Icon_ImageType)
      -- | Display one of the built-in icons provided by Google Workspace. For example, to display an airplane icon, specify @AIRPLANE@. For a bus, specify @BUS@. For a full list of supported icons, see <https://developers.google.com/workspace/chat/format-messages#builtinicons built-in icons>.
    , knownIcon :: (Core.Maybe Core.Text)
      -- | Display one of the <https://fonts.google.com/icons Google Material Icons>. For example, to display a <https://fonts.google.com/icons?selected=Material%20Symbols%20Outlined%3Acheck_box%3AFILL%400%3Bwght%40400%3BGRAD%400%3Bopsz%4048 checkbox icon>, use @\"material_icon\": { \"name\": \"check_box\" }@ <https://developers.google.com/workspace/chat Google Chat apps>:
    , materialIcon :: (Core.Maybe GoogleAppsCardV1MaterialIcon)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Icon' with the minimum fields required to make a request.
newGoogleAppsCardV1Icon 
    ::  GoogleAppsCardV1Icon
newGoogleAppsCardV1Icon =
  GoogleAppsCardV1Icon
    { altText = Core.Nothing
    , iconUrl = Core.Nothing
    , imageType = Core.Nothing
    , knownIcon = Core.Nothing
    , materialIcon = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Icon where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Icon"
              (\ o ->
                 GoogleAppsCardV1Icon Core.<$>
                   (o Core..:? "altText") Core.<*>
                     (o Core..:? "iconUrl")
                     Core.<*> (o Core..:? "imageType")
                     Core.<*> (o Core..:? "knownIcon")
                     Core.<*> (o Core..:? "materialIcon"))

instance Core.ToJSON GoogleAppsCardV1Icon where
        toJSON GoogleAppsCardV1Icon{..}
          = Core.object
              (Core.catMaybes
                 [("altText" Core..=) Core.<$> altText,
                  ("iconUrl" Core..=) Core.<$> iconUrl,
                  ("imageType" Core..=) Core.<$> imageType,
                  ("knownIcon" Core..=) Core.<$> knownIcon,
                  ("materialIcon" Core..=) Core.<$> materialIcon])


-- | An image that is specified by a URL and can have an @onClick@ action. For an example, see <https://developers.google.com/workspace/chat/add-text-image-card-dialog#add_an_image Add an image>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Image' smart constructor.
data GoogleAppsCardV1Image = GoogleAppsCardV1Image
    {
      -- | The alternative text of this image that\'s used for accessibility.
      altText :: (Core.Maybe Core.Text)
      -- | The HTTPS URL that hosts the image. For example: @https:\/\/developers.google.com\/workspace\/chat\/images\/quickstart-app-avatar.png@
    , imageUrl :: (Core.Maybe Core.Text)
      -- | When a user clicks the image, the click triggers this action.
    , onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Image' with the minimum fields required to make a request.
newGoogleAppsCardV1Image 
    ::  GoogleAppsCardV1Image
newGoogleAppsCardV1Image =
  GoogleAppsCardV1Image
    {altText = Core.Nothing, imageUrl = Core.Nothing, onClick = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1Image where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Image"
              (\ o ->
                 GoogleAppsCardV1Image Core.<$>
                   (o Core..:? "altText") Core.<*>
                     (o Core..:? "imageUrl")
                     Core.<*> (o Core..:? "onClick"))

instance Core.ToJSON GoogleAppsCardV1Image where
        toJSON GoogleAppsCardV1Image{..}
          = Core.object
              (Core.catMaybes
                 [("altText" Core..=) Core.<$> altText,
                  ("imageUrl" Core..=) Core.<$> imageUrl,
                  ("onClick" Core..=) Core.<$> onClick])


-- | Represents an image. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1ImageComponent' smart constructor.
data GoogleAppsCardV1ImageComponent = GoogleAppsCardV1ImageComponent
    {
      -- | The accessibility label for the image.
      altText :: (Core.Maybe Core.Text)
      -- | The border style to apply to the image.
    , borderStyle :: (Core.Maybe GoogleAppsCardV1BorderStyle)
      -- | The crop style to apply to the image.
    , cropStyle :: (Core.Maybe GoogleAppsCardV1ImageCropStyle)
      -- | The image URL.
    , imageUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ImageComponent' with the minimum fields required to make a request.
newGoogleAppsCardV1ImageComponent 
    ::  GoogleAppsCardV1ImageComponent
newGoogleAppsCardV1ImageComponent =
  GoogleAppsCardV1ImageComponent
    { altText = Core.Nothing
    , borderStyle = Core.Nothing
    , cropStyle = Core.Nothing
    , imageUri = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1ImageComponent
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1ImageComponent"
              (\ o ->
                 GoogleAppsCardV1ImageComponent Core.<$>
                   (o Core..:? "altText") Core.<*>
                     (o Core..:? "borderStyle")
                     Core.<*> (o Core..:? "cropStyle")
                     Core.<*> (o Core..:? "imageUri"))

instance Core.ToJSON GoogleAppsCardV1ImageComponent
         where
        toJSON GoogleAppsCardV1ImageComponent{..}
          = Core.object
              (Core.catMaybes
                 [("altText" Core..=) Core.<$> altText,
                  ("borderStyle" Core..=) Core.<$> borderStyle,
                  ("cropStyle" Core..=) Core.<$> cropStyle,
                  ("imageUri" Core..=) Core.<$> imageUri])


-- | Represents the crop style applied to an image. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>: For example, here\'s how to apply a 16:9 aspect ratio: @cropStyle { \"type\": \"RECTANGLE_CUSTOM\", \"aspectRatio\": 16\/9 }@
--
-- /See:/ 'newGoogleAppsCardV1ImageCropStyle' smart constructor.
data GoogleAppsCardV1ImageCropStyle = GoogleAppsCardV1ImageCropStyle
    {
      -- | The aspect ratio to use if the crop type is @RECTANGLE_CUSTOM@. For example, here\'s how to apply a 16:9 aspect ratio: @cropStyle { \"type\": \"RECTANGLE_CUSTOM\", \"aspectRatio\": 16\/9 }@
      aspectRatio :: (Core.Maybe Core.Double)
      -- | The crop type.
    , type' :: (Core.Maybe GoogleAppsCardV1ImageCropStyle_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ImageCropStyle' with the minimum fields required to make a request.
newGoogleAppsCardV1ImageCropStyle 
    ::  GoogleAppsCardV1ImageCropStyle
newGoogleAppsCardV1ImageCropStyle =
  GoogleAppsCardV1ImageCropStyle
    {aspectRatio = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1ImageCropStyle
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1ImageCropStyle"
              (\ o ->
                 GoogleAppsCardV1ImageCropStyle Core.<$>
                   (o Core..:? "aspectRatio") Core.<*>
                     (o Core..:? "type"))

instance Core.ToJSON GoogleAppsCardV1ImageCropStyle
         where
        toJSON GoogleAppsCardV1ImageCropStyle{..}
          = Core.object
              (Core.catMaybes
                 [("aspectRatio" Core..=) Core.<$> aspectRatio,
                  ("type" Core..=) Core.<$> type'])


-- | A <https://fonts.google.com/icons Google Material Icon>, which includes over 2500+ options. For example, to display a <https://fonts.google.com/icons?selected=Material%20Symbols%20Outlined%3Acheck_box%3AFILL%400%3Bwght%40400%3BGRAD%400%3Bopsz%4048 checkbox icon> with customized weight and grade, write the following: @{ \"name\": \"check_box\", \"fill\": true, \"weight\": 300, \"grade\": -25 }@ <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1MaterialIcon' smart constructor.
data GoogleAppsCardV1MaterialIcon = GoogleAppsCardV1MaterialIcon
    {
      -- | Whether the icon renders as filled. Default value is false. To preview different icon settings, go to <https://fonts.google.com/icons Google Font Icons> and adjust the settings under __Customize__.
      fill :: (Core.Maybe Core.Bool)
      -- | Weight and grade affect a symbol’s thickness. Adjustments to grade are more granular than adjustments to weight and have a small impact on the size of the symbol. Choose from {-25, 0, 200}. If absent, default value is 0. If any other value is specified, the default value is used. To preview different icon settings, go to <https://fonts.google.com/icons Google Font Icons> and adjust the settings under __Customize__.
    , grade :: (Core.Maybe Core.Int32)
      -- | The icon name defined in the <https://fonts.google.com/icons Google Material Icon>, for example, @check_box@. Any invalid names are abandoned and replaced with empty string and results in the icon failing to render.
    , name :: (Core.Maybe Core.Text)
      -- | The stroke weight of the icon. Choose from {100, 200, 300, 400, 500, 600, 700}. If absent, default value is 400. If any other value is specified, the default value is used. To preview different icon settings, go to <https://fonts.google.com/icons Google Font Icons> and adjust the settings under __Customize__.
    , weight :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1MaterialIcon' with the minimum fields required to make a request.
newGoogleAppsCardV1MaterialIcon 
    ::  GoogleAppsCardV1MaterialIcon
newGoogleAppsCardV1MaterialIcon =
  GoogleAppsCardV1MaterialIcon
    { fill = Core.Nothing
    , grade = Core.Nothing
    , name = Core.Nothing
    , weight = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1MaterialIcon
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1MaterialIcon"
              (\ o ->
                 GoogleAppsCardV1MaterialIcon Core.<$>
                   (o Core..:? "fill") Core.<*> (o Core..:? "grade")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "weight"))

instance Core.ToJSON GoogleAppsCardV1MaterialIcon
         where
        toJSON GoogleAppsCardV1MaterialIcon{..}
          = Core.object
              (Core.catMaybes
                 [("fill" Core..=) Core.<$> fill,
                  ("grade" Core..=) Core.<$> grade,
                  ("name" Core..=) Core.<$> name,
                  ("weight" Core..=) Core.<$> weight])


-- | <https://developers.google.com/workspace/preview Developer Preview>: A list of widgets that can be displayed in a containing layout, such as a @CarouselCard@. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1NestedWidget' smart constructor.
data GoogleAppsCardV1NestedWidget = GoogleAppsCardV1NestedWidget
    {
      -- | A button list widget.
      buttonList :: (Core.Maybe GoogleAppsCardV1ButtonList)
      -- | An image widget.
    , image :: (Core.Maybe GoogleAppsCardV1Image)
      -- | A text paragraph widget.
    , textParagraph :: (Core.Maybe GoogleAppsCardV1TextParagraph)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1NestedWidget' with the minimum fields required to make a request.
newGoogleAppsCardV1NestedWidget 
    ::  GoogleAppsCardV1NestedWidget
newGoogleAppsCardV1NestedWidget =
  GoogleAppsCardV1NestedWidget
    { buttonList = Core.Nothing
    , image = Core.Nothing
    , textParagraph = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1NestedWidget
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1NestedWidget"
              (\ o ->
                 GoogleAppsCardV1NestedWidget Core.<$>
                   (o Core..:? "buttonList") Core.<*>
                     (o Core..:? "image")
                     Core.<*> (o Core..:? "textParagraph"))

instance Core.ToJSON GoogleAppsCardV1NestedWidget
         where
        toJSON GoogleAppsCardV1NestedWidget{..}
          = Core.object
              (Core.catMaybes
                 [("buttonList" Core..=) Core.<$> buttonList,
                  ("image" Core..=) Core.<$> image,
                  ("textParagraph" Core..=) Core.<$> textParagraph])


-- | Represents how to respond when users click an interactive element on a card, such as a button. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1OnClick' smart constructor.
data GoogleAppsCardV1OnClick = GoogleAppsCardV1OnClick
    {
      -- | If specified, an action is triggered by this @onClick@.
      action :: (Core.Maybe GoogleAppsCardV1Action)
      -- | A new card is pushed to the card stack after clicking if specified. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
    , card :: (Core.Maybe GoogleAppsCardV1Card)
      -- | An add-on triggers this action when the action needs to open a link. This differs from the @open_link@ above in that this needs to talk to server to get the link. Thus some preparation work is required for web client to do before the open link action response comes back. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
    , openDynamicLinkAction :: (Core.Maybe GoogleAppsCardV1Action)
      -- | If specified, this @onClick@ triggers an open link action.
    , openLink :: (Core.Maybe GoogleAppsCardV1OpenLink)
      -- | If specified, this @onClick@ opens an overflow menu. <https://developers.google.com/workspace/chat Google Chat apps>:
    , overflowMenu :: (Core.Maybe GoogleAppsCardV1OverflowMenu)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1OnClick' with the minimum fields required to make a request.
newGoogleAppsCardV1OnClick 
    ::  GoogleAppsCardV1OnClick
newGoogleAppsCardV1OnClick =
  GoogleAppsCardV1OnClick
    { action = Core.Nothing
    , card = Core.Nothing
    , openDynamicLinkAction = Core.Nothing
    , openLink = Core.Nothing
    , overflowMenu = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1OnClick where
        parseJSON
          = Core.withObject "GoogleAppsCardV1OnClick"
              (\ o ->
                 GoogleAppsCardV1OnClick Core.<$>
                   (o Core..:? "action") Core.<*> (o Core..:? "card")
                     Core.<*> (o Core..:? "openDynamicLinkAction")
                     Core.<*> (o Core..:? "openLink")
                     Core.<*> (o Core..:? "overflowMenu"))

instance Core.ToJSON GoogleAppsCardV1OnClick where
        toJSON GoogleAppsCardV1OnClick{..}
          = Core.object
              (Core.catMaybes
                 [("action" Core..=) Core.<$> action,
                  ("card" Core..=) Core.<$> card,
                  ("openDynamicLinkAction" Core..=) Core.<$>
                    openDynamicLinkAction,
                  ("openLink" Core..=) Core.<$> openLink,
                  ("overflowMenu" Core..=) Core.<$> overflowMenu])


-- | Represents an @onClick@ event that opens a hyperlink. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1OpenLink' smart constructor.
data GoogleAppsCardV1OpenLink = GoogleAppsCardV1OpenLink
    {
      -- | Whether the client forgets about a link after opening it, or observes it until the window closes. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
      onClose :: (Core.Maybe GoogleAppsCardV1OpenLink_OnClose)
      -- | How to open a link. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
    , openAs :: (Core.Maybe GoogleAppsCardV1OpenLink_OpenAs)
      -- | The URL to open.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1OpenLink' with the minimum fields required to make a request.
newGoogleAppsCardV1OpenLink 
    ::  GoogleAppsCardV1OpenLink
newGoogleAppsCardV1OpenLink =
  GoogleAppsCardV1OpenLink
    {onClose = Core.Nothing, openAs = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1OpenLink where
        parseJSON
          = Core.withObject "GoogleAppsCardV1OpenLink"
              (\ o ->
                 GoogleAppsCardV1OpenLink Core.<$>
                   (o Core..:? "onClose") Core.<*> (o Core..:? "openAs")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON GoogleAppsCardV1OpenLink where
        toJSON GoogleAppsCardV1OpenLink{..}
          = Core.object
              (Core.catMaybes
                 [("onClose" Core..=) Core.<$> onClose,
                  ("openAs" Core..=) Core.<$> openAs,
                  ("url" Core..=) Core.<$> url])


-- | A widget that presents a pop-up menu with one or more actions that users can invoke. For example, showing non-primary actions in a card. You can use this widget when actions don\'t fit in the available space. To use, specify this widget in the @OnClick@ action of widgets that support it. For example, in a @Button@. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1OverflowMenu' smart constructor.
newtype GoogleAppsCardV1OverflowMenu = GoogleAppsCardV1OverflowMenu
    {
      -- | Required. The list of menu options.
      items :: (Core.Maybe [GoogleAppsCardV1OverflowMenuItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1OverflowMenu' with the minimum fields required to make a request.
newGoogleAppsCardV1OverflowMenu 
    ::  GoogleAppsCardV1OverflowMenu
newGoogleAppsCardV1OverflowMenu =
  GoogleAppsCardV1OverflowMenu {items = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1OverflowMenu
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1OverflowMenu"
              (\ o ->
                 GoogleAppsCardV1OverflowMenu Core.<$>
                   (o Core..:? "items"))

instance Core.ToJSON GoogleAppsCardV1OverflowMenu
         where
        toJSON GoogleAppsCardV1OverflowMenu{..}
          = Core.object
              (Core.catMaybes [("items" Core..=) Core.<$> items])


-- | An option that users can invoke in an overflow menu. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1OverflowMenuItem' smart constructor.
data GoogleAppsCardV1OverflowMenuItem = GoogleAppsCardV1OverflowMenuItem
    {
      -- | Whether the menu option is disabled. Defaults to false.
      disabled :: (Core.Maybe Core.Bool)
      -- | Required. The action invoked when a menu option is selected. This @OnClick@ cannot contain an @OverflowMenu@, any specified @OverflowMenu@ is dropped and the menu item disabled.
    , onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
      -- | The icon displayed in front of the text.
    , startIcon :: (Core.Maybe GoogleAppsCardV1Icon)
      -- | Required. The text that identifies or describes the item to users.
    , text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1OverflowMenuItem' with the minimum fields required to make a request.
newGoogleAppsCardV1OverflowMenuItem 
    ::  GoogleAppsCardV1OverflowMenuItem
newGoogleAppsCardV1OverflowMenuItem =
  GoogleAppsCardV1OverflowMenuItem
    { disabled = Core.Nothing
    , onClick = Core.Nothing
    , startIcon = Core.Nothing
    , text = Core.Nothing
    }

instance Core.FromJSON
           GoogleAppsCardV1OverflowMenuItem
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1OverflowMenuItem"
              (\ o ->
                 GoogleAppsCardV1OverflowMenuItem Core.<$>
                   (o Core..:? "disabled") Core.<*>
                     (o Core..:? "onClick")
                     Core.<*> (o Core..:? "startIcon")
                     Core.<*> (o Core..:? "text"))

instance Core.ToJSON GoogleAppsCardV1OverflowMenuItem
         where
        toJSON GoogleAppsCardV1OverflowMenuItem{..}
          = Core.object
              (Core.catMaybes
                 [("disabled" Core..=) Core.<$> disabled,
                  ("onClick" Core..=) Core.<$> onClick,
                  ("startIcon" Core..=) Core.<$> startIcon,
                  ("text" Core..=) Core.<$> text])


-- | For a @SelectionInput@ widget that uses a multiselect menu, a data source from Google Workspace. Used to populate items in a multiselect menu. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1PlatformDataSource' smart constructor.
data GoogleAppsCardV1PlatformDataSource = GoogleAppsCardV1PlatformDataSource
    {
      -- | A data source shared by all Google Workspace applications, such as users in a Google Workspace organization.
      commonDataSource :: (Core.Maybe GoogleAppsCardV1PlatformDataSource_CommonDataSource)
      -- | A data source that\'s unique to a Google Workspace host application, such spaces in Google Chat. This field supports the Google API Client Libraries but isn\'t available in the Cloud Client Libraries. To learn more, see <https://developers.google.com/workspace/chat/libraries Install the client libraries>.
    , hostAppDataSource :: (Core.Maybe HostAppDataSourceMarkup)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1PlatformDataSource' with the minimum fields required to make a request.
newGoogleAppsCardV1PlatformDataSource 
    ::  GoogleAppsCardV1PlatformDataSource
newGoogleAppsCardV1PlatformDataSource =
  GoogleAppsCardV1PlatformDataSource
    {commonDataSource = Core.Nothing, hostAppDataSource = Core.Nothing}

instance Core.FromJSON
           GoogleAppsCardV1PlatformDataSource
         where
        parseJSON
          = Core.withObject
              "GoogleAppsCardV1PlatformDataSource"
              (\ o ->
                 GoogleAppsCardV1PlatformDataSource Core.<$>
                   (o Core..:? "commonDataSource") Core.<*>
                     (o Core..:? "hostAppDataSource"))

instance Core.ToJSON
           GoogleAppsCardV1PlatformDataSource
         where
        toJSON GoogleAppsCardV1PlatformDataSource{..}
          = Core.object
              (Core.catMaybes
                 [("commonDataSource" Core..=) Core.<$>
                    commonDataSource,
                  ("hostAppDataSource" Core..=) Core.<$>
                    hostAppDataSource])


-- | A section contains a collection of widgets that are rendered vertically in the order that they\'re specified. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Section' smart constructor.
data GoogleAppsCardV1Section = GoogleAppsCardV1Section
    {
      -- | Optional. Define the expand and collapse button of the section. This button will be shown only if the section is collapsible. If this field isn\'t set, the default button is used. <https://developers.google.com/workspace/chat Google Chat apps>:
      collapseControl :: (Core.Maybe GoogleAppsCardV1CollapseControl)
      -- | Indicates whether this section is collapsible. Collapsible sections hide some or all widgets, but users can expand the section to reveal the hidden widgets by clicking __Show more__. Users can hide the widgets again by clicking __Show less__. To determine which widgets are hidden, specify @uncollapsibleWidgetsCount@.
    , collapsible :: (Core.Maybe Core.Bool)
      -- | Text that appears at the top of a section. Supports simple HTML formatted text. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>.
    , header :: (Core.Maybe Core.Text)
      -- | The number of uncollapsible widgets which remain visible even when a section is collapsed. For example, when a section contains five widgets and the @uncollapsibleWidgetsCount@ is set to @2@, the first two widgets are always shown and the last three are collapsed by default. The @uncollapsibleWidgetsCount@ is taken into account only when @collapsible@ is @true@.
    , uncollapsibleWidgetsCount :: (Core.Maybe Core.Int32)
      -- | All the widgets in the section. Must contain at least one widget.
    , widgets :: (Core.Maybe [GoogleAppsCardV1Widget])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Section' with the minimum fields required to make a request.
newGoogleAppsCardV1Section 
    ::  GoogleAppsCardV1Section
newGoogleAppsCardV1Section =
  GoogleAppsCardV1Section
    { collapseControl = Core.Nothing
    , collapsible = Core.Nothing
    , header = Core.Nothing
    , uncollapsibleWidgetsCount = Core.Nothing
    , widgets = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Section where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Section"
              (\ o ->
                 GoogleAppsCardV1Section Core.<$>
                   (o Core..:? "collapseControl") Core.<*>
                     (o Core..:? "collapsible")
                     Core.<*> (o Core..:? "header")
                     Core.<*> (o Core..:? "uncollapsibleWidgetsCount")
                     Core.<*> (o Core..:? "widgets"))

instance Core.ToJSON GoogleAppsCardV1Section where
        toJSON GoogleAppsCardV1Section{..}
          = Core.object
              (Core.catMaybes
                 [("collapseControl" Core..=) Core.<$>
                    collapseControl,
                  ("collapsible" Core..=) Core.<$> collapsible,
                  ("header" Core..=) Core.<$> header,
                  ("uncollapsibleWidgetsCount" Core..=) Core.<$>
                    uncollapsibleWidgetsCount,
                  ("widgets" Core..=) Core.<$> widgets])


-- | A widget that creates one or more UI items that users can select. For example, a dropdown menu or checkboxes. You can use this widget to collect data that can be predicted or enumerated. For an example in Google Chat apps, see </workspace/chat/design-interactive-card-dialog#add_selectable_ui_elements Add selectable UI elements>. Chat apps can process the value of items that users select or input. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>. To collect undefined or abstract data from users, use the TextInput widget. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1SelectionInput' smart constructor.
data GoogleAppsCardV1SelectionInput = GoogleAppsCardV1SelectionInput
    {
      -- | An external data source, such as a relational database.
      externalDataSource :: (Core.Maybe GoogleAppsCardV1Action)
      -- | An array of selectable items. For example, an array of radio buttons or checkboxes. Supports up to 100 items.
    , items :: (Core.Maybe [GoogleAppsCardV1SelectionItem])
      -- | The text that appears above the selection input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if users are selecting the urgency of a work ticket from a drop-down menu, the label might be \"Urgency\" or \"Select urgency\".
    , label :: (Core.Maybe Core.Text)
      -- | For multiselect menus, the maximum number of items that a user can select. Minimum value is 1 item. If unspecified, defaults to 3 items.
    , multiSelectMaxSelectedItems :: (Core.Maybe Core.Int32)
      -- | For multiselect menus, the number of text characters that a user inputs before the menu returns suggested selection items. If unset, the multiselect menu uses the following default values: * If the menu uses a static array of @SelectionInput@ items, defaults to 0 characters and immediately populates items from the array. * If the menu uses a dynamic data source (@multi_select_data_source@), defaults to 3 characters before querying the data source to return suggested items.
    , multiSelectMinQueryLength :: (Core.Maybe Core.Int32)
      -- | Required. The name that identifies the selection input in a form input event. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , name :: (Core.Maybe Core.Text)
      -- | If specified, the form is submitted when the selection changes. If not specified, you must specify a separate button that submits the form. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , onChangeAction :: (Core.Maybe GoogleAppsCardV1Action)
      -- | A data source from Google Workspace.
    , platformDataSource :: (Core.Maybe GoogleAppsCardV1PlatformDataSource)
      -- | The type of items that are displayed to users in a @SelectionInput@ widget. Selection types support different types of interactions. For example, users can select one or more checkboxes, but they can only select one value from a dropdown menu.
    , type' :: (Core.Maybe GoogleAppsCardV1SelectionInput_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SelectionInput' with the minimum fields required to make a request.
newGoogleAppsCardV1SelectionInput 
    ::  GoogleAppsCardV1SelectionInput
newGoogleAppsCardV1SelectionInput =
  GoogleAppsCardV1SelectionInput
    { externalDataSource = Core.Nothing
    , items = Core.Nothing
    , label = Core.Nothing
    , multiSelectMaxSelectedItems = Core.Nothing
    , multiSelectMinQueryLength = Core.Nothing
    , name = Core.Nothing
    , onChangeAction = Core.Nothing
    , platformDataSource = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1SelectionInput
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1SelectionInput"
              (\ o ->
                 GoogleAppsCardV1SelectionInput Core.<$>
                   (o Core..:? "externalDataSource") Core.<*>
                     (o Core..:? "items")
                     Core.<*> (o Core..:? "label")
                     Core.<*> (o Core..:? "multiSelectMaxSelectedItems")
                     Core.<*> (o Core..:? "multiSelectMinQueryLength")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "onChangeAction")
                     Core.<*> (o Core..:? "platformDataSource")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleAppsCardV1SelectionInput
         where
        toJSON GoogleAppsCardV1SelectionInput{..}
          = Core.object
              (Core.catMaybes
                 [("externalDataSource" Core..=) Core.<$>
                    externalDataSource,
                  ("items" Core..=) Core.<$> items,
                  ("label" Core..=) Core.<$> label,
                  ("multiSelectMaxSelectedItems" Core..=) Core.<$>
                    multiSelectMaxSelectedItems,
                  ("multiSelectMinQueryLength" Core..=) Core.<$>
                    multiSelectMinQueryLength,
                  ("name" Core..=) Core.<$> name,
                  ("onChangeAction" Core..=) Core.<$> onChangeAction,
                  ("platformDataSource" Core..=) Core.<$>
                    platformDataSource,
                  ("type" Core..=) Core.<$> type'])


-- | An item that users can select in a selection input, such as a checkbox or switch. Supports up to 100 items. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1SelectionItem' smart constructor.
data GoogleAppsCardV1SelectionItem = GoogleAppsCardV1SelectionItem
    {
      -- | For multiselect menus, a text description or label that\'s displayed below the item\'s @text@ field.
      bottomText :: (Core.Maybe Core.Text)
      -- | Whether the item is selected by default. If the selection input only accepts one value (such as for radio buttons or a dropdown menu), only set this field for one item.
    , selected :: (Core.Maybe Core.Bool)
      -- | For multiselect menus, the URL for the icon displayed next to the item\'s @text@ field. Supports PNG and JPEG files. Must be an @HTTPS@ URL. For example, @https:\/\/developers.google.com\/workspace\/chat\/images\/quickstart-app-avatar.png@.
    , startIconUri :: (Core.Maybe Core.Text)
      -- | The text that identifies or describes the item to users.
    , text :: (Core.Maybe Core.Text)
      -- | The value associated with this item. The client should use this as a form input value. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SelectionItem' with the minimum fields required to make a request.
newGoogleAppsCardV1SelectionItem 
    ::  GoogleAppsCardV1SelectionItem
newGoogleAppsCardV1SelectionItem =
  GoogleAppsCardV1SelectionItem
    { bottomText = Core.Nothing
    , selected = Core.Nothing
    , startIconUri = Core.Nothing
    , text = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1SelectionItem
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1SelectionItem"
              (\ o ->
                 GoogleAppsCardV1SelectionItem Core.<$>
                   (o Core..:? "bottomText") Core.<*>
                     (o Core..:? "selected")
                     Core.<*> (o Core..:? "startIconUri")
                     Core.<*> (o Core..:? "text")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON GoogleAppsCardV1SelectionItem
         where
        toJSON GoogleAppsCardV1SelectionItem{..}
          = Core.object
              (Core.catMaybes
                 [("bottomText" Core..=) Core.<$> bottomText,
                  ("selected" Core..=) Core.<$> selected,
                  ("startIconUri" Core..=) Core.<$> startIconUri,
                  ("text" Core..=) Core.<$> text,
                  ("value" Core..=) Core.<$> value])


-- | One suggested value that users can enter in a text input field. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1SuggestionItem' smart constructor.
newtype GoogleAppsCardV1SuggestionItem = GoogleAppsCardV1SuggestionItem
    {
      -- | The value of a suggested input to a text input field. This is equivalent to what users enter themselves.
      text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SuggestionItem' with the minimum fields required to make a request.
newGoogleAppsCardV1SuggestionItem 
    ::  GoogleAppsCardV1SuggestionItem
newGoogleAppsCardV1SuggestionItem =
  GoogleAppsCardV1SuggestionItem {text = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1SuggestionItem
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1SuggestionItem"
              (\ o ->
                 GoogleAppsCardV1SuggestionItem Core.<$>
                   (o Core..:? "text"))

instance Core.ToJSON GoogleAppsCardV1SuggestionItem
         where
        toJSON GoogleAppsCardV1SuggestionItem{..}
          = Core.object
              (Core.catMaybes [("text" Core..=) Core.<$> text])


-- | Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing @Jav@, the list of suggestions filters to show @Java@ and @JavaScript@. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter @javascript@ and others @java script@. Suggesting @JavaScript@ can standardize how users interact with your app. When specified, @TextInput.type@ is always @SINGLE_LINE@, even if it\'s set to @MULTIPLE_LINE@. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1Suggestions' smart constructor.
newtype GoogleAppsCardV1Suggestions = GoogleAppsCardV1Suggestions
    {
      -- | A list of suggestions used for autocomplete recommendations in text input fields.
      items :: (Core.Maybe [GoogleAppsCardV1SuggestionItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Suggestions' with the minimum fields required to make a request.
newGoogleAppsCardV1Suggestions 
    ::  GoogleAppsCardV1Suggestions
newGoogleAppsCardV1Suggestions =
  GoogleAppsCardV1Suggestions {items = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1Suggestions
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Suggestions"
              (\ o ->
                 GoogleAppsCardV1Suggestions Core.<$>
                   (o Core..:? "items"))

instance Core.ToJSON GoogleAppsCardV1Suggestions
         where
        toJSON GoogleAppsCardV1Suggestions{..}
          = Core.object
              (Core.catMaybes [("items" Core..=) Core.<$> items])


-- | Either a toggle-style switch or a checkbox inside a @decoratedText@ widget. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>: Only supported in the @decoratedText@ widget.
--
-- /See:/ 'newGoogleAppsCardV1SwitchControl' smart constructor.
data GoogleAppsCardV1SwitchControl = GoogleAppsCardV1SwitchControl
    {
      -- | How the switch appears in the user interface. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
      controlType :: (Core.Maybe GoogleAppsCardV1SwitchControl_ControlType)
      -- | The name by which the switch widget is identified in a form input event. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , name :: (Core.Maybe Core.Text)
      -- | The action to perform when the switch state is changed, such as what function to run.
    , onChangeAction :: (Core.Maybe GoogleAppsCardV1Action)
      -- | When @true@, the switch is selected.
    , selected :: (Core.Maybe Core.Bool)
      -- | The value entered by a user, returned as part of a form input event. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SwitchControl' with the minimum fields required to make a request.
newGoogleAppsCardV1SwitchControl 
    ::  GoogleAppsCardV1SwitchControl
newGoogleAppsCardV1SwitchControl =
  GoogleAppsCardV1SwitchControl
    { controlType = Core.Nothing
    , name = Core.Nothing
    , onChangeAction = Core.Nothing
    , selected = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1SwitchControl
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1SwitchControl"
              (\ o ->
                 GoogleAppsCardV1SwitchControl Core.<$>
                   (o Core..:? "controlType") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "onChangeAction")
                     Core.<*> (o Core..:? "selected")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON GoogleAppsCardV1SwitchControl
         where
        toJSON GoogleAppsCardV1SwitchControl{..}
          = Core.object
              (Core.catMaybes
                 [("controlType" Core..=) Core.<$> controlType,
                  ("name" Core..=) Core.<$> name,
                  ("onChangeAction" Core..=) Core.<$> onChangeAction,
                  ("selected" Core..=) Core.<$> selected,
                  ("value" Core..=) Core.<$> value])


-- | A field in which users can enter text. Supports suggestions and on-change actions. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/design-interactive-card-dialog#add_a_field_in_which_a_user_can_enter_text Add a field in which a user can enter text>. Chat apps receive and can process the value of entered text during form input events. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>. When you need to collect undefined or abstract data from users, use a text input. To collect defined or enumerated data from users, use the SelectionInput widget. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1TextInput' smart constructor.
data GoogleAppsCardV1TextInput = GoogleAppsCardV1TextInput
    {
      -- | Optional. Specify what action to take when the text input field provides suggestions to users who interact with it. If unspecified, the suggestions are set by @initialSuggestions@ and are processed by the client. If specified, the app takes the action specified here, such as running a custom function. <https://developers.google.com/workspace/add-ons Google Workspace Add-ons>:
      autoCompleteAction :: (Core.Maybe GoogleAppsCardV1Action)
      -- | Text that appears below the text input field meant to assist users by prompting them to enter a certain value. This text is always visible. Required if @label@ is unspecified. Otherwise, optional.
    , hintText :: (Core.Maybe Core.Text)
      -- | Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing @Jav@, the list of suggestions filters to show just @Java@ and @JavaScript@. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter @javascript@ and others @java script@. Suggesting @JavaScript@ can standardize how users interact with your app. When specified, @TextInput.type@ is always @SINGLE_LINE@, even if it\'s set to @MULTIPLE_LINE@. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
    , initialSuggestions :: (Core.Maybe GoogleAppsCardV1Suggestions)
      -- | The text that appears above the text input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if you are asking someone\'s name, but specifically need their surname, write @surname@ instead of @name@. Required if @hintText@ is unspecified. Otherwise, optional.
    , label :: (Core.Maybe Core.Text)
      -- | The name by which the text input is identified in a form input event. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , name :: (Core.Maybe Core.Text)
      -- | What to do when a change occurs in the text input field. For example, a user adding to the field or deleting text. Examples of actions to take include running a custom function or opening a <https://developers.google.com/workspace/chat/dialogs dialog> in Google Chat.
    , onChangeAction :: (Core.Maybe GoogleAppsCardV1Action)
      -- | Text that appears in the text input field when the field is empty. Use this text to prompt users to enter a value. For example, @Enter a number from 0 to 100@. <https://developers.google.com/workspace/chat Google Chat apps>:
    , placeholderText :: (Core.Maybe Core.Text)
      -- | How a text input field appears in the user interface. For example, whether the field is single or multi-line.
    , type' :: (Core.Maybe GoogleAppsCardV1TextInput_Type)
      -- | The value entered by a user, returned as part of a form input event. For details about working with form inputs, see <https://developers.google.com/workspace/chat/read-form-data Receive form data>.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1TextInput' with the minimum fields required to make a request.
newGoogleAppsCardV1TextInput 
    ::  GoogleAppsCardV1TextInput
newGoogleAppsCardV1TextInput =
  GoogleAppsCardV1TextInput
    { autoCompleteAction = Core.Nothing
    , hintText = Core.Nothing
    , initialSuggestions = Core.Nothing
    , label = Core.Nothing
    , name = Core.Nothing
    , onChangeAction = Core.Nothing
    , placeholderText = Core.Nothing
    , type' = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1TextInput
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1TextInput"
              (\ o ->
                 GoogleAppsCardV1TextInput Core.<$>
                   (o Core..:? "autoCompleteAction") Core.<*>
                     (o Core..:? "hintText")
                     Core.<*> (o Core..:? "initialSuggestions")
                     Core.<*> (o Core..:? "label")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "onChangeAction")
                     Core.<*> (o Core..:? "placeholderText")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON GoogleAppsCardV1TextInput where
        toJSON GoogleAppsCardV1TextInput{..}
          = Core.object
              (Core.catMaybes
                 [("autoCompleteAction" Core..=) Core.<$>
                    autoCompleteAction,
                  ("hintText" Core..=) Core.<$> hintText,
                  ("initialSuggestions" Core..=) Core.<$>
                    initialSuggestions,
                  ("label" Core..=) Core.<$> label,
                  ("name" Core..=) Core.<$> name,
                  ("onChangeAction" Core..=) Core.<$> onChangeAction,
                  ("placeholderText" Core..=) Core.<$> placeholderText,
                  ("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | A paragraph of text that supports formatting. For an example in Google Chat apps, see <https://developers.google.com/workspace/chat/add-text-image-card-dialog#add_a_paragraph_of_formatted_text Add a paragraph of formatted text>. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>:
--
-- /See:/ 'newGoogleAppsCardV1TextParagraph' smart constructor.
data GoogleAppsCardV1TextParagraph = GoogleAppsCardV1TextParagraph
    {
      -- | The maximum number of lines of text that are displayed in the widget. If the text exceeds the specified maximum number of lines, the excess content is concealed behind a __show more__ button. If the text is equal or shorter than the specified maximum number of lines, a __show more__ button isn\'t displayed. The default value is 0, in which case all context is displayed. Negative values are ignored. <https://developers.google.com/workspace/chat Google Chat apps>:
      maxLines :: (Core.Maybe Core.Int32)
      -- | The text that\'s shown in the widget.
    , text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1TextParagraph' with the minimum fields required to make a request.
newGoogleAppsCardV1TextParagraph 
    ::  GoogleAppsCardV1TextParagraph
newGoogleAppsCardV1TextParagraph =
  GoogleAppsCardV1TextParagraph {maxLines = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1TextParagraph
         where
        parseJSON
          = Core.withObject "GoogleAppsCardV1TextParagraph"
              (\ o ->
                 GoogleAppsCardV1TextParagraph Core.<$>
                   (o Core..:? "maxLines") Core.<*> (o Core..:? "text"))

instance Core.ToJSON GoogleAppsCardV1TextParagraph
         where
        toJSON GoogleAppsCardV1TextParagraph{..}
          = Core.object
              (Core.catMaybes
                 [("maxLines" Core..=) Core.<$> maxLines,
                  ("text" Core..=) Core.<$> text])


-- | Each card is made up of widgets. A widget is a composite object that can represent one of text, images, buttons, and other object types.
--
-- /See:/ 'newGoogleAppsCardV1Widget' smart constructor.
data GoogleAppsCardV1Widget = GoogleAppsCardV1Widget
    {
      -- | A list of buttons. For example, the following JSON creates two buttons. The first is a blue text button and the second is an image button that opens a link: @\"buttonList\": { \"buttons\": [ { \"text\": \"Edit\", \"color\": { \"red\": 0, \"green\": 0, \"blue\": 1, }, \"disabled\": true, }, { \"icon\": { \"knownIcon\": \"INVITE\", \"altText\": \"check calendar\" }, \"onClick\": { \"openLink\": { \"url\": \"https:\/\/example.com\/calendar\" } } } ] }@
      buttonList :: (Core.Maybe GoogleAppsCardV1ButtonList)
      -- | A carousel contains a collection of nested widgets. For example, this is a JSON representation of a carousel that contains two text paragraphs. @{ \"widgets\": [ { \"textParagraph\": { \"text\": \"First text paragraph in the carousel.\" } }, { \"textParagraph\": { \"text\": \"Second text paragraph in the carousel.\" } } ] }@
    , carousel :: (Core.Maybe GoogleAppsCardV1Carousel)
      -- | A list of chips. For example, the following JSON creates two chips. The first is a text chip and the second is an icon chip that opens a link: @\"chipList\": { \"chips\": [ { \"text\": \"Edit\", \"disabled\": true, }, { \"icon\": { \"knownIcon\": \"INVITE\", \"altText\": \"check calendar\" }, \"onClick\": { \"openLink\": { \"url\": \"https:\/\/example.com\/calendar\" } } } ] }@ <https://developers.google.com/workspace/chat Google Chat apps>:
    , chipList :: (Core.Maybe GoogleAppsCardV1ChipList)
      -- | Displays up to 2 columns. To include more than 2 columns, or to use rows, use the @Grid@ widget. For example, the following JSON creates 2 columns that each contain text paragraphs: @\"columns\": { \"columnItems\": [ { \"horizontalSizeStyle\": \"FILL_AVAILABLE_SPACE\", \"horizontalAlignment\": \"CENTER\", \"verticalAlignment\": \"CENTER\", \"widgets\": [ { \"textParagraph\": { \"text\": \"First column text paragraph\" } } ] }, { \"horizontalSizeStyle\": \"FILL_AVAILABLE_SPACE\", \"horizontalAlignment\": \"CENTER\", \"verticalAlignment\": \"CENTER\", \"widgets\": [ { \"textParagraph\": { \"text\": \"Second column text paragraph\" } } ] } ] }@
    , columns :: (Core.Maybe GoogleAppsCardV1Columns)
      -- | Displays a widget that lets users input a date, time, or date and time. For example, the following JSON creates a date time picker to schedule an appointment: @\"dateTimePicker\": { \"name\": \"appointment_time\", \"label\": \"Book your appointment at:\", \"type\": \"DATE_AND_TIME\", \"valueMsEpoch\": \"796435200000\" }@
    , dateTimePicker :: (Core.Maybe GoogleAppsCardV1DateTimePicker)
      -- | Displays a decorated text item. For example, the following JSON creates a decorated text widget showing email address: @\"decoratedText\": { \"icon\": { \"knownIcon\": \"EMAIL\" }, \"topLabel\": \"Email Address\", \"text\": \"sasha\@example.com\", \"bottomLabel\": \"This is a new Email address!\", \"switchControl\": { \"name\": \"has_send_welcome_email_to_sasha\", \"selected\": false, \"controlType\": \"CHECKBOX\" } }@
    , decoratedText :: (Core.Maybe GoogleAppsCardV1DecoratedText)
      -- | Displays a horizontal line divider between widgets. For example, the following JSON creates a divider: @\"divider\": { }@
    , divider :: (Core.Maybe GoogleAppsCardV1Divider)
      -- | Displays a grid with a collection of items. A grid supports any number of columns and items. The number of rows is determined by the upper bounds of the number items divided by the number of columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items and 2 columns has 6 rows. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>: For example, the following JSON creates a 2 column grid with a single item: @\"grid\": { \"title\": \"A fine collection of items\", \"columnCount\": 2, \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4 }, \"items\": [ { \"image\": { \"imageUri\": \"https:\/\/www.example.com\/image.png\", \"cropStyle\": { \"type\": \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\": \"An item\", \"textAlignment\": \"CENTER\" } ], \"onClick\": { \"openLink\": { \"url\": \"https:\/\/www.example.com\" } } }@
    , grid :: (Core.Maybe GoogleAppsCardV1Grid)
      -- | Specifies whether widgets align to the left, right, or center of a column.
    , horizontalAlignment :: (Core.Maybe GoogleAppsCardV1Widget_HorizontalAlignment)
      -- | Displays an image. For example, the following JSON creates an image with alternative text: @\"image\": { \"imageUrl\": \"https:\/\/developers.google.com\/workspace\/chat\/images\/quickstart-app-avatar.png\", \"altText\": \"Chat app avatar\" }@
    , image :: (Core.Maybe GoogleAppsCardV1Image)
      -- | Displays a selection control that lets users select items. Selection controls can be checkboxes, radio buttons, switches, or dropdown menus. For example, the following JSON creates a dropdown menu that lets users choose a size: @\"selectionInput\": { \"name\": \"size\", \"label\": \"Size\" \"type\": \"DROPDOWN\", \"items\": [ { \"text\": \"S\", \"value\": \"small\", \"selected\": false }, { \"text\": \"M\", \"value\": \"medium\", \"selected\": true }, { \"text\": \"L\", \"value\": \"large\", \"selected\": false }, { \"text\": \"XL\", \"value\": \"extra_large\", \"selected\": false } ] }@
    , selectionInput :: (Core.Maybe GoogleAppsCardV1SelectionInput)
      -- | Displays a text box that users can type into. For example, the following JSON creates a text input for an email address: @\"textInput\": { \"name\": \"mailing_address\", \"label\": \"Mailing Address\" }@ As another example, the following JSON creates a text input for a programming language with static suggestions: @\"textInput\": { \"name\": \"preferred_programing_language\", \"label\": \"Preferred Language\", \"initialSuggestions\": { \"items\": [ { \"text\": \"C++\" }, { \"text\": \"Java\" }, { \"text\": \"JavaScript\" }, { \"text\": \"Python\" } ] } }@
    , textInput :: (Core.Maybe GoogleAppsCardV1TextInput)
      -- | Displays a text paragraph. Supports simple HTML formatted text. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>. For example, the following JSON creates a bolded text: @\"textParagraph\": { \"text\": \" *bold text*\" }@
    , textParagraph :: (Core.Maybe GoogleAppsCardV1TextParagraph)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Widget' with the minimum fields required to make a request.
newGoogleAppsCardV1Widget 
    ::  GoogleAppsCardV1Widget
newGoogleAppsCardV1Widget =
  GoogleAppsCardV1Widget
    { buttonList = Core.Nothing
    , carousel = Core.Nothing
    , chipList = Core.Nothing
    , columns = Core.Nothing
    , dateTimePicker = Core.Nothing
    , decoratedText = Core.Nothing
    , divider = Core.Nothing
    , grid = Core.Nothing
    , horizontalAlignment = Core.Nothing
    , image = Core.Nothing
    , selectionInput = Core.Nothing
    , textInput = Core.Nothing
    , textParagraph = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Widget where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Widget"
              (\ o ->
                 GoogleAppsCardV1Widget Core.<$>
                   (o Core..:? "buttonList") Core.<*>
                     (o Core..:? "carousel")
                     Core.<*> (o Core..:? "chipList")
                     Core.<*> (o Core..:? "columns")
                     Core.<*> (o Core..:? "dateTimePicker")
                     Core.<*> (o Core..:? "decoratedText")
                     Core.<*> (o Core..:? "divider")
                     Core.<*> (o Core..:? "grid")
                     Core.<*> (o Core..:? "horizontalAlignment")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "selectionInput")
                     Core.<*> (o Core..:? "textInput")
                     Core.<*> (o Core..:? "textParagraph"))

instance Core.ToJSON GoogleAppsCardV1Widget where
        toJSON GoogleAppsCardV1Widget{..}
          = Core.object
              (Core.catMaybes
                 [("buttonList" Core..=) Core.<$> buttonList,
                  ("carousel" Core..=) Core.<$> carousel,
                  ("chipList" Core..=) Core.<$> chipList,
                  ("columns" Core..=) Core.<$> columns,
                  ("dateTimePicker" Core..=) Core.<$> dateTimePicker,
                  ("decoratedText" Core..=) Core.<$> decoratedText,
                  ("divider" Core..=) Core.<$> divider,
                  ("grid" Core..=) Core.<$> grid,
                  ("horizontalAlignment" Core..=) Core.<$>
                    horizontalAlignment,
                  ("image" Core..=) Core.<$> image,
                  ("selectionInput" Core..=) Core.<$> selectionInput,
                  ("textInput" Core..=) Core.<$> textInput,
                  ("textParagraph" Core..=) Core.<$> textParagraph])


-- | The supported widgets that you can include in a column. <https://developers.google.com/workspace/extend Google Workspace Add-ons and Chat apps>
--
-- /See:/ 'newGoogleAppsCardV1Widgets' smart constructor.
data GoogleAppsCardV1Widgets = GoogleAppsCardV1Widgets
    {
      -- | ButtonList widget.
      buttonList :: (Core.Maybe GoogleAppsCardV1ButtonList)
      -- | ChipList widget. <https://developers.google.com/workspace/chat Google Chat apps>:
    , chipList :: (Core.Maybe GoogleAppsCardV1ChipList)
      -- | DateTimePicker widget.
    , dateTimePicker :: (Core.Maybe GoogleAppsCardV1DateTimePicker)
      -- | DecoratedText widget.
    , decoratedText :: (Core.Maybe GoogleAppsCardV1DecoratedText)
      -- | Image widget.
    , image :: (Core.Maybe GoogleAppsCardV1Image)
      -- | SelectionInput widget.
    , selectionInput :: (Core.Maybe GoogleAppsCardV1SelectionInput)
      -- | TextInput widget.
    , textInput :: (Core.Maybe GoogleAppsCardV1TextInput)
      -- | TextParagraph widget.
    , textParagraph :: (Core.Maybe GoogleAppsCardV1TextParagraph)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Widgets' with the minimum fields required to make a request.
newGoogleAppsCardV1Widgets 
    ::  GoogleAppsCardV1Widgets
newGoogleAppsCardV1Widgets =
  GoogleAppsCardV1Widgets
    { buttonList = Core.Nothing
    , chipList = Core.Nothing
    , dateTimePicker = Core.Nothing
    , decoratedText = Core.Nothing
    , image = Core.Nothing
    , selectionInput = Core.Nothing
    , textInput = Core.Nothing
    , textParagraph = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Widgets where
        parseJSON
          = Core.withObject "GoogleAppsCardV1Widgets"
              (\ o ->
                 GoogleAppsCardV1Widgets Core.<$>
                   (o Core..:? "buttonList") Core.<*>
                     (o Core..:? "chipList")
                     Core.<*> (o Core..:? "dateTimePicker")
                     Core.<*> (o Core..:? "decoratedText")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "selectionInput")
                     Core.<*> (o Core..:? "textInput")
                     Core.<*> (o Core..:? "textParagraph"))

instance Core.ToJSON GoogleAppsCardV1Widgets where
        toJSON GoogleAppsCardV1Widgets{..}
          = Core.object
              (Core.catMaybes
                 [("buttonList" Core..=) Core.<$> buttonList,
                  ("chipList" Core..=) Core.<$> chipList,
                  ("dateTimePicker" Core..=) Core.<$> dateTimePicker,
                  ("decoratedText" Core..=) Core.<$> decoratedText,
                  ("image" Core..=) Core.<$> image,
                  ("selectionInput" Core..=) Core.<$> selectionInput,
                  ("textInput" Core..=) Core.<$> textInput,
                  ("textParagraph" Core..=) Core.<$> textParagraph])


-- | A Google Group in Google Chat.
--
-- /See:/ 'newGroup' smart constructor.
newtype Group = Group
    {
      -- | Resource name for a Google Group. Represents a <https://cloud.google.com/identity/docs/reference/rest/v1/groups group> in Cloud Identity Groups API. Format: groups\/{group}
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup 
    ::  Group
newGroup = Group {name = Core.Nothing}

instance Core.FromJSON Group where
        parseJSON
          = Core.withObject "Group"
              (\ o -> Group Core.<$> (o Core..:? "name"))

instance Core.ToJSON Group where
        toJSON Group{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | For a @SelectionInput@ widget that uses a multiselect menu, a data source from a Google Workspace application. The data source populates selection items for the multiselect menu. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newHostAppDataSourceMarkup' smart constructor.
newtype HostAppDataSourceMarkup = HostAppDataSourceMarkup
    {
      -- | A data source from Google Chat.
      chatDataSource :: (Core.Maybe ChatClientDataSourceMarkup)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HostAppDataSourceMarkup' with the minimum fields required to make a request.
newHostAppDataSourceMarkup 
    ::  HostAppDataSourceMarkup
newHostAppDataSourceMarkup =
  HostAppDataSourceMarkup {chatDataSource = Core.Nothing}

instance Core.FromJSON HostAppDataSourceMarkup where
        parseJSON
          = Core.withObject "HostAppDataSourceMarkup"
              (\ o ->
                 HostAppDataSourceMarkup Core.<$>
                   (o Core..:? "chatDataSource"))

instance Core.ToJSON HostAppDataSourceMarkup where
        toJSON HostAppDataSourceMarkup{..}
          = Core.object
              (Core.catMaybes
                 [("chatDataSource" Core..=) Core.<$> chatDataSource])


-- | An image that\'s specified by a URL and can have an @onclick@ action.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
    {
      -- | The aspect ratio of this image (width and height). This field lets you reserve the right height for the image while waiting for it to load. It\'s not meant to override the built-in aspect ratio of the image. If unset, the server fills it by prefetching the image.
      aspectRatio :: (Core.Maybe Core.Double)
      -- | The URL of the image.
    , imageUrl :: (Core.Maybe Core.Text)
      -- | The @onclick@ action.
    , onClick :: (Core.Maybe OnClick)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage 
    ::  Image
newImage =
  Image
    { aspectRatio = Core.Nothing
    , imageUrl = Core.Nothing
    , onClick = Core.Nothing
    }

instance Core.FromJSON Image where
        parseJSON
          = Core.withObject "Image"
              (\ o ->
                 Image Core.<$>
                   (o Core..:? "aspectRatio") Core.<*>
                     (o Core..:? "imageUrl")
                     Core.<*> (o Core..:? "onClick"))

instance Core.ToJSON Image where
        toJSON Image{..}
          = Core.object
              (Core.catMaybes
                 [("aspectRatio" Core..=) Core.<$> aspectRatio,
                  ("imageUrl" Core..=) Core.<$> imageUrl,
                  ("onClick" Core..=) Core.<$> onClick])


-- | An image button with an @onclick@ action.
--
-- /See:/ 'newImageButton' smart constructor.
data ImageButton = ImageButton
    {
      -- | The icon specified by an @enum@ that indices to an icon provided by Chat API.
      icon :: (Core.Maybe ImageButton_Icon)
      -- | The icon specified by a URL.
    , iconUrl :: (Core.Maybe Core.Text)
      -- | The name of this @image_button@ that\'s used for accessibility. Default value is provided if this name isn\'t specified.
    , name :: (Core.Maybe Core.Text)
      -- | The @onclick@ action.
    , onClick :: (Core.Maybe OnClick)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageButton' with the minimum fields required to make a request.
newImageButton 
    ::  ImageButton
newImageButton =
  ImageButton
    { icon = Core.Nothing
    , iconUrl = Core.Nothing
    , name = Core.Nothing
    , onClick = Core.Nothing
    }

instance Core.FromJSON ImageButton where
        parseJSON
          = Core.withObject "ImageButton"
              (\ o ->
                 ImageButton Core.<$>
                   (o Core..:? "icon") Core.<*> (o Core..:? "iconUrl")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "onClick"))

instance Core.ToJSON ImageButton where
        toJSON ImageButton{..}
          = Core.object
              (Core.catMaybes
                 [("icon" Core..=) Core.<$> icon,
                  ("iconUrl" Core..=) Core.<$> iconUrl,
                  ("name" Core..=) Core.<$> name,
                  ("onClick" Core..=) Core.<$> onClick])


-- | Types of data that users can <https://developers.google.com/chat/ui/read-form-data input on cards or dialogs>. The input type depends on the type of values that the widget accepts.
--
-- /See:/ 'newInputs' smart constructor.
data Inputs = Inputs
    {
      -- | Date input values from a <https://developers.google.com/chat/api/reference/rest/v1/cards#DateTimePicker DateTimePicker> widget that only accepts date values.
      dateInput :: (Core.Maybe DateInput)
      -- | Date and time input values from a <https://developers.google.com/chat/api/reference/rest/v1/cards#DateTimePicker DateTimePicker> widget that accepts both a date and time.
    , dateTimeInput :: (Core.Maybe DateTimeInput)
      -- | A list of strings that represent the values that the user inputs in a widget. If the widget only accepts one value, such as a <https://developers.google.com/chat/api/reference/rest/v1/cards#TextInput TextInput> widget, the list contains one string object. If the widget accepts multiple values, such as a <https://developers.google.com/chat/api/reference/rest/v1/cards#selectioninput SelectionInput> widget of checkboxes, the list contains a string object for each value that the user inputs or selects.
    , stringInputs :: (Core.Maybe StringInputs)
      -- | Time input values from a <https://developers.google.com/chat/api/reference/rest/v1/cards#DateTimePicker DateTimePicker> widget that only accepts time values.
    , timeInput :: (Core.Maybe TimeInput)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Inputs' with the minimum fields required to make a request.
newInputs 
    ::  Inputs
newInputs =
  Inputs
    { dateInput = Core.Nothing
    , dateTimeInput = Core.Nothing
    , stringInputs = Core.Nothing
    , timeInput = Core.Nothing
    }

instance Core.FromJSON Inputs where
        parseJSON
          = Core.withObject "Inputs"
              (\ o ->
                 Inputs Core.<$>
                   (o Core..:? "dateInput") Core.<*>
                     (o Core..:? "dateTimeInput")
                     Core.<*> (o Core..:? "stringInputs")
                     Core.<*> (o Core..:? "timeInput"))

instance Core.ToJSON Inputs where
        toJSON Inputs{..}
          = Core.object
              (Core.catMaybes
                 [("dateInput" Core..=) Core.<$> dateInput,
                  ("dateTimeInput" Core..=) Core.<$> dateTimeInput,
                  ("stringInputs" Core..=) Core.<$> stringInputs,
                  ("timeInput" Core..=) Core.<$> timeInput])


-- | A UI element contains a key (label) and a value (content). This element can also contain some actions such as @onclick@ button.
--
-- /See:/ 'newKeyValue' smart constructor.
data KeyValue = KeyValue
    {
      -- | The text of the bottom label. Formatted text supported. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>.
      bottomLabel :: (Core.Maybe Core.Text)
      -- | A button that can be clicked to trigger an action.
    , button :: (Core.Maybe Button)
      -- | The text of the content. Formatted text supported and always required. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>.
    , content :: (Core.Maybe Core.Text)
      -- | If the content should be multiline.
    , contentMultiline :: (Core.Maybe Core.Bool)
      -- | An enum value that\'s replaced by the Chat API with the corresponding icon image.
    , icon :: (Core.Maybe KeyValue_Icon)
      -- | The icon specified by a URL.
    , iconUrl :: (Core.Maybe Core.Text)
      -- | The @onclick@ action. Only the top label, bottom label, and content region are clickable.
    , onClick :: (Core.Maybe OnClick)
      -- | The text of the top label. Formatted text supported. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>.
    , topLabel :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyValue' with the minimum fields required to make a request.
newKeyValue 
    ::  KeyValue
newKeyValue =
  KeyValue
    { bottomLabel = Core.Nothing
    , button = Core.Nothing
    , content = Core.Nothing
    , contentMultiline = Core.Nothing
    , icon = Core.Nothing
    , iconUrl = Core.Nothing
    , onClick = Core.Nothing
    , topLabel = Core.Nothing
    }

instance Core.FromJSON KeyValue where
        parseJSON
          = Core.withObject "KeyValue"
              (\ o ->
                 KeyValue Core.<$>
                   (o Core..:? "bottomLabel") Core.<*>
                     (o Core..:? "button")
                     Core.<*> (o Core..:? "content")
                     Core.<*> (o Core..:? "contentMultiline")
                     Core.<*> (o Core..:? "icon")
                     Core.<*> (o Core..:? "iconUrl")
                     Core.<*> (o Core..:? "onClick")
                     Core.<*> (o Core..:? "topLabel"))

instance Core.ToJSON KeyValue where
        toJSON KeyValue{..}
          = Core.object
              (Core.catMaybes
                 [("bottomLabel" Core..=) Core.<$> bottomLabel,
                  ("button" Core..=) Core.<$> button,
                  ("content" Core..=) Core.<$> content,
                  ("contentMultiline" Core..=) Core.<$>
                    contentMultiline,
                  ("icon" Core..=) Core.<$> icon,
                  ("iconUrl" Core..=) Core.<$> iconUrl,
                  ("onClick" Core..=) Core.<$> onClick,
                  ("topLabel" Core..=) Core.<$> topLabel])


-- | Response to list memberships of the space.
--
-- /See:/ 'newListMembershipsResponse' smart constructor.
data ListMembershipsResponse = ListMembershipsResponse
    {
      -- | Unordered list. List of memberships in the requested (or first) page.
      memberships :: (Core.Maybe [Membership])
      -- | A token that you can send as @pageToken@ to retrieve the next page of results. If empty, there are no subsequent pages.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMembershipsResponse' with the minimum fields required to make a request.
newListMembershipsResponse 
    ::  ListMembershipsResponse
newListMembershipsResponse =
  ListMembershipsResponse
    {memberships = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListMembershipsResponse where
        parseJSON
          = Core.withObject "ListMembershipsResponse"
              (\ o ->
                 ListMembershipsResponse Core.<$>
                   (o Core..:? "memberships") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListMembershipsResponse where
        toJSON ListMembershipsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for listing messages.
--
-- /See:/ 'newListMessagesResponse' smart constructor.
data ListMessagesResponse = ListMessagesResponse
    {
      -- | List of messages.
      messages :: (Core.Maybe [Message])
      -- | You can send a token as @pageToken@ to retrieve the next page of results. If empty, there are no subsequent pages.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMessagesResponse' with the minimum fields required to make a request.
newListMessagesResponse 
    ::  ListMessagesResponse
newListMessagesResponse =
  ListMessagesResponse {messages = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListMessagesResponse where
        parseJSON
          = Core.withObject "ListMessagesResponse"
              (\ o ->
                 ListMessagesResponse Core.<$>
                   (o Core..:? "messages") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListMessagesResponse where
        toJSON ListMessagesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("messages" Core..=) Core.<$> messages,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response to a list reactions request.
--
-- /See:/ 'newListReactionsResponse' smart constructor.
data ListReactionsResponse = ListReactionsResponse
    {
      -- | Continuation token to retrieve the next page of results. It\'s empty for the last page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | List of reactions in the requested (or first) page.
    , reactions :: (Core.Maybe [Reaction])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReactionsResponse' with the minimum fields required to make a request.
newListReactionsResponse 
    ::  ListReactionsResponse
newListReactionsResponse =
  ListReactionsResponse {nextPageToken = Core.Nothing, reactions = Core.Nothing}

instance Core.FromJSON ListReactionsResponse where
        parseJSON
          = Core.withObject "ListReactionsResponse"
              (\ o ->
                 ListReactionsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "reactions"))

instance Core.ToJSON ListReactionsResponse where
        toJSON ListReactionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("reactions" Core..=) Core.<$> reactions])


-- | Response message for listing space events.
--
-- /See:/ 'newListSpaceEventsResponse' smart constructor.
data ListSpaceEventsResponse = ListSpaceEventsResponse
    {
      -- | Continuation token used to fetch more events. If this field is omitted, there are no subsequent pages.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Results are returned in chronological order (oldest event first). Note: The @permissionSettings@ field is not returned in the Space object for list requests.
    , spaceEvents :: (Core.Maybe [SpaceEvent])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSpaceEventsResponse' with the minimum fields required to make a request.
newListSpaceEventsResponse 
    ::  ListSpaceEventsResponse
newListSpaceEventsResponse =
  ListSpaceEventsResponse
    {nextPageToken = Core.Nothing, spaceEvents = Core.Nothing}

instance Core.FromJSON ListSpaceEventsResponse where
        parseJSON
          = Core.withObject "ListSpaceEventsResponse"
              (\ o ->
                 ListSpaceEventsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "spaceEvents"))

instance Core.ToJSON ListSpaceEventsResponse where
        toJSON ListSpaceEventsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("spaceEvents" Core..=) Core.<$> spaceEvents])


-- | The response for a list spaces request.
--
-- /See:/ 'newListSpacesResponse' smart constructor.
data ListSpacesResponse = ListSpacesResponse
    {
      -- | You can send a token as @pageToken@ to retrieve the next page of results. If empty, there are no subsequent pages.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | List of spaces in the requested (or first) page. Note: The @permissionSettings@ field is not returned in the Space object for list requests.
    , spaces :: (Core.Maybe [Space])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSpacesResponse' with the minimum fields required to make a request.
newListSpacesResponse 
    ::  ListSpacesResponse
newListSpacesResponse =
  ListSpacesResponse {nextPageToken = Core.Nothing, spaces = Core.Nothing}

instance Core.FromJSON ListSpacesResponse where
        parseJSON
          = Core.withObject "ListSpacesResponse"
              (\ o ->
                 ListSpacesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "spaces"))

instance Core.ToJSON ListSpacesResponse where
        toJSON ListSpacesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("spaces" Core..=) Core.<$> spaces])


-- | A matched URL in a Chat message. Chat apps can preview matched URLs. For more information, see <https://developers.google.com/chat/how-tos/preview-links Preview links>.
--
-- /See:/ 'newMatchedUrl' smart constructor.
newtype MatchedUrl = MatchedUrl
    {
      -- | Output only. The URL that was matched.
      url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatchedUrl' with the minimum fields required to make a request.
newMatchedUrl 
    ::  MatchedUrl
newMatchedUrl = MatchedUrl {url = Core.Nothing}

instance Core.FromJSON MatchedUrl where
        parseJSON
          = Core.withObject "MatchedUrl"
              (\ o -> MatchedUrl Core.<$> (o Core..:? "url"))

instance Core.ToJSON MatchedUrl where
        toJSON MatchedUrl{..}
          = Core.object
              (Core.catMaybes [("url" Core..=) Core.<$> url])


-- | Media resource.
--
-- /See:/ 'newMedia' smart constructor.
newtype Media = Media
    {
      -- | Name of the media resource.
      resourceName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Media' with the minimum fields required to make a request.
newMedia 
    ::  Media
newMedia = Media {resourceName = Core.Nothing}

instance Core.FromJSON Media where
        parseJSON
          = Core.withObject "Media"
              (\ o -> Media Core.<$> (o Core..:? "resourceName"))

instance Core.ToJSON Media where
        toJSON Media{..}
          = Core.object
              (Core.catMaybes
                 [("resourceName" Core..=) Core.<$> resourceName])


-- | Represents a membership relation in Google Chat, such as whether a user or Chat app is invited to, part of, or absent from a space.
--
-- /See:/ 'newMembership' smart constructor.
data Membership = Membership
    {
      -- | Optional. Immutable. The creation time of the membership, such as when a member joined or was invited to join a space. This field is output only, except when used to import historical memberships in import mode spaces.
      createTime :: (Core.Maybe Core.DateTime)
      -- | Optional. Immutable. The deletion time of the membership, such as when a member left or was removed from a space. This field is output only, except when used to import historical memberships in import mode spaces.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Optional. The Google Group the membership corresponds to. Reading or mutating memberships for Google Groups requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
    , groupMember :: (Core.Maybe Group)
      -- | Optional. The Google Chat user or app the membership corresponds to. If your Chat app <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticates as a user>, the output populates the <https://developers.google.com/workspace/chat/api/reference/rest/v1/User user> @name@ and @type@.
    , member :: (Core.Maybe User)
      -- | Identifier. Resource name of the membership, assigned by the server. Format: @spaces\/{space}\/members\/{member}@
    , name :: (Core.Maybe Core.Text)
      -- | Optional. User\'s role within a Chat space, which determines their permitted actions in the space. This field can only be used as input in @UpdateMembership@.
    , role' :: (Core.Maybe Membership_Role)
      -- | Output only. State of the membership.
    , state :: (Core.Maybe Membership_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
newMembership 
    ::  Membership
newMembership =
  Membership
    { createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , groupMember = Core.Nothing
    , member = Core.Nothing
    , name = Core.Nothing
    , role' = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON Membership where
        parseJSON
          = Core.withObject "Membership"
              (\ o ->
                 Membership Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "groupMember")
                     Core.<*> (o Core..:? "member")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "role")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON Membership where
        toJSON Membership{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("groupMember" Core..=) Core.<$> groupMember,
                  ("member" Core..=) Core.<$> member,
                  ("name" Core..=) Core.<$> name,
                  ("role" Core..=) Core.<$> role',
                  ("state" Core..=) Core.<$> state])


-- | Event payload for multiple new memberships. Event type: @google.workspace.chat.membership.v1.batchCreated@
--
-- /See:/ 'newMembershipBatchCreatedEventData' smart constructor.
newtype MembershipBatchCreatedEventData = MembershipBatchCreatedEventData
    {
      -- | A list of new memberships.
      memberships :: (Core.Maybe [MembershipCreatedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipBatchCreatedEventData' with the minimum fields required to make a request.
newMembershipBatchCreatedEventData 
    ::  MembershipBatchCreatedEventData
newMembershipBatchCreatedEventData =
  MembershipBatchCreatedEventData {memberships = Core.Nothing}

instance Core.FromJSON
           MembershipBatchCreatedEventData
         where
        parseJSON
          = Core.withObject "MembershipBatchCreatedEventData"
              (\ o ->
                 MembershipBatchCreatedEventData Core.<$>
                   (o Core..:? "memberships"))

instance Core.ToJSON MembershipBatchCreatedEventData
         where
        toJSON MembershipBatchCreatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships])


-- | Event payload for multiple deleted memberships. Event type: @google.workspace.chat.membership.v1.batchDeleted@
--
-- /See:/ 'newMembershipBatchDeletedEventData' smart constructor.
newtype MembershipBatchDeletedEventData = MembershipBatchDeletedEventData
    {
      -- | A list of deleted memberships.
      memberships :: (Core.Maybe [MembershipDeletedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipBatchDeletedEventData' with the minimum fields required to make a request.
newMembershipBatchDeletedEventData 
    ::  MembershipBatchDeletedEventData
newMembershipBatchDeletedEventData =
  MembershipBatchDeletedEventData {memberships = Core.Nothing}

instance Core.FromJSON
           MembershipBatchDeletedEventData
         where
        parseJSON
          = Core.withObject "MembershipBatchDeletedEventData"
              (\ o ->
                 MembershipBatchDeletedEventData Core.<$>
                   (o Core..:? "memberships"))

instance Core.ToJSON MembershipBatchDeletedEventData
         where
        toJSON MembershipBatchDeletedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships])


-- | Event payload for multiple updated memberships. Event type: @google.workspace.chat.membership.v1.batchUpdated@
--
-- /See:/ 'newMembershipBatchUpdatedEventData' smart constructor.
newtype MembershipBatchUpdatedEventData = MembershipBatchUpdatedEventData
    {
      -- | A list of updated memberships.
      memberships :: (Core.Maybe [MembershipUpdatedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipBatchUpdatedEventData' with the minimum fields required to make a request.
newMembershipBatchUpdatedEventData 
    ::  MembershipBatchUpdatedEventData
newMembershipBatchUpdatedEventData =
  MembershipBatchUpdatedEventData {memberships = Core.Nothing}

instance Core.FromJSON
           MembershipBatchUpdatedEventData
         where
        parseJSON
          = Core.withObject "MembershipBatchUpdatedEventData"
              (\ o ->
                 MembershipBatchUpdatedEventData Core.<$>
                   (o Core..:? "memberships"))

instance Core.ToJSON MembershipBatchUpdatedEventData
         where
        toJSON MembershipBatchUpdatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships])


-- | Represents the count of memberships of a space, grouped into categories.
--
-- /See:/ 'newMembershipCount' smart constructor.
data MembershipCount = MembershipCount
    {
      -- | Output only. Count of human users that have directly joined the space, not counting users joined by having membership in a joined group.
      joinedDirectHumanUserCount :: (Core.Maybe Core.Int32)
      -- | Output only. Count of all groups that have directly joined the space.
    , joinedGroupCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipCount' with the minimum fields required to make a request.
newMembershipCount 
    ::  MembershipCount
newMembershipCount =
  MembershipCount
    {joinedDirectHumanUserCount = Core.Nothing, joinedGroupCount = Core.Nothing}

instance Core.FromJSON MembershipCount where
        parseJSON
          = Core.withObject "MembershipCount"
              (\ o ->
                 MembershipCount Core.<$>
                   (o Core..:? "joinedDirectHumanUserCount") Core.<*>
                     (o Core..:? "joinedGroupCount"))

instance Core.ToJSON MembershipCount where
        toJSON MembershipCount{..}
          = Core.object
              (Core.catMaybes
                 [("joinedDirectHumanUserCount" Core..=) Core.<$>
                    joinedDirectHumanUserCount,
                  ("joinedGroupCount" Core..=) Core.<$>
                    joinedGroupCount])


-- | Event payload for a new membership. Event type: @google.workspace.chat.membership.v1.created@.
--
-- /See:/ 'newMembershipCreatedEventData' smart constructor.
newtype MembershipCreatedEventData = MembershipCreatedEventData
    {
      -- | The new membership.
      membership :: (Core.Maybe Membership)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipCreatedEventData' with the minimum fields required to make a request.
newMembershipCreatedEventData 
    ::  MembershipCreatedEventData
newMembershipCreatedEventData =
  MembershipCreatedEventData {membership = Core.Nothing}

instance Core.FromJSON MembershipCreatedEventData
         where
        parseJSON
          = Core.withObject "MembershipCreatedEventData"
              (\ o ->
                 MembershipCreatedEventData Core.<$>
                   (o Core..:? "membership"))

instance Core.ToJSON MembershipCreatedEventData where
        toJSON MembershipCreatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("membership" Core..=) Core.<$> membership])


-- | Event payload for a deleted membership. Event type: @google.workspace.chat.membership.v1.deleted@
--
-- /See:/ 'newMembershipDeletedEventData' smart constructor.
newtype MembershipDeletedEventData = MembershipDeletedEventData
    {
      -- | The deleted membership. Only the @name@ and @state@ fields are populated.
      membership :: (Core.Maybe Membership)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipDeletedEventData' with the minimum fields required to make a request.
newMembershipDeletedEventData 
    ::  MembershipDeletedEventData
newMembershipDeletedEventData =
  MembershipDeletedEventData {membership = Core.Nothing}

instance Core.FromJSON MembershipDeletedEventData
         where
        parseJSON
          = Core.withObject "MembershipDeletedEventData"
              (\ o ->
                 MembershipDeletedEventData Core.<$>
                   (o Core..:? "membership"))

instance Core.ToJSON MembershipDeletedEventData where
        toJSON MembershipDeletedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("membership" Core..=) Core.<$> membership])


-- | Event payload for an updated membership. Event type: @google.workspace.chat.membership.v1.updated@
--
-- /See:/ 'newMembershipUpdatedEventData' smart constructor.
newtype MembershipUpdatedEventData = MembershipUpdatedEventData
    {
      -- | The updated membership.
      membership :: (Core.Maybe Membership)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipUpdatedEventData' with the minimum fields required to make a request.
newMembershipUpdatedEventData 
    ::  MembershipUpdatedEventData
newMembershipUpdatedEventData =
  MembershipUpdatedEventData {membership = Core.Nothing}

instance Core.FromJSON MembershipUpdatedEventData
         where
        parseJSON
          = Core.withObject "MembershipUpdatedEventData"
              (\ o ->
                 MembershipUpdatedEventData Core.<$>
                   (o Core..:? "membership"))

instance Core.ToJSON MembershipUpdatedEventData where
        toJSON MembershipUpdatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("membership" Core..=) Core.<$> membership])


-- | A message in a Google Chat space.
--
-- /See:/ 'newMessage' smart constructor.
data Message = Message
    {
      -- | Optional. One or more interactive widgets that appear at the bottom of a message. You can add accessory widgets to messages that contain text, cards, or both text and cards. Not supported for messages that contain dialogs. For details, see <https://developers.google.com/workspace/chat/create-messages#add-accessory-widgets Add interactive widgets at the bottom of a message>. Creating a message with accessory widgets requires [app authentication] (https:\/\/developers.google.com\/workspace\/chat\/authenticate-authorize-chat-app).
      accessoryWidgets :: (Core.Maybe [AccessoryWidget])
      -- | Input only. Parameters that a Chat app can use to configure how its response is posted.
    , actionResponse :: (Core.Maybe ActionResponse)
      -- | Output only. Annotations associated with the @text@ in this message.
    , annotations :: (Core.Maybe [Annotation])
      -- | Output only. Plain-text body of the message with all Chat app mentions stripped out.
    , argumentText :: (Core.Maybe Core.Text)
      -- | Output only. GIF images that are attached to the message.
    , attachedGifs :: (Core.Maybe [AttachedGif])
      -- | Optional. User-uploaded attachment.
    , attachment :: (Core.Maybe [Attachment])
      -- | Deprecated: Use @cards_v2@ instead. Rich, formatted, and interactive cards that you can use to display UI elements such as: formatted texts, buttons, and clickable images. Cards are normally displayed below the plain-text body of the message. @cards@ and @cards_v2@ can have a maximum size of 32 KB.
    , cards :: (Core.Maybe [Card])
      -- | Optional. An array of <https://developers.google.com/workspace/chat/api/reference/rest/v1/cards cards>. Only Chat apps can create cards. If your Chat app <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticates as a user>, the messages can\'t contain cards. To learn how to create a message that contains cards, see <https://developers.google.com/workspace/chat/create-messages Send a message>. <https://addons.gsuite.google.com/uikit/builder Card builder>
    , cardsV2 :: (Core.Maybe [CardWithId])
      -- | Optional. A custom ID for the message. You can use field to identify a message, or to get, delete, or update a message. To set a custom ID, specify the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages/create#body.QUERY_PARAMETERS.message_id messageId> field when you create the message. For details, see <https://developers.google.com/workspace/chat/create-messages#name_a_created_message Name a message>.
    , clientAssignedMessageId :: (Core.Maybe Core.Text)
      -- | Optional. Immutable. For spaces created in Chat, the time at which the message was created. This field is output only, except when used in import mode spaces. For import mode spaces, set this field to the historical timestamp at which the message was created in the source in order to preserve the original creation time.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The time at which the message was deleted in Google Chat. If the message is never deleted, this field is empty.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Information about a deleted message. A message is deleted when @delete_time@ is set.
    , deletionMetadata :: (Core.Maybe DeletionMetadata)
      -- | Output only. The list of emoji reaction summaries on the message.
    , emojiReactionSummaries :: (Core.Maybe [EmojiReactionSummary])
      -- | Optional. A plain-text description of the message\'s cards, used when the actual cards can\'t be displayed—for example, mobile notifications.
    , fallbackText :: (Core.Maybe Core.Text)
      -- | Output only. Contains the message @text@ with markups added to communicate formatting. This field might not capture all formatting visible in the UI, but includes the following: * <https://developers.google.com/workspace/chat/format-messages Markup syntax> for bold, italic, strikethrough, monospace, monospace block, and bulleted list. * <https://developers.google.com/workspace/chat/format-messages#messages-@mention User mentions> using the format @. * Custom hyperlinks using the format \`\<{url}|{rendered_text}>\` where the first string is the URL and the second is the rendered text—for example,@. * Custom emoji using the format @:{emoji_name}:@—for example, @:smile:@. This doesn\'t apply to Unicode emoji, such as @U+1F600@ for a grinning face emoji. For more information, see <https://developers.google.com/workspace/chat/format-messages#view_text_formatting_sent_in_a_message View text formatting sent in a message>
    , formattedText :: (Core.Maybe Core.Text)
      -- | Output only. The time at which the message was last edited by a user. If the message has never been edited, this field is empty.
    , lastUpdateTime :: (Core.Maybe Core.DateTime)
      -- | Output only. A URL in @spaces.messages.text@ that matches a link preview pattern. For more information, see <https://developers.google.com/workspace/chat/preview-links Preview links>.
    , matchedUrl :: (Core.Maybe MatchedUrl)
      -- | Identifier. Resource name of the message. Format: @spaces\/{space}\/messages\/{message}@ Where @{space}@ is the ID of the space where the message is posted and @{message}@ is a system-assigned ID for the message. For example, @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@. If you set a custom ID when you create a message, you can use this ID to specify the message in a request by replacing @{message}@ with the value from the @clientAssignedMessageId@ field. For example, @spaces\/AAAAAAAAAAA\/messages\/client-custom-name@. For details, see <https://developers.google.com/workspace/chat/create-messages#name_a_created_message Name a message>.
    , name :: (Core.Maybe Core.Text)
      -- | Optional. Immutable. Input for creating a message, otherwise output only. The user that can view the message. When set, the message is private and only visible to the specified user and the Chat app. To include this field in your request, you must call the Chat API using <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication> and omit the following: * <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages.attachments Attachments> * <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages#Message.AccessoryWidget Accessory widgets> For details, see <https://developers.google.com/workspace/chat/create-messages#private Send a message privately>.
    , privateMessageViewer :: (Core.Maybe User)
      -- | Output only. Information about a message that\'s quoted by a Google Chat user in a space. Google Chat users can quote a message to reply to it.
    , quotedMessageMetadata :: (Core.Maybe QuotedMessageMetadata)
      -- | Output only. The user who created the message. If your Chat app <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticates as a user>, the output populates the <https://developers.google.com/workspace/chat/api/reference/rest/v1/User user> @name@ and @type@.
    , sender :: (Core.Maybe User)
      -- | Output only. Slash command information, if applicable.
    , slashCommand :: (Core.Maybe SlashCommand)
      -- | Output only. If your Chat app <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticates as a user>, the output only populates the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces space> @name@.
    , space :: (Core.Maybe Space)
      -- | Optional. Plain-text body of the message. The first link to an image, video, or web page generates a <https://developers.google.com/workspace/chat/preview-links preview chip>. You can also <https://developers.google.com/workspace/chat/format-messages#messages-@mention \@mention a Google Chat user>, or everyone in the space. To learn about creating text messages, see <https://developers.google.com/workspace/chat/create-messages Send a message>.
    , text :: (Core.Maybe Core.Text)
      -- | The thread the message belongs to. For example usage, see <https://developers.google.com/workspace/chat/create-messages#create-message-thread Start or reply to a message thread>.
    , thread :: (Core.Maybe Thread)
      -- | Output only. When @true@, the message is a response in a reply thread. When @false@, the message is visible in the space\'s top-level conversation as either the first message of a thread or a message with no threaded replies. If the space doesn\'t support reply in threads, this field is always @false@.
    , threadReply :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
newMessage 
    ::  Message
newMessage =
  Message
    { accessoryWidgets = Core.Nothing
    , actionResponse = Core.Nothing
    , annotations = Core.Nothing
    , argumentText = Core.Nothing
    , attachedGifs = Core.Nothing
    , attachment = Core.Nothing
    , cards = Core.Nothing
    , cardsV2 = Core.Nothing
    , clientAssignedMessageId = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , deletionMetadata = Core.Nothing
    , emojiReactionSummaries = Core.Nothing
    , fallbackText = Core.Nothing
    , formattedText = Core.Nothing
    , lastUpdateTime = Core.Nothing
    , matchedUrl = Core.Nothing
    , name = Core.Nothing
    , privateMessageViewer = Core.Nothing
    , quotedMessageMetadata = Core.Nothing
    , sender = Core.Nothing
    , slashCommand = Core.Nothing
    , space = Core.Nothing
    , text = Core.Nothing
    , thread = Core.Nothing
    , threadReply = Core.Nothing
    }

instance Core.FromJSON Message where
        parseJSON
          = Core.withObject "Message"
              (\ o ->
                 Message Core.<$>
                   (o Core..:? "accessoryWidgets") Core.<*>
                     (o Core..:? "actionResponse")
                     Core.<*> (o Core..:? "annotations")
                     Core.<*> (o Core..:? "argumentText")
                     Core.<*> (o Core..:? "attachedGifs")
                     Core.<*> (o Core..:? "attachment")
                     Core.<*> (o Core..:? "cards")
                     Core.<*> (o Core..:? "cardsV2")
                     Core.<*> (o Core..:? "clientAssignedMessageId")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "deletionMetadata")
                     Core.<*> (o Core..:? "emojiReactionSummaries")
                     Core.<*> (o Core..:? "fallbackText")
                     Core.<*> (o Core..:? "formattedText")
                     Core.<*> (o Core..:? "lastUpdateTime")
                     Core.<*> (o Core..:? "matchedUrl")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "privateMessageViewer")
                     Core.<*> (o Core..:? "quotedMessageMetadata")
                     Core.<*> (o Core..:? "sender")
                     Core.<*> (o Core..:? "slashCommand")
                     Core.<*> (o Core..:? "space")
                     Core.<*> (o Core..:? "text")
                     Core.<*> (o Core..:? "thread")
                     Core.<*> (o Core..:? "threadReply"))

instance Core.ToJSON Message where
        toJSON Message{..}
          = Core.object
              (Core.catMaybes
                 [("accessoryWidgets" Core..=) Core.<$>
                    accessoryWidgets,
                  ("actionResponse" Core..=) Core.<$> actionResponse,
                  ("annotations" Core..=) Core.<$> annotations,
                  ("argumentText" Core..=) Core.<$> argumentText,
                  ("attachedGifs" Core..=) Core.<$> attachedGifs,
                  ("attachment" Core..=) Core.<$> attachment,
                  ("cards" Core..=) Core.<$> cards,
                  ("cardsV2" Core..=) Core.<$> cardsV2,
                  ("clientAssignedMessageId" Core..=) Core.<$>
                    clientAssignedMessageId,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("deletionMetadata" Core..=) Core.<$>
                    deletionMetadata,
                  ("emojiReactionSummaries" Core..=) Core.<$>
                    emojiReactionSummaries,
                  ("fallbackText" Core..=) Core.<$> fallbackText,
                  ("formattedText" Core..=) Core.<$> formattedText,
                  ("lastUpdateTime" Core..=) Core.<$> lastUpdateTime,
                  ("matchedUrl" Core..=) Core.<$> matchedUrl,
                  ("name" Core..=) Core.<$> name,
                  ("privateMessageViewer" Core..=) Core.<$>
                    privateMessageViewer,
                  ("quotedMessageMetadata" Core..=) Core.<$>
                    quotedMessageMetadata,
                  ("sender" Core..=) Core.<$> sender,
                  ("slashCommand" Core..=) Core.<$> slashCommand,
                  ("space" Core..=) Core.<$> space,
                  ("text" Core..=) Core.<$> text,
                  ("thread" Core..=) Core.<$> thread,
                  ("threadReply" Core..=) Core.<$> threadReply])


-- | Event payload for multiple new messages. Event type: @google.workspace.chat.message.v1.batchCreated@
--
-- /See:/ 'newMessageBatchCreatedEventData' smart constructor.
newtype MessageBatchCreatedEventData = MessageBatchCreatedEventData
    {
      -- | A list of new messages.
      messages :: (Core.Maybe [MessageCreatedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageBatchCreatedEventData' with the minimum fields required to make a request.
newMessageBatchCreatedEventData 
    ::  MessageBatchCreatedEventData
newMessageBatchCreatedEventData =
  MessageBatchCreatedEventData {messages = Core.Nothing}

instance Core.FromJSON MessageBatchCreatedEventData
         where
        parseJSON
          = Core.withObject "MessageBatchCreatedEventData"
              (\ o ->
                 MessageBatchCreatedEventData Core.<$>
                   (o Core..:? "messages"))

instance Core.ToJSON MessageBatchCreatedEventData
         where
        toJSON MessageBatchCreatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("messages" Core..=) Core.<$> messages])


-- | Event payload for multiple deleted messages. Event type: @google.workspace.chat.message.v1.batchDeleted@
--
-- /See:/ 'newMessageBatchDeletedEventData' smart constructor.
newtype MessageBatchDeletedEventData = MessageBatchDeletedEventData
    {
      -- | A list of deleted messages.
      messages :: (Core.Maybe [MessageDeletedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageBatchDeletedEventData' with the minimum fields required to make a request.
newMessageBatchDeletedEventData 
    ::  MessageBatchDeletedEventData
newMessageBatchDeletedEventData =
  MessageBatchDeletedEventData {messages = Core.Nothing}

instance Core.FromJSON MessageBatchDeletedEventData
         where
        parseJSON
          = Core.withObject "MessageBatchDeletedEventData"
              (\ o ->
                 MessageBatchDeletedEventData Core.<$>
                   (o Core..:? "messages"))

instance Core.ToJSON MessageBatchDeletedEventData
         where
        toJSON MessageBatchDeletedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("messages" Core..=) Core.<$> messages])


-- | Event payload for multiple updated messages. Event type: @google.workspace.chat.message.v1.batchUpdated@
--
-- /See:/ 'newMessageBatchUpdatedEventData' smart constructor.
newtype MessageBatchUpdatedEventData = MessageBatchUpdatedEventData
    {
      -- | A list of updated messages.
      messages :: (Core.Maybe [MessageUpdatedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageBatchUpdatedEventData' with the minimum fields required to make a request.
newMessageBatchUpdatedEventData 
    ::  MessageBatchUpdatedEventData
newMessageBatchUpdatedEventData =
  MessageBatchUpdatedEventData {messages = Core.Nothing}

instance Core.FromJSON MessageBatchUpdatedEventData
         where
        parseJSON
          = Core.withObject "MessageBatchUpdatedEventData"
              (\ o ->
                 MessageBatchUpdatedEventData Core.<$>
                   (o Core..:? "messages"))

instance Core.ToJSON MessageBatchUpdatedEventData
         where
        toJSON MessageBatchUpdatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("messages" Core..=) Core.<$> messages])


-- | Event payload for a new message. Event type: @google.workspace.chat.message.v1.created@
--
-- /See:/ 'newMessageCreatedEventData' smart constructor.
newtype MessageCreatedEventData = MessageCreatedEventData
    {
      -- | The new message.
      message :: (Core.Maybe Message)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageCreatedEventData' with the minimum fields required to make a request.
newMessageCreatedEventData 
    ::  MessageCreatedEventData
newMessageCreatedEventData = MessageCreatedEventData {message = Core.Nothing}

instance Core.FromJSON MessageCreatedEventData where
        parseJSON
          = Core.withObject "MessageCreatedEventData"
              (\ o ->
                 MessageCreatedEventData Core.<$>
                   (o Core..:? "message"))

instance Core.ToJSON MessageCreatedEventData where
        toJSON MessageCreatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("message" Core..=) Core.<$> message])


-- | Event payload for a deleted message. Event type: @google.workspace.chat.message.v1.deleted@
--
-- /See:/ 'newMessageDeletedEventData' smart constructor.
newtype MessageDeletedEventData = MessageDeletedEventData
    {
      -- | The deleted message. Only the @name@, @createTime@, @deleteTime@, and @deletionMetadata@ fields are populated.
      message :: (Core.Maybe Message)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageDeletedEventData' with the minimum fields required to make a request.
newMessageDeletedEventData 
    ::  MessageDeletedEventData
newMessageDeletedEventData = MessageDeletedEventData {message = Core.Nothing}

instance Core.FromJSON MessageDeletedEventData where
        parseJSON
          = Core.withObject "MessageDeletedEventData"
              (\ o ->
                 MessageDeletedEventData Core.<$>
                   (o Core..:? "message"))

instance Core.ToJSON MessageDeletedEventData where
        toJSON MessageDeletedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("message" Core..=) Core.<$> message])


-- | Event payload for an updated message. Event type: @google.workspace.chat.message.v1.updated@
--
-- /See:/ 'newMessageUpdatedEventData' smart constructor.
newtype MessageUpdatedEventData = MessageUpdatedEventData
    {
      -- | The updated message.
      message :: (Core.Maybe Message)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageUpdatedEventData' with the minimum fields required to make a request.
newMessageUpdatedEventData 
    ::  MessageUpdatedEventData
newMessageUpdatedEventData = MessageUpdatedEventData {message = Core.Nothing}

instance Core.FromJSON MessageUpdatedEventData where
        parseJSON
          = Core.withObject "MessageUpdatedEventData"
              (\ o ->
                 MessageUpdatedEventData Core.<$>
                   (o Core..:? "message"))

instance Core.ToJSON MessageUpdatedEventData where
        toJSON MessageUpdatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("message" Core..=) Core.<$> message])


-- | An @onclick@ action (for example, open a link).
--
-- /See:/ 'newOnClick' smart constructor.
data OnClick = OnClick
    {
      -- | A form action is triggered by this @onclick@ action if specified.
      action :: (Core.Maybe FormAction)
      -- | This @onclick@ action triggers an open link action if specified.
    , openLink :: (Core.Maybe OpenLink)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OnClick' with the minimum fields required to make a request.
newOnClick 
    ::  OnClick
newOnClick = OnClick {action = Core.Nothing, openLink = Core.Nothing}

instance Core.FromJSON OnClick where
        parseJSON
          = Core.withObject "OnClick"
              (\ o ->
                 OnClick Core.<$>
                   (o Core..:? "action") Core.<*>
                     (o Core..:? "openLink"))

instance Core.ToJSON OnClick where
        toJSON OnClick{..}
          = Core.object
              (Core.catMaybes
                 [("action" Core..=) Core.<$> action,
                  ("openLink" Core..=) Core.<$> openLink])


-- | A link that opens a new window.
--
-- /See:/ 'newOpenLink' smart constructor.
newtype OpenLink = OpenLink
    {
      -- | The URL to open.
      url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OpenLink' with the minimum fields required to make a request.
newOpenLink 
    ::  OpenLink
newOpenLink = OpenLink {url = Core.Nothing}

instance Core.FromJSON OpenLink where
        parseJSON
          = Core.withObject "OpenLink"
              (\ o -> OpenLink Core.<$> (o Core..:? "url"))

instance Core.ToJSON OpenLink where
        toJSON OpenLink{..}
          = Core.object
              (Core.catMaybes [("url" Core..=) Core.<$> url])


-- | Represents a space permission setting.
--
-- /See:/ 'newPermissionSetting' smart constructor.
data PermissionSetting = PermissionSetting
    {
      -- | Optional. Whether spaces managers have this permission.
      managersAllowed :: (Core.Maybe Core.Bool)
      -- | Optional. Whether non-manager members have this permission.
    , membersAllowed :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PermissionSetting' with the minimum fields required to make a request.
newPermissionSetting 
    ::  PermissionSetting
newPermissionSetting =
  PermissionSetting
    {managersAllowed = Core.Nothing, membersAllowed = Core.Nothing}

instance Core.FromJSON PermissionSetting where
        parseJSON
          = Core.withObject "PermissionSetting"
              (\ o ->
                 PermissionSetting Core.<$>
                   (o Core..:? "managersAllowed") Core.<*>
                     (o Core..:? "membersAllowed"))

instance Core.ToJSON PermissionSetting where
        toJSON PermissionSetting{..}
          = Core.object
              (Core.catMaybes
                 [("managersAllowed" Core..=) Core.<$>
                    managersAllowed,
                  ("membersAllowed" Core..=) Core.<$> membersAllowed])


-- | <https://support.google.com/chat/answer/13340792 Permission settings> that you can specify when updating an existing named space. To set permission settings when creating a space, specify the @PredefinedPermissionSettings@ field in your request.
--
-- /See:/ 'newPermissionSettings' smart constructor.
data PermissionSettings = PermissionSettings
    {
      -- | Optional. Setting for managing apps in a space.
      manageApps :: (Core.Maybe PermissionSetting)
      -- | Optional. Setting for managing members and groups in a space.
    , manageMembersAndGroups :: (Core.Maybe PermissionSetting)
      -- | Optional. Setting for managing webhooks in a space.
    , manageWebhooks :: (Core.Maybe PermissionSetting)
      -- | Optional. Setting for updating space name, avatar, description and guidelines.
    , modifySpaceDetails :: (Core.Maybe PermissionSetting)
      -- | Output only. Setting for posting messages in a space.
    , postMessages :: (Core.Maybe PermissionSetting)
      -- | Optional. Setting for replying to messages in a space.
    , replyMessages :: (Core.Maybe PermissionSetting)
      -- | Optional. Setting for toggling space history on and off.
    , toggleHistory :: (Core.Maybe PermissionSetting)
      -- | Optional. Setting for using \@all in a space.
    , useAtMentionAll :: (Core.Maybe PermissionSetting)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PermissionSettings' with the minimum fields required to make a request.
newPermissionSettings 
    ::  PermissionSettings
newPermissionSettings =
  PermissionSettings
    { manageApps = Core.Nothing
    , manageMembersAndGroups = Core.Nothing
    , manageWebhooks = Core.Nothing
    , modifySpaceDetails = Core.Nothing
    , postMessages = Core.Nothing
    , replyMessages = Core.Nothing
    , toggleHistory = Core.Nothing
    , useAtMentionAll = Core.Nothing
    }

instance Core.FromJSON PermissionSettings where
        parseJSON
          = Core.withObject "PermissionSettings"
              (\ o ->
                 PermissionSettings Core.<$>
                   (o Core..:? "manageApps") Core.<*>
                     (o Core..:? "manageMembersAndGroups")
                     Core.<*> (o Core..:? "manageWebhooks")
                     Core.<*> (o Core..:? "modifySpaceDetails")
                     Core.<*> (o Core..:? "postMessages")
                     Core.<*> (o Core..:? "replyMessages")
                     Core.<*> (o Core..:? "toggleHistory")
                     Core.<*> (o Core..:? "useAtMentionAll"))

instance Core.ToJSON PermissionSettings where
        toJSON PermissionSettings{..}
          = Core.object
              (Core.catMaybes
                 [("manageApps" Core..=) Core.<$> manageApps,
                  ("manageMembersAndGroups" Core..=) Core.<$>
                    manageMembersAndGroups,
                  ("manageWebhooks" Core..=) Core.<$> manageWebhooks,
                  ("modifySpaceDetails" Core..=) Core.<$>
                    modifySpaceDetails,
                  ("postMessages" Core..=) Core.<$> postMessages,
                  ("replyMessages" Core..=) Core.<$> replyMessages,
                  ("toggleHistory" Core..=) Core.<$> toggleHistory,
                  ("useAtMentionAll" Core..=) Core.<$>
                    useAtMentionAll])


-- | Information about a quoted message.
--
-- /See:/ 'newQuotedMessageMetadata' smart constructor.
data QuotedMessageMetadata = QuotedMessageMetadata
    {
      -- | Output only. The timestamp when the quoted message was created or when the quoted message was last updated.
      lastUpdateTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Resource name of the quoted message. Format: @spaces\/{space}\/messages\/{message}@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuotedMessageMetadata' with the minimum fields required to make a request.
newQuotedMessageMetadata 
    ::  QuotedMessageMetadata
newQuotedMessageMetadata =
  QuotedMessageMetadata {lastUpdateTime = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON QuotedMessageMetadata where
        parseJSON
          = Core.withObject "QuotedMessageMetadata"
              (\ o ->
                 QuotedMessageMetadata Core.<$>
                   (o Core..:? "lastUpdateTime") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON QuotedMessageMetadata where
        toJSON QuotedMessageMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("lastUpdateTime" Core..=) Core.<$> lastUpdateTime,
                  ("name" Core..=) Core.<$> name])


-- | A reaction to a message.
--
-- /See:/ 'newReaction' smart constructor.
data Reaction = Reaction
    {
      -- | Required. The emoji used in the reaction.
      emoji :: (Core.Maybe Emoji)
      -- | Identifier. The resource name of the reaction. Format: @spaces\/{space}\/messages\/{message}\/reactions\/{reaction}@
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The user who created the reaction.
    , user :: (Core.Maybe User)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Reaction' with the minimum fields required to make a request.
newReaction 
    ::  Reaction
newReaction =
  Reaction {emoji = Core.Nothing, name = Core.Nothing, user = Core.Nothing}

instance Core.FromJSON Reaction where
        parseJSON
          = Core.withObject "Reaction"
              (\ o ->
                 Reaction Core.<$>
                   (o Core..:? "emoji") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "user"))

instance Core.ToJSON Reaction where
        toJSON Reaction{..}
          = Core.object
              (Core.catMaybes
                 [("emoji" Core..=) Core.<$> emoji,
                  ("name" Core..=) Core.<$> name,
                  ("user" Core..=) Core.<$> user])


-- | Event payload for multiple new reactions. Event type: @google.workspace.chat.reaction.v1.batchCreated@
--
-- /See:/ 'newReactionBatchCreatedEventData' smart constructor.
newtype ReactionBatchCreatedEventData = ReactionBatchCreatedEventData
    {
      -- | A list of new reactions.
      reactions :: (Core.Maybe [ReactionCreatedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReactionBatchCreatedEventData' with the minimum fields required to make a request.
newReactionBatchCreatedEventData 
    ::  ReactionBatchCreatedEventData
newReactionBatchCreatedEventData =
  ReactionBatchCreatedEventData {reactions = Core.Nothing}

instance Core.FromJSON ReactionBatchCreatedEventData
         where
        parseJSON
          = Core.withObject "ReactionBatchCreatedEventData"
              (\ o ->
                 ReactionBatchCreatedEventData Core.<$>
                   (o Core..:? "reactions"))

instance Core.ToJSON ReactionBatchCreatedEventData
         where
        toJSON ReactionBatchCreatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("reactions" Core..=) Core.<$> reactions])


-- | Event payload for multiple deleted reactions. Event type: @google.workspace.chat.reaction.v1.batchDeleted@
--
-- /See:/ 'newReactionBatchDeletedEventData' smart constructor.
newtype ReactionBatchDeletedEventData = ReactionBatchDeletedEventData
    {
      -- | A list of deleted reactions.
      reactions :: (Core.Maybe [ReactionDeletedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReactionBatchDeletedEventData' with the minimum fields required to make a request.
newReactionBatchDeletedEventData 
    ::  ReactionBatchDeletedEventData
newReactionBatchDeletedEventData =
  ReactionBatchDeletedEventData {reactions = Core.Nothing}

instance Core.FromJSON ReactionBatchDeletedEventData
         where
        parseJSON
          = Core.withObject "ReactionBatchDeletedEventData"
              (\ o ->
                 ReactionBatchDeletedEventData Core.<$>
                   (o Core..:? "reactions"))

instance Core.ToJSON ReactionBatchDeletedEventData
         where
        toJSON ReactionBatchDeletedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("reactions" Core..=) Core.<$> reactions])


-- | Event payload for a new reaction. Event type: @google.workspace.chat.reaction.v1.created@
--
-- /See:/ 'newReactionCreatedEventData' smart constructor.
newtype ReactionCreatedEventData = ReactionCreatedEventData
    {
      -- | The new reaction.
      reaction :: (Core.Maybe Reaction)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReactionCreatedEventData' with the minimum fields required to make a request.
newReactionCreatedEventData 
    ::  ReactionCreatedEventData
newReactionCreatedEventData = ReactionCreatedEventData {reaction = Core.Nothing}

instance Core.FromJSON ReactionCreatedEventData where
        parseJSON
          = Core.withObject "ReactionCreatedEventData"
              (\ o ->
                 ReactionCreatedEventData Core.<$>
                   (o Core..:? "reaction"))

instance Core.ToJSON ReactionCreatedEventData where
        toJSON ReactionCreatedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("reaction" Core..=) Core.<$> reaction])


-- | Event payload for a deleted reaction. Type: @google.workspace.chat.reaction.v1.deleted@
--
-- /See:/ 'newReactionDeletedEventData' smart constructor.
newtype ReactionDeletedEventData = ReactionDeletedEventData
    {
      -- | The deleted reaction.
      reaction :: (Core.Maybe Reaction)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReactionDeletedEventData' with the minimum fields required to make a request.
newReactionDeletedEventData 
    ::  ReactionDeletedEventData
newReactionDeletedEventData = ReactionDeletedEventData {reaction = Core.Nothing}

instance Core.FromJSON ReactionDeletedEventData where
        parseJSON
          = Core.withObject "ReactionDeletedEventData"
              (\ o ->
                 ReactionDeletedEventData Core.<$>
                   (o Core..:? "reaction"))

instance Core.ToJSON ReactionDeletedEventData where
        toJSON ReactionDeletedEventData{..}
          = Core.object
              (Core.catMaybes
                 [("reaction" Core..=) Core.<$> reaction])


-- | A rich link to a resource.
--
-- /See:/ 'newRichLinkMetadata' smart constructor.
data RichLinkMetadata = RichLinkMetadata
    {
      -- | Data for a chat space link.
      chatSpaceLinkData :: (Core.Maybe ChatSpaceLinkData)
      -- | Data for a drive link.
    , driveLinkData :: (Core.Maybe DriveLinkData)
      -- | The rich link type.
    , richLinkType :: (Core.Maybe RichLinkMetadata_RichLinkType)
      -- | The URI of this link.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RichLinkMetadata' with the minimum fields required to make a request.
newRichLinkMetadata 
    ::  RichLinkMetadata
newRichLinkMetadata =
  RichLinkMetadata
    { chatSpaceLinkData = Core.Nothing
    , driveLinkData = Core.Nothing
    , richLinkType = Core.Nothing
    , uri = Core.Nothing
    }

instance Core.FromJSON RichLinkMetadata where
        parseJSON
          = Core.withObject "RichLinkMetadata"
              (\ o ->
                 RichLinkMetadata Core.<$>
                   (o Core..:? "chatSpaceLinkData") Core.<*>
                     (o Core..:? "driveLinkData")
                     Core.<*> (o Core..:? "richLinkType")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON RichLinkMetadata where
        toJSON RichLinkMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("chatSpaceLinkData" Core..=) Core.<$>
                    chatSpaceLinkData,
                  ("driveLinkData" Core..=) Core.<$> driveLinkData,
                  ("richLinkType" Core..=) Core.<$> richLinkType,
                  ("uri" Core..=) Core.<$> uri])


-- | Response with a list of spaces corresponding to the search spaces request.
--
-- /See:/ 'newSearchSpacesResponse' smart constructor.
data SearchSpacesResponse = SearchSpacesResponse
    {
      -- | A token that can be used to retrieve the next page. If this field is empty, there are no subsequent pages.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A page of the requested spaces.
    , spaces :: (Core.Maybe [Space])
      -- | The total number of spaces that match the query, across all pages. If the result is over 10,000 spaces, this value is an estimate.
    , totalSize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSpacesResponse' with the minimum fields required to make a request.
newSearchSpacesResponse 
    ::  SearchSpacesResponse
newSearchSpacesResponse =
  SearchSpacesResponse
    { nextPageToken = Core.Nothing
    , spaces = Core.Nothing
    , totalSize = Core.Nothing
    }

instance Core.FromJSON SearchSpacesResponse where
        parseJSON
          = Core.withObject "SearchSpacesResponse"
              (\ o ->
                 SearchSpacesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "spaces")
                     Core.<*> (o Core..:? "totalSize"))

instance Core.ToJSON SearchSpacesResponse where
        toJSON SearchSpacesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("spaces" Core..=) Core.<$> spaces,
                  ("totalSize" Core..=) Core.<$> totalSize])


-- | A section contains a collection of widgets that are rendered (vertically) in the order that they are specified. Across all platforms, cards have a narrow fixed width, so there\'s currently no need for layout properties (for example, float).
--
-- /See:/ 'newSection' smart constructor.
data Section = Section
    {
      -- | The header of the section. Formatted text is supported. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>.
      header :: (Core.Maybe Core.Text)
      -- | A section must contain at least one widget.
    , widgets :: (Core.Maybe [WidgetMarkup])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Section' with the minimum fields required to make a request.
newSection 
    ::  Section
newSection = Section {header = Core.Nothing, widgets = Core.Nothing}

instance Core.FromJSON Section where
        parseJSON
          = Core.withObject "Section"
              (\ o ->
                 Section Core.<$>
                   (o Core..:? "header") Core.<*>
                     (o Core..:? "widgets"))

instance Core.ToJSON Section where
        toJSON Section{..}
          = Core.object
              (Core.catMaybes
                 [("header" Core..=) Core.<$> header,
                  ("widgets" Core..=) Core.<$> widgets])


-- | List of widget autocomplete results.
--
-- /See:/ 'newSelectionItems' smart constructor.
newtype SelectionItems = SelectionItems
    {
      -- | An array of the SelectionItem objects.
      items :: (Core.Maybe [GoogleAppsCardV1SelectionItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SelectionItems' with the minimum fields required to make a request.
newSelectionItems 
    ::  SelectionItems
newSelectionItems = SelectionItems {items = Core.Nothing}

instance Core.FromJSON SelectionItems where
        parseJSON
          = Core.withObject "SelectionItems"
              (\ o -> SelectionItems Core.<$> (o Core..:? "items"))

instance Core.ToJSON SelectionItems where
        toJSON SelectionItems{..}
          = Core.object
              (Core.catMaybes [("items" Core..=) Core.<$> items])


-- | Request to create a space and add specified users to it.
--
-- /See:/ 'newSetUpSpaceRequest' smart constructor.
data SetUpSpaceRequest = SetUpSpaceRequest
    {
      -- | Optional. The Google Chat users or groups to invite to join the space. Omit the calling user, as they are added automatically. The set currently allows up to 49 memberships (in addition to the caller). For human membership, the @Membership.member@ field must contain a @user@ with @name@ populated (format: @users\/{user}@) and @type@ set to @User.Type.HUMAN@. You can only add human users when setting up a space (adding Chat apps is only supported for direct message setup with the calling app). You can also add members using the user\'s email as an alias for {user}. For example, the @user.name@ can be @users\/example\@gmail.com@. To invite Gmail users or users from external Google Workspace domains, user\'s email must be used for @{user}@. For Google group membership, the @Membership.group_member@ field must contain a @group@ with @name@ populated (format @groups\/{group}@). You can only add Google groups when setting @Space.spaceType@ to @SPACE@. Optional when setting @Space.spaceType@ to @SPACE@. Required
      -- when setting @Space.spaceType@ to @GROUP_CHAT@, along with at least two memberships. Required when setting @Space.spaceType@ to @DIRECT_MESSAGE@ with a human user, along with exactly one membership. Must be empty when creating a 1:1 conversation between a human and the calling Chat app (when setting @Space.spaceType@ to @DIRECT_MESSAGE@ and @Space.singleUserBotDm@ to @true@).
      memberships :: (Core.Maybe [Membership])
      -- | Optional. A unique identifier for this request. A random UUID is recommended. Specifying an existing request ID returns the space created with that ID instead of creating a new space. Specifying an existing request ID from the same Chat app with a different authenticated user returns an error.
    , requestId :: (Core.Maybe Core.Text)
      -- | Required. The @Space.spaceType@ field is required. To create a space, set @Space.spaceType@ to @SPACE@ and set @Space.displayName@. If you receive the error message @ALREADY_EXISTS@ when setting up a space, try a different @displayName@. An existing space within the Google Workspace organization might already use this display name. To create a group chat, set @Space.spaceType@ to @GROUP_CHAT@. Don\'t set @Space.displayName@. To create a 1:1 conversation between humans, set @Space.spaceType@ to @DIRECT_MESSAGE@ and set @Space.singleUserBotDm@ to @false@. Don\'t set @Space.displayName@ or @Space.spaceDetails@. To create an 1:1 conversation between a human and the calling Chat app, set @Space.spaceType@ to @DIRECT_MESSAGE@ and @Space.singleUserBotDm@ to @true@. Don\'t set @Space.displayName@ or @Space.spaceDetails@. If a @DIRECT_MESSAGE@ space already exists, that space is returned instead of creating a new space.
    , space :: (Core.Maybe Space)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetUpSpaceRequest' with the minimum fields required to make a request.
newSetUpSpaceRequest 
    ::  SetUpSpaceRequest
newSetUpSpaceRequest =
  SetUpSpaceRequest
    {memberships = Core.Nothing, requestId = Core.Nothing, space = Core.Nothing}

instance Core.FromJSON SetUpSpaceRequest where
        parseJSON
          = Core.withObject "SetUpSpaceRequest"
              (\ o ->
                 SetUpSpaceRequest Core.<$>
                   (o Core..:? "memberships") Core.<*>
                     (o Core..:? "requestId")
                     Core.<*> (o Core..:? "space"))

instance Core.ToJSON SetUpSpaceRequest where
        toJSON SetUpSpaceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("memberships" Core..=) Core.<$> memberships,
                  ("requestId" Core..=) Core.<$> requestId,
                  ("space" Core..=) Core.<$> space])


-- | A <https://developers.google.com/workspace/chat/slash-commands slash command> in Google Chat.
--
-- /See:/ 'newSlashCommand' smart constructor.
newtype SlashCommand = SlashCommand
    {
      -- | The ID of the slash command invoked.
      commandId :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlashCommand' with the minimum fields required to make a request.
newSlashCommand 
    ::  SlashCommand
newSlashCommand = SlashCommand {commandId = Core.Nothing}

instance Core.FromJSON SlashCommand where
        parseJSON
          = Core.withObject "SlashCommand"
              (\ o ->
                 SlashCommand Core.<$>
                   (o Core..:? "commandId" Core.<&>
                      Core.fmap Core.fromAsText))

instance Core.ToJSON SlashCommand where
        toJSON SlashCommand{..}
          = Core.object
              (Core.catMaybes
                 [("commandId" Core..=) Core.. Core.AsText Core.<$>
                    commandId])


-- | Annotation metadata for slash commands (\/).
--
-- /See:/ 'newSlashCommandMetadata' smart constructor.
data SlashCommandMetadata = SlashCommandMetadata
    {
      -- | The Chat app whose command was invoked.
      bot :: (Core.Maybe User)
      -- | The command ID of the invoked slash command.
    , commandId :: (Core.Maybe Core.Int64)
      -- | The name of the invoked slash command.
    , commandName :: (Core.Maybe Core.Text)
      -- | Indicates whether the slash command is for a dialog.
    , triggersDialog :: (Core.Maybe Core.Bool)
      -- | The type of slash command.
    , type' :: (Core.Maybe SlashCommandMetadata_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlashCommandMetadata' with the minimum fields required to make a request.
newSlashCommandMetadata 
    ::  SlashCommandMetadata
newSlashCommandMetadata =
  SlashCommandMetadata
    { bot = Core.Nothing
    , commandId = Core.Nothing
    , commandName = Core.Nothing
    , triggersDialog = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON SlashCommandMetadata where
        parseJSON
          = Core.withObject "SlashCommandMetadata"
              (\ o ->
                 SlashCommandMetadata Core.<$>
                   (o Core..:? "bot") Core.<*>
                     (o Core..:? "commandId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "commandName")
                     Core.<*> (o Core..:? "triggersDialog")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON SlashCommandMetadata where
        toJSON SlashCommandMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("bot" Core..=) Core.<$> bot,
                  ("commandId" Core..=) Core.. Core.AsText Core.<$>
                    commandId,
                  ("commandName" Core..=) Core.<$> commandName,
                  ("triggersDialog" Core..=) Core.<$> triggersDialog,
                  ("type" Core..=) Core.<$> type'])


-- | A space in Google Chat. Spaces are conversations between two or more users or 1:1 messages between a user and a Chat app.
--
-- /See:/ 'newSpace' smart constructor.
data Space = Space
    {
      -- | Optional. Specifies the <https://support.google.com/chat/answer/11971020 access setting> of the space. Only populated when the @space_type@ is @SPACE@.
      accessSettings :: (Core.Maybe AccessSettings)
      -- | Output only. For direct message (DM) spaces with a Chat app, whether the space was created by a Google Workspace administrator. Administrators can install and set up a direct message with a Chat app on behalf of users in their organization. To support admin install, your Chat app must feature direct messaging.
    , adminInstalled :: (Core.Maybe Core.Bool)
      -- | Optional. Immutable. For spaces created in Chat, the time the space was created. This field is output only, except when used in import mode spaces. For import mode spaces, set this field to the historical timestamp at which the space was created in the source in order to preserve the original creation time. Only populated in the output when @spaceType@ is @GROUP_CHAT@ or @SPACE@.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Optional. The space\'s display name. Required when <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/create creating a space> with a @spaceType@ of @SPACE@. If you receive the error message @ALREADY_EXISTS@ when creating a space or updating the @displayName@, try a different @displayName@. An existing space within the Google Workspace organization might already use this display name. For direct messages, this field might be empty. Supports up to 128 characters.
    , displayName :: (Core.Maybe Core.Text)
      -- | Optional. Immutable. Whether this space permits any Google Chat user as a member. Input when creating a space in a Google Workspace organization. Omit this field when creating spaces in the following conditions: * The authenticated user uses a consumer account (unmanaged user account). By default, a space created by a consumer account permits any Google Chat user. For existing spaces, this field is output only.
    , externalUserAllowed :: (Core.Maybe Core.Bool)
      -- | Optional. Whether this space is created in @Import Mode@ as part of a data migration into Google Workspace. While spaces are being imported, they aren\'t visible to users until the import is complete. Creating a space in @Import Mode@requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
    , importMode :: (Core.Maybe Core.Bool)
      -- | Output only. The time when the space will be automatically deleted by the system if it remains in import mode. Each space created in import mode must exit this mode before this expire time using @spaces.completeImport@. This field is only populated for spaces that were created with import mode.
    , importModeExpireTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Timestamp of the last message in the space.
    , lastActiveTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The count of joined memberships grouped by member type. Populated when the @space_type@ is @SPACE@, @DIRECT_MESSAGE@ or @GROUP_CHAT@.
    , membershipCount :: (Core.Maybe MembershipCount)
      -- | Identifier. Resource name of the space. Format: @spaces\/{space}@ Where @{space}@ represents the system-assigned ID for the space. You can obtain the space ID by calling the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/list spaces.list()> method or from the space URL. For example, if the space URL is @https:\/\/mail.google.com\/mail\/u\/0\/#chat\/space\/AAAAAAAAA@, the space ID is @AAAAAAAAA@.
    , name :: (Core.Maybe Core.Text)
      -- | Optional. Space permission settings for existing spaces. Input for updating exact space permission settings, where existing permission settings are replaced. Output lists current permission settings.
    , permissionSettings :: (Core.Maybe PermissionSettings)
      -- | Optional. Input only. Predefined space permission settings, input only when creating a space. If the field is not set, a collaboration space is created. After you create the space, settings are populated in the @PermissionSettings@ field.
    , predefinedPermissionSettings :: (Core.Maybe Space_PredefinedPermissionSettings)
      -- | Optional. Whether the space is a DM between a Chat app and a single human.
    , singleUserBotDm :: (Core.Maybe Core.Bool)
      -- | Optional. Details about the space including description and rules.
    , spaceDetails :: (Core.Maybe SpaceDetails)
      -- | Optional. The message history state for messages and threads in this space.
    , spaceHistoryState :: (Core.Maybe Space_SpaceHistoryState)
      -- | Output only. The threading state in the Chat space.
    , spaceThreadingState :: (Core.Maybe Space_SpaceThreadingState)
      -- | Optional. The type of space. Required when creating a space or updating the space type of a space. Output only for other usage.
    , spaceType :: (Core.Maybe Space_SpaceType)
      -- | Output only. The URI for a user to access the space.
    , spaceUri :: (Core.Maybe Core.Text)
      -- | Output only. Deprecated: Use @spaceThreadingState@ instead. Whether messages are threaded in this space.
    , threaded :: (Core.Maybe Core.Bool)
      -- | Output only. Deprecated: Use @space_type@ instead. The type of a space.
    , type' :: (Core.Maybe Space_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Space' with the minimum fields required to make a request.
newSpace 
    ::  Space
newSpace =
  Space
    { accessSettings = Core.Nothing
    , adminInstalled = Core.Nothing
    , createTime = Core.Nothing
    , displayName = Core.Nothing
    , externalUserAllowed = Core.Nothing
    , importMode = Core.Nothing
    , importModeExpireTime = Core.Nothing
    , lastActiveTime = Core.Nothing
    , membershipCount = Core.Nothing
    , name = Core.Nothing
    , permissionSettings = Core.Nothing
    , predefinedPermissionSettings = Core.Nothing
    , singleUserBotDm = Core.Nothing
    , spaceDetails = Core.Nothing
    , spaceHistoryState = Core.Nothing
    , spaceThreadingState = Core.Nothing
    , spaceType = Core.Nothing
    , spaceUri = Core.Nothing
    , threaded = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Space where
        parseJSON
          = Core.withObject "Space"
              (\ o ->
                 Space Core.<$>
                   (o Core..:? "accessSettings") Core.<*>
                     (o Core..:? "adminInstalled")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "externalUserAllowed")
                     Core.<*> (o Core..:? "importMode")
                     Core.<*> (o Core..:? "importModeExpireTime")
                     Core.<*> (o Core..:? "lastActiveTime")
                     Core.<*> (o Core..:? "membershipCount")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "permissionSettings")
                     Core.<*> (o Core..:? "predefinedPermissionSettings")
                     Core.<*> (o Core..:? "singleUserBotDm")
                     Core.<*> (o Core..:? "spaceDetails")
                     Core.<*> (o Core..:? "spaceHistoryState")
                     Core.<*> (o Core..:? "spaceThreadingState")
                     Core.<*> (o Core..:? "spaceType")
                     Core.<*> (o Core..:? "spaceUri")
                     Core.<*> (o Core..:? "threaded")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Space where
        toJSON Space{..}
          = Core.object
              (Core.catMaybes
                 [("accessSettings" Core..=) Core.<$> accessSettings,
                  ("adminInstalled" Core..=) Core.<$> adminInstalled,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("externalUserAllowed" Core..=) Core.<$>
                    externalUserAllowed,
                  ("importMode" Core..=) Core.<$> importMode,
                  ("importModeExpireTime" Core..=) Core.<$>
                    importModeExpireTime,
                  ("lastActiveTime" Core..=) Core.<$> lastActiveTime,
                  ("membershipCount" Core..=) Core.<$> membershipCount,
                  ("name" Core..=) Core.<$> name,
                  ("permissionSettings" Core..=) Core.<$>
                    permissionSettings,
                  ("predefinedPermissionSettings" Core..=) Core.<$>
                    predefinedPermissionSettings,
                  ("singleUserBotDm" Core..=) Core.<$> singleUserBotDm,
                  ("spaceDetails" Core..=) Core.<$> spaceDetails,
                  ("spaceHistoryState" Core..=) Core.<$>
                    spaceHistoryState,
                  ("spaceThreadingState" Core..=) Core.<$>
                    spaceThreadingState,
                  ("spaceType" Core..=) Core.<$> spaceType,
                  ("spaceUri" Core..=) Core.<$> spaceUri,
                  ("threaded" Core..=) Core.<$> threaded,
                  ("type" Core..=) Core.<$> type'])


-- | Event payload for multiple updates to a space. Event type: @google.workspace.chat.space.v1.batchUpdated@
--
-- /See:/ 'newSpaceBatchUpdatedEventData' smart constructor.
newtype SpaceBatchUpdatedEventData = SpaceBatchUpdatedEventData
    {
      -- | A list of updated spaces.
      spaces :: (Core.Maybe [SpaceUpdatedEventData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceBatchUpdatedEventData' with the minimum fields required to make a request.
newSpaceBatchUpdatedEventData 
    ::  SpaceBatchUpdatedEventData
newSpaceBatchUpdatedEventData =
  SpaceBatchUpdatedEventData {spaces = Core.Nothing}

instance Core.FromJSON SpaceBatchUpdatedEventData
         where
        parseJSON
          = Core.withObject "SpaceBatchUpdatedEventData"
              (\ o ->
                 SpaceBatchUpdatedEventData Core.<$>
                   (o Core..:? "spaces"))

instance Core.ToJSON SpaceBatchUpdatedEventData where
        toJSON SpaceBatchUpdatedEventData{..}
          = Core.object
              (Core.catMaybes [("spaces" Core..=) Core.<$> spaces])


-- | A data source that populates Google Chat spaces as selection items for a multiselect menu. Only populates spaces that the user is a member of. <https://developers.google.com/workspace/chat Google Chat apps>:
--
-- /See:/ 'newSpaceDataSource' smart constructor.
newtype SpaceDataSource = SpaceDataSource
    {
      -- | If set to @true@, the multiselect menu selects the current Google Chat space as an item by default.
      defaultToCurrentSpace :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceDataSource' with the minimum fields required to make a request.
newSpaceDataSource 
    ::  SpaceDataSource
newSpaceDataSource = SpaceDataSource {defaultToCurrentSpace = Core.Nothing}

instance Core.FromJSON SpaceDataSource where
        parseJSON
          = Core.withObject "SpaceDataSource"
              (\ o ->
                 SpaceDataSource Core.<$>
                   (o Core..:? "defaultToCurrentSpace"))

instance Core.ToJSON SpaceDataSource where
        toJSON SpaceDataSource{..}
          = Core.object
              (Core.catMaybes
                 [("defaultToCurrentSpace" Core..=) Core.<$>
                    defaultToCurrentSpace])


-- | Details about the space including description and rules.
--
-- /See:/ 'newSpaceDetails' smart constructor.
data SpaceDetails = SpaceDetails
    {
      -- | Optional. A description of the space. For example, describe the space\'s discussion topic, functional purpose, or participants. Supports up to 150 characters.
      description :: (Core.Maybe Core.Text)
      -- | Optional. The space\'s rules, expectations, and etiquette. Supports up to 5,000 characters.
    , guidelines :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceDetails' with the minimum fields required to make a request.
newSpaceDetails 
    ::  SpaceDetails
newSpaceDetails =
  SpaceDetails {description = Core.Nothing, guidelines = Core.Nothing}

instance Core.FromJSON SpaceDetails where
        parseJSON
          = Core.withObject "SpaceDetails"
              (\ o ->
                 SpaceDetails Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "guidelines"))

instance Core.ToJSON SpaceDetails where
        toJSON SpaceDetails{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("guidelines" Core..=) Core.<$> guidelines])


-- | An event that represents a change or activity in a Google Chat space. To learn more, see <https://developers.google.com/workspace/chat/events-overview Work with events from Google Chat>.
--
-- /See:/ 'newSpaceEvent' smart constructor.
data SpaceEvent = SpaceEvent
    {
      -- | Time when the event occurred.
      eventTime :: (Core.Maybe Core.DateTime)
      -- | Type of space event. Each event type has a batch version, which represents multiple instances of the event type that occur in a short period of time. For @spaceEvents.list()@ requests, omit batch event types in your query filter. By default, the server returns both event type and its batch version. Supported event types for <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages messages>: * New message: @google.workspace.chat.message.v1.created@ * Updated message: @google.workspace.chat.message.v1.updated@ * Deleted message: @google.workspace.chat.message.v1.deleted@ * Multiple new messages: @google.workspace.chat.message.v1.batchCreated@ * Multiple updated messages: @google.workspace.chat.message.v1.batchUpdated@ * Multiple deleted messages: @google.workspace.chat.message.v1.batchDeleted@ Supported event types for <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.members memberships>: * New membership: @google.workspace.chat.membership.v1.created@ *
      -- Updated membership: @google.workspace.chat.membership.v1.updated@ * Deleted membership: @google.workspace.chat.membership.v1.deleted@ * Multiple new memberships: @google.workspace.chat.membership.v1.batchCreated@ * Multiple updated memberships: @google.workspace.chat.membership.v1.batchUpdated@ * Multiple deleted memberships: @google.workspace.chat.membership.v1.batchDeleted@ Supported event types for <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages.reactions reactions>: * New reaction: @google.workspace.chat.reaction.v1.created@ * Deleted reaction: @google.workspace.chat.reaction.v1.deleted@ * Multiple new reactions: @google.workspace.chat.reaction.v1.batchCreated@ * Multiple deleted reactions: @google.workspace.chat.reaction.v1.batchDeleted@ Supported event types about the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces space>: * Updated space: @google.workspace.chat.space.v1.updated@ * Multiple space updates:
      -- @google.workspace.chat.space.v1.batchUpdated@
    , eventType :: (Core.Maybe Core.Text)
      -- | Event payload for multiple new memberships. Event type: @google.workspace.chat.membership.v1.batchCreated@
    , membershipBatchCreatedEventData :: (Core.Maybe MembershipBatchCreatedEventData)
      -- | Event payload for multiple deleted memberships. Event type: @google.workspace.chat.membership.v1.batchDeleted@
    , membershipBatchDeletedEventData :: (Core.Maybe MembershipBatchDeletedEventData)
      -- | Event payload for multiple updated memberships. Event type: @google.workspace.chat.membership.v1.batchUpdated@
    , membershipBatchUpdatedEventData :: (Core.Maybe MembershipBatchUpdatedEventData)
      -- | Event payload for a new membership. Event type: @google.workspace.chat.membership.v1.created@
    , membershipCreatedEventData :: (Core.Maybe MembershipCreatedEventData)
      -- | Event payload for a deleted membership. Event type: @google.workspace.chat.membership.v1.deleted@
    , membershipDeletedEventData :: (Core.Maybe MembershipDeletedEventData)
      -- | Event payload for an updated membership. Event type: @google.workspace.chat.membership.v1.updated@
    , membershipUpdatedEventData :: (Core.Maybe MembershipUpdatedEventData)
      -- | Event payload for multiple new messages. Event type: @google.workspace.chat.message.v1.batchCreated@
    , messageBatchCreatedEventData :: (Core.Maybe MessageBatchCreatedEventData)
      -- | Event payload for multiple deleted messages. Event type: @google.workspace.chat.message.v1.batchDeleted@
    , messageBatchDeletedEventData :: (Core.Maybe MessageBatchDeletedEventData)
      -- | Event payload for multiple updated messages. Event type: @google.workspace.chat.message.v1.batchUpdated@
    , messageBatchUpdatedEventData :: (Core.Maybe MessageBatchUpdatedEventData)
      -- | Event payload for a new message. Event type: @google.workspace.chat.message.v1.created@
    , messageCreatedEventData :: (Core.Maybe MessageCreatedEventData)
      -- | Event payload for a deleted message. Event type: @google.workspace.chat.message.v1.deleted@
    , messageDeletedEventData :: (Core.Maybe MessageDeletedEventData)
      -- | Event payload for an updated message. Event type: @google.workspace.chat.message.v1.updated@
    , messageUpdatedEventData :: (Core.Maybe MessageUpdatedEventData)
      -- | Resource name of the space event. Format: @spaces\/{space}\/spaceEvents\/{spaceEvent}@
    , name :: (Core.Maybe Core.Text)
      -- | Event payload for multiple new reactions. Event type: @google.workspace.chat.reaction.v1.batchCreated@
    , reactionBatchCreatedEventData :: (Core.Maybe ReactionBatchCreatedEventData)
      -- | Event payload for multiple deleted reactions. Event type: @google.workspace.chat.reaction.v1.batchDeleted@
    , reactionBatchDeletedEventData :: (Core.Maybe ReactionBatchDeletedEventData)
      -- | Event payload for a new reaction. Event type: @google.workspace.chat.reaction.v1.created@
    , reactionCreatedEventData :: (Core.Maybe ReactionCreatedEventData)
      -- | Event payload for a deleted reaction. Event type: @google.workspace.chat.reaction.v1.deleted@
    , reactionDeletedEventData :: (Core.Maybe ReactionDeletedEventData)
      -- | Event payload for multiple updates to a space. Event type: @google.workspace.chat.space.v1.batchUpdated@
    , spaceBatchUpdatedEventData :: (Core.Maybe SpaceBatchUpdatedEventData)
      -- | Event payload for a space update. Event type: @google.workspace.chat.space.v1.updated@
    , spaceUpdatedEventData :: (Core.Maybe SpaceUpdatedEventData)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceEvent' with the minimum fields required to make a request.
newSpaceEvent 
    ::  SpaceEvent
newSpaceEvent =
  SpaceEvent
    { eventTime = Core.Nothing
    , eventType = Core.Nothing
    , membershipBatchCreatedEventData = Core.Nothing
    , membershipBatchDeletedEventData = Core.Nothing
    , membershipBatchUpdatedEventData = Core.Nothing
    , membershipCreatedEventData = Core.Nothing
    , membershipDeletedEventData = Core.Nothing
    , membershipUpdatedEventData = Core.Nothing
    , messageBatchCreatedEventData = Core.Nothing
    , messageBatchDeletedEventData = Core.Nothing
    , messageBatchUpdatedEventData = Core.Nothing
    , messageCreatedEventData = Core.Nothing
    , messageDeletedEventData = Core.Nothing
    , messageUpdatedEventData = Core.Nothing
    , name = Core.Nothing
    , reactionBatchCreatedEventData = Core.Nothing
    , reactionBatchDeletedEventData = Core.Nothing
    , reactionCreatedEventData = Core.Nothing
    , reactionDeletedEventData = Core.Nothing
    , spaceBatchUpdatedEventData = Core.Nothing
    , spaceUpdatedEventData = Core.Nothing
    }

instance Core.FromJSON SpaceEvent where
        parseJSON
          = Core.withObject "SpaceEvent"
              (\ o ->
                 SpaceEvent Core.<$>
                   (o Core..:? "eventTime") Core.<*>
                     (o Core..:? "eventType")
                     Core.<*>
                     (o Core..:? "membershipBatchCreatedEventData")
                     Core.<*>
                     (o Core..:? "membershipBatchDeletedEventData")
                     Core.<*>
                     (o Core..:? "membershipBatchUpdatedEventData")
                     Core.<*> (o Core..:? "membershipCreatedEventData")
                     Core.<*> (o Core..:? "membershipDeletedEventData")
                     Core.<*> (o Core..:? "membershipUpdatedEventData")
                     Core.<*> (o Core..:? "messageBatchCreatedEventData")
                     Core.<*> (o Core..:? "messageBatchDeletedEventData")
                     Core.<*> (o Core..:? "messageBatchUpdatedEventData")
                     Core.<*> (o Core..:? "messageCreatedEventData")
                     Core.<*> (o Core..:? "messageDeletedEventData")
                     Core.<*> (o Core..:? "messageUpdatedEventData")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "reactionBatchCreatedEventData")
                     Core.<*> (o Core..:? "reactionBatchDeletedEventData")
                     Core.<*> (o Core..:? "reactionCreatedEventData")
                     Core.<*> (o Core..:? "reactionDeletedEventData")
                     Core.<*> (o Core..:? "spaceBatchUpdatedEventData")
                     Core.<*> (o Core..:? "spaceUpdatedEventData"))

instance Core.ToJSON SpaceEvent where
        toJSON SpaceEvent{..}
          = Core.object
              (Core.catMaybes
                 [("eventTime" Core..=) Core.<$> eventTime,
                  ("eventType" Core..=) Core.<$> eventType,
                  ("membershipBatchCreatedEventData" Core..=) Core.<$>
                    membershipBatchCreatedEventData,
                  ("membershipBatchDeletedEventData" Core..=) Core.<$>
                    membershipBatchDeletedEventData,
                  ("membershipBatchUpdatedEventData" Core..=) Core.<$>
                    membershipBatchUpdatedEventData,
                  ("membershipCreatedEventData" Core..=) Core.<$>
                    membershipCreatedEventData,
                  ("membershipDeletedEventData" Core..=) Core.<$>
                    membershipDeletedEventData,
                  ("membershipUpdatedEventData" Core..=) Core.<$>
                    membershipUpdatedEventData,
                  ("messageBatchCreatedEventData" Core..=) Core.<$>
                    messageBatchCreatedEventData,
                  ("messageBatchDeletedEventData" Core..=) Core.<$>
                    messageBatchDeletedEventData,
                  ("messageBatchUpdatedEventData" Core..=) Core.<$>
                    messageBatchUpdatedEventData,
                  ("messageCreatedEventData" Core..=) Core.<$>
                    messageCreatedEventData,
                  ("messageDeletedEventData" Core..=) Core.<$>
                    messageDeletedEventData,
                  ("messageUpdatedEventData" Core..=) Core.<$>
                    messageUpdatedEventData,
                  ("name" Core..=) Core.<$> name,
                  ("reactionBatchCreatedEventData" Core..=) Core.<$>
                    reactionBatchCreatedEventData,
                  ("reactionBatchDeletedEventData" Core..=) Core.<$>
                    reactionBatchDeletedEventData,
                  ("reactionCreatedEventData" Core..=) Core.<$>
                    reactionCreatedEventData,
                  ("reactionDeletedEventData" Core..=) Core.<$>
                    reactionDeletedEventData,
                  ("spaceBatchUpdatedEventData" Core..=) Core.<$>
                    spaceBatchUpdatedEventData,
                  ("spaceUpdatedEventData" Core..=) Core.<$>
                    spaceUpdatedEventData])


-- | A user\'s read state within a space, used to identify read and unread messages.
--
-- /See:/ 'newSpaceReadState' smart constructor.
data SpaceReadState = SpaceReadState
    {
      -- | Optional. The time when the user\'s space read state was updated. Usually this corresponds with either the timestamp of the last read message, or a timestamp specified by the user to mark the last read position in a space.
      lastReadTime :: (Core.Maybe Core.DateTime)
      -- | Resource name of the space read state. Format: @users\/{user}\/spaces\/{space}\/spaceReadState@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceReadState' with the minimum fields required to make a request.
newSpaceReadState 
    ::  SpaceReadState
newSpaceReadState =
  SpaceReadState {lastReadTime = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON SpaceReadState where
        parseJSON
          = Core.withObject "SpaceReadState"
              (\ o ->
                 SpaceReadState Core.<$>
                   (o Core..:? "lastReadTime") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON SpaceReadState where
        toJSON SpaceReadState{..}
          = Core.object
              (Core.catMaybes
                 [("lastReadTime" Core..=) Core.<$> lastReadTime,
                  ("name" Core..=) Core.<$> name])


-- | Event payload for an updated space. Event type: @google.workspace.chat.space.v1.updated@
--
-- /See:/ 'newSpaceUpdatedEventData' smart constructor.
newtype SpaceUpdatedEventData = SpaceUpdatedEventData
    {
      -- | The updated space.
      space :: (Core.Maybe Space)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceUpdatedEventData' with the minimum fields required to make a request.
newSpaceUpdatedEventData 
    ::  SpaceUpdatedEventData
newSpaceUpdatedEventData = SpaceUpdatedEventData {space = Core.Nothing}

instance Core.FromJSON SpaceUpdatedEventData where
        parseJSON
          = Core.withObject "SpaceUpdatedEventData"
              (\ o ->
                 SpaceUpdatedEventData Core.<$> (o Core..:? "space"))

instance Core.ToJSON SpaceUpdatedEventData where
        toJSON SpaceUpdatedEventData{..}
          = Core.object
              (Core.catMaybes [("space" Core..=) Core.<$> space])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | Input parameter for regular widgets. For single-valued widgets, it is a single value list. For multi-valued widgets, such as checkbox, all the values are presented.
--
-- /See:/ 'newStringInputs' smart constructor.
newtype StringInputs = StringInputs
    {
      -- | An list of strings entered by the user.
      value :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StringInputs' with the minimum fields required to make a request.
newStringInputs 
    ::  StringInputs
newStringInputs = StringInputs {value = Core.Nothing}

instance Core.FromJSON StringInputs where
        parseJSON
          = Core.withObject "StringInputs"
              (\ o -> StringInputs Core.<$> (o Core..:? "value"))

instance Core.ToJSON StringInputs where
        toJSON StringInputs{..}
          = Core.object
              (Core.catMaybes [("value" Core..=) Core.<$> value])


-- | A button with text and @onclick@ action.
--
-- /See:/ 'newTextButton' smart constructor.
data TextButton = TextButton
    {
      -- | The @onclick@ action of the button.
      onClick :: (Core.Maybe OnClick)
      -- | The text of the button.
    , text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextButton' with the minimum fields required to make a request.
newTextButton 
    ::  TextButton
newTextButton = TextButton {onClick = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON TextButton where
        parseJSON
          = Core.withObject "TextButton"
              (\ o ->
                 TextButton Core.<$>
                   (o Core..:? "onClick") Core.<*> (o Core..:? "text"))

instance Core.ToJSON TextButton where
        toJSON TextButton{..}
          = Core.object
              (Core.catMaybes
                 [("onClick" Core..=) Core.<$> onClick,
                  ("text" Core..=) Core.<$> text])


-- | A paragraph of text. Formatted text supported. For more information about formatting text, see <https://developers.google.com/workspace/chat/format-messages#card-formatting Formatting text in Google Chat apps> and <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting Formatting text in Google Workspace Add-ons>.
--
-- /See:/ 'newTextParagraph' smart constructor.
newtype TextParagraph = TextParagraph
    {
      -- | 
      text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextParagraph' with the minimum fields required to make a request.
newTextParagraph 
    ::  TextParagraph
newTextParagraph = TextParagraph {text = Core.Nothing}

instance Core.FromJSON TextParagraph where
        parseJSON
          = Core.withObject "TextParagraph"
              (\ o -> TextParagraph Core.<$> (o Core..:? "text"))

instance Core.ToJSON TextParagraph where
        toJSON TextParagraph{..}
          = Core.object
              (Core.catMaybes [("text" Core..=) Core.<$> text])


-- | A thread in a Google Chat space. For example usage, see <https://developers.google.com/workspace/chat/create-messages#create-message-thread Start or reply to a message thread>. If you specify a thread when creating a message, you can set the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages/create#messagereplyoption messageReplyOption> field to determine what happens if no matching thread is found.
--
-- /See:/ 'newThread' smart constructor.
data Thread = Thread
    {
      -- | Identifier. Resource name of the thread. Example: @spaces\/{space}\/threads\/{thread}@
      name :: (Core.Maybe Core.Text)
      -- | Optional. Input for creating or updating a thread. Otherwise, output only. ID for the thread. Supports up to 4000 characters. This ID is unique to the Chat app that sets it. For example, if multiple Chat apps create a message using the same thread key, the messages are posted in different threads. To reply in a thread created by a person or another Chat app, specify the thread @name@ field instead.
    , threadKey :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Thread' with the minimum fields required to make a request.
newThread 
    ::  Thread
newThread = Thread {name = Core.Nothing, threadKey = Core.Nothing}

instance Core.FromJSON Thread where
        parseJSON
          = Core.withObject "Thread"
              (\ o ->
                 Thread Core.<$>
                   (o Core..:? "name") Core.<*>
                     (o Core..:? "threadKey"))

instance Core.ToJSON Thread where
        toJSON Thread{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("threadKey" Core..=) Core.<$> threadKey])


-- | A user\'s read state within a thread, used to identify read and unread messages.
--
-- /See:/ 'newThreadReadState' smart constructor.
data ThreadReadState = ThreadReadState
    {
      -- | The time when the user\'s thread read state was updated. Usually this corresponds with the timestamp of the last read message in a thread.
      lastReadTime :: (Core.Maybe Core.DateTime)
      -- | Resource name of the thread read state. Format: @users\/{user}\/spaces\/{space}\/threads\/{thread}\/threadReadState@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThreadReadState' with the minimum fields required to make a request.
newThreadReadState 
    ::  ThreadReadState
newThreadReadState =
  ThreadReadState {lastReadTime = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ThreadReadState where
        parseJSON
          = Core.withObject "ThreadReadState"
              (\ o ->
                 ThreadReadState Core.<$>
                   (o Core..:? "lastReadTime") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON ThreadReadState where
        toJSON ThreadReadState{..}
          = Core.object
              (Core.catMaybes
                 [("lastReadTime" Core..=) Core.<$> lastReadTime,
                  ("name" Core..=) Core.<$> name])


-- | Time input values.
--
-- /See:/ 'newTimeInput' smart constructor.
data TimeInput = TimeInput
    {
      -- | The hour on a 24-hour clock.
      hours :: (Core.Maybe Core.Int32)
      -- | The number of minutes past the hour. Valid values are 0 to 59.
    , minutes :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeInput' with the minimum fields required to make a request.
newTimeInput 
    ::  TimeInput
newTimeInput = TimeInput {hours = Core.Nothing, minutes = Core.Nothing}

instance Core.FromJSON TimeInput where
        parseJSON
          = Core.withObject "TimeInput"
              (\ o ->
                 TimeInput Core.<$>
                   (o Core..:? "hours") Core.<*> (o Core..:? "minutes"))

instance Core.ToJSON TimeInput where
        toJSON TimeInput{..}
          = Core.object
              (Core.catMaybes
                 [("hours" Core..=) Core.<$> hours,
                  ("minutes" Core..=) Core.<$> minutes])


-- | The timezone ID and offset from Coordinated Universal Time (UTC). Only supported for the event types <https://developers.google.com/chat/api/reference/rest/v1/EventType#ENUM_VALUES.CARD_CLICKED CARD_CLICKED> and <https://developers.google.com/chat/api/reference/rest/v1/DialogEventType#ENUM_VALUES.SUBMIT_DIALOG SUBMIT_DIALOG>.
--
-- /See:/ 'newTimeZone' smart constructor.
data TimeZone = TimeZone
    {
      -- | The <https://www.iana.org/time-zones IANA TZ> time zone database code, such as \"America\/Toronto\".
      id :: (Core.Maybe Core.Text)
      -- | The user timezone offset, in milliseconds, from Coordinated Universal Time (UTC).
    , offset :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeZone' with the minimum fields required to make a request.
newTimeZone 
    ::  TimeZone
newTimeZone = TimeZone {id = Core.Nothing, offset = Core.Nothing}

instance Core.FromJSON TimeZone where
        parseJSON
          = Core.withObject "TimeZone"
              (\ o ->
                 TimeZone Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "offset"))

instance Core.ToJSON TimeZone where
        toJSON TimeZone{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("offset" Core..=) Core.<$> offset])


-- | For @selectionInput@ widgets, returns autocomplete suggestions for a multiselect menu.
--
-- /See:/ 'newUpdatedWidget' smart constructor.
data UpdatedWidget = UpdatedWidget
    {
      -- | List of widget autocomplete results
      suggestions :: (Core.Maybe SelectionItems)
      -- | The ID of the updated widget. The ID must match the one for the widget that triggered the update request.
    , widget :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatedWidget' with the minimum fields required to make a request.
newUpdatedWidget 
    ::  UpdatedWidget
newUpdatedWidget =
  UpdatedWidget {suggestions = Core.Nothing, widget = Core.Nothing}

instance Core.FromJSON UpdatedWidget where
        parseJSON
          = Core.withObject "UpdatedWidget"
              (\ o ->
                 UpdatedWidget Core.<$>
                   (o Core..:? "suggestions") Core.<*>
                     (o Core..:? "widget"))

instance Core.ToJSON UpdatedWidget where
        toJSON UpdatedWidget{..}
          = Core.object
              (Core.catMaybes
                 [("suggestions" Core..=) Core.<$> suggestions,
                  ("widget" Core..=) Core.<$> widget])


-- | Request to upload an attachment.
--
-- /See:/ 'newUploadAttachmentRequest' smart constructor.
newtype UploadAttachmentRequest = UploadAttachmentRequest
    {
      -- | Required. The filename of the attachment, including the file extension.
      filename :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadAttachmentRequest' with the minimum fields required to make a request.
newUploadAttachmentRequest 
    ::  UploadAttachmentRequest
newUploadAttachmentRequest = UploadAttachmentRequest {filename = Core.Nothing}

instance Core.FromJSON UploadAttachmentRequest where
        parseJSON
          = Core.withObject "UploadAttachmentRequest"
              (\ o ->
                 UploadAttachmentRequest Core.<$>
                   (o Core..:? "filename"))

instance Core.ToJSON UploadAttachmentRequest where
        toJSON UploadAttachmentRequest{..}
          = Core.object
              (Core.catMaybes
                 [("filename" Core..=) Core.<$> filename])


-- | Response of uploading an attachment.
--
-- /See:/ 'newUploadAttachmentResponse' smart constructor.
newtype UploadAttachmentResponse = UploadAttachmentResponse
    {
      -- | Reference to the uploaded attachment.
      attachmentDataRef :: (Core.Maybe AttachmentDataRef)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadAttachmentResponse' with the minimum fields required to make a request.
newUploadAttachmentResponse 
    ::  UploadAttachmentResponse
newUploadAttachmentResponse =
  UploadAttachmentResponse {attachmentDataRef = Core.Nothing}

instance Core.FromJSON UploadAttachmentResponse where
        parseJSON
          = Core.withObject "UploadAttachmentResponse"
              (\ o ->
                 UploadAttachmentResponse Core.<$>
                   (o Core..:? "attachmentDataRef"))

instance Core.ToJSON UploadAttachmentResponse where
        toJSON UploadAttachmentResponse{..}
          = Core.object
              (Core.catMaybes
                 [("attachmentDataRef" Core..=) Core.<$>
                    attachmentDataRef])


-- | A user in Google Chat. When returned as an output from a request, if your Chat app <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticates as a user>, the output for a @User@ resource only populates the user\'s @name@ and @type@.
--
-- /See:/ 'newUser' smart constructor.
data User = User
    {
      -- | Output only. The user\'s display name.
      displayName :: (Core.Maybe Core.Text)
      -- | Unique identifier of the user\'s Google Workspace domain.
    , domainId :: (Core.Maybe Core.Text)
      -- | Output only. When @true@, the user is deleted or their profile is not visible.
    , isAnonymous :: (Core.Maybe Core.Bool)
      -- | Resource name for a Google Chat user. Format: @users\/{user}@. @users\/app@ can be used as an alias for the calling app bot user. For human users, @{user}@ is the same user identifier as: - the @id@ for the <https://developers.google.com/people/api/rest/v1/people Person> in the People API. For example, @users\/123456789@ in Chat API represents the same person as the @123456789@ Person profile ID in People API. - the @id@ for a <https://developers.google.com/admin-sdk/directory/reference/rest/v1/users user> in the Admin SDK Directory API. - the user\'s email address can be used as an alias for @{user}@ in API requests. For example, if the People API Person profile ID for @user\@example.com@ is @123456789@, you can use @users\/user\@example.com@ as an alias to reference @users\/123456789@. Only the canonical resource name (for example @users\/123456789@) will be returned from the API.
    , name :: (Core.Maybe Core.Text)
      -- | User type.
    , type' :: (Core.Maybe User_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser 
    ::  User
newUser =
  User
    { displayName = Core.Nothing
    , domainId = Core.Nothing
    , isAnonymous = Core.Nothing
    , name = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON User where
        parseJSON
          = Core.withObject "User"
              (\ o ->
                 User Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "domainId")
                     Core.<*> (o Core..:? "isAnonymous")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON User where
        toJSON User{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("domainId" Core..=) Core.<$> domainId,
                  ("isAnonymous" Core..=) Core.<$> isAnonymous,
                  ("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type'])


-- | Annotation metadata for user mentions (\@).
--
-- /See:/ 'newUserMentionMetadata' smart constructor.
data UserMentionMetadata = UserMentionMetadata
    {
      -- | The type of user mention.
      type' :: (Core.Maybe UserMentionMetadata_Type)
      -- | The user mentioned.
    , user :: (Core.Maybe User)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserMentionMetadata' with the minimum fields required to make a request.
newUserMentionMetadata 
    ::  UserMentionMetadata
newUserMentionMetadata =
  UserMentionMetadata {type' = Core.Nothing, user = Core.Nothing}

instance Core.FromJSON UserMentionMetadata where
        parseJSON
          = Core.withObject "UserMentionMetadata"
              (\ o ->
                 UserMentionMetadata Core.<$>
                   (o Core..:? "type") Core.<*> (o Core..:? "user"))

instance Core.ToJSON UserMentionMetadata where
        toJSON UserMentionMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("type" Core..=) Core.<$> type',
                  ("user" Core..=) Core.<$> user])


-- | A widget is a UI element that presents text and images.
--
-- /See:/ 'newWidgetMarkup' smart constructor.
data WidgetMarkup = WidgetMarkup
    {
      -- | A list of buttons. Buttons is also @oneof data@ and only one of these fields should be set.
      buttons :: (Core.Maybe [Button])
      -- | Display an image in this widget.
    , image :: (Core.Maybe Image)
      -- | Display a key value item in this widget.
    , keyValue :: (Core.Maybe KeyValue)
      -- | Display a text paragraph in this widget.
    , textParagraph :: (Core.Maybe TextParagraph)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WidgetMarkup' with the minimum fields required to make a request.
newWidgetMarkup 
    ::  WidgetMarkup
newWidgetMarkup =
  WidgetMarkup
    { buttons = Core.Nothing
    , image = Core.Nothing
    , keyValue = Core.Nothing
    , textParagraph = Core.Nothing
    }

instance Core.FromJSON WidgetMarkup where
        parseJSON
          = Core.withObject "WidgetMarkup"
              (\ o ->
                 WidgetMarkup Core.<$>
                   (o Core..:? "buttons") Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "keyValue")
                     Core.<*> (o Core..:? "textParagraph"))

instance Core.ToJSON WidgetMarkup where
        toJSON WidgetMarkup{..}
          = Core.object
              (Core.catMaybes
                 [("buttons" Core..=) Core.<$> buttons,
                  ("image" Core..=) Core.<$> image,
                  ("keyValue" Core..=) Core.<$> keyValue,
                  ("textParagraph" Core..=) Core.<$> textParagraph])

