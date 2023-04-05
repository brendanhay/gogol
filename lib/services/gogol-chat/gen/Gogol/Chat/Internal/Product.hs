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
-- Module      : Gogol.Chat.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Chat.Internal.Product
  ( -- * ActionParameter
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

    -- * DateInput
    DateInput (..),
    newDateInput,

    -- * DateTimeInput
    DateTimeInput (..),
    newDateTimeInput,

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

    -- * GoogleAppsCardV1OnClick
    GoogleAppsCardV1OnClick (..),
    newGoogleAppsCardV1OnClick,

    -- * GoogleAppsCardV1OpenLink
    GoogleAppsCardV1OpenLink (..),
    newGoogleAppsCardV1OpenLink,

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

    -- * Message
    Message (..),
    newMessage,

    -- * OnClick
    OnClick (..),
    newOnClick,

    -- * OpenLink
    OpenLink (..),
    newOpenLink,

    -- * Section
    Section (..),
    newSection,

    -- * SlashCommand
    SlashCommand (..),
    newSlashCommand,

    -- * SlashCommandMetadata
    SlashCommandMetadata (..),
    newSlashCommandMetadata,

    -- * Space
    Space (..),
    newSpace,

    -- * SpaceDetails
    SpaceDetails (..),
    newSpaceDetails,

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

    -- * TimeInput
    TimeInput (..),
    newTimeInput,

    -- * TimeZone
    TimeZone (..),
    newTimeZone,

    -- * User
    User (..),
    newUser,

    -- * UserMentionMetadata
    UserMentionMetadata (..),
    newUserMentionMetadata,

    -- * WidgetMarkup
    WidgetMarkup (..),
    newWidgetMarkup,
  )
where

import Gogol.Chat.Internal.Sum
import qualified Gogol.Prelude as Core

-- | List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze 1 day, snooze next week. You might use action method = snooze(), passing the snooze type and snooze time in the list of string parameters.
--
-- /See:/ 'newActionParameter' smart constructor.
data ActionParameter = ActionParameter
  { -- | The name of the parameter for the action script.
    key :: (Core.Maybe Core.Text),
    -- | The value of the parameter.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionParameter' with the minimum fields required to make a request.
newActionParameter ::
  ActionParameter
newActionParameter = ActionParameter {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ActionParameter where
  parseJSON =
    Core.withObject
      "ActionParameter"
      ( \o ->
          ActionParameter
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ActionParameter where
  toJSON ActionParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Parameters that a Chat app can use to configure how its response is posted.
--
-- /See:/ 'newActionResponse' smart constructor.
data ActionResponse = ActionResponse
  { -- | Input only. A response to an event related to a <https://developers.google.com/chat/how-tos/dialogs dialog>. Must be accompanied by @ResponseType.Dialog@.
    dialogAction :: (Core.Maybe DialogAction),
    -- | Input only. The type of Chat app response.
    type' :: (Core.Maybe ActionResponse_Type),
    -- | Input only. URL for users to auth or config. (Only for REQUEST_CONFIG response types.)
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionResponse' with the minimum fields required to make a request.
newActionResponse ::
  ActionResponse
newActionResponse =
  ActionResponse
    { dialogAction = Core.Nothing,
      type' = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON ActionResponse where
  parseJSON =
    Core.withObject
      "ActionResponse"
      ( \o ->
          ActionResponse
            Core.<$> (o Core..:? "dialogAction")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON ActionResponse where
  toJSON ActionResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dialogAction" Core..=) Core.<$> dialogAction,
            ("type" Core..=) Core.<$> type',
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Represents the status for a request to either invoke or submit a <https://developers.google.com/chat/how-tos/dialogs dialog>.
--
-- /See:/ 'newActionStatus' smart constructor.
data ActionStatus = ActionStatus
  { -- | The status code.
    statusCode :: (Core.Maybe ActionStatus_StatusCode),
    -- | The message to send users about the status of their request. If unset, a generic message based on the @status_code@ is sent.
    userFacingMessage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActionStatus' with the minimum fields required to make a request.
newActionStatus ::
  ActionStatus
newActionStatus =
  ActionStatus {statusCode = Core.Nothing, userFacingMessage = Core.Nothing}

instance Core.FromJSON ActionStatus where
  parseJSON =
    Core.withObject
      "ActionStatus"
      ( \o ->
          ActionStatus
            Core.<$> (o Core..:? "statusCode")
            Core.<*> (o Core..:? "userFacingMessage")
      )

instance Core.ToJSON ActionStatus where
  toJSON ActionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("statusCode" Core..=) Core.<$> statusCode,
            ("userFacingMessage" Core..=)
              Core.<$> userFacingMessage
          ]
      )

-- | Annotations associated with the plain-text body of the message. Example plain-text message body: @Hello \@FooBot how are you!\"@ The corresponding annotations metadata: @\"annotations\":[{ \"type\":\"USER_MENTION\", \"startIndex\":6, \"length\":7, \"userMention\": { \"user\": { \"name\":\"users\/{user}\", \"displayName\":\"FooBot\", \"avatarUrl\":\"https:\/\/goo.gl\/aeDtrS\", \"type\":\"BOT\" }, \"type\":\"MENTION\" } }]@
--
-- /See:/ 'newAnnotation' smart constructor.
data Annotation = Annotation
  { -- | Length of the substring in the plain-text message body this annotation corresponds to.
    length :: (Core.Maybe Core.Int32),
    -- | The metadata for a slash command.
    slashCommand :: (Core.Maybe SlashCommandMetadata),
    -- | Start index (0-based, inclusive) in the plain-text message body this annotation corresponds to.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The type of this annotation.
    type' :: (Core.Maybe Annotation_Type),
    -- | The metadata of user mention.
    userMention :: (Core.Maybe UserMentionMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
newAnnotation ::
  Annotation
newAnnotation =
  Annotation
    { length = Core.Nothing,
      slashCommand = Core.Nothing,
      startIndex = Core.Nothing,
      type' = Core.Nothing,
      userMention = Core.Nothing
    }

instance Core.FromJSON Annotation where
  parseJSON =
    Core.withObject
      "Annotation"
      ( \o ->
          Annotation
            Core.<$> (o Core..:? "length")
            Core.<*> (o Core..:? "slashCommand")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "userMention")
      )

instance Core.ToJSON Annotation where
  toJSON Annotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("length" Core..=) Core.<$> length,
            ("slashCommand" Core..=) Core.<$> slashCommand,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("type" Core..=) Core.<$> type',
            ("userMention" Core..=) Core.<$> userMention
          ]
      )

-- | An attachment in Google Chat.
--
-- /See:/ 'newAttachment' smart constructor.
data Attachment = Attachment
  { -- | A reference to the attachment data. This is used with the media API to download the attachment data.
    attachmentDataRef :: (Core.Maybe AttachmentDataRef),
    -- | The original file name for the content, not the full path.
    contentName :: (Core.Maybe Core.Text),
    -- | The content type (MIME type) of the file.
    contentType :: (Core.Maybe Core.Text),
    -- | Output only. The download URL which should be used to allow a human user to download the attachment. Chat apps should not use this URL to download attachment content.
    downloadUri :: (Core.Maybe Core.Text),
    -- | A reference to the drive attachment. This is used with the Drive API.
    driveDataRef :: (Core.Maybe DriveDataRef),
    -- | Resource name of the attachment, in the form \"spaces\//\/messages\//\/attachments\/*\".
    name :: (Core.Maybe Core.Text),
    -- | The source of the attachment.
    source :: (Core.Maybe Attachment_Source),
    -- | Output only. The thumbnail URL which should be used to preview the attachment to a human user. Chat apps should not use this URL to download attachment content.
    thumbnailUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
newAttachment ::
  Attachment
newAttachment =
  Attachment
    { attachmentDataRef = Core.Nothing,
      contentName = Core.Nothing,
      contentType = Core.Nothing,
      downloadUri = Core.Nothing,
      driveDataRef = Core.Nothing,
      name = Core.Nothing,
      source = Core.Nothing,
      thumbnailUri = Core.Nothing
    }

instance Core.FromJSON Attachment where
  parseJSON =
    Core.withObject
      "Attachment"
      ( \o ->
          Attachment
            Core.<$> (o Core..:? "attachmentDataRef")
            Core.<*> (o Core..:? "contentName")
            Core.<*> (o Core..:? "contentType")
            Core.<*> (o Core..:? "downloadUri")
            Core.<*> (o Core..:? "driveDataRef")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "thumbnailUri")
      )

instance Core.ToJSON Attachment where
  toJSON Attachment {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachmentDataRef" Core..=)
              Core.<$> attachmentDataRef,
            ("contentName" Core..=) Core.<$> contentName,
            ("contentType" Core..=) Core.<$> contentType,
            ("downloadUri" Core..=) Core.<$> downloadUri,
            ("driveDataRef" Core..=) Core.<$> driveDataRef,
            ("name" Core..=) Core.<$> name,
            ("source" Core..=) Core.<$> source,
            ("thumbnailUri" Core..=) Core.<$> thumbnailUri
          ]
      )

--
-- /See:/ 'newAttachmentDataRef' smart constructor.
newtype AttachmentDataRef = AttachmentDataRef
  { -- | The resource name of the attachment data. This is used with the media API to download the attachment data.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttachmentDataRef' with the minimum fields required to make a request.
newAttachmentDataRef ::
  AttachmentDataRef
newAttachmentDataRef = AttachmentDataRef {resourceName = Core.Nothing}

instance Core.FromJSON AttachmentDataRef where
  parseJSON =
    Core.withObject
      "AttachmentDataRef"
      ( \o ->
          AttachmentDataRef
            Core.<$> (o Core..:? "resourceName")
      )

instance Core.ToJSON AttachmentDataRef where
  toJSON AttachmentDataRef {..} =
    Core.object
      ( Core.catMaybes
          [("resourceName" Core..=) Core.<$> resourceName]
      )

-- | A button. Can be a text button or an image button.
--
-- /See:/ 'newButton' smart constructor.
data Button = Button
  { -- | A button with image and onclick action.
    imageButton :: (Core.Maybe ImageButton),
    -- | A button with text and onclick action.
    textButton :: (Core.Maybe TextButton)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Button' with the minimum fields required to make a request.
newButton ::
  Button
newButton = Button {imageButton = Core.Nothing, textButton = Core.Nothing}

instance Core.FromJSON Button where
  parseJSON =
    Core.withObject
      "Button"
      ( \o ->
          Button
            Core.<$> (o Core..:? "imageButton")
            Core.<*> (o Core..:? "textButton")
      )

instance Core.ToJSON Button where
  toJSON Button {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageButton" Core..=) Core.<$> imageButton,
            ("textButton" Core..=) Core.<$> textButton
          ]
      )

-- | A card is a UI element that can contain UI widgets such as texts, images.
--
-- /See:/ 'newCard' smart constructor.
data Card = Card
  { -- | The actions of this card.
    cardActions :: (Core.Maybe [CardAction]),
    -- | The header of the card. A header usually contains a title and an image.
    header :: (Core.Maybe CardHeader),
    -- | Name of the card.
    name :: (Core.Maybe Core.Text),
    -- | Sections are separated by a line divider.
    sections :: (Core.Maybe [Section])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Card' with the minimum fields required to make a request.
newCard ::
  Card
newCard =
  Card
    { cardActions = Core.Nothing,
      header = Core.Nothing,
      name = Core.Nothing,
      sections = Core.Nothing
    }

instance Core.FromJSON Card where
  parseJSON =
    Core.withObject
      "Card"
      ( \o ->
          Card
            Core.<$> (o Core..:? "cardActions")
            Core.<*> (o Core..:? "header")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sections")
      )

instance Core.ToJSON Card where
  toJSON Card {..} =
    Core.object
      ( Core.catMaybes
          [ ("cardActions" Core..=) Core.<$> cardActions,
            ("header" Core..=) Core.<$> header,
            ("name" Core..=) Core.<$> name,
            ("sections" Core..=) Core.<$> sections
          ]
      )

-- | A card action is the action associated with the card. For an invoice card, a typical action would be: delete invoice, email invoice or open the invoice in browser. Not supported by Google Chat apps.
--
-- /See:/ 'newCardAction' smart constructor.
data CardAction = CardAction
  { -- | The label used to be displayed in the action menu item.
    actionLabel :: (Core.Maybe Core.Text),
    -- | The onclick action for this action item.
    onClick :: (Core.Maybe OnClick)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CardAction' with the minimum fields required to make a request.
newCardAction ::
  CardAction
newCardAction = CardAction {actionLabel = Core.Nothing, onClick = Core.Nothing}

instance Core.FromJSON CardAction where
  parseJSON =
    Core.withObject
      "CardAction"
      ( \o ->
          CardAction
            Core.<$> (o Core..:? "actionLabel")
            Core.<*> (o Core..:? "onClick")
      )

instance Core.ToJSON CardAction where
  toJSON CardAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionLabel" Core..=) Core.<$> actionLabel,
            ("onClick" Core..=) Core.<$> onClick
          ]
      )

--
-- /See:/ 'newCardHeader' smart constructor.
data CardHeader = CardHeader
  { -- | The image\'s type (e.g. square border or circular border).
    imageStyle :: (Core.Maybe CardHeader_ImageStyle),
    -- | The URL of the image in the card header.
    imageUrl :: (Core.Maybe Core.Text),
    -- | The subtitle of the card header.
    subtitle :: (Core.Maybe Core.Text),
    -- | The title must be specified. The header has a fixed height: if both a title and subtitle is specified, each will take up 1 line. If only the title is specified, it will take up both lines.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CardHeader' with the minimum fields required to make a request.
newCardHeader ::
  CardHeader
newCardHeader =
  CardHeader
    { imageStyle = Core.Nothing,
      imageUrl = Core.Nothing,
      subtitle = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON CardHeader where
  parseJSON =
    Core.withObject
      "CardHeader"
      ( \o ->
          CardHeader
            Core.<$> (o Core..:? "imageStyle")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "subtitle")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON CardHeader where
  toJSON CardHeader {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageStyle" Core..=) Core.<$> imageStyle,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("subtitle" Core..=) Core.<$> subtitle,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Widgets for Chat apps to specify.
--
-- /See:/ 'newCardWithId' smart constructor.
data CardWithId = CardWithId
  { -- | Cards support a defined layout, interactive UI elements like buttons, and rich media like images. Use this card to present detailed information, gather information from users, and guide users to take a next step.
    card :: (Core.Maybe GoogleAppsCardV1Card),
    -- | Required for @cardsV2@ messages. Chat app-specified identifier for this widget. Scoped within a message.
    cardId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CardWithId' with the minimum fields required to make a request.
newCardWithId ::
  CardWithId
newCardWithId = CardWithId {card = Core.Nothing, cardId = Core.Nothing}

instance Core.FromJSON CardWithId where
  parseJSON =
    Core.withObject
      "CardWithId"
      ( \o ->
          CardWithId
            Core.<$> (o Core..:? "card") Core.<*> (o Core..:? "cardId")
      )

instance Core.ToJSON CardWithId where
  toJSON CardWithId {..} =
    Core.object
      ( Core.catMaybes
          [ ("card" Core..=) Core.<$> card,
            ("cardId" Core..=) Core.<$> cardId
          ]
      )

-- | JSON payload of error messages. If the Cloud Logging API is enabled, these error messages are logged to <https://cloud.google.com/logging/docs Google Cloud Logging>.
--
-- /See:/ 'newChatAppLogEntry' smart constructor.
data ChatAppLogEntry = ChatAppLogEntry
  { -- | The deployment that caused the error. For Chat apps built in Apps Script, this is the deployment ID defined by Apps Script.
    deployment :: (Core.Maybe Core.Text),
    -- | The unencrypted @callback_method@ name that was running when the error was encountered.
    deploymentFunction :: (Core.Maybe Core.Text),
    -- | The error code and message.
    error :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatAppLogEntry' with the minimum fields required to make a request.
newChatAppLogEntry ::
  ChatAppLogEntry
newChatAppLogEntry =
  ChatAppLogEntry
    { deployment = Core.Nothing,
      deploymentFunction = Core.Nothing,
      error = Core.Nothing
    }

instance Core.FromJSON ChatAppLogEntry where
  parseJSON =
    Core.withObject
      "ChatAppLogEntry"
      ( \o ->
          ChatAppLogEntry
            Core.<$> (o Core..:? "deployment")
            Core.<*> (o Core..:? "deploymentFunction")
            Core.<*> (o Core..:? "error")
      )

instance Core.ToJSON ChatAppLogEntry where
  toJSON ChatAppLogEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("deployment" Core..=) Core.<$> deployment,
            ("deploymentFunction" Core..=)
              Core.<$> deploymentFunction,
            ("error" Core..=) Core.<$> error
          ]
      )

-- | Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to\/from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of @java.awt.Color@ in Java; it can also be trivially provided to UIColor\'s @+colorWithRed:green:blue:alpha@ method in iOS; and, with just a little work, it can be easily formatted into a CSS @rgba()@ string in JavaScript. This reference page doesn\'t carry information about the absolute color space that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most 1e-5. Example (Java): import com.google.type.Color; \/\/ ... public static java.awt.Color fromProto(Color
-- protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red \/ denominator) .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); } return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/ ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha/wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha/wrapper != nil) { alpha = [alpha/wrapper value]; }
-- return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } \/\/ ... Example (JavaScript): \/\/ ... var protoToCssColor = function(rgb/color) { var redFrac = rgb/color.red || 0.0; var greenFrac = rgb/color.green || 0.0; var blueFrac = rgb/color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!(\'alpha\' in rgb/color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\', alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor =
-- function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \< missingZeros; i++) { resultBuilder.push(\'0\'); } resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/ ...
--
-- /See:/ 'newColor' smart constructor.
data Color = Color
  { -- | The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: @pixel color = alpha * (this color) + (1.0 - alpha) * (background color)@ This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).
    alpha :: (Core.Maybe Core.Double),
    -- | The amount of blue in the color as a value in the interval [0, 1].
    blue :: (Core.Maybe Core.Double),
    -- | The amount of green in the color as a value in the interval [0, 1].
    green :: (Core.Maybe Core.Double),
    -- | The amount of red in the color as a value in the interval [0, 1].
    red :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
newColor ::
  Color
newColor =
  Color
    { alpha = Core.Nothing,
      blue = Core.Nothing,
      green = Core.Nothing,
      red = Core.Nothing
    }

instance Core.FromJSON Color where
  parseJSON =
    Core.withObject
      "Color"
      ( \o ->
          Color
            Core.<$> (o Core..:? "alpha")
            Core.<*> (o Core..:? "blue")
            Core.<*> (o Core..:? "green")
            Core.<*> (o Core..:? "red")
      )

instance Core.ToJSON Color where
  toJSON Color {..} =
    Core.object
      ( Core.catMaybes
          [ ("alpha" Core..=) Core.<$> alpha,
            ("blue" Core..=) Core.<$> blue,
            ("green" Core..=) Core.<$> green,
            ("red" Core..=) Core.<$> red
          ]
      )

-- | Represents information about the user\'s client, such as locale, host app, and platform. For Chat apps, @CommonEventObject@ includes data submitted by users interacting with cards, like data entered in <https://developers.google.com/chat/how-tos/dialogs dialogs>.
--
-- /See:/ 'newCommonEventObject' smart constructor.
data CommonEventObject = CommonEventObject
  { -- | A map containing the current values of the widgets in a card. The map keys are the string IDs assigned to each widget, and the values represent inputs to the widget. Depending on the input data type, a different object represents each input: For single-value widgets, @StringInput@. For multi-value widgets, an array of @StringInput@ objects. For a date-time picker, a @DateTimeInput@. For a date-only picker, a @DateInput@. For a time-only picker, a @TimeInput@. Corresponds with the data entered by a user on a card in a <https://developers.google.com/chat/how-tos/dialogs dialog>.
    formInputs :: (Core.Maybe CommonEventObject_FormInputs),
    -- | The hostApp enum which indicates the app the add-on is invoked from. Always @CHAT@ for Chat apps.
    hostApp :: (Core.Maybe CommonEventObject_HostApp),
    -- | Name of the invoked function associated with the widget. Only set for Chat apps.
    invokedFunction :: (Core.Maybe Core.Text),
    -- | Custom </chat/api/reference/rest/v1/cards#ActionParameter parameters> passed to the invoked function. Both keys and values must be strings.
    parameters :: (Core.Maybe CommonEventObject_Parameters),
    -- | The platform enum which indicates the platform where the event originates (@WEB@, @IOS@, or @ANDROID@). Not supported by Chat apps.
    platform :: (Core.Maybe CommonEventObject_Platform),
    -- | The timezone ID and offset from Coordinated Universal Time (UTC).
    timeZone :: (Core.Maybe TimeZone),
    -- | The full @locale.displayName@ in the format of [ISO 639 language code]-[ISO 3166 country\/region code] such as \"en-US\". Not supported by Chat apps.
    userLocale :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonEventObject' with the minimum fields required to make a request.
newCommonEventObject ::
  CommonEventObject
newCommonEventObject =
  CommonEventObject
    { formInputs = Core.Nothing,
      hostApp = Core.Nothing,
      invokedFunction = Core.Nothing,
      parameters = Core.Nothing,
      platform = Core.Nothing,
      timeZone = Core.Nothing,
      userLocale = Core.Nothing
    }

instance Core.FromJSON CommonEventObject where
  parseJSON =
    Core.withObject
      "CommonEventObject"
      ( \o ->
          CommonEventObject
            Core.<$> (o Core..:? "formInputs")
            Core.<*> (o Core..:? "hostApp")
            Core.<*> (o Core..:? "invokedFunction")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "platform")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "userLocale")
      )

instance Core.ToJSON CommonEventObject where
  toJSON CommonEventObject {..} =
    Core.object
      ( Core.catMaybes
          [ ("formInputs" Core..=) Core.<$> formInputs,
            ("hostApp" Core..=) Core.<$> hostApp,
            ("invokedFunction" Core..=) Core.<$> invokedFunction,
            ("parameters" Core..=) Core.<$> parameters,
            ("platform" Core..=) Core.<$> platform,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("userLocale" Core..=) Core.<$> userLocale
          ]
      )

-- | A map containing the current values of the widgets in a card. The map keys are the string IDs assigned to each widget, and the values represent inputs to the widget. Depending on the input data type, a different object represents each input: For single-value widgets, @StringInput@. For multi-value widgets, an array of @StringInput@ objects. For a date-time picker, a @DateTimeInput@. For a date-only picker, a @DateInput@. For a time-only picker, a @TimeInput@. Corresponds with the data entered by a user on a card in a <https://developers.google.com/chat/how-tos/dialogs dialog>.
--
-- /See:/ 'newCommonEventObject_FormInputs' smart constructor.
newtype CommonEventObject_FormInputs = CommonEventObject_FormInputs
  { -- |
    additional :: (Core.HashMap Core.Text Inputs)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonEventObject_FormInputs' with the minimum fields required to make a request.
newCommonEventObject_FormInputs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Inputs ->
  CommonEventObject_FormInputs
newCommonEventObject_FormInputs additional =
  CommonEventObject_FormInputs {additional = additional}

instance Core.FromJSON CommonEventObject_FormInputs where
  parseJSON =
    Core.withObject
      "CommonEventObject_FormInputs"
      ( \o ->
          CommonEventObject_FormInputs
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CommonEventObject_FormInputs where
  toJSON CommonEventObject_FormInputs {..} =
    Core.toJSON additional

-- | Custom </chat/api/reference/rest/v1/cards#ActionParameter parameters> passed to the invoked function. Both keys and values must be strings.
--
-- /See:/ 'newCommonEventObject_Parameters' smart constructor.
newtype CommonEventObject_Parameters = CommonEventObject_Parameters
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonEventObject_Parameters' with the minimum fields required to make a request.
newCommonEventObject_Parameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  CommonEventObject_Parameters
newCommonEventObject_Parameters additional =
  CommonEventObject_Parameters {additional = additional}

instance Core.FromJSON CommonEventObject_Parameters where
  parseJSON =
    Core.withObject
      "CommonEventObject_Parameters"
      ( \o ->
          CommonEventObject_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CommonEventObject_Parameters where
  toJSON CommonEventObject_Parameters {..} =
    Core.toJSON additional

-- | Date input values. Not supported by Chat apps.
--
-- /See:/ 'newDateInput' smart constructor.
newtype DateInput = DateInput
  { -- | Time since epoch time, in milliseconds.
    msSinceEpoch :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateInput' with the minimum fields required to make a request.
newDateInput ::
  DateInput
newDateInput = DateInput {msSinceEpoch = Core.Nothing}

instance Core.FromJSON DateInput where
  parseJSON =
    Core.withObject
      "DateInput"
      ( \o ->
          DateInput
            Core.<$> ( o Core..:? "msSinceEpoch"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON DateInput where
  toJSON DateInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("msSinceEpoch" Core..=) Core.. Core.AsText
              Core.<$> msSinceEpoch
          ]
      )

-- | Date and time input values. Not supported by Chat apps.
--
-- /See:/ 'newDateTimeInput' smart constructor.
data DateTimeInput = DateTimeInput
  { -- | Whether the @datetime@ input includes a calendar date.
    hasDate :: (Core.Maybe Core.Bool),
    -- | Whether the @datetime@ input includes a timestamp.
    hasTime :: (Core.Maybe Core.Bool),
    -- | Time since epoch time, in milliseconds.
    msSinceEpoch :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateTimeInput' with the minimum fields required to make a request.
newDateTimeInput ::
  DateTimeInput
newDateTimeInput =
  DateTimeInput
    { hasDate = Core.Nothing,
      hasTime = Core.Nothing,
      msSinceEpoch = Core.Nothing
    }

instance Core.FromJSON DateTimeInput where
  parseJSON =
    Core.withObject
      "DateTimeInput"
      ( \o ->
          DateTimeInput
            Core.<$> (o Core..:? "hasDate")
            Core.<*> (o Core..:? "hasTime")
            Core.<*> ( o Core..:? "msSinceEpoch"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON DateTimeInput where
  toJSON DateTimeInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("hasDate" Core..=) Core.<$> hasDate,
            ("hasTime" Core..=) Core.<$> hasTime,
            ("msSinceEpoch" Core..=) Core.. Core.AsText
              Core.<$> msSinceEpoch
          ]
      )

-- | Google Chat events.
--
-- /See:/ 'newDeprecatedEvent' smart constructor.
data DeprecatedEvent = DeprecatedEvent
  { -- | The form action data associated with an interactive card that was clicked. Only populated for CARD_CLICKED events. See the </chat/how-tos/cards-onclick Interactive Cards guide> for more information.
    action :: (Core.Maybe FormAction),
    -- | Represents information about the user\'s client, such as locale, host app, and platform. For Chat apps, @CommonEventObject@ includes information submitted by users interacting with <https://developers.google.com/chat/how-tos/dialogs dialogs>, like data entered on a card.
    common :: (Core.Maybe CommonEventObject),
    -- | The URL the Chat app should redirect the user to after they have completed an authorization or configuration flow outside of Google Chat. For more information, see <https://developers.google.com/chat/how-tos/connect-web-services-tools Connect a Chat app with other services & tools>.
    configCompleteRedirectUrl :: (Core.Maybe Core.Text),
    -- | The type of <https://developers.google.com/chat/how-tos/dialogs dialog> event received.
    dialogEventType :: (Core.Maybe DeprecatedEvent_DialogEventType),
    -- | The timestamp indicating when the event occurred.
    eventTime :: (Core.Maybe Core.DateTime),
    -- | True when the event is related to <https://developers.google.com/chat/how-tos/dialogs dialogs>.
    isDialogEvent :: (Core.Maybe Core.Bool),
    -- | The message that triggered the event, if applicable.
    message :: (Core.Maybe Message),
    -- | The space in which the event occurred.
    space :: (Core.Maybe Space),
    -- | The Chat app-defined key for the thread related to the event. See </chat/api/reference/rest/v1/spaces.messages#Thread.FIELDS.thread_key spaces.messages.thread.threadKey> for more information.
    threadKey :: (Core.Maybe Core.Text),
    -- | A secret value that legacy Chat apps can use to verify if a request is from Google. Google randomly generates the token, and its value remains static. You can obtain, revoke, or regenerate the token from the <https://console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-chat Chat API configuration page> in the Google Cloud Console. Modern Chat apps don\'t use this field. It is absent from API responses and the <https://console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-chat Chat API configuration page>.
    token :: (Core.Maybe Core.Text),
    -- | The type of the event.
    type' :: (Core.Maybe DeprecatedEvent_Type),
    -- | The user that triggered the event.
    user :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeprecatedEvent' with the minimum fields required to make a request.
newDeprecatedEvent ::
  DeprecatedEvent
newDeprecatedEvent =
  DeprecatedEvent
    { action = Core.Nothing,
      common = Core.Nothing,
      configCompleteRedirectUrl = Core.Nothing,
      dialogEventType = Core.Nothing,
      eventTime = Core.Nothing,
      isDialogEvent = Core.Nothing,
      message = Core.Nothing,
      space = Core.Nothing,
      threadKey = Core.Nothing,
      token = Core.Nothing,
      type' = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON DeprecatedEvent where
  parseJSON =
    Core.withObject
      "DeprecatedEvent"
      ( \o ->
          DeprecatedEvent
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "common")
            Core.<*> (o Core..:? "configCompleteRedirectUrl")
            Core.<*> (o Core..:? "dialogEventType")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "isDialogEvent")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "space")
            Core.<*> (o Core..:? "threadKey")
            Core.<*> (o Core..:? "token")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON DeprecatedEvent where
  toJSON DeprecatedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("common" Core..=) Core.<$> common,
            ("configCompleteRedirectUrl" Core..=)
              Core.<$> configCompleteRedirectUrl,
            ("dialogEventType" Core..=) Core.<$> dialogEventType,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("isDialogEvent" Core..=) Core.<$> isDialogEvent,
            ("message" Core..=) Core.<$> message,
            ("space" Core..=) Core.<$> space,
            ("threadKey" Core..=) Core.<$> threadKey,
            ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type',
            ("user" Core..=) Core.<$> user
          ]
      )

-- | Wrapper around the card body of the dialog.
--
-- /See:/ 'newDialog' smart constructor.
newtype Dialog = Dialog
  { -- | Input only. Body of the dialog, which is rendered in a modal. Google Chat apps do not support the following card entities: @DateTimePicker@, @OnChangeAction@.
    body :: (Core.Maybe GoogleAppsCardV1Card)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dialog' with the minimum fields required to make a request.
newDialog ::
  Dialog
newDialog = Dialog {body = Core.Nothing}

instance Core.FromJSON Dialog where
  parseJSON =
    Core.withObject
      "Dialog"
      (\o -> Dialog Core.<$> (o Core..:? "body"))

instance Core.ToJSON Dialog where
  toJSON Dialog {..} =
    Core.object
      (Core.catMaybes [("body" Core..=) Core.<$> body])

-- | Contains a <https://developers.google.com/chat/how-tos/dialogs dialog> and request status code.
--
-- /See:/ 'newDialogAction' smart constructor.
data DialogAction = DialogAction
  { -- | Input only. Status for a request to either invoke or submit a <https://developers.google.com/chat/how-tos/dialogs dialog>. Displays a status and message to users, if necessary. For example, in case of an error or success.
    actionStatus :: (Core.Maybe ActionStatus),
    -- | Input only. <https://developers.google.com/chat/how-tos/dialogs Dialog> for the request.
    dialog :: (Core.Maybe Dialog)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogAction' with the minimum fields required to make a request.
newDialogAction ::
  DialogAction
newDialogAction =
  DialogAction {actionStatus = Core.Nothing, dialog = Core.Nothing}

instance Core.FromJSON DialogAction where
  parseJSON =
    Core.withObject
      "DialogAction"
      ( \o ->
          DialogAction
            Core.<$> (o Core..:? "actionStatus")
            Core.<*> (o Core..:? "dialog")
      )

instance Core.ToJSON DialogAction where
  toJSON DialogAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionStatus" Core..=) Core.<$> actionStatus,
            ("dialog" Core..=) Core.<$> dialog
          ]
      )

-- | A reference to the data of a drive attachment.
--
-- /See:/ 'newDriveDataRef' smart constructor.
newtype DriveDataRef = DriveDataRef
  { -- | The id for the drive file, for use with the Drive API.
    driveFileId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDataRef' with the minimum fields required to make a request.
newDriveDataRef ::
  DriveDataRef
newDriveDataRef = DriveDataRef {driveFileId = Core.Nothing}

instance Core.FromJSON DriveDataRef where
  parseJSON =
    Core.withObject
      "DriveDataRef"
      ( \o ->
          DriveDataRef Core.<$> (o Core..:? "driveFileId")
      )

instance Core.ToJSON DriveDataRef where
  toJSON DriveDataRef {..} =
    Core.object
      ( Core.catMaybes
          [("driveFileId" Core..=) Core.<$> driveFileId]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A form action describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.
--
-- /See:/ 'newFormAction' smart constructor.
data FormAction = FormAction
  { -- | The method name is used to identify which part of the form triggered the form submission. This information is echoed back to the Chat app as part of the card click event. The same method name can be used for several elements that trigger a common behavior if desired.
    actionMethodName :: (Core.Maybe Core.Text),
    -- | List of action parameters.
    parameters :: (Core.Maybe [ActionParameter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FormAction' with the minimum fields required to make a request.
newFormAction ::
  FormAction
newFormAction =
  FormAction {actionMethodName = Core.Nothing, parameters = Core.Nothing}

instance Core.FromJSON FormAction where
  parseJSON =
    Core.withObject
      "FormAction"
      ( \o ->
          FormAction
            Core.<$> (o Core..:? "actionMethodName")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON FormAction where
  toJSON FormAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionMethodName" Core..=)
              Core.<$> actionMethodName,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | An action that describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form. If the action is triggered, the form values are sent to the server.
--
-- /See:/ 'newGoogleAppsCardV1Action' smart constructor.
data GoogleAppsCardV1Action = GoogleAppsCardV1Action
  { -- | A custom function to invoke when the containing element is clicked or othrwise activated. For example usage, see <https://developers.google.com/chat/how-tos/cards-onclick Create interactive cards>.
    function :: (Core.Maybe Core.Text),
    -- | Optional. Required when opening a <https://developers.google.com/chat/how-tos/dialogs dialog>. What to do in response to an interaction with a user, such as a user clicking button on a card message. If unspecified, the app responds by executing an @action@ - like opening a link or running a function - as normal. By specifying an @interaction@, the app can respond in special interactive ways. For example, by setting @interaction@ to @OPEN_DIALOG@, the app can open a <https://developers.google.com/chat/how-tos/dialogs dialog>. When specified, a loading indicator is not shown. Supported by Chat apps, but not Google Workspace Add-ons. If specified for an add-on, the entire card is stripped and nothing is shown in the client.
    interaction :: (Core.Maybe GoogleAppsCardV1Action_Interaction),
    -- | Specifies the loading indicator that the action displays while making the call to the action.
    loadIndicator :: (Core.Maybe GoogleAppsCardV1Action_LoadIndicator),
    -- | List of action parameters.
    parameters :: (Core.Maybe [GoogleAppsCardV1ActionParameter]),
    -- | Indicates whether form values persist after the action. The default value is @false@. If @true@, form values remain after the action is triggered. To let the user make changes while the action is being processed, set <https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator LoadIndicator> to @NONE@. For <https://developers.google.com/chat/api/guides/message-formats/cards card messages> in Chat apps, you must also set the action\'s <https://developers.google.com/chat/api/reference/rest/v1/spaces.messages#responsetype ResponseType> to @UPDATE_MESSAGE@ and use the same <https://developers.google.com/chat/api/reference/rest/v1/spaces.messages#CardWithId card_id> from the card that contained the action. If @false@, the form values are cleared when the action is triggered. To prevent the user from making changes while the action is being processed, set <https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator LoadIndicator> to @SPINNER@.
    persistValues :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Action' with the minimum fields required to make a request.
newGoogleAppsCardV1Action ::
  GoogleAppsCardV1Action
newGoogleAppsCardV1Action =
  GoogleAppsCardV1Action
    { function = Core.Nothing,
      interaction = Core.Nothing,
      loadIndicator = Core.Nothing,
      parameters = Core.Nothing,
      persistValues = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Action where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Action"
      ( \o ->
          GoogleAppsCardV1Action
            Core.<$> (o Core..:? "function")
            Core.<*> (o Core..:? "interaction")
            Core.<*> (o Core..:? "loadIndicator")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "persistValues")
      )

instance Core.ToJSON GoogleAppsCardV1Action where
  toJSON GoogleAppsCardV1Action {..} =
    Core.object
      ( Core.catMaybes
          [ ("function" Core..=) Core.<$> function,
            ("interaction" Core..=) Core.<$> interaction,
            ("loadIndicator" Core..=) Core.<$> loadIndicator,
            ("parameters" Core..=) Core.<$> parameters,
            ("persistValues" Core..=) Core.<$> persistValues
          ]
      )

-- | List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze 1 day, snooze next week. You might use action method = snooze(), passing the snooze type and snooze time in the list of string parameters. To learn more, see <https://developers.google.com/chat/api/reference/rest/v1/Event#commoneventobject CommonEventObject>.
--
-- /See:/ 'newGoogleAppsCardV1ActionParameter' smart constructor.
data GoogleAppsCardV1ActionParameter = GoogleAppsCardV1ActionParameter
  { -- | The name of the parameter for the action script.
    key :: (Core.Maybe Core.Text),
    -- | The value of the parameter.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ActionParameter' with the minimum fields required to make a request.
newGoogleAppsCardV1ActionParameter ::
  GoogleAppsCardV1ActionParameter
newGoogleAppsCardV1ActionParameter =
  GoogleAppsCardV1ActionParameter {key = Core.Nothing, value = Core.Nothing}

instance
  Core.FromJSON
    GoogleAppsCardV1ActionParameter
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1ActionParameter"
      ( \o ->
          GoogleAppsCardV1ActionParameter
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleAppsCardV1ActionParameter where
  toJSON GoogleAppsCardV1ActionParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The style options for the border of a card or widget, including the border type and color.
--
-- /See:/ 'newGoogleAppsCardV1BorderStyle' smart constructor.
data GoogleAppsCardV1BorderStyle = GoogleAppsCardV1BorderStyle
  { -- | The corner radius for the border.
    cornerRadius :: (Core.Maybe Core.Int32),
    -- | The colors to use when the type is @BORDER_TYPE_STROKE@.
    strokeColor :: (Core.Maybe Color),
    -- | The border type.
    type' :: (Core.Maybe GoogleAppsCardV1BorderStyle_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1BorderStyle' with the minimum fields required to make a request.
newGoogleAppsCardV1BorderStyle ::
  GoogleAppsCardV1BorderStyle
newGoogleAppsCardV1BorderStyle =
  GoogleAppsCardV1BorderStyle
    { cornerRadius = Core.Nothing,
      strokeColor = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1BorderStyle where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1BorderStyle"
      ( \o ->
          GoogleAppsCardV1BorderStyle
            Core.<$> (o Core..:? "cornerRadius")
            Core.<*> (o Core..:? "strokeColor")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GoogleAppsCardV1BorderStyle where
  toJSON GoogleAppsCardV1BorderStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("cornerRadius" Core..=) Core.<$> cornerRadius,
            ("strokeColor" Core..=) Core.<$> strokeColor,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A text, icon, or text + icon button that users can click. To make an image a clickable button, specify an Image (not an ImageComponent) and set an @onClick@ action. Currently supported in Chat apps (including [dialogs] (https:\/\/developers.google.com\/chat\/how-tos\/dialogs) and [card messages] (https:\/\/developers.google.com\/chat\/api\/guides\/message-formats\/cards)) and Google Workspace Add-ons.
--
-- /See:/ 'newGoogleAppsCardV1Button' smart constructor.
data GoogleAppsCardV1Button = GoogleAppsCardV1Button
  { -- | The alternative text used for accessibility. Set descriptive text that lets users know what the button does. For example, if a button opens a hyperlink, you might write: \"Opens a new browser tab and navigates to the Google Chat developer documentation at https:\/\/developers.google.com\/chat\".
    altText :: (Core.Maybe Core.Text),
    -- | If set, the button is filled with a solid background color and the font color changes to maintain contrast with the background color. For example, setting a blue background will likely result in white text. If unset, the image background is white and the font color is blue. For red, green and blue, the value of each field is a @float@ number that can be expressed in either of two ways: as a number between 0 and 255 divided by 255 (153\/255) or as a value between 0 and 1 (0.6). 0 represents the absence of a color and 1 or 255\/255 represent the full presence of that color on the RGB scale. Optionally set alpha, which sets a level of transparency using this equation: @pixel color = alpha * (this color) + (1.0 - alpha) * (background color)@ For alpha, a value of 1 corresponds with a solid color, and a value of 0 corresponds with a completely transparent color. For example, the following color represents a half transparent red: @\"color\": { \"red\": 1, \"green\": 0, \"blue\": 0, \"alpha\": 0.5 }@
    color :: (Core.Maybe Color),
    -- | If @true@, the button is displayed in an inactive state and doesn\'t respond to user actions.
    disabled :: (Core.Maybe Core.Bool),
    -- | The icon image. If both @icon@ and @text@ are set, then the icon appears before the text.
    icon :: (Core.Maybe GoogleAppsCardV1Icon),
    -- | Required. The action to perform when the button is clicked, such as opening a hyperlink or running a custom function.
    onClick :: (Core.Maybe GoogleAppsCardV1OnClick),
    -- | The text displayed inside the button.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Button' with the minimum fields required to make a request.
newGoogleAppsCardV1Button ::
  GoogleAppsCardV1Button
newGoogleAppsCardV1Button =
  GoogleAppsCardV1Button
    { altText = Core.Nothing,
      color = Core.Nothing,
      disabled = Core.Nothing,
      icon = Core.Nothing,
      onClick = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Button where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Button"
      ( \o ->
          GoogleAppsCardV1Button
            Core.<$> (o Core..:? "altText")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "icon")
            Core.<*> (o Core..:? "onClick")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleAppsCardV1Button where
  toJSON GoogleAppsCardV1Button {..} =
    Core.object
      ( Core.catMaybes
          [ ("altText" Core..=) Core.<$> altText,
            ("color" Core..=) Core.<$> color,
            ("disabled" Core..=) Core.<$> disabled,
            ("icon" Core..=) Core.<$> icon,
            ("onClick" Core..=) Core.<$> onClick,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | A list of buttons layed out horizontally.
--
-- /See:/ 'newGoogleAppsCardV1ButtonList' smart constructor.
newtype GoogleAppsCardV1ButtonList = GoogleAppsCardV1ButtonList
  { -- | An array of buttons.
    buttons :: (Core.Maybe [GoogleAppsCardV1Button])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ButtonList' with the minimum fields required to make a request.
newGoogleAppsCardV1ButtonList ::
  GoogleAppsCardV1ButtonList
newGoogleAppsCardV1ButtonList =
  GoogleAppsCardV1ButtonList {buttons = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1ButtonList where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1ButtonList"
      ( \o ->
          GoogleAppsCardV1ButtonList
            Core.<$> (o Core..:? "buttons")
      )

instance Core.ToJSON GoogleAppsCardV1ButtonList where
  toJSON GoogleAppsCardV1ButtonList {..} =
    Core.object
      ( Core.catMaybes
          [("buttons" Core..=) Core.<$> buttons]
      )

-- | Cards support a defined layout, interactive UI elements like buttons, and rich media like images. Use cards to present detailed information, gather information from users, and guide users to take a next step. In Google Chat, cards appear in several places: - As stand-alone messages. - Accompanying a text message, just beneath the text message. - As a <https://developers.google.com/chat/how-tos/dialogs dialog>. The following example JSON creates a \"contact card\" that features: - A header with the contact\'s name, job title, avatar picture. - A section with the contact information, including formatted text. - Buttons that users can click to share the contact or see more or less info. <<https://developers.google.com/chat/images/card_api_reference.png Example contact card>>
-- @{ \"cardsV2\": [ { \"cardId\": \"unique-card-id\", \"card\": { \"header\": { \"title\": \"Sasha\", \"subtitle\": \"Software Engineer\", \"imageUrl\": \"https:\/\/developers.google.com\/chat\/images\/quickstart-app-avatar.png\", \"imageType\": \"CIRCLE\", \"imageAltText\": \"Avatar for Sasha\", }, \"sections\": [ { \"header\": \"Contact Info\", \"collapsible\": true, \"uncollapsibleWidgetsCount\": 1, \"widgets\": [ { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"EMAIL\", }, \"text\": \"sasha\@example.com\", } }, { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"PERSON\", }, \"text\": \"Online\", }, }, { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"PHONE\", }, \"text\": \"+1 (555) 555-1234\", } }, { \"buttonList\": { \"buttons\": [ { \"text\": \"Share\", \"onClick\": { \"openLink\": { \"url\": \"https:\/\/example.com\/share\", } } }, { \"text\": \"Edit\", \"onClick\": { \"action\": { \"function\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"EDIT\", } ], } } }, ], } }, ], }, ], }, } ], }@
--
-- /See:/ 'newGoogleAppsCardV1Card' smart constructor.
data GoogleAppsCardV1Card = GoogleAppsCardV1Card
  { -- | The card\'s actions. Actions are added to the card\'s toolbar menu. Because Chat app cards have no toolbar, @cardActions[]@ is not supported by Chat apps. For example, the following JSON constructs a card action menu with Settings and Send Feedback options: @\"card_actions\": [ { \"actionLabel\": \"Settings\", \"onClick\": { \"action\": { \"functionName\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"SETTING\" } ], \"loadIndicator\": \"LoadIndicator.SPINNER\" } } }, { \"actionLabel\": \"Send Feedback\", \"onClick\": { \"openLink\": { \"url\": \"https:\/\/example.com\/feedback\" } } } ]@
    cardActions :: (Core.Maybe [GoogleAppsCardV1CardAction]),
    -- | In Google Workspace add-ons, sets the display properties of the @peekCardHeader@. Not supported by Chat apps.
    displayStyle :: (Core.Maybe GoogleAppsCardV1Card_DisplayStyle),
    -- | The fixed footer shown at the bottom of this card. Setting @fixedFooter@ without specifying a @primaryButton@ or a @secondaryButton@ causes an error. Chat apps support @fixedFooter@ in <https://developers.google.com/chat/how-tos/dialogs dialogs>, but not in <https://developers.google.com/chat/api/guides/message-formats/cards card messages>.
    fixedFooter :: (Core.Maybe GoogleAppsCardV1CardFixedFooter),
    -- | The header of the card. A header usually contains a leading image and a title. Headers always appear at the top of a card.
    header :: (Core.Maybe GoogleAppsCardV1CardHeader),
    -- | Name of the card. Used as a card identifier in card navigation. Because Chat apps don\'t support card navigation, they ignore this field.
    name :: (Core.Maybe Core.Text),
    -- | When displaying contextual content, the peek card header acts as a placeholder so that the user can navigate forward between the homepage cards and the contextual cards. Not supported by Chat apps.
    peekCardHeader :: (Core.Maybe GoogleAppsCardV1CardHeader),
    -- | Contains a collection of widgets. Each section has its own, optional header. Sections are visually separated by a line divider.
    sections :: (Core.Maybe [GoogleAppsCardV1Section])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Card' with the minimum fields required to make a request.
newGoogleAppsCardV1Card ::
  GoogleAppsCardV1Card
newGoogleAppsCardV1Card =
  GoogleAppsCardV1Card
    { cardActions = Core.Nothing,
      displayStyle = Core.Nothing,
      fixedFooter = Core.Nothing,
      header = Core.Nothing,
      name = Core.Nothing,
      peekCardHeader = Core.Nothing,
      sections = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Card where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Card"
      ( \o ->
          GoogleAppsCardV1Card
            Core.<$> (o Core..:? "cardActions")
            Core.<*> (o Core..:? "displayStyle")
            Core.<*> (o Core..:? "fixedFooter")
            Core.<*> (o Core..:? "header")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "peekCardHeader")
            Core.<*> (o Core..:? "sections")
      )

instance Core.ToJSON GoogleAppsCardV1Card where
  toJSON GoogleAppsCardV1Card {..} =
    Core.object
      ( Core.catMaybes
          [ ("cardActions" Core..=) Core.<$> cardActions,
            ("displayStyle" Core..=) Core.<$> displayStyle,
            ("fixedFooter" Core..=) Core.<$> fixedFooter,
            ("header" Core..=) Core.<$> header,
            ("name" Core..=) Core.<$> name,
            ("peekCardHeader" Core..=) Core.<$> peekCardHeader,
            ("sections" Core..=) Core.<$> sections
          ]
      )

-- | A card action is the action associated with the card. For example, an invoice card might include actions such as delete invoice, email invoice, or open the invoice in a browser. Not supported by Chat apps.
--
-- /See:/ 'newGoogleAppsCardV1CardAction' smart constructor.
data GoogleAppsCardV1CardAction = GoogleAppsCardV1CardAction
  { -- | The label that displays as the action menu item.
    actionLabel :: (Core.Maybe Core.Text),
    -- | The @onClick@ action for this action item.
    onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CardAction' with the minimum fields required to make a request.
newGoogleAppsCardV1CardAction ::
  GoogleAppsCardV1CardAction
newGoogleAppsCardV1CardAction =
  GoogleAppsCardV1CardAction
    { actionLabel = Core.Nothing,
      onClick = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1CardAction where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1CardAction"
      ( \o ->
          GoogleAppsCardV1CardAction
            Core.<$> (o Core..:? "actionLabel")
            Core.<*> (o Core..:? "onClick")
      )

instance Core.ToJSON GoogleAppsCardV1CardAction where
  toJSON GoogleAppsCardV1CardAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionLabel" Core..=) Core.<$> actionLabel,
            ("onClick" Core..=) Core.<$> onClick
          ]
      )

-- | A persistent (sticky) footer that that appears at the bottom of the card. Setting @fixedFooter@ without specifying a @primaryButton@ or a @secondaryButton@ causes an error. Chat apps support @fixedFooter@ in <https://developers.google.com/chat/how-tos/dialogs dialogs>, but not in <https://developers.google.com/chat/api/guides/message-formats/cards card messages>.
--
-- /See:/ 'newGoogleAppsCardV1CardFixedFooter' smart constructor.
data GoogleAppsCardV1CardFixedFooter = GoogleAppsCardV1CardFixedFooter
  { -- | The primary button of the fixed footer. The button must be a text button with text and color set.
    primaryButton :: (Core.Maybe GoogleAppsCardV1Button),
    -- | The secondary button of the fixed footer. The button must be a text button with text and color set. @primaryButton@ must be set if @secondaryButton@ is set.
    secondaryButton :: (Core.Maybe GoogleAppsCardV1Button)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CardFixedFooter' with the minimum fields required to make a request.
newGoogleAppsCardV1CardFixedFooter ::
  GoogleAppsCardV1CardFixedFooter
newGoogleAppsCardV1CardFixedFooter =
  GoogleAppsCardV1CardFixedFooter
    { primaryButton = Core.Nothing,
      secondaryButton = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsCardV1CardFixedFooter
  where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1CardFixedFooter"
      ( \o ->
          GoogleAppsCardV1CardFixedFooter
            Core.<$> (o Core..:? "primaryButton")
            Core.<*> (o Core..:? "secondaryButton")
      )

instance Core.ToJSON GoogleAppsCardV1CardFixedFooter where
  toJSON GoogleAppsCardV1CardFixedFooter {..} =
    Core.object
      ( Core.catMaybes
          [ ("primaryButton" Core..=) Core.<$> primaryButton,
            ("secondaryButton" Core..=)
              Core.<$> secondaryButton
          ]
      )

-- | Represents a card header.
--
-- /See:/ 'newGoogleAppsCardV1CardHeader' smart constructor.
data GoogleAppsCardV1CardHeader = GoogleAppsCardV1CardHeader
  { -- | The alternative text of this image which is used for accessibility.
    imageAltText :: (Core.Maybe Core.Text),
    -- | The shape used to crop the image.
    imageType :: (Core.Maybe GoogleAppsCardV1CardHeader_ImageType),
    -- | The HTTPS URL of the image in the card header.
    imageUrl :: (Core.Maybe Core.Text),
    -- | The subtitle of the card header. If specified, appears on its own line below the @title@.
    subtitle :: (Core.Maybe Core.Text),
    -- | Required. The title of the card header. The header has a fixed height: if both a title and subtitle are specified, each takes up one line. If only the title is specified, it takes up both lines.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1CardHeader' with the minimum fields required to make a request.
newGoogleAppsCardV1CardHeader ::
  GoogleAppsCardV1CardHeader
newGoogleAppsCardV1CardHeader =
  GoogleAppsCardV1CardHeader
    { imageAltText = Core.Nothing,
      imageType = Core.Nothing,
      imageUrl = Core.Nothing,
      subtitle = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1CardHeader where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1CardHeader"
      ( \o ->
          GoogleAppsCardV1CardHeader
            Core.<$> (o Core..:? "imageAltText")
            Core.<*> (o Core..:? "imageType")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "subtitle")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleAppsCardV1CardHeader where
  toJSON GoogleAppsCardV1CardHeader {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageAltText" Core..=) Core.<$> imageAltText,
            ("imageType" Core..=) Core.<$> imageType,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("subtitle" Core..=) Core.<$> subtitle,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Lets users specify a date, a time, or both a date and a time. Accepts text input from users, but features an interactive date and time selector that helps users enter correctly-formatted dates and times. If users enter a date or time incorrectly, the widget shows an error that prompts users to enter the correct format. Not supported by Chat apps. Support by Chat apps coming soon.
--
-- /See:/ 'newGoogleAppsCardV1DateTimePicker' smart constructor.
data GoogleAppsCardV1DateTimePicker = GoogleAppsCardV1DateTimePicker
  { -- | The text that prompts users to enter a date, time, or datetime. Specify text that helps the user enter the information your app needs. For example, if users are setting an appointment, then a label like \"Appointment date\" or \"Appointment date and time\" might work well.
    label :: (Core.Maybe Core.Text),
    -- | The name by which the datetime picker is identified in a form input event. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    name :: (Core.Maybe Core.Text),
    -- | Triggered when the user clicks __Save__ or __Clear__ from the datetime picker interface.
    onChangeAction :: (Core.Maybe GoogleAppsCardV1Action),
    -- | The number representing the time zone offset from UTC, in minutes. If set, the @value_ms_epoch@ is displayed in the specified time zone. If not set, it uses the user\'s time zone setting on the client side.
    timezoneOffsetDate :: (Core.Maybe Core.Int32),
    -- | What kind of date and time input the datetime picker supports.
    type' :: (Core.Maybe GoogleAppsCardV1DateTimePicker_Type),
    -- | The value displayed as the default value before user input or previous user input, represented in milliseconds (<https://en.wikipedia.org/wiki/Unix_time Epoch time>). For @DATE_AND_TIME@ type, the full epoch value is used. For @DATE_ONLY@ type, only date of the epoch time is used. For @TIME_ONLY@ type, only time of the epoch time is used. For example, to represent 3:00 AM, set epoch time to @3 * 60 * 60 * 1000@.
    valueMsEpoch :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1DateTimePicker' with the minimum fields required to make a request.
newGoogleAppsCardV1DateTimePicker ::
  GoogleAppsCardV1DateTimePicker
newGoogleAppsCardV1DateTimePicker =
  GoogleAppsCardV1DateTimePicker
    { label = Core.Nothing,
      name = Core.Nothing,
      onChangeAction = Core.Nothing,
      timezoneOffsetDate = Core.Nothing,
      type' = Core.Nothing,
      valueMsEpoch = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1DateTimePicker where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1DateTimePicker"
      ( \o ->
          GoogleAppsCardV1DateTimePicker
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onChangeAction")
            Core.<*> (o Core..:? "timezoneOffsetDate")
            Core.<*> (o Core..:? "type")
            Core.<*> ( o Core..:? "valueMsEpoch"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GoogleAppsCardV1DateTimePicker where
  toJSON GoogleAppsCardV1DateTimePicker {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("name" Core..=) Core.<$> name,
            ("onChangeAction" Core..=) Core.<$> onChangeAction,
            ("timezoneOffsetDate" Core..=)
              Core.<$> timezoneOffsetDate,
            ("type" Core..=) Core.<$> type',
            ("valueMsEpoch" Core..=) Core.. Core.AsText
              Core.<$> valueMsEpoch
          ]
      )

-- | A widget that displays text with optional decorations such as a label above or below the text, an icon in front of the text, a selection widget or a button after the text.
--
-- /See:/ 'newGoogleAppsCardV1DecoratedText' smart constructor.
data GoogleAppsCardV1DecoratedText = GoogleAppsCardV1DecoratedText
  { -- | The text that appears below @text@. Always truncates.
    bottomLabel :: (Core.Maybe Core.Text),
    -- | A button that can be clicked to trigger an action.
    button :: (Core.Maybe GoogleAppsCardV1Button),
    -- | An icon displayed after the text. Supports <https://developers.google.com/chat/api/guides/message-formats/cards#builtinicons built-in> and <https://developers.google.com/chat/api/guides/message-formats/cards#customicons custom> icons.
    endIcon :: (Core.Maybe GoogleAppsCardV1Icon),
    -- | Deprecated in favor of @startIcon@.
    icon :: (Core.Maybe GoogleAppsCardV1Icon),
    -- | When users click on @topLabel@ or @bottomLabel@, this action triggers.
    onClick :: (Core.Maybe GoogleAppsCardV1OnClick),
    -- | The icon displayed in front of the text.
    startIcon :: (Core.Maybe GoogleAppsCardV1Icon),
    -- | A switch widget can be clicked to change its state and trigger an action.
    switchControl :: (Core.Maybe GoogleAppsCardV1SwitchControl),
    -- | Required. The primary text. Supports simple formatting. See Text formatting for formatting details.
    text :: (Core.Maybe Core.Text),
    -- | The text that appears above @text@. Always truncates.
    topLabel :: (Core.Maybe Core.Text),
    -- | The wrap text setting. If @true@, the text wraps and displays on multiple lines. Otherwise, the text is truncated. Only applies to @text@, not @topLabel@ and @bottomLabel@.
    wrapText :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1DecoratedText' with the minimum fields required to make a request.
newGoogleAppsCardV1DecoratedText ::
  GoogleAppsCardV1DecoratedText
newGoogleAppsCardV1DecoratedText =
  GoogleAppsCardV1DecoratedText
    { bottomLabel = Core.Nothing,
      button = Core.Nothing,
      endIcon = Core.Nothing,
      icon = Core.Nothing,
      onClick = Core.Nothing,
      startIcon = Core.Nothing,
      switchControl = Core.Nothing,
      text = Core.Nothing,
      topLabel = Core.Nothing,
      wrapText = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1DecoratedText where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1DecoratedText"
      ( \o ->
          GoogleAppsCardV1DecoratedText
            Core.<$> (o Core..:? "bottomLabel")
            Core.<*> (o Core..:? "button")
            Core.<*> (o Core..:? "endIcon")
            Core.<*> (o Core..:? "icon")
            Core.<*> (o Core..:? "onClick")
            Core.<*> (o Core..:? "startIcon")
            Core.<*> (o Core..:? "switchControl")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "topLabel")
            Core.<*> (o Core..:? "wrapText")
      )

instance Core.ToJSON GoogleAppsCardV1DecoratedText where
  toJSON GoogleAppsCardV1DecoratedText {..} =
    Core.object
      ( Core.catMaybes
          [ ("bottomLabel" Core..=) Core.<$> bottomLabel,
            ("button" Core..=) Core.<$> button,
            ("endIcon" Core..=) Core.<$> endIcon,
            ("icon" Core..=) Core.<$> icon,
            ("onClick" Core..=) Core.<$> onClick,
            ("startIcon" Core..=) Core.<$> startIcon,
            ("switchControl" Core..=) Core.<$> switchControl,
            ("text" Core..=) Core.<$> text,
            ("topLabel" Core..=) Core.<$> topLabel,
            ("wrapText" Core..=) Core.<$> wrapText
          ]
      )

-- | Displays a divider between widgets, a horizontal line. For example, the following JSON creates a divider: @\"divider\": {}@
--
-- /See:/ 'newGoogleAppsCardV1Divider' smart constructor.
data GoogleAppsCardV1Divider = GoogleAppsCardV1Divider
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Divider' with the minimum fields required to make a request.
newGoogleAppsCardV1Divider ::
  GoogleAppsCardV1Divider
newGoogleAppsCardV1Divider = GoogleAppsCardV1Divider

instance Core.FromJSON GoogleAppsCardV1Divider where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Divider"
      (\o -> Core.pure GoogleAppsCardV1Divider)

instance Core.ToJSON GoogleAppsCardV1Divider where
  toJSON = Core.const Core.emptyObject

-- | Displays a grid with a collection of items. A grid supports any number of columns and items. The number of rows is determined by items divided by columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items and 2 columns has 6 rows. For example, the following JSON creates a 2 column grid with a single item: @\"grid\": { \"title\": \"A fine collection of items\", \"columnCount\": 2, \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4 }, \"items\": [ { \"image\": { \"imageUri\": \"https:\/\/www.example.com\/image.png\", \"cropStyle\": { \"type\": \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\": \"An item\", \"textAlignment\": \"CENTER\" } ], \"onClick\": { \"openLink\": { \"url\": \"https:\/\/www.example.com\" } } }@
--
-- /See:/ 'newGoogleAppsCardV1Grid' smart constructor.
data GoogleAppsCardV1Grid = GoogleAppsCardV1Grid
  { -- | The border style to apply to each grid item.
    borderStyle :: (Core.Maybe GoogleAppsCardV1BorderStyle),
    -- | The number of columns to display in the grid. A default value is used if this field isn\'t specified, and that default value is different depending on where the grid is shown (dialog versus companion).
    columnCount :: (Core.Maybe Core.Int32),
    -- | The items to display in the grid.
    items :: (Core.Maybe [GoogleAppsCardV1GridItem]),
    -- | This callback is reused by each individual grid item, but with the item\'s identifier and index in the items list added to the callback\'s parameters.
    onClick :: (Core.Maybe GoogleAppsCardV1OnClick),
    -- | The text that displays in the grid header.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Grid' with the minimum fields required to make a request.
newGoogleAppsCardV1Grid ::
  GoogleAppsCardV1Grid
newGoogleAppsCardV1Grid =
  GoogleAppsCardV1Grid
    { borderStyle = Core.Nothing,
      columnCount = Core.Nothing,
      items = Core.Nothing,
      onClick = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Grid where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Grid"
      ( \o ->
          GoogleAppsCardV1Grid
            Core.<$> (o Core..:? "borderStyle")
            Core.<*> (o Core..:? "columnCount")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "onClick")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleAppsCardV1Grid where
  toJSON GoogleAppsCardV1Grid {..} =
    Core.object
      ( Core.catMaybes
          [ ("borderStyle" Core..=) Core.<$> borderStyle,
            ("columnCount" Core..=) Core.<$> columnCount,
            ("items" Core..=) Core.<$> items,
            ("onClick" Core..=) Core.<$> onClick,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Represents a single item in the grid layout.
--
-- /See:/ 'newGoogleAppsCardV1GridItem' smart constructor.
data GoogleAppsCardV1GridItem = GoogleAppsCardV1GridItem
  { -- | A user-specified identifier for this grid item. This identifier is returned in the parent Grid\'s onClick callback parameters.
    id :: (Core.Maybe Core.Text),
    -- | The image that displays in the grid item.
    image :: (Core.Maybe GoogleAppsCardV1ImageComponent),
    -- | The layout to use for the grid item.
    layout :: (Core.Maybe GoogleAppsCardV1GridItem_Layout),
    -- | The grid item\'s subtitle.
    subtitle :: (Core.Maybe Core.Text),
    -- | The grid item\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1GridItem' with the minimum fields required to make a request.
newGoogleAppsCardV1GridItem ::
  GoogleAppsCardV1GridItem
newGoogleAppsCardV1GridItem =
  GoogleAppsCardV1GridItem
    { id = Core.Nothing,
      image = Core.Nothing,
      layout = Core.Nothing,
      subtitle = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1GridItem where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1GridItem"
      ( \o ->
          GoogleAppsCardV1GridItem
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "layout")
            Core.<*> (o Core..:? "subtitle")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleAppsCardV1GridItem where
  toJSON GoogleAppsCardV1GridItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("image" Core..=) Core.<$> image,
            ("layout" Core..=) Core.<$> layout,
            ("subtitle" Core..=) Core.<$> subtitle,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | An icon displayed in a widget on a card. Supports <https://developers.google.com/chat/api/guides/message-formats/cards#builtinicons built-in> and <https://developers.google.com/chat/api/guides/message-formats/cards#customicons custom> icons.
--
-- /See:/ 'newGoogleAppsCardV1Icon' smart constructor.
data GoogleAppsCardV1Icon = GoogleAppsCardV1Icon
  { -- | Optional. A description of the icon used for accessibility. If unspecified, the default value \"Button\" is provided. As a best practice, you should set a helpful description for what the icon displays, and if applicable, what it does. For example, @A user\'s account portrait@, or @Opens a new browser tab and navigates to the Google Chat developer documentation at https:\/\/developers.google.com\/chat@. If the icon is set in a Button, the @altText@ appears as helper text when the user hovers over the button. However, if the button also sets @text@, the icon\'s @altText@ is ignored.
    altText :: (Core.Maybe Core.Text),
    -- | Display a custom icon hosted at an HTTPS URL. For example: @\"iconUrl\": \"https:\/\/developers.google.com\/chat\/images\/quickstart-app-avatar.png\"@ Supported file types include @.png@ and @.jpg@.
    iconUrl :: (Core.Maybe Core.Text),
    -- | The crop style applied to the image. In some cases, applying a @CIRCLE@ crop causes the image to be drawn larger than a built-in icon.
    imageType :: (Core.Maybe GoogleAppsCardV1Icon_ImageType),
    -- | Display one of the built-in icons provided by Google Workspace. For example, to display an airplane icon, specify @AIRPLANE@. For a bus, specify @BUS@. For a full list of supported icons, see <https://developers.google.com/chat/api/guides/message-formats/cards#builtinicons built-in icons>.
    knownIcon :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Icon' with the minimum fields required to make a request.
newGoogleAppsCardV1Icon ::
  GoogleAppsCardV1Icon
newGoogleAppsCardV1Icon =
  GoogleAppsCardV1Icon
    { altText = Core.Nothing,
      iconUrl = Core.Nothing,
      imageType = Core.Nothing,
      knownIcon = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Icon where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Icon"
      ( \o ->
          GoogleAppsCardV1Icon
            Core.<$> (o Core..:? "altText")
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "imageType")
            Core.<*> (o Core..:? "knownIcon")
      )

instance Core.ToJSON GoogleAppsCardV1Icon where
  toJSON GoogleAppsCardV1Icon {..} =
    Core.object
      ( Core.catMaybes
          [ ("altText" Core..=) Core.<$> altText,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("imageType" Core..=) Core.<$> imageType,
            ("knownIcon" Core..=) Core.<$> knownIcon
          ]
      )

-- | An image that is specified by a URL and can have an @onClick@ action.
--
-- /See:/ 'newGoogleAppsCardV1Image' smart constructor.
data GoogleAppsCardV1Image = GoogleAppsCardV1Image
  { -- | The alternative text of this image, used for accessibility.
    altText :: (Core.Maybe Core.Text),
    -- | The @https@ URL that hosts the image. For example: @https:\/\/developers.google.com\/chat\/images\/quickstart-app-avatar.png@
    imageUrl :: (Core.Maybe Core.Text),
    -- | When a user clicks on the image, the click triggers this action.
    onClick :: (Core.Maybe GoogleAppsCardV1OnClick)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Image' with the minimum fields required to make a request.
newGoogleAppsCardV1Image ::
  GoogleAppsCardV1Image
newGoogleAppsCardV1Image =
  GoogleAppsCardV1Image
    { altText = Core.Nothing,
      imageUrl = Core.Nothing,
      onClick = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Image where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Image"
      ( \o ->
          GoogleAppsCardV1Image
            Core.<$> (o Core..:? "altText")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "onClick")
      )

instance Core.ToJSON GoogleAppsCardV1Image where
  toJSON GoogleAppsCardV1Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("altText" Core..=) Core.<$> altText,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("onClick" Core..=) Core.<$> onClick
          ]
      )

-- | Represents an image.
--
-- /See:/ 'newGoogleAppsCardV1ImageComponent' smart constructor.
data GoogleAppsCardV1ImageComponent = GoogleAppsCardV1ImageComponent
  { -- | The accessibility label for the image.
    altText :: (Core.Maybe Core.Text),
    -- | The border style to apply to the image.
    borderStyle :: (Core.Maybe GoogleAppsCardV1BorderStyle),
    -- | The crop style to apply to the image.
    cropStyle :: (Core.Maybe GoogleAppsCardV1ImageCropStyle),
    -- | The image URL.
    imageUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ImageComponent' with the minimum fields required to make a request.
newGoogleAppsCardV1ImageComponent ::
  GoogleAppsCardV1ImageComponent
newGoogleAppsCardV1ImageComponent =
  GoogleAppsCardV1ImageComponent
    { altText = Core.Nothing,
      borderStyle = Core.Nothing,
      cropStyle = Core.Nothing,
      imageUri = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1ImageComponent where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1ImageComponent"
      ( \o ->
          GoogleAppsCardV1ImageComponent
            Core.<$> (o Core..:? "altText")
            Core.<*> (o Core..:? "borderStyle")
            Core.<*> (o Core..:? "cropStyle")
            Core.<*> (o Core..:? "imageUri")
      )

instance Core.ToJSON GoogleAppsCardV1ImageComponent where
  toJSON GoogleAppsCardV1ImageComponent {..} =
    Core.object
      ( Core.catMaybes
          [ ("altText" Core..=) Core.<$> altText,
            ("borderStyle" Core..=) Core.<$> borderStyle,
            ("cropStyle" Core..=) Core.<$> cropStyle,
            ("imageUri" Core..=) Core.<$> imageUri
          ]
      )

-- | Represents the crop style applied to an image. For example, here\'s how to apply a 16 by 9 aspect ratio: @cropStyle { \"type\": \"RECTANGLE_CUSTOM\", \"aspectRatio\": 16\/9 }@
--
-- /See:/ 'newGoogleAppsCardV1ImageCropStyle' smart constructor.
data GoogleAppsCardV1ImageCropStyle = GoogleAppsCardV1ImageCropStyle
  { -- | The aspect ratio to use if the crop type is @RECTANGLE_CUSTOM@. For example, here\'s how to apply a 16 by 9 aspect ratio: @cropStyle { \"type\": \"RECTANGLE_CUSTOM\", \"aspectRatio\": 16\/9 }@
    aspectRatio :: (Core.Maybe Core.Double),
    -- | The crop type.
    type' :: (Core.Maybe GoogleAppsCardV1ImageCropStyle_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1ImageCropStyle' with the minimum fields required to make a request.
newGoogleAppsCardV1ImageCropStyle ::
  GoogleAppsCardV1ImageCropStyle
newGoogleAppsCardV1ImageCropStyle =
  GoogleAppsCardV1ImageCropStyle
    { aspectRatio = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1ImageCropStyle where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1ImageCropStyle"
      ( \o ->
          GoogleAppsCardV1ImageCropStyle
            Core.<$> (o Core..:? "aspectRatio")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GoogleAppsCardV1ImageCropStyle where
  toJSON GoogleAppsCardV1ImageCropStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("aspectRatio" Core..=) Core.<$> aspectRatio,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Represents how to respond when users click an interactive element on a card, such as a button.
--
-- /See:/ 'newGoogleAppsCardV1OnClick' smart constructor.
data GoogleAppsCardV1OnClick = GoogleAppsCardV1OnClick
  { -- | If specified, an action is triggered by this @onClick@.
    action :: (Core.Maybe GoogleAppsCardV1Action),
    -- | A new card is pushed to the card stack after clicking if specified. Supported by Google Workspace Add-ons, but not Chat apps.
    card :: (Core.Maybe GoogleAppsCardV1Card),
    -- | An add-on triggers this action when the action needs to open a link. This differs from the @open_link@ above in that this needs to talk to server to get the link. Thus some preparation work is required for web client to do before the open link action response comes back.
    openDynamicLinkAction :: (Core.Maybe GoogleAppsCardV1Action),
    -- | If specified, this @onClick@ triggers an open link action.
    openLink :: (Core.Maybe GoogleAppsCardV1OpenLink)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1OnClick' with the minimum fields required to make a request.
newGoogleAppsCardV1OnClick ::
  GoogleAppsCardV1OnClick
newGoogleAppsCardV1OnClick =
  GoogleAppsCardV1OnClick
    { action = Core.Nothing,
      card = Core.Nothing,
      openDynamicLinkAction = Core.Nothing,
      openLink = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1OnClick where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1OnClick"
      ( \o ->
          GoogleAppsCardV1OnClick
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "card")
            Core.<*> (o Core..:? "openDynamicLinkAction")
            Core.<*> (o Core..:? "openLink")
      )

instance Core.ToJSON GoogleAppsCardV1OnClick where
  toJSON GoogleAppsCardV1OnClick {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("card" Core..=) Core.<$> card,
            ("openDynamicLinkAction" Core..=)
              Core.<$> openDynamicLinkAction,
            ("openLink" Core..=) Core.<$> openLink
          ]
      )

-- | Represents an @onClick@ event that opens a hyperlink.
--
-- /See:/ 'newGoogleAppsCardV1OpenLink' smart constructor.
data GoogleAppsCardV1OpenLink = GoogleAppsCardV1OpenLink
  { -- | Whether the client forgets about a link after opening it, or observes it until the window closes. Not supported by Chat apps.
    onClose :: (Core.Maybe GoogleAppsCardV1OpenLink_OnClose),
    -- | How to open a link. Not supported by Chat apps.
    openAs :: (Core.Maybe GoogleAppsCardV1OpenLink_OpenAs),
    -- | The URL to open.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1OpenLink' with the minimum fields required to make a request.
newGoogleAppsCardV1OpenLink ::
  GoogleAppsCardV1OpenLink
newGoogleAppsCardV1OpenLink =
  GoogleAppsCardV1OpenLink
    { onClose = Core.Nothing,
      openAs = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1OpenLink where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1OpenLink"
      ( \o ->
          GoogleAppsCardV1OpenLink
            Core.<$> (o Core..:? "onClose")
            Core.<*> (o Core..:? "openAs")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleAppsCardV1OpenLink where
  toJSON GoogleAppsCardV1OpenLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("onClose" Core..=) Core.<$> onClose,
            ("openAs" Core..=) Core.<$> openAs,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A section contains a collection of widgets that are rendered vertically in the order that they are specified.
--
-- /See:/ 'newGoogleAppsCardV1Section' smart constructor.
data GoogleAppsCardV1Section = GoogleAppsCardV1Section
  { -- | Indicates whether this section is collapsible. Collapsible sections hide some or all widgets, but users can expand the section to reveal the hidden widgets by clicking __Show more__. Users can hide the widgets again by clicking __Show less__. To determine which widgets are hidden, specify @uncollapsibleWidgetsCount@.
    collapsible :: (Core.Maybe Core.Bool),
    -- | Text that appears at the top of a section. Supports <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting simple HTML formatted text>.
    header :: (Core.Maybe Core.Text),
    -- | The number of uncollapsible widgets which remain visible even when a section is collapsed. For example, when a section contains five widgets and the @uncollapsibleWidgetsCount@ is set to @2@, the first two widgets are always shown and the last three are collapsed by default. The @uncollapsibleWidgetsCount@ is taken into account only when @collapsible@ is @true@.
    uncollapsibleWidgetsCount :: (Core.Maybe Core.Int32),
    -- | All the widgets in the section. Must contain at least 1 widget.
    widgets :: (Core.Maybe [GoogleAppsCardV1Widget])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Section' with the minimum fields required to make a request.
newGoogleAppsCardV1Section ::
  GoogleAppsCardV1Section
newGoogleAppsCardV1Section =
  GoogleAppsCardV1Section
    { collapsible = Core.Nothing,
      header = Core.Nothing,
      uncollapsibleWidgetsCount = Core.Nothing,
      widgets = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Section where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Section"
      ( \o ->
          GoogleAppsCardV1Section
            Core.<$> (o Core..:? "collapsible")
            Core.<*> (o Core..:? "header")
            Core.<*> (o Core..:? "uncollapsibleWidgetsCount")
            Core.<*> (o Core..:? "widgets")
      )

instance Core.ToJSON GoogleAppsCardV1Section where
  toJSON GoogleAppsCardV1Section {..} =
    Core.object
      ( Core.catMaybes
          [ ("collapsible" Core..=) Core.<$> collapsible,
            ("header" Core..=) Core.<$> header,
            ("uncollapsibleWidgetsCount" Core..=)
              Core.<$> uncollapsibleWidgetsCount,
            ("widgets" Core..=) Core.<$> widgets
          ]
      )

-- | A widget that creates a UI item with options for users to select. For example, a dropdown menu or check list. Chat apps receive and can process the value of entered text during form input events. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>. When you need to collect data from users that matches options you set, use a selection input. To collect abstract data from users, use the text input widget instead.
--
-- /See:/ 'newGoogleAppsCardV1SelectionInput' smart constructor.
data GoogleAppsCardV1SelectionInput = GoogleAppsCardV1SelectionInput
  { -- | An array of the selected items. For example, all the selected check boxes.
    items :: (Core.Maybe [GoogleAppsCardV1SelectionItem]),
    -- | The text that appears above the selection input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if users are selecting the urgency of a work ticket from a drop-down menu, the label might be \"Urgency\" or \"Select urgency\".
    label :: (Core.Maybe Core.Text),
    -- | The name by which the selection input is identified in a form input event. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    name :: (Core.Maybe Core.Text),
    -- | If specified, the form is submitted when the selection changes. If not specified, you must specify a separate button that submits the form. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    onChangeAction :: (Core.Maybe GoogleAppsCardV1Action),
    -- | The way that an option appears to users. Different options support different types of interactions. For example, users can enable multiple check boxes, but can only select one value from a dropdown menu. Each selection input supports one type of selection. Mixing check boxes and switches, for example, is not supported.
    type' :: (Core.Maybe GoogleAppsCardV1SelectionInput_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SelectionInput' with the minimum fields required to make a request.
newGoogleAppsCardV1SelectionInput ::
  GoogleAppsCardV1SelectionInput
newGoogleAppsCardV1SelectionInput =
  GoogleAppsCardV1SelectionInput
    { items = Core.Nothing,
      label = Core.Nothing,
      name = Core.Nothing,
      onChangeAction = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1SelectionInput where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1SelectionInput"
      ( \o ->
          GoogleAppsCardV1SelectionInput
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onChangeAction")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GoogleAppsCardV1SelectionInput where
  toJSON GoogleAppsCardV1SelectionInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("label" Core..=) Core.<$> label,
            ("name" Core..=) Core.<$> name,
            ("onChangeAction" Core..=) Core.<$> onChangeAction,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A selectable item in a selection input, such as a check box or a switch.
--
-- /See:/ 'newGoogleAppsCardV1SelectionItem' smart constructor.
data GoogleAppsCardV1SelectionItem = GoogleAppsCardV1SelectionItem
  { -- | When @true@, more than one item is selected. If more than one item is selected for radio buttons and dropdown menus, the first selected item is received and the ones after are ignored.
    selected :: (Core.Maybe Core.Bool),
    -- | The text displayed to users.
    text :: (Core.Maybe Core.Text),
    -- | The value associated with this item. The client should use this as a form input value. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SelectionItem' with the minimum fields required to make a request.
newGoogleAppsCardV1SelectionItem ::
  GoogleAppsCardV1SelectionItem
newGoogleAppsCardV1SelectionItem =
  GoogleAppsCardV1SelectionItem
    { selected = Core.Nothing,
      text = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1SelectionItem where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1SelectionItem"
      ( \o ->
          GoogleAppsCardV1SelectionItem
            Core.<$> (o Core..:? "selected")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleAppsCardV1SelectionItem where
  toJSON GoogleAppsCardV1SelectionItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("selected" Core..=) Core.<$> selected,
            ("text" Core..=) Core.<$> text,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | One suggested value that users can enter in a text input field.
--
-- /See:/ 'newGoogleAppsCardV1SuggestionItem' smart constructor.
newtype GoogleAppsCardV1SuggestionItem = GoogleAppsCardV1SuggestionItem
  { -- | The value of a suggested input to a text input field. This is equivalent to what users would enter themselves.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SuggestionItem' with the minimum fields required to make a request.
newGoogleAppsCardV1SuggestionItem ::
  GoogleAppsCardV1SuggestionItem
newGoogleAppsCardV1SuggestionItem =
  GoogleAppsCardV1SuggestionItem {text = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1SuggestionItem where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1SuggestionItem"
      ( \o ->
          GoogleAppsCardV1SuggestionItem
            Core.<$> (o Core..:? "text")
      )

instance Core.ToJSON GoogleAppsCardV1SuggestionItem where
  toJSON GoogleAppsCardV1SuggestionItem {..} =
    Core.object
      (Core.catMaybes [("text" Core..=) Core.<$> text])

-- | Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing \"Jav\", the list of suggestions filters to show just Java and JavaScript. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter \"javascript\" and others \"java script\". Suggesting \"JavaScript\" can standardize how users interact with your app. When specified, @TextInput.type@ is always @SINGLE_LINE@, even if it is set to @MULTIPLE_LINE@.
--
-- /See:/ 'newGoogleAppsCardV1Suggestions' smart constructor.
newtype GoogleAppsCardV1Suggestions = GoogleAppsCardV1Suggestions
  { -- | A list of suggestions used for autocomplete recommendations in text input fields.
    items :: (Core.Maybe [GoogleAppsCardV1SuggestionItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Suggestions' with the minimum fields required to make a request.
newGoogleAppsCardV1Suggestions ::
  GoogleAppsCardV1Suggestions
newGoogleAppsCardV1Suggestions =
  GoogleAppsCardV1Suggestions {items = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1Suggestions where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Suggestions"
      ( \o ->
          GoogleAppsCardV1Suggestions
            Core.<$> (o Core..:? "items")
      )

instance Core.ToJSON GoogleAppsCardV1Suggestions where
  toJSON GoogleAppsCardV1Suggestions {..} =
    Core.object
      (Core.catMaybes [("items" Core..=) Core.<$> items])

-- | Either a toggle-style switch or a checkbox inside a @decoratedText@ widget. Only supported on the @decoratedText@ widget.
--
-- /See:/ 'newGoogleAppsCardV1SwitchControl' smart constructor.
data GoogleAppsCardV1SwitchControl = GoogleAppsCardV1SwitchControl
  { -- | How the switch appears in the user interface.
    controlType :: (Core.Maybe GoogleAppsCardV1SwitchControl_ControlType),
    -- | The name by which the switch widget is identified in a form input event. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    name :: (Core.Maybe Core.Text),
    -- | The action to perform when the switch state is changed, such as what function to run.
    onChangeAction :: (Core.Maybe GoogleAppsCardV1Action),
    -- | When @true@, the switch is selected.
    selected :: (Core.Maybe Core.Bool),
    -- | The value entered by a user, returned as part of a form input event. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1SwitchControl' with the minimum fields required to make a request.
newGoogleAppsCardV1SwitchControl ::
  GoogleAppsCardV1SwitchControl
newGoogleAppsCardV1SwitchControl =
  GoogleAppsCardV1SwitchControl
    { controlType = Core.Nothing,
      name = Core.Nothing,
      onChangeAction = Core.Nothing,
      selected = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1SwitchControl where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1SwitchControl"
      ( \o ->
          GoogleAppsCardV1SwitchControl
            Core.<$> (o Core..:? "controlType")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onChangeAction")
            Core.<*> (o Core..:? "selected")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleAppsCardV1SwitchControl where
  toJSON GoogleAppsCardV1SwitchControl {..} =
    Core.object
      ( Core.catMaybes
          [ ("controlType" Core..=) Core.<$> controlType,
            ("name" Core..=) Core.<$> name,
            ("onChangeAction" Core..=) Core.<$> onChangeAction,
            ("selected" Core..=) Core.<$> selected,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A field in which users can enter text. Supports suggestions and on-change actions. Chat apps receive and can process the value of entered text during form input events. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>. When you need to collect abstract data from users, use a text input. To collect defined data from users, use the selection input widget instead.
--
-- /See:/ 'newGoogleAppsCardV1TextInput' smart constructor.
data GoogleAppsCardV1TextInput = GoogleAppsCardV1TextInput
  { -- | Optional. Specify what action to take when the text input field provides suggestions to users who interact with it. If unspecified, the suggestions are set by @initialSuggestions@ and are processed by the client. If specified, the app takes the action specified here, such as running a custom function. Supported by Google Workspace Add-ons, but not Chat apps.
    autoCompleteAction :: (Core.Maybe GoogleAppsCardV1Action),
    -- | Text that appears below the text input field meant to assist users by prompting them to enter a certain value. This text is always visible. Required if @label@ is unspecified. Otherwise, optional.
    hintText :: (Core.Maybe Core.Text),
    -- | Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing \"Jav\", the list of suggestions filters to show just Java and JavaScript. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter \"javascript\" and others \"java script\". Suggesting \"JavaScript\" can standardize how users interact with your app. When specified, @TextInput.type@ is always @SINGLE_LINE@, even if it is set to @MULTIPLE_LINE@.
    initialSuggestions :: (Core.Maybe GoogleAppsCardV1Suggestions),
    -- | The text that appears above the text input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if you are asking someone\'s name, but specifically need their surname, write \"surname\" instead of \"name\". Required if @hintText@ is unspecified. Otherwise, optional.
    label :: (Core.Maybe Core.Text),
    -- | The name by which the text input is identified in a form input event. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    name :: (Core.Maybe Core.Text),
    -- | What to do when a change occurs in the text input field. Examples of changes include a user adding to the field, or deleting text. Examples of actions to take include running a custom function or opening a <https://developers.google.com/chat/how-tos/dialogs dialog> in Google Chat.
    onChangeAction :: (Core.Maybe GoogleAppsCardV1Action),
    -- | How a text input field appears in the user interface. For example, whether the field is single or multi-line.
    type' :: (Core.Maybe GoogleAppsCardV1TextInput_Type),
    -- | The value entered by a user, returned as part of a form input event. For details about working with form inputs, see <https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs Receive form data>.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1TextInput' with the minimum fields required to make a request.
newGoogleAppsCardV1TextInput ::
  GoogleAppsCardV1TextInput
newGoogleAppsCardV1TextInput =
  GoogleAppsCardV1TextInput
    { autoCompleteAction = Core.Nothing,
      hintText = Core.Nothing,
      initialSuggestions = Core.Nothing,
      label = Core.Nothing,
      name = Core.Nothing,
      onChangeAction = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1TextInput where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1TextInput"
      ( \o ->
          GoogleAppsCardV1TextInput
            Core.<$> (o Core..:? "autoCompleteAction")
            Core.<*> (o Core..:? "hintText")
            Core.<*> (o Core..:? "initialSuggestions")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onChangeAction")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleAppsCardV1TextInput where
  toJSON GoogleAppsCardV1TextInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoCompleteAction" Core..=)
              Core.<$> autoCompleteAction,
            ("hintText" Core..=) Core.<$> hintText,
            ("initialSuggestions" Core..=)
              Core.<$> initialSuggestions,
            ("label" Core..=) Core.<$> label,
            ("name" Core..=) Core.<$> name,
            ("onChangeAction" Core..=) Core.<$> onChangeAction,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A paragraph of text that supports formatting. See <https://developers.google.com/workspace/add-ons/concepts/widgets#text_formatting Text formatting> for details.
--
-- /See:/ 'newGoogleAppsCardV1TextParagraph' smart constructor.
newtype GoogleAppsCardV1TextParagraph = GoogleAppsCardV1TextParagraph
  { -- | The text that\'s shown in the widget.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1TextParagraph' with the minimum fields required to make a request.
newGoogleAppsCardV1TextParagraph ::
  GoogleAppsCardV1TextParagraph
newGoogleAppsCardV1TextParagraph =
  GoogleAppsCardV1TextParagraph {text = Core.Nothing}

instance Core.FromJSON GoogleAppsCardV1TextParagraph where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1TextParagraph"
      ( \o ->
          GoogleAppsCardV1TextParagraph
            Core.<$> (o Core..:? "text")
      )

instance Core.ToJSON GoogleAppsCardV1TextParagraph where
  toJSON GoogleAppsCardV1TextParagraph {..} =
    Core.object
      (Core.catMaybes [("text" Core..=) Core.<$> text])

-- | Each card is made up of widgets. A widget is a composite object that can represent one of text, images, buttons, and other object types.
--
-- /See:/ 'newGoogleAppsCardV1Widget' smart constructor.
data GoogleAppsCardV1Widget = GoogleAppsCardV1Widget
  { -- | A list of buttons. For example, the following JSON creates two buttons. The first is a blue text button and the second is an image button that opens a link: @\"buttonList\": { \"buttons\": [ { \"text\": \"Edit\", \"color\": { \"red\": 0, \"green\": 0, \"blue\": 1, \"alpha\": 1 }, \"disabled\": true, }, { \"icon\": { \"knownIcon\": \"INVITE\", \"altText\": \"check calendar\" }, \"onClick\": { \"openLink\": { \"url\": \"https:\/\/example.com\/calendar\" } } } ] }@
    buttonList :: (Core.Maybe GoogleAppsCardV1ButtonList),
    -- | Displays a selection\/input widget for date, time, or date and time. Not supported by Chat apps. Support by Chat apps is coming soon. For example, the following JSON creates a datetime picker to schedule an appointment: @\"dateTimePicker\": { \"name\": \"appointment_time\", \"label\": \"Book your appointment at:\", \"type\": \"DATE_AND_TIME\", \"valueMsEpoch\": \"796435200000\" }@
    dateTimePicker :: (Core.Maybe GoogleAppsCardV1DateTimePicker),
    -- | Displays a decorated text item. For example, the following JSON creates a decorated text widget showing email address: @\"decoratedText\": { \"icon\": { \"knownIcon\": \"EMAIL\" }, \"topLabel\": \"Email Address\", \"text\": \"sasha\@example.com\", \"bottomLabel\": \"This is a new Email address!\", \"switchControl\": { \"name\": \"has_send_welcome_email_to_sasha\", \"selected\": false, \"controlType\": \"CHECKBOX\" } }@
    decoratedText :: (Core.Maybe GoogleAppsCardV1DecoratedText),
    -- | Displays a horizontal line divider between widgets. For example, the following JSON creates a divider: @\"divider\": { }@
    divider :: (Core.Maybe GoogleAppsCardV1Divider),
    -- | Displays a grid with a collection of items. A grid supports any number of columns and items. The number of rows is determined by the upper bounds of the number items divided by the number of columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items and 2 columns has 6 rows. For example, the following JSON creates a 2 column grid with a single item: @\"grid\": { \"title\": \"A fine collection of items\", \"columnCount\": 2, \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4 }, \"items\": [ { \"image\": { \"imageUri\": \"https:\/\/www.example.com\/image.png\", \"cropStyle\": { \"type\": \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\": \"An item\", \"textAlignment\": \"CENTER\" } ], \"onClick\": { \"openLink\": { \"url\": \"https:\/\/www.example.com\" } } }@
    grid :: (Core.Maybe GoogleAppsCardV1Grid),
    -- | Displays an image. For example, the following JSON creates an image with alternative text: @\"image\": { \"imageUrl\": \"https:\/\/developers.google.com\/chat\/images\/quickstart-app-avatar.png\", \"altText\": \"Chat app avatar\" }@
    image :: (Core.Maybe GoogleAppsCardV1Image),
    -- | Displays a selection control that lets users select items. Selection controls can be check boxes, radio buttons, switches, or dropdown menus. For example, the following JSON creates a dropdown menu that lets users choose a size: @\"selectionInput\": { \"name\": \"size\", \"label\": \"Size\" \"type\": \"DROPDOWN\", \"items\": [ { \"text\": \"S\", \"value\": \"small\", \"selected\": false }, { \"text\": \"M\", \"value\": \"medium\", \"selected\": true }, { \"text\": \"L\", \"value\": \"large\", \"selected\": false }, { \"text\": \"XL\", \"value\": \"extra_large\", \"selected\": false } ] }@
    selectionInput :: (Core.Maybe GoogleAppsCardV1SelectionInput),
    -- | Displays a text box that users can type into. For example, the following JSON creates a text input for an email address: @\"textInput\": { \"name\": \"mailing_address\", \"label\": \"Mailing Address\" }@ As another example, the following JSON creates a text input for a programming language with static suggestions: @\"textInput\": { \"name\": \"preferred_programing_language\", \"label\": \"Preferred Language\", \"initialSuggestions\": { \"items\": [ { \"text\": \"C++\" }, { \"text\": \"Java\" }, { \"text\": \"JavaScript\" }, { \"text\": \"Python\" } ] } }@
    textInput :: (Core.Maybe GoogleAppsCardV1TextInput),
    -- | Displays a text paragraph. Supports <https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting simple HTML formatted text>. For example, the following JSON creates a bolded text: @\"textParagraph\": { \"text\": \" *bold text*\" }@
    textParagraph :: (Core.Maybe GoogleAppsCardV1TextParagraph)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsCardV1Widget' with the minimum fields required to make a request.
newGoogleAppsCardV1Widget ::
  GoogleAppsCardV1Widget
newGoogleAppsCardV1Widget =
  GoogleAppsCardV1Widget
    { buttonList = Core.Nothing,
      dateTimePicker = Core.Nothing,
      decoratedText = Core.Nothing,
      divider = Core.Nothing,
      grid = Core.Nothing,
      image = Core.Nothing,
      selectionInput = Core.Nothing,
      textInput = Core.Nothing,
      textParagraph = Core.Nothing
    }

instance Core.FromJSON GoogleAppsCardV1Widget where
  parseJSON =
    Core.withObject
      "GoogleAppsCardV1Widget"
      ( \o ->
          GoogleAppsCardV1Widget
            Core.<$> (o Core..:? "buttonList")
            Core.<*> (o Core..:? "dateTimePicker")
            Core.<*> (o Core..:? "decoratedText")
            Core.<*> (o Core..:? "divider")
            Core.<*> (o Core..:? "grid")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "selectionInput")
            Core.<*> (o Core..:? "textInput")
            Core.<*> (o Core..:? "textParagraph")
      )

instance Core.ToJSON GoogleAppsCardV1Widget where
  toJSON GoogleAppsCardV1Widget {..} =
    Core.object
      ( Core.catMaybes
          [ ("buttonList" Core..=) Core.<$> buttonList,
            ("dateTimePicker" Core..=) Core.<$> dateTimePicker,
            ("decoratedText" Core..=) Core.<$> decoratedText,
            ("divider" Core..=) Core.<$> divider,
            ("grid" Core..=) Core.<$> grid,
            ("image" Core..=) Core.<$> image,
            ("selectionInput" Core..=) Core.<$> selectionInput,
            ("textInput" Core..=) Core.<$> textInput,
            ("textParagraph" Core..=) Core.<$> textParagraph
          ]
      )

-- | An image that is specified by a URL and can have an onclick action.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
  { -- | The aspect ratio of this image (width\/height). This field allows clients to reserve the right height for the image while waiting for it to load. It\'s not meant to override the native aspect ratio of the image. If unset, the server fills it by prefetching the image.
    aspectRatio :: (Core.Maybe Core.Double),
    -- | The URL of the image.
    imageUrl :: (Core.Maybe Core.Text),
    -- | The onclick action.
    onClick :: (Core.Maybe OnClick)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage ::
  Image
newImage =
  Image
    { aspectRatio = Core.Nothing,
      imageUrl = Core.Nothing,
      onClick = Core.Nothing
    }

instance Core.FromJSON Image where
  parseJSON =
    Core.withObject
      "Image"
      ( \o ->
          Image
            Core.<$> (o Core..:? "aspectRatio")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "onClick")
      )

instance Core.ToJSON Image where
  toJSON Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("aspectRatio" Core..=) Core.<$> aspectRatio,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("onClick" Core..=) Core.<$> onClick
          ]
      )

-- | An image button with an onclick action.
--
-- /See:/ 'newImageButton' smart constructor.
data ImageButton = ImageButton
  { -- | The icon specified by an enum that indices to an icon provided by Chat API.
    icon :: (Core.Maybe ImageButton_Icon),
    -- | The icon specified by a URL.
    iconUrl :: (Core.Maybe Core.Text),
    -- | The name of this image_button which will be used for accessibility. Default value will be provided if developers don\'t specify.
    name :: (Core.Maybe Core.Text),
    -- | The onclick action.
    onClick :: (Core.Maybe OnClick)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageButton' with the minimum fields required to make a request.
newImageButton ::
  ImageButton
newImageButton =
  ImageButton
    { icon = Core.Nothing,
      iconUrl = Core.Nothing,
      name = Core.Nothing,
      onClick = Core.Nothing
    }

instance Core.FromJSON ImageButton where
  parseJSON =
    Core.withObject
      "ImageButton"
      ( \o ->
          ImageButton
            Core.<$> (o Core..:? "icon")
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onClick")
      )

instance Core.ToJSON ImageButton where
  toJSON ImageButton {..} =
    Core.object
      ( Core.catMaybes
          [ ("icon" Core..=) Core.<$> icon,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("name" Core..=) Core.<$> name,
            ("onClick" Core..=) Core.<$> onClick
          ]
      )

-- | Types of data inputs for widgets. Users enter data with these inputs.
--
-- /See:/ 'newInputs' smart constructor.
data Inputs = Inputs
  { -- | Date input values. Not supported by Chat apps.
    dateInput :: (Core.Maybe DateInput),
    -- | Date and time input values. Not supported by Chat apps.
    dateTimeInput :: (Core.Maybe DateTimeInput),
    -- | Input parameter for regular widgets. For single-valued widgets, it is a single value list. For multi-valued widgets, such as checkbox, all the values are presented.
    stringInputs :: (Core.Maybe StringInputs),
    -- | Time input values. Not supported by Chat apps.
    timeInput :: (Core.Maybe TimeInput)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Inputs' with the minimum fields required to make a request.
newInputs ::
  Inputs
newInputs =
  Inputs
    { dateInput = Core.Nothing,
      dateTimeInput = Core.Nothing,
      stringInputs = Core.Nothing,
      timeInput = Core.Nothing
    }

instance Core.FromJSON Inputs where
  parseJSON =
    Core.withObject
      "Inputs"
      ( \o ->
          Inputs
            Core.<$> (o Core..:? "dateInput")
            Core.<*> (o Core..:? "dateTimeInput")
            Core.<*> (o Core..:? "stringInputs")
            Core.<*> (o Core..:? "timeInput")
      )

instance Core.ToJSON Inputs where
  toJSON Inputs {..} =
    Core.object
      ( Core.catMaybes
          [ ("dateInput" Core..=) Core.<$> dateInput,
            ("dateTimeInput" Core..=) Core.<$> dateTimeInput,
            ("stringInputs" Core..=) Core.<$> stringInputs,
            ("timeInput" Core..=) Core.<$> timeInput
          ]
      )

-- | A UI element contains a key (label) and a value (content). And this element may also contain some actions such as onclick button.
--
-- /See:/ 'newKeyValue' smart constructor.
data KeyValue = KeyValue
  { -- | The text of the bottom label. Formatted text supported.
    bottomLabel :: (Core.Maybe Core.Text),
    -- | A button that can be clicked to trigger an action.
    button :: (Core.Maybe Button),
    -- | The text of the content. Formatted text supported and always required.
    content :: (Core.Maybe Core.Text),
    -- | If the content should be multiline.
    contentMultiline :: (Core.Maybe Core.Bool),
    -- | An enum value that will be replaced by the Chat API with the corresponding icon image.
    icon :: (Core.Maybe KeyValue_Icon),
    -- | The icon specified by a URL.
    iconUrl :: (Core.Maybe Core.Text),
    -- | The onclick action. Only the top label, bottom label and content region are clickable.
    onClick :: (Core.Maybe OnClick),
    -- | The text of the top label. Formatted text supported.
    topLabel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyValue' with the minimum fields required to make a request.
newKeyValue ::
  KeyValue
newKeyValue =
  KeyValue
    { bottomLabel = Core.Nothing,
      button = Core.Nothing,
      content = Core.Nothing,
      contentMultiline = Core.Nothing,
      icon = Core.Nothing,
      iconUrl = Core.Nothing,
      onClick = Core.Nothing,
      topLabel = Core.Nothing
    }

instance Core.FromJSON KeyValue where
  parseJSON =
    Core.withObject
      "KeyValue"
      ( \o ->
          KeyValue
            Core.<$> (o Core..:? "bottomLabel")
            Core.<*> (o Core..:? "button")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "contentMultiline")
            Core.<*> (o Core..:? "icon")
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "onClick")
            Core.<*> (o Core..:? "topLabel")
      )

instance Core.ToJSON KeyValue where
  toJSON KeyValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("bottomLabel" Core..=) Core.<$> bottomLabel,
            ("button" Core..=) Core.<$> button,
            ("content" Core..=) Core.<$> content,
            ("contentMultiline" Core..=)
              Core.<$> contentMultiline,
            ("icon" Core..=) Core.<$> icon,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("onClick" Core..=) Core.<$> onClick,
            ("topLabel" Core..=) Core.<$> topLabel
          ]
      )

--
-- /See:/ 'newListMembershipsResponse' smart constructor.
data ListMembershipsResponse = ListMembershipsResponse
  { -- | List of memberships in the requested (or first) page.
    memberships :: (Core.Maybe [Membership]),
    -- | A token that can be sent as @pageToken@ to retrieve the next page of results. If empty, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMembershipsResponse' with the minimum fields required to make a request.
newListMembershipsResponse ::
  ListMembershipsResponse
newListMembershipsResponse =
  ListMembershipsResponse
    { memberships = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListMembershipsResponse where
  parseJSON =
    Core.withObject
      "ListMembershipsResponse"
      ( \o ->
          ListMembershipsResponse
            Core.<$> (o Core..:? "memberships")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListMembershipsResponse where
  toJSON ListMembershipsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberships" Core..=) Core.<$> memberships,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListSpacesResponse' smart constructor.
data ListSpacesResponse = ListSpacesResponse
  { -- | A token that can be sent as @pageToken@ to retrieve the next page of results. If empty, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of spaces in the requested (or first) page.
    spaces :: (Core.Maybe [Space])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSpacesResponse' with the minimum fields required to make a request.
newListSpacesResponse ::
  ListSpacesResponse
newListSpacesResponse =
  ListSpacesResponse {nextPageToken = Core.Nothing, spaces = Core.Nothing}

instance Core.FromJSON ListSpacesResponse where
  parseJSON =
    Core.withObject
      "ListSpacesResponse"
      ( \o ->
          ListSpacesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "spaces")
      )

instance Core.ToJSON ListSpacesResponse where
  toJSON ListSpacesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("spaces" Core..=) Core.<$> spaces
          ]
      )

-- | A matched url in a Chat message. Chat apps can preview matched URLs. For more information, refer to <https://developers.google.com/chat/how-tos/preview-links Preview links>.
--
-- /See:/ 'newMatchedUrl' smart constructor.
newtype MatchedUrl = MatchedUrl
  { -- | Output only. The url that was matched.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatchedUrl' with the minimum fields required to make a request.
newMatchedUrl ::
  MatchedUrl
newMatchedUrl = MatchedUrl {url = Core.Nothing}

instance Core.FromJSON MatchedUrl where
  parseJSON =
    Core.withObject
      "MatchedUrl"
      (\o -> MatchedUrl Core.<$> (o Core..:? "url"))

instance Core.ToJSON MatchedUrl where
  toJSON MatchedUrl {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Media resource.
--
-- /See:/ 'newMedia' smart constructor.
newtype Media = Media
  { -- | Name of the media resource.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Media' with the minimum fields required to make a request.
newMedia ::
  Media
newMedia = Media {resourceName = Core.Nothing}

instance Core.FromJSON Media where
  parseJSON =
    Core.withObject
      "Media"
      (\o -> Media Core.<$> (o Core..:? "resourceName"))

instance Core.ToJSON Media where
  toJSON Media {..} =
    Core.object
      ( Core.catMaybes
          [("resourceName" Core..=) Core.<$> resourceName]
      )

-- | Represents a membership relation in Google Chat, such as whether a user or Chat app is invited to, part of, or absent from a space.
--
-- /See:/ 'newMembership' smart constructor.
data Membership = Membership
  { -- | Output only. The creation time of the membership, such as when a member joined or was invited to join a space.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The Google Chat user or app the membership corresponds to.
    member :: (Core.Maybe User),
    -- | Resource name of the membership, assigned by the server. Format: spaces\/{space}\/members\/{member}
    name :: (Core.Maybe Core.Text),
    -- | Output only. User\'s role within a Chat space, which determines their permitted actions in the space.
    role' :: (Core.Maybe Membership_Role),
    -- | Output only. State of the membership.
    state :: (Core.Maybe Membership_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
newMembership ::
  Membership
newMembership =
  Membership
    { createTime = Core.Nothing,
      member = Core.Nothing,
      name = Core.Nothing,
      role' = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Membership where
  parseJSON =
    Core.withObject
      "Membership"
      ( \o ->
          Membership
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "member")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Membership where
  toJSON Membership {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("member" Core..=) Core.<$> member,
            ("name" Core..=) Core.<$> name,
            ("role" Core..=) Core.<$> role',
            ("state" Core..=) Core.<$> state
          ]
      )

-- | A message in Google Chat.
--
-- /See:/ 'newMessage' smart constructor.
data Message = Message
  { -- | Input only. Parameters that a Chat app can use to configure how its response is posted.
    actionResponse :: (Core.Maybe ActionResponse),
    -- | Output only. Annotations associated with the text in this message.
    annotations :: (Core.Maybe [Annotation]),
    -- | Output only. Plain-text body of the message with all Chat app mentions stripped out.
    argumentText :: (Core.Maybe Core.Text),
    -- | User-uploaded attachment.
    attachment :: (Core.Maybe [Attachment]),
    -- | Deprecated: Use @cards_v2@ instead. Rich, formatted and interactive cards that can be used to display UI elements such as: formatted texts, buttons, clickable images. Cards are normally displayed below the plain-text body of the message. @cards@ and @cards_v2@ can have a maximum size of 32 KB.
    cards :: (Core.Maybe [Card]),
    -- | Richly formatted and interactive cards that display UI elements and editable widgets, such as: - Formatted text - Buttons - Clickable images - Checkboxes - Radio buttons - Input widgets. Cards are usually displayed below the text body of a Chat message, but can situationally appear other places, such as <https://developers.google.com/chat/how-tos/dialogs dialogs>. Each card can have a maximum size of 32 KB. The @cardId@ is a unique identifier among cards in the same message and for identifying user input values. Currently supported widgets include: - @TextParagraph@ - @DecoratedText@ - @Image@ - @ButtonList@ - @Divider@ - @TextInput@ - @SelectionInput@ - @Grid@
    cardsV2 :: (Core.Maybe [CardWithId]),
    -- | A custom name for a Chat message assigned at creation. Must start with @client-@ and contain only lowercase letters, numbers, and hyphens up to 63 characters in length. Specify this field to get, update, or delete the message with the specified value. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message Name a created message>.
    clientAssignedMessageId :: (Core.Maybe Core.Text),
    -- | Output only. The time at which the message was created in Google Chat server.
    createTime :: (Core.Maybe Core.DateTime),
    -- | A plain-text description of the message\'s cards, used when the actual cards cannot be displayed (e.g. mobile notifications).
    fallbackText :: (Core.Maybe Core.Text),
    -- | Output only. The time at which the message was last edited by a user. If the message has never been edited, this field is empty.
    lastUpdateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. A URL in @spaces.messages.text@ that matches a link preview pattern. For more information, refer to <https://developers.google.com/chat/how-tos/preview-links Preview links>.
    matchedUrl :: (Core.Maybe MatchedUrl),
    -- | Resource name in the form @spaces\/*\/messages\/*@. Example: @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@
    name :: (Core.Maybe Core.Text),
    -- | Output only. The user who created the message. If your Chat app <https://developers.google.com/chat/api/guides/auth/users authenticates as a user>, the output populates the <https://developers.google.com/chat/api/reference/rest/v1/User user> @name@ and @type@.
    sender :: (Core.Maybe User),
    -- | Output only. Slash command information, if applicable.
    slashCommand :: (Core.Maybe SlashCommand),
    -- | If your Chat app <https://developers.google.com/chat/api/guides/auth/users authenticates as a user>, the output populates the <https://developers.google.com/chat/api/reference/rest/v1/spaces space> @name@.
    space :: (Core.Maybe Space),
    -- | Plain-text body of the message. The first link to an image, video, web page, or other preview-able item generates a preview chip.
    text :: (Core.Maybe Core.Text),
    -- | The thread the message belongs to. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread Start or reply to a message thread>.
    thread :: (Core.Maybe Thread),
    -- | Output only. When @true@, the message is a response in a reply thread. When @false@, the message is visible in the space\'s top-level conversation as either the first message of a thread or a message with no threaded replies. If the space doesn\'t support reply in threads, this field is always @false@.
    threadReply :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
newMessage ::
  Message
newMessage =
  Message
    { actionResponse = Core.Nothing,
      annotations = Core.Nothing,
      argumentText = Core.Nothing,
      attachment = Core.Nothing,
      cards = Core.Nothing,
      cardsV2 = Core.Nothing,
      clientAssignedMessageId = Core.Nothing,
      createTime = Core.Nothing,
      fallbackText = Core.Nothing,
      lastUpdateTime = Core.Nothing,
      matchedUrl = Core.Nothing,
      name = Core.Nothing,
      sender = Core.Nothing,
      slashCommand = Core.Nothing,
      space = Core.Nothing,
      text = Core.Nothing,
      thread = Core.Nothing,
      threadReply = Core.Nothing
    }

instance Core.FromJSON Message where
  parseJSON =
    Core.withObject
      "Message"
      ( \o ->
          Message
            Core.<$> (o Core..:? "actionResponse")
            Core.<*> (o Core..:? "annotations")
            Core.<*> (o Core..:? "argumentText")
            Core.<*> (o Core..:? "attachment")
            Core.<*> (o Core..:? "cards")
            Core.<*> (o Core..:? "cardsV2")
            Core.<*> (o Core..:? "clientAssignedMessageId")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "fallbackText")
            Core.<*> (o Core..:? "lastUpdateTime")
            Core.<*> (o Core..:? "matchedUrl")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sender")
            Core.<*> (o Core..:? "slashCommand")
            Core.<*> (o Core..:? "space")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "thread")
            Core.<*> (o Core..:? "threadReply")
      )

instance Core.ToJSON Message where
  toJSON Message {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionResponse" Core..=) Core.<$> actionResponse,
            ("annotations" Core..=) Core.<$> annotations,
            ("argumentText" Core..=) Core.<$> argumentText,
            ("attachment" Core..=) Core.<$> attachment,
            ("cards" Core..=) Core.<$> cards,
            ("cardsV2" Core..=) Core.<$> cardsV2,
            ("clientAssignedMessageId" Core..=)
              Core.<$> clientAssignedMessageId,
            ("createTime" Core..=) Core.<$> createTime,
            ("fallbackText" Core..=) Core.<$> fallbackText,
            ("lastUpdateTime" Core..=) Core.<$> lastUpdateTime,
            ("matchedUrl" Core..=) Core.<$> matchedUrl,
            ("name" Core..=) Core.<$> name,
            ("sender" Core..=) Core.<$> sender,
            ("slashCommand" Core..=) Core.<$> slashCommand,
            ("space" Core..=) Core.<$> space,
            ("text" Core..=) Core.<$> text,
            ("thread" Core..=) Core.<$> thread,
            ("threadReply" Core..=) Core.<$> threadReply
          ]
      )

-- | An onclick action (e.g. open a link).
--
-- /See:/ 'newOnClick' smart constructor.
data OnClick = OnClick
  { -- | A form action will be triggered by this onclick if specified.
    action :: (Core.Maybe FormAction),
    -- | This onclick triggers an open link action if specified.
    openLink :: (Core.Maybe OpenLink)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OnClick' with the minimum fields required to make a request.
newOnClick ::
  OnClick
newOnClick = OnClick {action = Core.Nothing, openLink = Core.Nothing}

instance Core.FromJSON OnClick where
  parseJSON =
    Core.withObject
      "OnClick"
      ( \o ->
          OnClick
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "openLink")
      )

instance Core.ToJSON OnClick where
  toJSON OnClick {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("openLink" Core..=) Core.<$> openLink
          ]
      )

-- | A link that opens a new window.
--
-- /See:/ 'newOpenLink' smart constructor.
newtype OpenLink = OpenLink
  { -- | The URL to open.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OpenLink' with the minimum fields required to make a request.
newOpenLink ::
  OpenLink
newOpenLink = OpenLink {url = Core.Nothing}

instance Core.FromJSON OpenLink where
  parseJSON =
    Core.withObject
      "OpenLink"
      (\o -> OpenLink Core.<$> (o Core..:? "url"))

instance Core.ToJSON OpenLink where
  toJSON OpenLink {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | A section contains a collection of widgets that are rendered (vertically) in the order that they are specified. Across all platforms, cards have a narrow fixed width, so there is currently no need for layout properties (e.g. float).
--
-- /See:/ 'newSection' smart constructor.
data Section = Section
  { -- | The header of the section, text formatted supported.
    header :: (Core.Maybe Core.Text),
    -- | A section must contain at least 1 widget.
    widgets :: (Core.Maybe [WidgetMarkup])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Section' with the minimum fields required to make a request.
newSection ::
  Section
newSection = Section {header = Core.Nothing, widgets = Core.Nothing}

instance Core.FromJSON Section where
  parseJSON =
    Core.withObject
      "Section"
      ( \o ->
          Section
            Core.<$> (o Core..:? "header")
            Core.<*> (o Core..:? "widgets")
      )

instance Core.ToJSON Section where
  toJSON Section {..} =
    Core.object
      ( Core.catMaybes
          [ ("header" Core..=) Core.<$> header,
            ("widgets" Core..=) Core.<$> widgets
          ]
      )

-- | A <https://developers.google.com/chat/how-tos/slash-commands slash command> in Google Chat.
--
-- /See:/ 'newSlashCommand' smart constructor.
newtype SlashCommand = SlashCommand
  { -- | The id of the slash command invoked.
    commandId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlashCommand' with the minimum fields required to make a request.
newSlashCommand ::
  SlashCommand
newSlashCommand = SlashCommand {commandId = Core.Nothing}

instance Core.FromJSON SlashCommand where
  parseJSON =
    Core.withObject
      "SlashCommand"
      ( \o ->
          SlashCommand
            Core.<$> ( o Core..:? "commandId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON SlashCommand where
  toJSON SlashCommand {..} =
    Core.object
      ( Core.catMaybes
          [ ("commandId" Core..=) Core.. Core.AsText
              Core.<$> commandId
          ]
      )

-- | Annotation metadata for slash commands (\/).
--
-- /See:/ 'newSlashCommandMetadata' smart constructor.
data SlashCommandMetadata = SlashCommandMetadata
  { -- | The Chat app whose command was invoked.
    bot :: (Core.Maybe User),
    -- | The command id of the invoked slash command.
    commandId :: (Core.Maybe Core.Int64),
    -- | The name of the invoked slash command.
    commandName :: (Core.Maybe Core.Text),
    -- | Indicating whether the slash command is for a dialog.
    triggersDialog :: (Core.Maybe Core.Bool),
    -- | The type of slash command.
    type' :: (Core.Maybe SlashCommandMetadata_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlashCommandMetadata' with the minimum fields required to make a request.
newSlashCommandMetadata ::
  SlashCommandMetadata
newSlashCommandMetadata =
  SlashCommandMetadata
    { bot = Core.Nothing,
      commandId = Core.Nothing,
      commandName = Core.Nothing,
      triggersDialog = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SlashCommandMetadata where
  parseJSON =
    Core.withObject
      "SlashCommandMetadata"
      ( \o ->
          SlashCommandMetadata
            Core.<$> (o Core..:? "bot")
            Core.<*> ( o Core..:? "commandId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "commandName")
            Core.<*> (o Core..:? "triggersDialog")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SlashCommandMetadata where
  toJSON SlashCommandMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("bot" Core..=) Core.<$> bot,
            ("commandId" Core..=) Core.. Core.AsText
              Core.<$> commandId,
            ("commandName" Core..=) Core.<$> commandName,
            ("triggersDialog" Core..=) Core.<$> triggersDialog,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A space in Google Chat. Spaces are conversations between two or more users or 1:1 messages between a user and a Chat app.
--
-- /See:/ 'newSpace' smart constructor.
data Space = Space
  { -- | Output only. Whether the Chat app was installed by a Google Workspace administrator. Administrators can install a Chat app for their domain, organizational unit, or a group of users. Administrators can only install Chat apps for direct messaging between users and the app. To support admin install, your app must feature direct messaging.
    adminInstalled :: (Core.Maybe Core.Bool),
    -- | The space\'s display name. Required when <https://developers.google.com/chat/api/reference/rest/v1/spaces/create creating a space>. For direct messages, this field may be empty. Supports up to 128 characters.
    displayName :: (Core.Maybe Core.Text),
    -- | Resource name of the space. Format: spaces\/{space}
    name :: (Core.Maybe Core.Text),
    -- | Optional. Whether the space is a DM between a Chat app and a single human.
    singleUserBotDm :: (Core.Maybe Core.Bool),
    -- | Details about the space including description and rules.
    spaceDetails :: (Core.Maybe SpaceDetails),
    -- | Output only. The threading state in the Chat space.
    spaceThreadingState :: (Core.Maybe Space_SpaceThreadingState),
    -- | Output only. Deprecated: Use @spaceThreadingState@ instead. Whether messages are threaded in this space.
    threaded :: (Core.Maybe Core.Bool),
    -- | Output only. Deprecated: Use @singleUserBotDm@ or @spaceType@ (developer preview) instead. The type of a space.
    type' :: (Core.Maybe Space_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Space' with the minimum fields required to make a request.
newSpace ::
  Space
newSpace =
  Space
    { adminInstalled = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      singleUserBotDm = Core.Nothing,
      spaceDetails = Core.Nothing,
      spaceThreadingState = Core.Nothing,
      threaded = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Space where
  parseJSON =
    Core.withObject
      "Space"
      ( \o ->
          Space
            Core.<$> (o Core..:? "adminInstalled")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "singleUserBotDm")
            Core.<*> (o Core..:? "spaceDetails")
            Core.<*> (o Core..:? "spaceThreadingState")
            Core.<*> (o Core..:? "threaded")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Space where
  toJSON Space {..} =
    Core.object
      ( Core.catMaybes
          [ ("adminInstalled" Core..=) Core.<$> adminInstalled,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("singleUserBotDm" Core..=) Core.<$> singleUserBotDm,
            ("spaceDetails" Core..=) Core.<$> spaceDetails,
            ("spaceThreadingState" Core..=)
              Core.<$> spaceThreadingState,
            ("threaded" Core..=) Core.<$> threaded,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Details about the space including description and rules.
--
-- /See:/ 'newSpaceDetails' smart constructor.
data SpaceDetails = SpaceDetails
  { -- | Optional. A description of the space. It could describe the space\'s discussion topic, functional purpose, or participants. Supports up to 150 characters.
    description :: (Core.Maybe Core.Text),
    -- | Optional. The space\'s rules, expectations, and etiquette. Supports up to 5,000 characters.
    guidelines :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceDetails' with the minimum fields required to make a request.
newSpaceDetails ::
  SpaceDetails
newSpaceDetails =
  SpaceDetails {description = Core.Nothing, guidelines = Core.Nothing}

instance Core.FromJSON SpaceDetails where
  parseJSON =
    Core.withObject
      "SpaceDetails"
      ( \o ->
          SpaceDetails
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "guidelines")
      )

instance Core.ToJSON SpaceDetails where
  toJSON SpaceDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("guidelines" Core..=) Core.<$> guidelines
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Input parameter for regular widgets. For single-valued widgets, it is a single value list. For multi-valued widgets, such as checkbox, all the values are presented.
--
-- /See:/ 'newStringInputs' smart constructor.
newtype StringInputs = StringInputs
  { -- | An array of strings entered by the user.
    value :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StringInputs' with the minimum fields required to make a request.
newStringInputs ::
  StringInputs
newStringInputs = StringInputs {value = Core.Nothing}

instance Core.FromJSON StringInputs where
  parseJSON =
    Core.withObject
      "StringInputs"
      (\o -> StringInputs Core.<$> (o Core..:? "value"))

instance Core.ToJSON StringInputs where
  toJSON StringInputs {..} =
    Core.object
      (Core.catMaybes [("value" Core..=) Core.<$> value])

-- | A button with text and onclick action.
--
-- /See:/ 'newTextButton' smart constructor.
data TextButton = TextButton
  { -- | The onclick action of the button.
    onClick :: (Core.Maybe OnClick),
    -- | The text of the button.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextButton' with the minimum fields required to make a request.
newTextButton ::
  TextButton
newTextButton = TextButton {onClick = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON TextButton where
  parseJSON =
    Core.withObject
      "TextButton"
      ( \o ->
          TextButton
            Core.<$> (o Core..:? "onClick") Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON TextButton where
  toJSON TextButton {..} =
    Core.object
      ( Core.catMaybes
          [ ("onClick" Core..=) Core.<$> onClick,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | A paragraph of text. Formatted text supported.
--
-- /See:/ 'newTextParagraph' smart constructor.
newtype TextParagraph = TextParagraph
  { -- |
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextParagraph' with the minimum fields required to make a request.
newTextParagraph ::
  TextParagraph
newTextParagraph = TextParagraph {text = Core.Nothing}

instance Core.FromJSON TextParagraph where
  parseJSON =
    Core.withObject
      "TextParagraph"
      (\o -> TextParagraph Core.<$> (o Core..:? "text"))

instance Core.ToJSON TextParagraph where
  toJSON TextParagraph {..} =
    Core.object
      (Core.catMaybes [("text" Core..=) Core.<$> text])

-- | A thread in Google Chat.
--
-- /See:/ 'newThread' smart constructor.
data Thread = Thread
  { -- | Resource name of the thread. Example: spaces\/{space}\/threads\/{thread}
    name :: (Core.Maybe Core.Text),
    -- | Optional. Opaque thread identifier. To start or add to a thread, create a message and specify a @threadKey@ or the thread.name. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread Start or reply to a message thread>. For other requests, this is an output only field.
    threadKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Thread' with the minimum fields required to make a request.
newThread ::
  Thread
newThread = Thread {name = Core.Nothing, threadKey = Core.Nothing}

instance Core.FromJSON Thread where
  parseJSON =
    Core.withObject
      "Thread"
      ( \o ->
          Thread
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "threadKey")
      )

instance Core.ToJSON Thread where
  toJSON Thread {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("threadKey" Core..=) Core.<$> threadKey
          ]
      )

-- | Time input values. Not supported by Chat apps.
--
-- /See:/ 'newTimeInput' smart constructor.
data TimeInput = TimeInput
  { -- | The hour on a 24-hour clock.
    hours :: (Core.Maybe Core.Int32),
    -- | The number of minutes past the hour. Valid values are 0 to 59.
    minutes :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeInput' with the minimum fields required to make a request.
newTimeInput ::
  TimeInput
newTimeInput = TimeInput {hours = Core.Nothing, minutes = Core.Nothing}

instance Core.FromJSON TimeInput where
  parseJSON =
    Core.withObject
      "TimeInput"
      ( \o ->
          TimeInput
            Core.<$> (o Core..:? "hours") Core.<*> (o Core..:? "minutes")
      )

instance Core.ToJSON TimeInput where
  toJSON TimeInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes
          ]
      )

-- | The timezone ID and offset from Coordinated Universal Time (UTC). Not supported by Chat apps.
--
-- /See:/ 'newTimeZone' smart constructor.
data TimeZone = TimeZone
  { -- | The <https://www.iana.org/time-zones IANA TZ> time zone database code, such as \"America\/Toronto\".
    id :: (Core.Maybe Core.Text),
    -- | The user timezone offset, in milliseconds, from Coordinated Universal Time (UTC).
    offset :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeZone' with the minimum fields required to make a request.
newTimeZone ::
  TimeZone
newTimeZone = TimeZone {id = Core.Nothing, offset = Core.Nothing}

instance Core.FromJSON TimeZone where
  parseJSON =
    Core.withObject
      "TimeZone"
      ( \o ->
          TimeZone
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "offset")
      )

instance Core.ToJSON TimeZone where
  toJSON TimeZone {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("offset" Core..=) Core.<$> offset
          ]
      )

-- | A user in Google Chat.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | Output only. The user\'s display name.
    displayName :: (Core.Maybe Core.Text),
    -- | Unique identifier of the user\'s Google Workspace domain.
    domainId :: (Core.Maybe Core.Text),
    -- | Output only. When @true@, the user is deleted or their profile is not visible.
    isAnonymous :: (Core.Maybe Core.Bool),
    -- | Resource name for a Google Chat user. Format: @users\/{user}@. @users\/app@ can be used as an alias for the calling app bot user. For human users, @{user}@ is the same user identifier as: - the @{person_id@} for the <https://developers.google.com/people/api/rest/v1/people Person> in the People API, where the Person @resource_name@ is @people\/{person_id}@. For example, @users\/123456789@ in Chat API represents the same person as @people\/123456789@ in People API. - the @id@ for a <https://developers.google.com/admin-sdk/directory/reference/rest/v1/users user> in the Admin SDK Directory API.
    name :: (Core.Maybe Core.Text),
    -- | User type.
    type' :: (Core.Maybe User_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { displayName = Core.Nothing,
      domainId = Core.Nothing,
      isAnonymous = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "domainId")
            Core.<*> (o Core..:? "isAnonymous")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("domainId" Core..=) Core.<$> domainId,
            ("isAnonymous" Core..=) Core.<$> isAnonymous,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Annotation metadata for user mentions (\@).
--
-- /See:/ 'newUserMentionMetadata' smart constructor.
data UserMentionMetadata = UserMentionMetadata
  { -- | The type of user mention.
    type' :: (Core.Maybe UserMentionMetadata_Type),
    -- | The user mentioned.
    user :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserMentionMetadata' with the minimum fields required to make a request.
newUserMentionMetadata ::
  UserMentionMetadata
newUserMentionMetadata =
  UserMentionMetadata {type' = Core.Nothing, user = Core.Nothing}

instance Core.FromJSON UserMentionMetadata where
  parseJSON =
    Core.withObject
      "UserMentionMetadata"
      ( \o ->
          UserMentionMetadata
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON UserMentionMetadata where
  toJSON UserMentionMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("user" Core..=) Core.<$> user
          ]
      )

-- | A widget is a UI element that presents texts, images, etc.
--
-- /See:/ 'newWidgetMarkup' smart constructor.
data WidgetMarkup = WidgetMarkup
  { -- | A list of buttons. Buttons is also oneof data and only one of these fields should be set.
    buttons :: (Core.Maybe [Button]),
    -- | Display an image in this widget.
    image :: (Core.Maybe Image),
    -- | Display a key value item in this widget.
    keyValue :: (Core.Maybe KeyValue),
    -- | Display a text paragraph in this widget.
    textParagraph :: (Core.Maybe TextParagraph)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WidgetMarkup' with the minimum fields required to make a request.
newWidgetMarkup ::
  WidgetMarkup
newWidgetMarkup =
  WidgetMarkup
    { buttons = Core.Nothing,
      image = Core.Nothing,
      keyValue = Core.Nothing,
      textParagraph = Core.Nothing
    }

instance Core.FromJSON WidgetMarkup where
  parseJSON =
    Core.withObject
      "WidgetMarkup"
      ( \o ->
          WidgetMarkup
            Core.<$> (o Core..:? "buttons")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "keyValue")
            Core.<*> (o Core..:? "textParagraph")
      )

instance Core.ToJSON WidgetMarkup where
  toJSON WidgetMarkup {..} =
    Core.object
      ( Core.catMaybes
          [ ("buttons" Core..=) Core.<$> buttons,
            ("image" Core..=) Core.<$> image,
            ("keyValue" Core..=) Core.<$> keyValue,
            ("textParagraph" Core..=) Core.<$> textParagraph
          ]
      )
