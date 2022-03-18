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
-- Module      : Network.Google.Mirror.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Mirror.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * Attachment
    Attachment (..),
    newAttachment,

    -- * AttachmentsListResponse
    AttachmentsListResponse (..),
    newAttachmentsListResponse,

    -- * AuthToken
    AuthToken (..),
    newAuthToken,

    -- * Command
    Command (..),
    newCommand,

    -- * Contact
    Contact (..),
    newContact,

    -- * ContactsListResponse
    ContactsListResponse (..),
    newContactsListResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * LocationsListResponse
    LocationsListResponse (..),
    newLocationsListResponse,

    -- * MenuItem
    MenuItem (..),
    newMenuItem,

    -- * MenuValue
    MenuValue (..),
    newMenuValue,

    -- * Notification
    Notification (..),
    newNotification,

    -- * NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- * Setting
    Setting (..),
    newSetting,

    -- * Subscription
    Subscription (..),
    newSubscription,

    -- * SubscriptionsListResponse
    SubscriptionsListResponse (..),
    newSubscriptionsListResponse,

    -- * TimelineItem
    TimelineItem (..),
    newTimelineItem,

    -- * TimelineListResponse
    TimelineListResponse (..),
    newTimelineListResponse,

    -- * UserAction
    UserAction (..),
    newUserAction,

    -- * UserData
    UserData (..),
    newUserData,
  )
where

import Network.Google.Mirror.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Represents an account passed into the Account Manager on Glass.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- |
    authTokens :: (Core.Maybe [AuthToken]),
    -- |
    features :: (Core.Maybe [Core.Text]),
    -- |
    password :: (Core.Maybe Core.Text),
    -- |
    userData :: (Core.Maybe [UserData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount =
  Account
    { authTokens = Core.Nothing,
      features = Core.Nothing,
      password = Core.Nothing,
      userData = Core.Nothing
    }

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      ( \o ->
          Account
            Core.<$> (o Core..:? "authTokens" Core..!= Core.mempty)
            Core.<*> (o Core..:? "features" Core..!= Core.mempty)
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "userData" Core..!= Core.mempty)
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("authTokens" Core..=) Core.<$> authTokens,
            ("features" Core..=) Core.<$> features,
            ("password" Core..=) Core.<$> password,
            ("userData" Core..=) Core.<$> userData
          ]
      )

-- | Represents media content, such as a photo, that can be attached to a timeline item.
--
-- /See:/ 'newAttachment' smart constructor.
data Attachment = Attachment
  { -- | The MIME type of the attachment.
    contentType :: (Core.Maybe Core.Text),
    -- | The URL for the content.
    contentUrl :: (Core.Maybe Core.Text),
    -- | The ID of the attachment.
    id :: (Core.Maybe Core.Text),
    -- | Indicates that the contentUrl is not available because the attachment content is still being processed. If the caller wishes to retrieve the content, it should try again later.
    isProcessingContent :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
newAttachment ::
  Attachment
newAttachment =
  Attachment
    { contentType = Core.Nothing,
      contentUrl = Core.Nothing,
      id = Core.Nothing,
      isProcessingContent = Core.Nothing
    }

instance Core.FromJSON Attachment where
  parseJSON =
    Core.withObject
      "Attachment"
      ( \o ->
          Attachment
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "contentUrl")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isProcessingContent")
      )

instance Core.ToJSON Attachment where
  toJSON Attachment {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("contentUrl" Core..=) Core.<$> contentUrl,
            ("id" Core..=) Core.<$> id,
            ("isProcessingContent" Core..=)
              Core.<$> isProcessingContent
          ]
      )

-- | A list of Attachments. This is the response from the server to GET requests on the attachments collection.
--
-- /See:/ 'newAttachmentsListResponse' smart constructor.
data AttachmentsListResponse = AttachmentsListResponse
  { -- | The list of attachments.
    items :: (Core.Maybe [Attachment]),
    -- | The type of resource. This is always mirror#attachmentsList.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttachmentsListResponse' with the minimum fields required to make a request.
newAttachmentsListResponse ::
  AttachmentsListResponse
newAttachmentsListResponse =
  AttachmentsListResponse
    { items = Core.Nothing,
      kind = "mirror#attachmentsList"
    }

instance Core.FromJSON AttachmentsListResponse where
  parseJSON =
    Core.withObject
      "AttachmentsListResponse"
      ( \o ->
          AttachmentsListResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "mirror#attachmentsList"
                     )
      )

instance Core.ToJSON AttachmentsListResponse where
  toJSON AttachmentsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newAuthToken' smart constructor.
data AuthToken = AuthToken
  { -- |
    authToken :: (Core.Maybe Core.Text),
    -- |
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthToken' with the minimum fields required to make a request.
newAuthToken ::
  AuthToken
newAuthToken = AuthToken {authToken = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON AuthToken where
  parseJSON =
    Core.withObject
      "AuthToken"
      ( \o ->
          AuthToken
            Core.<$> (o Core..:? "authToken")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AuthToken where
  toJSON AuthToken {..} =
    Core.object
      ( Core.catMaybes
          [ ("authToken" Core..=) Core.<$> authToken,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A single menu command that is part of a Contact.
--
-- /See:/ 'newCommand' smart constructor.
newtype Command = Command
  { -- | The type of operation this command corresponds to. Allowed values are:
    -- - TAKE/A/NOTE - Shares a timeline item with the transcription of user speech from the \"Take a note\" voice menu command.
    -- - POST/AN/UPDATE - Shares a timeline item with the transcription of user speech from the \"Post an update\" voice menu command.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Command' with the minimum fields required to make a request.
newCommand ::
  Command
newCommand = Command {type' = Core.Nothing}

instance Core.FromJSON Command where
  parseJSON =
    Core.withObject
      "Command"
      (\o -> Command Core.<$> (o Core..:? "type"))

instance Core.ToJSON Command where
  toJSON Command {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | A person or group that can be used as a creator or a contact.
--
-- /See:/ 'newContact' smart constructor.
data Contact = Contact
  { -- | A list of voice menu commands that a contact can handle. Glass shows up to three contacts for each voice menu command. If there are more than that, the three contacts with the highest priority are shown for that particular command.
    acceptCommands :: (Core.Maybe [Command]),
    -- | A list of MIME types that a contact supports. The contact will be shown to the user if any of its acceptTypes matches any of the types of the attachments on the item. If no acceptTypes are given, the contact will be shown for all items.
    acceptTypes :: (Core.Maybe [Core.Text]),
    -- | The name to display for this contact.
    displayName :: (Core.Maybe Core.Text),
    -- | An ID for this contact. This is generated by the application and is treated as an opaque token.
    id :: (Core.Maybe Core.Text),
    -- | Set of image URLs to display for a contact. Most contacts will have a single image, but a \"group\" contact may include up to 8 image URLs and they will be resized and cropped into a mosaic on the client.
    imageUrls :: (Core.Maybe [Core.Text]),
    -- | The type of resource. This is always mirror#contact.
    kind :: Core.Text,
    -- | Primary phone number for the contact. This can be a fully-qualified number, with country calling code and area code, or a local number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Priority for the contact to determine ordering in a list of contacts. Contacts with higher priorities will be shown before ones with lower priorities.
    priority :: (Core.Maybe Core.Word32),
    -- | A list of sharing features that a contact can handle. Allowed values are:
    -- - ADD_CAPTION
    sharingFeatures :: (Core.Maybe [Core.Text]),
    -- | The ID of the application that created this contact. This is populated by the API
    source :: (Core.Maybe Core.Text),
    -- | Name of this contact as it should be pronounced. If this contact\'s name must be spoken as part of a voice disambiguation menu, this name is used as the expected pronunciation. This is useful for contact names with unpronounceable characters or whose display spelling is otherwise not phonetic.
    speakableName :: (Core.Maybe Core.Text),
    -- | The type for this contact. This is used for sorting in UIs. Allowed values are:
    -- - INDIVIDUAL - Represents a single person. This is the default. - GROUP - Represents more than a single person.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Contact' with the minimum fields required to make a request.
newContact ::
  Contact
newContact =
  Contact
    { acceptCommands = Core.Nothing,
      acceptTypes = Core.Nothing,
      displayName = Core.Nothing,
      id = Core.Nothing,
      imageUrls = Core.Nothing,
      kind = "mirror#contact",
      phoneNumber = Core.Nothing,
      priority = Core.Nothing,
      sharingFeatures = Core.Nothing,
      source = Core.Nothing,
      speakableName = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Contact where
  parseJSON =
    Core.withObject
      "Contact"
      ( \o ->
          Contact
            Core.<$> (o Core..:? "acceptCommands" Core..!= Core.mempty)
            Core.<*> (o Core..:? "acceptTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "imageUrls" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "mirror#contact")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "priority")
            Core.<*> (o Core..:? "sharingFeatures" Core..!= Core.mempty)
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "speakableName")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Contact where
  toJSON Contact {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceptCommands" Core..=) Core.<$> acceptCommands,
            ("acceptTypes" Core..=) Core.<$> acceptTypes,
            ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("imageUrls" Core..=) Core.<$> imageUrls,
            Core.Just ("kind" Core..= kind),
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("priority" Core..=) Core.<$> priority,
            ("sharingFeatures" Core..=) Core.<$> sharingFeatures,
            ("source" Core..=) Core.<$> source,
            ("speakableName" Core..=) Core.<$> speakableName,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A list of Contacts representing contacts. This is the response from the server to GET requests on the contacts collection.
--
-- /See:/ 'newContactsListResponse' smart constructor.
data ContactsListResponse = ContactsListResponse
  { -- | Contact list.
    items :: (Core.Maybe [Contact]),
    -- | The type of resource. This is always mirror#contacts.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactsListResponse' with the minimum fields required to make a request.
newContactsListResponse ::
  ContactsListResponse
newContactsListResponse =
  ContactsListResponse {items = Core.Nothing, kind = "mirror#contacts"}

instance Core.FromJSON ContactsListResponse where
  parseJSON =
    Core.withObject
      "ContactsListResponse"
      ( \o ->
          ContactsListResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "mirror#contacts")
      )

instance Core.ToJSON ContactsListResponse where
  toJSON ContactsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A geographic location that can be associated with a timeline item.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The accuracy of the location fix in meters.
    accuracy :: (Core.Maybe Core.Double),
    -- | The full address of the location.
    address :: (Core.Maybe Core.Text),
    -- | The name to be displayed. This may be a business name or a user-defined place, such as \"Home\".
    displayName :: (Core.Maybe Core.Text),
    -- | The ID of the location.
    id :: (Core.Maybe Core.Text),
    -- | The type of resource. This is always mirror#location.
    kind :: Core.Text,
    -- | The latitude, in degrees.
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude, in degrees.
    longitude :: (Core.Maybe Core.Double),
    -- | The time at which this location was captured, formatted according to RFC 3339.
    timestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { accuracy = Core.Nothing,
      address = Core.Nothing,
      displayName = Core.Nothing,
      id = Core.Nothing,
      kind = "mirror#location",
      latitude = Core.Nothing,
      longitude = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "accuracy")
            Core.<*> (o Core..:? "address")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "mirror#location")
            Core.<*> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("accuracy" Core..=) Core.<$> accuracy,
            ("address" Core..=) Core.<$> address,
            ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | A list of Locations. This is the response from the server to GET requests on the locations collection.
--
-- /See:/ 'newLocationsListResponse' smart constructor.
data LocationsListResponse = LocationsListResponse
  { -- | The list of locations.
    items :: (Core.Maybe [Location]),
    -- | The type of resource. This is always mirror#locationsList.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationsListResponse' with the minimum fields required to make a request.
newLocationsListResponse ::
  LocationsListResponse
newLocationsListResponse =
  LocationsListResponse {items = Core.Nothing, kind = "mirror#locationsList"}

instance Core.FromJSON LocationsListResponse where
  parseJSON =
    Core.withObject
      "LocationsListResponse"
      ( \o ->
          LocationsListResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "mirror#locationsList")
      )

instance Core.ToJSON LocationsListResponse where
  toJSON LocationsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A custom menu item that can be presented to the user by a timeline item.
--
-- /See:/ 'newMenuItem' smart constructor.
data MenuItem = MenuItem
  { -- | Controls the behavior when the user picks the menu option. Allowed values are:
    -- - CUSTOM - Custom action set by the service. When the user selects this menuItem, the API triggers a notification to your callbackUrl with the userActions.type set to CUSTOM and the userActions.payload set to the ID of this menu item. This is the default value. - Built-in actions:
    -- - REPLY - Initiate a reply to the timeline item using the voice recording UI. The creator attribute must be set in the timeline item for this menu to be available. - REPLY/ALL - Same behavior as REPLY. The original timeline item\'s recipients will be added to the reply item. - DELETE - Delete the timeline item. - SHARE - Share the timeline item with the available contacts. - READ/ALOUD - Read the timeline item\'s speakableText aloud; if this field is not set, read the text field; if none of those fields are set, this menu item is ignored. - GET/MEDIA/INPUT - Allow users to provide media payloads to Glassware from a menu item (currently, only transcribed text from voice input is supported). Subscribe to notifications when users invoke this menu item to receive the timeline item ID. Retrieve the media from the timeline item in the payload property. - VOICE/CALL - Initiate a phone call using the timeline item\'s creator.phoneNumber attribute as recipient. - NAVIGATE - Navigate to the timeline item\'s location. -
    -- TOGGLE/PINNED - Toggle the isPinned state of the timeline item. - OPEN/URI - Open the payload of the menu item in the browser. - PLAY/VIDEO - Open the payload of the menu item in the Glass video player. - SEND_MESSAGE - Initiate sending a message to the timeline item\'s creator:
    -- - If the creator.phoneNumber is set and Glass is connected to an Android phone, the message is an SMS. - Otherwise, if the creator.email is set, the message is an email.
    action :: (Core.Maybe Core.Text),
    -- | The ContextualMenus.Command associated with this MenuItem (e.g. READ_ALOUD). The voice label for this command will be displayed in the voice menu and the touch label will be displayed in the touch menu. Note that the default menu value\'s display name will be overriden if you specify this property. Values that do not correspond to a ContextualMenus.Command name will be ignored.
    contextualCommand :: (Core.Maybe Core.Text),
    -- | The ID for this menu item. This is generated by the application and is treated as an opaque token.
    id :: (Core.Maybe Core.Text),
    -- | A generic payload whose meaning changes depending on this MenuItem\'s action.
    -- - When the action is OPEN/URI, the payload is the URL of the website to view. - When the action is PLAY/VIDEO, the payload is the streaming URL of the video - When the action is GET/MEDIA/INPUT, the payload is the text transcription of a user\'s speech input
    payload :: (Core.Maybe Core.Text),
    -- | If set to true on a CUSTOM menu item, that item will be removed from the menu after it is selected.
    removeWhenSelected :: (Core.Maybe Core.Bool),
    -- | For CUSTOM items, a list of values controlling the appearance of the menu item in each of its states. A value for the DEFAULT state must be provided. If the PENDING or CONFIRMED states are missing, they will not be shown.
    values :: (Core.Maybe [MenuValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MenuItem' with the minimum fields required to make a request.
newMenuItem ::
  MenuItem
newMenuItem =
  MenuItem
    { action = Core.Nothing,
      contextualCommand = Core.Nothing,
      id = Core.Nothing,
      payload = Core.Nothing,
      removeWhenSelected = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON MenuItem where
  parseJSON =
    Core.withObject
      "MenuItem"
      ( \o ->
          MenuItem
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "contextual_command")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "removeWhenSelected")
            Core.<*> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON MenuItem where
  toJSON MenuItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("contextual_command" Core..=)
              Core.<$> contextualCommand,
            ("id" Core..=) Core.<$> id,
            ("payload" Core..=) Core.<$> payload,
            ("removeWhenSelected" Core..=)
              Core.<$> removeWhenSelected,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | A single value that is part of a MenuItem.
--
-- /See:/ 'newMenuValue' smart constructor.
data MenuValue = MenuValue
  { -- | The name to display for the menu item. If you specify this property for a built-in menu item, the default contextual voice command for that menu item is not shown.
    displayName :: (Core.Maybe Core.Text),
    -- | URL of an icon to display with the menu item.
    iconUrl :: (Core.Maybe Core.Text),
    -- | The state that this value applies to. Allowed values are:
    -- - DEFAULT - Default value shown when displayed in the menuItems list. - PENDING - Value shown when the menuItem has been selected by the user but can still be cancelled. - CONFIRMED - Value shown when the menuItem has been selected by the user and can no longer be cancelled.
    state :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MenuValue' with the minimum fields required to make a request.
newMenuValue ::
  MenuValue
newMenuValue =
  MenuValue
    { displayName = Core.Nothing,
      iconUrl = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON MenuValue where
  parseJSON =
    Core.withObject
      "MenuValue"
      ( \o ->
          MenuValue
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON MenuValue where
  toJSON MenuValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | A notification delivered by the API.
--
-- /See:/ 'newNotification' smart constructor.
data Notification = Notification
  { -- | The collection that generated the notification.
    collection :: (Core.Maybe Core.Text),
    -- | The ID of the item that generated the notification.
    itemId :: (Core.Maybe Core.Text),
    -- | The type of operation that generated the notification.
    operation :: (Core.Maybe Core.Text),
    -- | A list of actions taken by the user that triggered the notification.
    userActions :: (Core.Maybe [UserAction]),
    -- | The user token provided by the service when it subscribed for notifications.
    userToken :: (Core.Maybe Core.Text),
    -- | The secret verify token provided by the service when it subscribed for notifications.
    verifyToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
newNotification ::
  Notification
newNotification =
  Notification
    { collection = Core.Nothing,
      itemId = Core.Nothing,
      operation = Core.Nothing,
      userActions = Core.Nothing,
      userToken = Core.Nothing,
      verifyToken = Core.Nothing
    }

instance Core.FromJSON Notification where
  parseJSON =
    Core.withObject
      "Notification"
      ( \o ->
          Notification
            Core.<$> (o Core..:? "collection")
            Core.<*> (o Core..:? "itemId")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "userActions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "userToken")
            Core.<*> (o Core..:? "verifyToken")
      )

instance Core.ToJSON Notification where
  toJSON Notification {..} =
    Core.object
      ( Core.catMaybes
          [ ("collection" Core..=) Core.<$> collection,
            ("itemId" Core..=) Core.<$> itemId,
            ("operation" Core..=) Core.<$> operation,
            ("userActions" Core..=) Core.<$> userActions,
            ("userToken" Core..=) Core.<$> userToken,
            ("verifyToken" Core..=) Core.<$> verifyToken
          ]
      )

-- | Controls how notifications for a timeline item are presented to the user.
--
-- /See:/ 'newNotificationConfig' smart constructor.
data NotificationConfig = NotificationConfig
  { -- | The time at which the notification should be delivered.
    deliveryTime :: (Core.Maybe Core.DateTime'),
    -- | Describes how important the notification is. Allowed values are:
    -- - DEFAULT - Notifications of default importance. A chime will be played to alert users.
    level :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
newNotificationConfig ::
  NotificationConfig
newNotificationConfig =
  NotificationConfig {deliveryTime = Core.Nothing, level = Core.Nothing}

instance Core.FromJSON NotificationConfig where
  parseJSON =
    Core.withObject
      "NotificationConfig"
      ( \o ->
          NotificationConfig
            Core.<$> (o Core..:? "deliveryTime")
            Core.<*> (o Core..:? "level")
      )

instance Core.ToJSON NotificationConfig where
  toJSON NotificationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("deliveryTime" Core..=) Core.<$> deliveryTime,
            ("level" Core..=) Core.<$> level
          ]
      )

-- | A setting for Glass.
--
-- /See:/ 'newSetting' smart constructor.
data Setting = Setting
  { -- | The setting\'s ID. The following IDs are valid:
    -- - locale - The key to the user’s language\/locale (BCP 47 identifier) that Glassware should use to render localized content.
    -- - timezone - The key to the user’s current time zone region as defined in the tz database. Example: America\/Los_Angeles.
    id :: (Core.Maybe Core.Text),
    -- | The type of resource. This is always mirror#setting.
    kind :: Core.Text,
    -- | The setting value, as a string.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Setting' with the minimum fields required to make a request.
newSetting ::
  Setting
newSetting =
  Setting {id = Core.Nothing, kind = "mirror#setting", value = Core.Nothing}

instance Core.FromJSON Setting where
  parseJSON =
    Core.withObject
      "Setting"
      ( \o ->
          Setting
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "mirror#setting")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Setting where
  toJSON Setting {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A subscription to events on a collection.
--
-- /See:/ 'newSubscription' smart constructor.
data Subscription = Subscription
  { -- | The URL where notifications should be delivered (must start with https:\/\/).
    callbackUrl :: (Core.Maybe Core.Text),
    -- | The collection to subscribe to. Allowed values are:
    -- - timeline - Changes in the timeline including insertion, deletion, and updates. - locations - Location updates. - settings - Settings updates.
    collection :: (Core.Maybe Core.Text),
    -- | The ID of the subscription.
    id :: (Core.Maybe Core.Text),
    -- | The type of resource. This is always mirror#subscription.
    kind :: Core.Text,
    -- | Container object for notifications. This is not populated in the Subscription resource.
    notification :: (Core.Maybe Notification),
    -- | A list of operations that should be subscribed to. An empty list indicates that all operations on the collection should be subscribed to. Allowed values are:
    -- - UPDATE - The item has been updated. - INSERT - A new item has been inserted. - DELETE - The item has been deleted. - MENU_ACTION - A custom menu item has been triggered by the user.
    operation :: (Core.Maybe [Core.Text]),
    -- | The time at which this subscription was last modified, formatted according to RFC 3339.
    updated :: (Core.Maybe Core.DateTime'),
    -- | An opaque token sent to the subscriber in notifications so that it can determine the ID of the user.
    userToken :: (Core.Maybe Core.Text),
    -- | A secret token sent to the subscriber in notifications so that it can verify that the notification was generated by Google.
    verifyToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
newSubscription ::
  Subscription
newSubscription =
  Subscription
    { callbackUrl = Core.Nothing,
      collection = Core.Nothing,
      id = Core.Nothing,
      kind = "mirror#subscription",
      notification = Core.Nothing,
      operation = Core.Nothing,
      updated = Core.Nothing,
      userToken = Core.Nothing,
      verifyToken = Core.Nothing
    }

instance Core.FromJSON Subscription where
  parseJSON =
    Core.withObject
      "Subscription"
      ( \o ->
          Subscription
            Core.<$> (o Core..:? "callbackUrl")
            Core.<*> (o Core..:? "collection")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "mirror#subscription")
            Core.<*> (o Core..:? "notification")
            Core.<*> (o Core..:? "operation" Core..!= Core.mempty)
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "userToken")
            Core.<*> (o Core..:? "verifyToken")
      )

instance Core.ToJSON Subscription where
  toJSON Subscription {..} =
    Core.object
      ( Core.catMaybes
          [ ("callbackUrl" Core..=) Core.<$> callbackUrl,
            ("collection" Core..=) Core.<$> collection,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("notification" Core..=) Core.<$> notification,
            ("operation" Core..=) Core.<$> operation,
            ("updated" Core..=) Core.<$> updated,
            ("userToken" Core..=) Core.<$> userToken,
            ("verifyToken" Core..=) Core.<$> verifyToken
          ]
      )

-- | A list of Subscriptions. This is the response from the server to GET requests on the subscription collection.
--
-- /See:/ 'newSubscriptionsListResponse' smart constructor.
data SubscriptionsListResponse = SubscriptionsListResponse
  { -- | The list of subscriptions.
    items :: (Core.Maybe [Subscription]),
    -- | The type of resource. This is always mirror#subscriptionsList.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionsListResponse' with the minimum fields required to make a request.
newSubscriptionsListResponse ::
  SubscriptionsListResponse
newSubscriptionsListResponse =
  SubscriptionsListResponse
    { items = Core.Nothing,
      kind = "mirror#subscriptionsList"
    }

instance Core.FromJSON SubscriptionsListResponse where
  parseJSON =
    Core.withObject
      "SubscriptionsListResponse"
      ( \o ->
          SubscriptionsListResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "mirror#subscriptionsList"
                     )
      )

instance Core.ToJSON SubscriptionsListResponse where
  toJSON SubscriptionsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | Each item in the user\'s timeline is represented as a TimelineItem JSON structure, described below.
--
-- /See:/ 'newTimelineItem' smart constructor.
data TimelineItem = TimelineItem
  { -- | A list of media attachments associated with this item. As a convenience, you can refer to attachments in your HTML payloads with the attachment or cid scheme. For example:
    -- - attachment: \<img src=\"attachment:attachment/index\"> where attachment/index is the 0-based index of this array. - cid: \<img src=\"cid:attachment/id\"> where attachment/id is the ID of the attachment.
    attachments :: (Core.Maybe [Attachment]),
    -- | The bundle ID for this item. Services can specify a bundleId to group many items together. They appear under a single top-level item on the device.
    bundleId :: (Core.Maybe Core.Text),
    -- | A canonical URL pointing to the canonical\/high quality version of the data represented by the timeline item.
    canonicalUrl :: (Core.Maybe Core.Text),
    -- | The time at which this item was created, formatted according to RFC 3339.
    created :: (Core.Maybe Core.DateTime'),
    -- | The user or group that created this item.
    creator :: (Core.Maybe Contact),
    -- | The time that should be displayed when this item is viewed in the timeline, formatted according to RFC 3339. This user\'s timeline is sorted chronologically on display time, so this will also determine where the item is displayed in the timeline. If not set by the service, the display time defaults to the updated time.
    displayTime :: (Core.Maybe Core.DateTime'),
    -- | ETag for this item.
    etag :: (Core.Maybe Core.Text),
    -- | HTML content for this item. If both text and html are provided for an item, the html will be rendered in the timeline. Allowed HTML elements - You can use these elements in your timeline cards.
    --
    -- -   Headers: h1, h2, h3, h4, h5, h6
    --
    -- -   Images: img
    --
    -- -   Lists: li, ol, ul
    --
    -- -   HTML5 semantics: article, aside, details, figure, figcaption, footer, header, nav, section, summary, time
    --
    -- -   Structural: blockquote, br, div, hr, p, span
    --
    -- -   Style: b, big, center, em, i, u, s, small, strike, strong, style, sub, sup
    --
    -- -   Tables: table, tbody, td, tfoot, th, thead, tr
    --     Blocked HTML elements: These elements and their contents are removed from HTML payloads.
    --
    -- -   Document headers: head, title
    --
    -- -   Embeds: audio, embed, object, source, video
    --
    -- -   Frames: frame, frameset
    --
    -- -   Scripting: applet, script
    --     Other elements: Any elements that aren\'t listed are removed, but their contents are preserved.
    html :: (Core.Maybe Core.Text),
    -- | The ID of the timeline item. This is unique within a user\'s timeline.
    id :: (Core.Maybe Core.Text),
    -- | If this item was generated as a reply to another item, this field will be set to the ID of the item being replied to. This can be used to attach a reply to the appropriate conversation or post.
    inReplyTo :: (Core.Maybe Core.Text),
    -- | Whether this item is a bundle cover.
    --
    -- If an item is marked as a bundle cover, it will be the entry point to the bundle of items that have the same bundleId as that item. It will be shown only on the main timeline — not within the opened bundle.
    --
    -- On the main timeline, items that are shown are:
    -- - Items that have isBundleCover set to true
    -- - Items that do not have a bundleId In a bundle sub-timeline, items that are shown are:
    -- - Items that have the bundleId in question AND isBundleCover set to false
    isBundleCover :: (Core.Maybe Core.Bool),
    -- | When true, indicates this item is deleted, and only the ID property is set.
    isDeleted :: (Core.Maybe Core.Bool),
    -- | When true, indicates this item is pinned, which means it\'s grouped alongside \"active\" items like navigation and hangouts, on the opposite side of the home screen from historical (non-pinned) timeline items. You can allow the user to toggle the value of this property with the TOGGLE_PINNED built-in menu item.
    isPinned :: (Core.Maybe Core.Bool),
    -- | The type of resource. This is always mirror#timelineItem.
    kind :: Core.Text,
    -- | The geographic location associated with this item.
    location :: (Core.Maybe Location),
    -- | A list of menu items that will be presented to the user when this item is selected in the timeline.
    menuItems :: (Core.Maybe [MenuItem]),
    -- | Controls how notifications for this item are presented on the device. If this is missing, no notification will be generated.
    notification :: (Core.Maybe NotificationConfig),
    -- | For pinned items, this determines the order in which the item is displayed in the timeline, with a higher score appearing closer to the clock. Note: setting this field is currently not supported.
    pinScore :: (Core.Maybe Core.Int32),
    -- | A list of users or groups that this item has been shared with.
    recipients :: (Core.Maybe [Contact]),
    -- | A URL that can be used to retrieve this item.
    selfLink :: (Core.Maybe Core.Text),
    -- | Opaque string you can use to map a timeline item to data in your own service.
    sourceItemId :: (Core.Maybe Core.Text),
    -- | The speakable version of the content of this item. Along with the READ_ALOUD menu item, use this field to provide text that would be clearer when read aloud, or to provide extended information to what is displayed visually on Glass.
    --
    -- Glassware should also specify the speakableType field, which will be spoken before this text in cases where the additional context is useful, for example when the user requests that the item be read aloud following a notification.
    speakableText :: (Core.Maybe Core.Text),
    -- | A speakable description of the type of this item. This will be announced to the user prior to reading the content of the item in cases where the additional context is useful, for example when the user requests that the item be read aloud following a notification.
    --
    -- This should be a short, simple noun phrase such as \"Email\", \"Text message\", or \"Daily Planet News Update\".
    --
    -- Glassware are encouraged to populate this field for every timeline item, even if the item does not contain speakableText or text so that the user can learn the type of the item without looking at the screen.
    speakableType :: (Core.Maybe Core.Text),
    -- | Text content of this item.
    text :: (Core.Maybe Core.Text),
    -- | The title of this item.
    title :: (Core.Maybe Core.Text),
    -- | The time at which this item was last modified, formatted according to RFC 3339.
    updated :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimelineItem' with the minimum fields required to make a request.
newTimelineItem ::
  TimelineItem
newTimelineItem =
  TimelineItem
    { attachments = Core.Nothing,
      bundleId = Core.Nothing,
      canonicalUrl = Core.Nothing,
      created = Core.Nothing,
      creator = Core.Nothing,
      displayTime = Core.Nothing,
      etag = Core.Nothing,
      html = Core.Nothing,
      id = Core.Nothing,
      inReplyTo = Core.Nothing,
      isBundleCover = Core.Nothing,
      isDeleted = Core.Nothing,
      isPinned = Core.Nothing,
      kind = "mirror#timelineItem",
      location = Core.Nothing,
      menuItems = Core.Nothing,
      notification = Core.Nothing,
      pinScore = Core.Nothing,
      recipients = Core.Nothing,
      selfLink = Core.Nothing,
      sourceItemId = Core.Nothing,
      speakableText = Core.Nothing,
      speakableType = Core.Nothing,
      text = Core.Nothing,
      title = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON TimelineItem where
  parseJSON =
    Core.withObject
      "TimelineItem"
      ( \o ->
          TimelineItem
            Core.<$> (o Core..:? "attachments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bundleId")
            Core.<*> (o Core..:? "canonicalUrl")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "creator")
            Core.<*> (o Core..:? "displayTime")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "html")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "inReplyTo")
            Core.<*> (o Core..:? "isBundleCover")
            Core.<*> (o Core..:? "isDeleted")
            Core.<*> (o Core..:? "isPinned")
            Core.<*> (o Core..:? "kind" Core..!= "mirror#timelineItem")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "menuItems" Core..!= Core.mempty)
            Core.<*> (o Core..:? "notification")
            Core.<*> (o Core..:? "pinScore")
            Core.<*> (o Core..:? "recipients" Core..!= Core.mempty)
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "sourceItemId")
            Core.<*> (o Core..:? "speakableText")
            Core.<*> (o Core..:? "speakableType")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON TimelineItem where
  toJSON TimelineItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachments" Core..=) Core.<$> attachments,
            ("bundleId" Core..=) Core.<$> bundleId,
            ("canonicalUrl" Core..=) Core.<$> canonicalUrl,
            ("created" Core..=) Core.<$> created,
            ("creator" Core..=) Core.<$> creator,
            ("displayTime" Core..=) Core.<$> displayTime,
            ("etag" Core..=) Core.<$> etag,
            ("html" Core..=) Core.<$> html,
            ("id" Core..=) Core.<$> id,
            ("inReplyTo" Core..=) Core.<$> inReplyTo,
            ("isBundleCover" Core..=) Core.<$> isBundleCover,
            ("isDeleted" Core..=) Core.<$> isDeleted,
            ("isPinned" Core..=) Core.<$> isPinned,
            Core.Just ("kind" Core..= kind),
            ("location" Core..=) Core.<$> location,
            ("menuItems" Core..=) Core.<$> menuItems,
            ("notification" Core..=) Core.<$> notification,
            ("pinScore" Core..=) Core.<$> pinScore,
            ("recipients" Core..=) Core.<$> recipients,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("sourceItemId" Core..=) Core.<$> sourceItemId,
            ("speakableText" Core..=) Core.<$> speakableText,
            ("speakableType" Core..=) Core.<$> speakableType,
            ("text" Core..=) Core.<$> text,
            ("title" Core..=) Core.<$> title,
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | A list of timeline items. This is the response from the server to GET requests on the timeline collection.
--
-- /See:/ 'newTimelineListResponse' smart constructor.
data TimelineListResponse = TimelineListResponse
  { -- | Items in the timeline.
    items :: (Core.Maybe [TimelineItem]),
    -- | The type of resource. This is always mirror#timeline.
    kind :: Core.Text,
    -- | The next page token. Provide this as the pageToken parameter in the request to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimelineListResponse' with the minimum fields required to make a request.
newTimelineListResponse ::
  TimelineListResponse
newTimelineListResponse =
  TimelineListResponse
    { items = Core.Nothing,
      kind = "mirror#timeline",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON TimelineListResponse where
  parseJSON =
    Core.withObject
      "TimelineListResponse"
      ( \o ->
          TimelineListResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "mirror#timeline")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON TimelineListResponse where
  toJSON TimelineListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Represents an action taken by the user that triggered a notification.
--
-- /See:/ 'newUserAction' smart constructor.
data UserAction = UserAction
  { -- | An optional payload for the action.
    --
    -- For actions of type CUSTOM, this is the ID of the custom menu item that was selected.
    payload :: (Core.Maybe Core.Text),
    -- | The type of action. The value of this can be:
    -- - SHARE - the user shared an item. - REPLY - the user replied to an item. - REPLY_ALL - the user replied to all recipients of an item. - CUSTOM - the user selected a custom menu item on the timeline item. - DELETE - the user deleted the item. - PIN - the user pinned the item. - UNPIN - the user unpinned the item. - LAUNCH - the user initiated a voice command. In the future, additional types may be added. UserActions with unrecognized types should be ignored.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserAction' with the minimum fields required to make a request.
newUserAction ::
  UserAction
newUserAction = UserAction {payload = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON UserAction where
  parseJSON =
    Core.withObject
      "UserAction"
      ( \o ->
          UserAction
            Core.<$> (o Core..:? "payload") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserAction where
  toJSON UserAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("payload" Core..=) Core.<$> payload,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newUserData' smart constructor.
data UserData = UserData
  { -- |
    key :: (Core.Maybe Core.Text),
    -- |
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserData' with the minimum fields required to make a request.
newUserData ::
  UserData
newUserData = UserData {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON UserData where
  parseJSON =
    Core.withObject
      "UserData"
      ( \o ->
          UserData
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserData where
  toJSON UserData {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )
