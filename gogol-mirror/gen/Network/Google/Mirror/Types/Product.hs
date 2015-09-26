{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Mirror.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Mirror.Types.Product where

import           Network.Google.Mirror.Types.Sum
import           Network.Google.Prelude

-- | Represents an account passed into the Account Manager on Glass.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _aAuthTokens :: !(Maybe [Maybe AuthToken])
    , _aUserData   :: !(Maybe [Maybe UserData])
    , _aPassword   :: !(Maybe Text)
    , _aFeatures   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAuthTokens'
--
-- * 'aUserData'
--
-- * 'aPassword'
--
-- * 'aFeatures'
account
    :: Account
account =
    Account
    { _aAuthTokens = Nothing
    , _aUserData = Nothing
    , _aPassword = Nothing
    , _aFeatures = Nothing
    }

aAuthTokens :: Lens' Account [Maybe AuthToken]
aAuthTokens
  = lens _aAuthTokens (\ s a -> s{_aAuthTokens = a}) .
      _Default
      . _Coerce

aUserData :: Lens' Account [Maybe UserData]
aUserData
  = lens _aUserData (\ s a -> s{_aUserData = a}) .
      _Default
      . _Coerce

aPassword :: Lens' Account (Maybe Text)
aPassword
  = lens _aPassword (\ s a -> s{_aPassword = a})

aFeatures :: Lens' Account [Text]
aFeatures
  = lens _aFeatures (\ s a -> s{_aFeatures = a}) .
      _Default
      . _Coerce

-- | Represents media content, such as a photo, that can be attached to a
-- timeline item.
--
-- /See:/ 'attachment' smart constructor.
data Attachment = Attachment
    { _aContentUrl          :: !(Maybe Text)
    , _aId                  :: !(Maybe Text)
    , _aIsProcessingContent :: !(Maybe Bool)
    , _aContentType         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aContentUrl'
--
-- * 'aId'
--
-- * 'aIsProcessingContent'
--
-- * 'aContentType'
attachment
    :: Attachment
attachment =
    Attachment
    { _aContentUrl = Nothing
    , _aId = Nothing
    , _aIsProcessingContent = Nothing
    , _aContentType = Nothing
    }

-- | The URL for the content.
aContentUrl :: Lens' Attachment (Maybe Text)
aContentUrl
  = lens _aContentUrl (\ s a -> s{_aContentUrl = a})

-- | The ID of the attachment.
aId :: Lens' Attachment (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Indicates that the contentUrl is not available because the attachment
-- content is still being processed. If the caller wishes to retrieve the
-- content, it should try again later.
aIsProcessingContent :: Lens' Attachment (Maybe Bool)
aIsProcessingContent
  = lens _aIsProcessingContent
      (\ s a -> s{_aIsProcessingContent = a})

-- | The MIME type of the attachment.
aContentType :: Lens' Attachment (Maybe Text)
aContentType
  = lens _aContentType (\ s a -> s{_aContentType = a})

-- | A list of Attachments. This is the response from the server to GET
-- requests on the attachments collection.
--
-- /See:/ 'attachmentsListResponse' smart constructor.
data AttachmentsListResponse = AttachmentsListResponse
    { _alrKind  :: !Text
    , _alrItems :: !(Maybe [Maybe Attachment])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachmentsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrKind'
--
-- * 'alrItems'
attachmentsListResponse
    :: AttachmentsListResponse
attachmentsListResponse =
    AttachmentsListResponse
    { _alrKind = "mirror#attachmentsList"
    , _alrItems = Nothing
    }

-- | The type of resource. This is always mirror#attachmentsList.
alrKind :: Lens' AttachmentsListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

-- | The list of attachments.
alrItems :: Lens' AttachmentsListResponse [Maybe Attachment]
alrItems
  = lens _alrItems (\ s a -> s{_alrItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'authToken' smart constructor.
data AuthToken = AuthToken
    { _atAuthToken :: !(Maybe Text)
    , _atType      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuthToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atAuthToken'
--
-- * 'atType'
authToken
    :: AuthToken
authToken =
    AuthToken
    { _atAuthToken = Nothing
    , _atType = Nothing
    }

atAuthToken :: Lens' AuthToken (Maybe Text)
atAuthToken
  = lens _atAuthToken (\ s a -> s{_atAuthToken = a})

atType :: Lens' AuthToken (Maybe Text)
atType = lens _atType (\ s a -> s{_atType = a})

-- | A single menu command that is part of a Contact.
--
-- /See:/ 'command' smart constructor.
newtype Command = Command
    { _cType :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Command' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cType'
command
    :: Command
command =
    Command
    { _cType = Nothing
    }

-- | The type of operation this command corresponds to. Allowed values are: -
-- TAKE_A_NOTE - Shares a timeline item with the transcription of user
-- speech from the \"Take a note\" voice menu command. - POST_AN_UPDATE -
-- Shares a timeline item with the transcription of user speech from the
-- \"Post an update\" voice menu command.
cType :: Lens' Command (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

-- | A person or group that can be used as a creator or a contact.
--
-- /See:/ 'contact' smart constructor.
data Contact = Contact
    { _conAcceptCommands  :: !(Maybe [Maybe Command])
    , _conSharingFeatures :: !(Maybe [Text])
    , _conImageUrls       :: !(Maybe [Text])
    , _conPriority        :: !(Maybe Word32)
    , _conKind            :: !Text
    , _conAcceptTypes     :: !(Maybe [Text])
    , _conPhoneNumber     :: !(Maybe Text)
    , _conDisplayName     :: !(Maybe Text)
    , _conSource          :: !(Maybe Text)
    , _conId              :: !(Maybe Text)
    , _conType            :: !(Maybe Text)
    , _conSpeakableName   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Contact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conAcceptCommands'
--
-- * 'conSharingFeatures'
--
-- * 'conImageUrls'
--
-- * 'conPriority'
--
-- * 'conKind'
--
-- * 'conAcceptTypes'
--
-- * 'conPhoneNumber'
--
-- * 'conDisplayName'
--
-- * 'conSource'
--
-- * 'conId'
--
-- * 'conType'
--
-- * 'conSpeakableName'
contact
    :: Contact
contact =
    Contact
    { _conAcceptCommands = Nothing
    , _conSharingFeatures = Nothing
    , _conImageUrls = Nothing
    , _conPriority = Nothing
    , _conKind = "mirror#contact"
    , _conAcceptTypes = Nothing
    , _conPhoneNumber = Nothing
    , _conDisplayName = Nothing
    , _conSource = Nothing
    , _conId = Nothing
    , _conType = Nothing
    , _conSpeakableName = Nothing
    }

-- | A list of voice menu commands that a contact can handle. Glass shows up
-- to three contacts for each voice menu command. If there are more than
-- that, the three contacts with the highest priority are shown for that
-- particular command.
conAcceptCommands :: Lens' Contact [Maybe Command]
conAcceptCommands
  = lens _conAcceptCommands
      (\ s a -> s{_conAcceptCommands = a})
      . _Default
      . _Coerce

-- | A list of sharing features that a contact can handle. Allowed values
-- are: - ADD_CAPTION
conSharingFeatures :: Lens' Contact [Text]
conSharingFeatures
  = lens _conSharingFeatures
      (\ s a -> s{_conSharingFeatures = a})
      . _Default
      . _Coerce

-- | Set of image URLs to display for a contact. Most contacts will have a
-- single image, but a \"group\" contact may include up to 8 image URLs and
-- they will be resized and cropped into a mosaic on the client.
conImageUrls :: Lens' Contact [Text]
conImageUrls
  = lens _conImageUrls (\ s a -> s{_conImageUrls = a})
      . _Default
      . _Coerce

-- | Priority for the contact to determine ordering in a list of contacts.
-- Contacts with higher priorities will be shown before ones with lower
-- priorities.
conPriority :: Lens' Contact (Maybe Word32)
conPriority
  = lens _conPriority (\ s a -> s{_conPriority = a})

-- | The type of resource. This is always mirror#contact.
conKind :: Lens' Contact Text
conKind = lens _conKind (\ s a -> s{_conKind = a})

-- | A list of MIME types that a contact supports. The contact will be shown
-- to the user if any of its acceptTypes matches any of the types of the
-- attachments on the item. If no acceptTypes are given, the contact will
-- be shown for all items.
conAcceptTypes :: Lens' Contact [Text]
conAcceptTypes
  = lens _conAcceptTypes
      (\ s a -> s{_conAcceptTypes = a})
      . _Default
      . _Coerce

-- | Primary phone number for the contact. This can be a fully-qualified
-- number, with country calling code and area code, or a local number.
conPhoneNumber :: Lens' Contact (Maybe Text)
conPhoneNumber
  = lens _conPhoneNumber
      (\ s a -> s{_conPhoneNumber = a})

-- | The name to display for this contact.
conDisplayName :: Lens' Contact (Maybe Text)
conDisplayName
  = lens _conDisplayName
      (\ s a -> s{_conDisplayName = a})

-- | The ID of the application that created this contact. This is populated
-- by the API
conSource :: Lens' Contact (Maybe Text)
conSource
  = lens _conSource (\ s a -> s{_conSource = a})

-- | An ID for this contact. This is generated by the application and is
-- treated as an opaque token.
conId :: Lens' Contact (Maybe Text)
conId = lens _conId (\ s a -> s{_conId = a})

-- | The type for this contact. This is used for sorting in UIs. Allowed
-- values are: - INDIVIDUAL - Represents a single person. This is the
-- default. - GROUP - Represents more than a single person.
conType :: Lens' Contact (Maybe Text)
conType = lens _conType (\ s a -> s{_conType = a})

-- | Name of this contact as it should be pronounced. If this contact\'s name
-- must be spoken as part of a voice disambiguation menu, this name is used
-- as the expected pronunciation. This is useful for contact names with
-- unpronounceable characters or whose display spelling is otherwise not
-- phonetic.
conSpeakableName :: Lens' Contact (Maybe Text)
conSpeakableName
  = lens _conSpeakableName
      (\ s a -> s{_conSpeakableName = a})

-- | A list of Contacts representing contacts. This is the response from the
-- server to GET requests on the contacts collection.
--
-- /See:/ 'contactsListResponse' smart constructor.
data ContactsListResponse = ContactsListResponse
    { _clrKind  :: !Text
    , _clrItems :: !(Maybe [Maybe Contact])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrKind'
--
-- * 'clrItems'
contactsListResponse
    :: ContactsListResponse
contactsListResponse =
    ContactsListResponse
    { _clrKind = "mirror#contacts"
    , _clrItems = Nothing
    }

-- | The type of resource. This is always mirror#contacts.
clrKind :: Lens' ContactsListResponse Text
clrKind = lens _clrKind (\ s a -> s{_clrKind = a})

-- | Contact list.
clrItems :: Lens' ContactsListResponse [Maybe Contact]
clrItems
  = lens _clrItems (\ s a -> s{_clrItems = a}) .
      _Default
      . _Coerce

-- | A geographic location that can be associated with a timeline item.
--
-- /See:/ 'location' smart constructor.
data Location = Location
    { _lKind        :: !Text
    , _lLatitude    :: !(Maybe Double)
    , _lAddress     :: !(Maybe Text)
    , _lDisplayName :: !(Maybe Text)
    , _lId          :: !(Maybe Text)
    , _lAccuracy    :: !(Maybe Double)
    , _lLongitude   :: !(Maybe Double)
    , _lTimestamp   :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lKind'
--
-- * 'lLatitude'
--
-- * 'lAddress'
--
-- * 'lDisplayName'
--
-- * 'lId'
--
-- * 'lAccuracy'
--
-- * 'lLongitude'
--
-- * 'lTimestamp'
location
    :: Location
location =
    Location
    { _lKind = "mirror#location"
    , _lLatitude = Nothing
    , _lAddress = Nothing
    , _lDisplayName = Nothing
    , _lId = Nothing
    , _lAccuracy = Nothing
    , _lLongitude = Nothing
    , _lTimestamp = Nothing
    }

-- | The type of resource. This is always mirror#location.
lKind :: Lens' Location Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | The latitude, in degrees.
lLatitude :: Lens' Location (Maybe Double)
lLatitude
  = lens _lLatitude (\ s a -> s{_lLatitude = a})

-- | The full address of the location.
lAddress :: Lens' Location (Maybe Text)
lAddress = lens _lAddress (\ s a -> s{_lAddress = a})

-- | The name to be displayed. This may be a business name or a user-defined
-- place, such as \"Home\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | The ID of the location.
lId :: Lens' Location (Maybe Text)
lId = lens _lId (\ s a -> s{_lId = a})

-- | The accuracy of the location fix in meters.
lAccuracy :: Lens' Location (Maybe Double)
lAccuracy
  = lens _lAccuracy (\ s a -> s{_lAccuracy = a})

-- | The longitude, in degrees.
lLongitude :: Lens' Location (Maybe Double)
lLongitude
  = lens _lLongitude (\ s a -> s{_lLongitude = a})

-- | The time at which this location was captured, formatted according to RFC
-- 3339.
lTimestamp :: Lens' Location (Maybe UTCTime)
lTimestamp
  = lens _lTimestamp (\ s a -> s{_lTimestamp = a})

-- | A list of Locations. This is the response from the server to GET
-- requests on the locations collection.
--
-- /See:/ 'locationsListResponse' smart constructor.
data LocationsListResponse = LocationsListResponse
    { _llrKind  :: !Text
    , _llrItems :: !(Maybe [Maybe Location])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrKind'
--
-- * 'llrItems'
locationsListResponse
    :: LocationsListResponse
locationsListResponse =
    LocationsListResponse
    { _llrKind = "mirror#locationsList"
    , _llrItems = Nothing
    }

-- | The type of resource. This is always mirror#locationsList.
llrKind :: Lens' LocationsListResponse Text
llrKind = lens _llrKind (\ s a -> s{_llrKind = a})

-- | The list of locations.
llrItems :: Lens' LocationsListResponse [Maybe Location]
llrItems
  = lens _llrItems (\ s a -> s{_llrItems = a}) .
      _Default
      . _Coerce

-- | A custom menu item that can be presented to the user by a timeline item.
--
-- /See:/ 'menuItem' smart constructor.
data MenuItem = MenuItem
    { _miValues             :: !(Maybe [Maybe MenuValue])
    , _miRemoveWhenSelected :: !(Maybe Bool)
    , _miAction             :: !(Maybe Text)
    , _miPayload            :: !(Maybe Text)
    , _miContextualCommand  :: !(Maybe Text)
    , _miId                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MenuItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miValues'
--
-- * 'miRemoveWhenSelected'
--
-- * 'miAction'
--
-- * 'miPayload'
--
-- * 'miContextualCommand'
--
-- * 'miId'
menuItem
    :: MenuItem
menuItem =
    MenuItem
    { _miValues = Nothing
    , _miRemoveWhenSelected = Nothing
    , _miAction = Nothing
    , _miPayload = Nothing
    , _miContextualCommand = Nothing
    , _miId = Nothing
    }

-- | For CUSTOM items, a list of values controlling the appearance of the
-- menu item in each of its states. A value for the DEFAULT state must be
-- provided. If the PENDING or CONFIRMED states are missing, they will not
-- be shown.
miValues :: Lens' MenuItem [Maybe MenuValue]
miValues
  = lens _miValues (\ s a -> s{_miValues = a}) .
      _Default
      . _Coerce

-- | If set to true on a CUSTOM menu item, that item will be removed from the
-- menu after it is selected.
miRemoveWhenSelected :: Lens' MenuItem (Maybe Bool)
miRemoveWhenSelected
  = lens _miRemoveWhenSelected
      (\ s a -> s{_miRemoveWhenSelected = a})

-- | Controls the behavior when the user picks the menu option. Allowed
-- values are: - CUSTOM - Custom action set by the service. When the user
-- selects this menuItem, the API triggers a notification to your
-- callbackUrl with the userActions.type set to CUSTOM and the
-- userActions.payload set to the ID of this menu item. This is the default
-- value. - Built-in actions: - REPLY - Initiate a reply to the timeline
-- item using the voice recording UI. The creator attribute must be set in
-- the timeline item for this menu to be available. - REPLY_ALL - Same
-- behavior as REPLY. The original timeline item\'s recipients will be
-- added to the reply item. - DELETE - Delete the timeline item. - SHARE -
-- Share the timeline item with the available contacts. - READ_ALOUD - Read
-- the timeline item\'s speakableText aloud; if this field is not set, read
-- the text field; if none of those fields are set, this menu item is
-- ignored. - GET_MEDIA_INPUT - Allow users to provide media payloads to
-- Glassware from a menu item (currently, only transcribed text from voice
-- input is supported). Subscribe to notifications when users invoke this
-- menu item to receive the timeline item ID. Retrieve the media from the
-- timeline item in the payload property. - VOICE_CALL - Initiate a phone
-- call using the timeline item\'s creator.phoneNumber attribute as
-- recipient. - NAVIGATE - Navigate to the timeline item\'s location. -
-- TOGGLE_PINNED - Toggle the isPinned state of the timeline item. -
-- OPEN_URI - Open the payload of the menu item in the browser. -
-- PLAY_VIDEO - Open the payload of the menu item in the Glass video
-- player. - SEND_MESSAGE - Initiate sending a message to the timeline
-- item\'s creator: - If the creator.phoneNumber is set and Glass is
-- connected to an Android phone, the message is an SMS. - Otherwise, if
-- the creator.email is set, the message is an email.
miAction :: Lens' MenuItem (Maybe Text)
miAction = lens _miAction (\ s a -> s{_miAction = a})

-- | A generic payload whose meaning changes depending on this MenuItem\'s
-- action. - When the action is OPEN_URI, the payload is the URL of the
-- website to view. - When the action is PLAY_VIDEO, the payload is the
-- streaming URL of the video - When the action is GET_MEDIA_INPUT, the
-- payload is the text transcription of a user\'s speech input
miPayload :: Lens' MenuItem (Maybe Text)
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

-- | The ContextualMenus.Command associated with this MenuItem (e.g.
-- READ_ALOUD). The voice label for this command will be displayed in the
-- voice menu and the touch label will be displayed in the touch menu. Note
-- that the default menu value\'s display name will be overriden if you
-- specify this property. Values that do not correspond to a
-- ContextualMenus.Command name will be ignored.
miContextualCommand :: Lens' MenuItem (Maybe Text)
miContextualCommand
  = lens _miContextualCommand
      (\ s a -> s{_miContextualCommand = a})

-- | The ID for this menu item. This is generated by the application and is
-- treated as an opaque token.
miId :: Lens' MenuItem (Maybe Text)
miId = lens _miId (\ s a -> s{_miId = a})

-- | A single value that is part of a MenuItem.
--
-- /See:/ 'menuValue' smart constructor.
data MenuValue = MenuValue
    { _mvState       :: !(Maybe Text)
    , _mvDisplayName :: !(Maybe Text)
    , _mvIconUrl     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MenuValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvState'
--
-- * 'mvDisplayName'
--
-- * 'mvIconUrl'
menuValue
    :: MenuValue
menuValue =
    MenuValue
    { _mvState = Nothing
    , _mvDisplayName = Nothing
    , _mvIconUrl = Nothing
    }

-- | The state that this value applies to. Allowed values are: - DEFAULT -
-- Default value shown when displayed in the menuItems list. - PENDING -
-- Value shown when the menuItem has been selected by the user but can
-- still be cancelled. - CONFIRMED - Value shown when the menuItem has been
-- selected by the user and can no longer be cancelled.
mvState :: Lens' MenuValue (Maybe Text)
mvState = lens _mvState (\ s a -> s{_mvState = a})

-- | The name to display for the menu item. If you specify this property for
-- a built-in menu item, the default contextual voice command for that menu
-- item is not shown.
mvDisplayName :: Lens' MenuValue (Maybe Text)
mvDisplayName
  = lens _mvDisplayName
      (\ s a -> s{_mvDisplayName = a})

-- | URL of an icon to display with the menu item.
mvIconUrl :: Lens' MenuValue (Maybe Text)
mvIconUrl
  = lens _mvIconUrl (\ s a -> s{_mvIconUrl = a})

-- | A notification delivered by the API.
--
-- /See:/ 'notification' smart constructor.
data Notification = Notification
    { _nOperation   :: !(Maybe Text)
    , _nItemId      :: !(Maybe Text)
    , _nCollection  :: !(Maybe Text)
    , _nUserActions :: !(Maybe [Maybe UserAction])
    , _nVerifyToken :: !(Maybe Text)
    , _nUserToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nOperation'
--
-- * 'nItemId'
--
-- * 'nCollection'
--
-- * 'nUserActions'
--
-- * 'nVerifyToken'
--
-- * 'nUserToken'
notification
    :: Notification
notification =
    Notification
    { _nOperation = Nothing
    , _nItemId = Nothing
    , _nCollection = Nothing
    , _nUserActions = Nothing
    , _nVerifyToken = Nothing
    , _nUserToken = Nothing
    }

-- | The type of operation that generated the notification.
nOperation :: Lens' Notification (Maybe Text)
nOperation
  = lens _nOperation (\ s a -> s{_nOperation = a})

-- | The ID of the item that generated the notification.
nItemId :: Lens' Notification (Maybe Text)
nItemId = lens _nItemId (\ s a -> s{_nItemId = a})

-- | The collection that generated the notification.
nCollection :: Lens' Notification (Maybe Text)
nCollection
  = lens _nCollection (\ s a -> s{_nCollection = a})

-- | A list of actions taken by the user that triggered the notification.
nUserActions :: Lens' Notification [Maybe UserAction]
nUserActions
  = lens _nUserActions (\ s a -> s{_nUserActions = a})
      . _Default
      . _Coerce

-- | The secret verify token provided by the service when it subscribed for
-- notifications.
nVerifyToken :: Lens' Notification (Maybe Text)
nVerifyToken
  = lens _nVerifyToken (\ s a -> s{_nVerifyToken = a})

-- | The user token provided by the service when it subscribed for
-- notifications.
nUserToken :: Lens' Notification (Maybe Text)
nUserToken
  = lens _nUserToken (\ s a -> s{_nUserToken = a})

-- | Controls how notifications for a timeline item are presented to the
-- user.
--
-- /See:/ 'notificationConfig' smart constructor.
data NotificationConfig = NotificationConfig
    { _ncDeliveryTime :: !(Maybe UTCTime)
    , _ncLevel        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncDeliveryTime'
--
-- * 'ncLevel'
notificationConfig
    :: NotificationConfig
notificationConfig =
    NotificationConfig
    { _ncDeliveryTime = Nothing
    , _ncLevel = Nothing
    }

-- | The time at which the notification should be delivered.
ncDeliveryTime :: Lens' NotificationConfig (Maybe UTCTime)
ncDeliveryTime
  = lens _ncDeliveryTime
      (\ s a -> s{_ncDeliveryTime = a})

-- | Describes how important the notification is. Allowed values are: -
-- DEFAULT - Notifications of default importance. A chime will be played to
-- alert users.
ncLevel :: Lens' NotificationConfig (Maybe Text)
ncLevel = lens _ncLevel (\ s a -> s{_ncLevel = a})

-- | A setting for Glass.
--
-- /See:/ 'setting' smart constructor.
data Setting = Setting
    { _setKind  :: !Text
    , _setValue :: !(Maybe Text)
    , _setId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Setting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setKind'
--
-- * 'setValue'
--
-- * 'setId'
setting
    :: Setting
setting =
    Setting
    { _setKind = "mirror#setting"
    , _setValue = Nothing
    , _setId = Nothing
    }

-- | The type of resource. This is always mirror#setting.
setKind :: Lens' Setting Text
setKind = lens _setKind (\ s a -> s{_setKind = a})

-- | The setting value, as a string.
setValue :: Lens' Setting (Maybe Text)
setValue = lens _setValue (\ s a -> s{_setValue = a})

-- | The setting\'s ID. The following IDs are valid: - locale - The key to
-- the user’s language\/locale (BCP 47 identifier) that Glassware should
-- use to render localized content. - timezone - The key to the user’s
-- current time zone region as defined in the tz database. Example:
-- America\/Los_Angeles.
setId :: Lens' Setting (Maybe Text)
setId = lens _setId (\ s a -> s{_setId = a})

-- | A subscription to events on a collection.
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription
    { _sCallbackUrl  :: !(Maybe Text)
    , _sOperation    :: !(Maybe [Text])
    , _sNotification :: !(Maybe (Maybe Notification))
    , _sKind         :: !Text
    , _sCollection   :: !(Maybe Text)
    , _sVerifyToken  :: !(Maybe Text)
    , _sUserToken    :: !(Maybe Text)
    , _sId           :: !(Maybe Text)
    , _sUpdated      :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCallbackUrl'
--
-- * 'sOperation'
--
-- * 'sNotification'
--
-- * 'sKind'
--
-- * 'sCollection'
--
-- * 'sVerifyToken'
--
-- * 'sUserToken'
--
-- * 'sId'
--
-- * 'sUpdated'
subscription
    :: Subscription
subscription =
    Subscription
    { _sCallbackUrl = Nothing
    , _sOperation = Nothing
    , _sNotification = Nothing
    , _sKind = "mirror#subscription"
    , _sCollection = Nothing
    , _sVerifyToken = Nothing
    , _sUserToken = Nothing
    , _sId = Nothing
    , _sUpdated = Nothing
    }

-- | The URL where notifications should be delivered (must start with
-- https:\/\/).
sCallbackUrl :: Lens' Subscription (Maybe Text)
sCallbackUrl
  = lens _sCallbackUrl (\ s a -> s{_sCallbackUrl = a})

-- | A list of operations that should be subscribed to. An empty list
-- indicates that all operations on the collection should be subscribed to.
-- Allowed values are: - UPDATE - The item has been updated. - INSERT - A
-- new item has been inserted. - DELETE - The item has been deleted. -
-- MENU_ACTION - A custom menu item has been triggered by the user.
sOperation :: Lens' Subscription [Text]
sOperation
  = lens _sOperation (\ s a -> s{_sOperation = a}) .
      _Default
      . _Coerce

-- | Container object for notifications. This is not populated in the
-- Subscription resource.
sNotification :: Lens' Subscription (Maybe (Maybe Notification))
sNotification
  = lens _sNotification
      (\ s a -> s{_sNotification = a})

-- | The type of resource. This is always mirror#subscription.
sKind :: Lens' Subscription Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The collection to subscribe to. Allowed values are: - timeline - Changes
-- in the timeline including insertion, deletion, and updates. - locations
-- - Location updates. - settings - Settings updates.
sCollection :: Lens' Subscription (Maybe Text)
sCollection
  = lens _sCollection (\ s a -> s{_sCollection = a})

-- | A secret token sent to the subscriber in notifications so that it can
-- verify that the notification was generated by Google.
sVerifyToken :: Lens' Subscription (Maybe Text)
sVerifyToken
  = lens _sVerifyToken (\ s a -> s{_sVerifyToken = a})

-- | An opaque token sent to the subscriber in notifications so that it can
-- determine the ID of the user.
sUserToken :: Lens' Subscription (Maybe Text)
sUserToken
  = lens _sUserToken (\ s a -> s{_sUserToken = a})

-- | The ID of the subscription.
sId :: Lens' Subscription (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | The time at which this subscription was last modified, formatted
-- according to RFC 3339.
sUpdated :: Lens' Subscription (Maybe UTCTime)
sUpdated = lens _sUpdated (\ s a -> s{_sUpdated = a})

-- | A list of Subscriptions. This is the response from the server to GET
-- requests on the subscription collection.
--
-- /See:/ 'subscriptionsListResponse' smart constructor.
data SubscriptionsListResponse = SubscriptionsListResponse
    { _slrKind  :: !Text
    , _slrItems :: !(Maybe [Maybe Subscription])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrKind'
--
-- * 'slrItems'
subscriptionsListResponse
    :: SubscriptionsListResponse
subscriptionsListResponse =
    SubscriptionsListResponse
    { _slrKind = "mirror#subscriptionsList"
    , _slrItems = Nothing
    }

-- | The type of resource. This is always mirror#subscriptionsList.
slrKind :: Lens' SubscriptionsListResponse Text
slrKind = lens _slrKind (\ s a -> s{_slrKind = a})

-- | The list of subscriptions.
slrItems :: Lens' SubscriptionsListResponse [Maybe Subscription]
slrItems
  = lens _slrItems (\ s a -> s{_slrItems = a}) .
      _Default
      . _Coerce

-- | Each item in the user\'s timeline is represented as a TimelineItem JSON
-- structure, described below.
--
-- /See:/ 'timelineItem' smart constructor.
data TimelineItem = TimelineItem
    { _tiCreator       :: !(Maybe (Maybe Contact))
    , _tiDisplayTime   :: !(Maybe UTCTime)
    , _tiEtag          :: !(Maybe Text)
    , _tiIsDeleted     :: !(Maybe Bool)
    , _tiPinScore      :: !(Maybe Int32)
    , _tiAttachments   :: !(Maybe [Maybe Attachment])
    , _tiLocation      :: !(Maybe (Maybe Location))
    , _tiMenuItems     :: !(Maybe [Maybe MenuItem])
    , _tiNotification  :: !(Maybe (Maybe NotificationConfig))
    , _tiText          :: !(Maybe Text)
    , _tiKind          :: !Text
    , _tiCreated       :: !(Maybe UTCTime)
    , _tiSpeakableText :: !(Maybe Text)
    , _tiIsBundleCover :: !(Maybe Bool)
    , _tiSpeakableType :: !(Maybe Text)
    , _tiBundleId      :: !(Maybe Text)
    , _tiCanonicalUrl  :: !(Maybe Text)
    , _tiSelfLink      :: !(Maybe Text)
    , _tiIsPinned      :: !(Maybe Bool)
    , _tiSourceItemId  :: !(Maybe Text)
    , _tiId            :: !(Maybe Text)
    , _tiHtml          :: !(Maybe Text)
    , _tiUpdated       :: !(Maybe UTCTime)
    , _tiRecipients    :: !(Maybe [Maybe Contact])
    , _tiTitle         :: !(Maybe Text)
    , _tiInReplyTo     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiCreator'
--
-- * 'tiDisplayTime'
--
-- * 'tiEtag'
--
-- * 'tiIsDeleted'
--
-- * 'tiPinScore'
--
-- * 'tiAttachments'
--
-- * 'tiLocation'
--
-- * 'tiMenuItems'
--
-- * 'tiNotification'
--
-- * 'tiText'
--
-- * 'tiKind'
--
-- * 'tiCreated'
--
-- * 'tiSpeakableText'
--
-- * 'tiIsBundleCover'
--
-- * 'tiSpeakableType'
--
-- * 'tiBundleId'
--
-- * 'tiCanonicalUrl'
--
-- * 'tiSelfLink'
--
-- * 'tiIsPinned'
--
-- * 'tiSourceItemId'
--
-- * 'tiId'
--
-- * 'tiHtml'
--
-- * 'tiUpdated'
--
-- * 'tiRecipients'
--
-- * 'tiTitle'
--
-- * 'tiInReplyTo'
timelineItem
    :: TimelineItem
timelineItem =
    TimelineItem
    { _tiCreator = Nothing
    , _tiDisplayTime = Nothing
    , _tiEtag = Nothing
    , _tiIsDeleted = Nothing
    , _tiPinScore = Nothing
    , _tiAttachments = Nothing
    , _tiLocation = Nothing
    , _tiMenuItems = Nothing
    , _tiNotification = Nothing
    , _tiText = Nothing
    , _tiKind = "mirror#timelineItem"
    , _tiCreated = Nothing
    , _tiSpeakableText = Nothing
    , _tiIsBundleCover = Nothing
    , _tiSpeakableType = Nothing
    , _tiBundleId = Nothing
    , _tiCanonicalUrl = Nothing
    , _tiSelfLink = Nothing
    , _tiIsPinned = Nothing
    , _tiSourceItemId = Nothing
    , _tiId = Nothing
    , _tiHtml = Nothing
    , _tiUpdated = Nothing
    , _tiRecipients = Nothing
    , _tiTitle = Nothing
    , _tiInReplyTo = Nothing
    }

-- | The user or group that created this item.
tiCreator :: Lens' TimelineItem (Maybe (Maybe Contact))
tiCreator
  = lens _tiCreator (\ s a -> s{_tiCreator = a})

-- | The time that should be displayed when this item is viewed in the
-- timeline, formatted according to RFC 3339. This user\'s timeline is
-- sorted chronologically on display time, so this will also determine
-- where the item is displayed in the timeline. If not set by the service,
-- the display time defaults to the updated time.
tiDisplayTime :: Lens' TimelineItem (Maybe UTCTime)
tiDisplayTime
  = lens _tiDisplayTime
      (\ s a -> s{_tiDisplayTime = a})

-- | ETag for this item.
tiEtag :: Lens' TimelineItem (Maybe Text)
tiEtag = lens _tiEtag (\ s a -> s{_tiEtag = a})

-- | When true, indicates this item is deleted, and only the ID property is
-- set.
tiIsDeleted :: Lens' TimelineItem (Maybe Bool)
tiIsDeleted
  = lens _tiIsDeleted (\ s a -> s{_tiIsDeleted = a})

-- | For pinned items, this determines the order in which the item is
-- displayed in the timeline, with a higher score appearing closer to the
-- clock. Note: setting this field is currently not supported.
tiPinScore :: Lens' TimelineItem (Maybe Int32)
tiPinScore
  = lens _tiPinScore (\ s a -> s{_tiPinScore = a})

-- | A list of media attachments associated with this item. As a convenience,
-- you can refer to attachments in your HTML payloads with the attachment
-- or cid scheme. For example: - attachment:
-- <<attachment:attachment_index >> where attachment_index is the 0-based
-- index of this array. - cid: <<cid:attachment_id >> where attachment_id
-- is the ID of the attachment.
tiAttachments :: Lens' TimelineItem [Maybe Attachment]
tiAttachments
  = lens _tiAttachments
      (\ s a -> s{_tiAttachments = a})
      . _Default
      . _Coerce

-- | The geographic location associated with this item.
tiLocation :: Lens' TimelineItem (Maybe (Maybe Location))
tiLocation
  = lens _tiLocation (\ s a -> s{_tiLocation = a})

-- | A list of menu items that will be presented to the user when this item
-- is selected in the timeline.
tiMenuItems :: Lens' TimelineItem [Maybe MenuItem]
tiMenuItems
  = lens _tiMenuItems (\ s a -> s{_tiMenuItems = a}) .
      _Default
      . _Coerce

-- | Controls how notifications for this item are presented on the device. If
-- this is missing, no notification will be generated.
tiNotification :: Lens' TimelineItem (Maybe (Maybe NotificationConfig))
tiNotification
  = lens _tiNotification
      (\ s a -> s{_tiNotification = a})

-- | Text content of this item.
tiText :: Lens' TimelineItem (Maybe Text)
tiText = lens _tiText (\ s a -> s{_tiText = a})

-- | The type of resource. This is always mirror#timelineItem.
tiKind :: Lens' TimelineItem Text
tiKind = lens _tiKind (\ s a -> s{_tiKind = a})

-- | The time at which this item was created, formatted according to RFC
-- 3339.
tiCreated :: Lens' TimelineItem (Maybe UTCTime)
tiCreated
  = lens _tiCreated (\ s a -> s{_tiCreated = a})

-- | The speakable version of the content of this item. Along with the
-- READ_ALOUD menu item, use this field to provide text that would be
-- clearer when read aloud, or to provide extended information to what is
-- displayed visually on Glass. Glassware should also specify the
-- speakableType field, which will be spoken before this text in cases
-- where the additional context is useful, for example when the user
-- requests that the item be read aloud following a notification.
tiSpeakableText :: Lens' TimelineItem (Maybe Text)
tiSpeakableText
  = lens _tiSpeakableText
      (\ s a -> s{_tiSpeakableText = a})

-- | Whether this item is a bundle cover. If an item is marked as a bundle
-- cover, it will be the entry point to the bundle of items that have the
-- same bundleId as that item. It will be shown only on the main timeline —
-- not within the opened bundle. On the main timeline, items that are shown
-- are: - Items that have isBundleCover set to true - Items that do not
-- have a bundleId In a bundle sub-timeline, items that are shown are: -
-- Items that have the bundleId in question AND isBundleCover set to false
tiIsBundleCover :: Lens' TimelineItem (Maybe Bool)
tiIsBundleCover
  = lens _tiIsBundleCover
      (\ s a -> s{_tiIsBundleCover = a})

-- | A speakable description of the type of this item. This will be announced
-- to the user prior to reading the content of the item in cases where the
-- additional context is useful, for example when the user requests that
-- the item be read aloud following a notification. This should be a short,
-- simple noun phrase such as \"Email\", \"Text message\", or \"Daily
-- Planet News Update\". Glassware are encouraged to populate this field
-- for every timeline item, even if the item does not contain speakableText
-- or text so that the user can learn the type of the item without looking
-- at the screen.
tiSpeakableType :: Lens' TimelineItem (Maybe Text)
tiSpeakableType
  = lens _tiSpeakableType
      (\ s a -> s{_tiSpeakableType = a})

-- | The bundle ID for this item. Services can specify a bundleId to group
-- many items together. They appear under a single top-level item on the
-- device.
tiBundleId :: Lens' TimelineItem (Maybe Text)
tiBundleId
  = lens _tiBundleId (\ s a -> s{_tiBundleId = a})

-- | A canonical URL pointing to the canonical\/high quality version of the
-- data represented by the timeline item.
tiCanonicalUrl :: Lens' TimelineItem (Maybe Text)
tiCanonicalUrl
  = lens _tiCanonicalUrl
      (\ s a -> s{_tiCanonicalUrl = a})

-- | A URL that can be used to retrieve this item.
tiSelfLink :: Lens' TimelineItem (Maybe Text)
tiSelfLink
  = lens _tiSelfLink (\ s a -> s{_tiSelfLink = a})

-- | When true, indicates this item is pinned, which means it\'s grouped
-- alongside \"active\" items like navigation and hangouts, on the opposite
-- side of the home screen from historical (non-pinned) timeline items. You
-- can allow the user to toggle the value of this property with the
-- TOGGLE_PINNED built-in menu item.
tiIsPinned :: Lens' TimelineItem (Maybe Bool)
tiIsPinned
  = lens _tiIsPinned (\ s a -> s{_tiIsPinned = a})

-- | Opaque string you can use to map a timeline item to data in your own
-- service.
tiSourceItemId :: Lens' TimelineItem (Maybe Text)
tiSourceItemId
  = lens _tiSourceItemId
      (\ s a -> s{_tiSourceItemId = a})

-- | The ID of the timeline item. This is unique within a user\'s timeline.
tiId :: Lens' TimelineItem (Maybe Text)
tiId = lens _tiId (\ s a -> s{_tiId = a})

-- | HTML content for this item. If both text and html are provided for an
-- item, the html will be rendered in the timeline. Allowed HTML elements -
-- You can use these elements in your timeline cards. - Headers: h1, h2,
-- h3, h4, h5, h6 - Images: img - Lists: li, ol, ul - HTML5 semantics:
-- article, aside, details, figure, figcaption, footer, header, nav,
-- section, summary, time - Structural: blockquote, br, div, hr, p, span -
-- Style: b, big, center, em, i, u, s, small, strike, strong, style, sub,
-- sup - Tables: table, tbody, td, tfoot, th, thead, tr Blocked HTML
-- elements: These elements and their contents are removed from HTML
-- payloads. - Document headers: head, title - Embeds: audio, embed,
-- object, source, video - Frames: frame, frameset - Scripting: applet,
-- script Other elements: Any elements that aren\'t listed are removed, but
-- their contents are preserved.
tiHtml :: Lens' TimelineItem (Maybe Text)
tiHtml = lens _tiHtml (\ s a -> s{_tiHtml = a})

-- | The time at which this item was last modified, formatted according to
-- RFC 3339.
tiUpdated :: Lens' TimelineItem (Maybe UTCTime)
tiUpdated
  = lens _tiUpdated (\ s a -> s{_tiUpdated = a})

-- | A list of users or groups that this item has been shared with.
tiRecipients :: Lens' TimelineItem [Maybe Contact]
tiRecipients
  = lens _tiRecipients (\ s a -> s{_tiRecipients = a})
      . _Default
      . _Coerce

-- | The title of this item.
tiTitle :: Lens' TimelineItem (Maybe Text)
tiTitle = lens _tiTitle (\ s a -> s{_tiTitle = a})

-- | If this item was generated as a reply to another item, this field will
-- be set to the ID of the item being replied to. This can be used to
-- attach a reply to the appropriate conversation or post.
tiInReplyTo :: Lens' TimelineItem (Maybe Text)
tiInReplyTo
  = lens _tiInReplyTo (\ s a -> s{_tiInReplyTo = a})

-- | A list of timeline items. This is the response from the server to GET
-- requests on the timeline collection.
--
-- /See:/ 'timelineListResponse' smart constructor.
data TimelineListResponse = TimelineListResponse
    { _tlrNextPageToken :: !(Maybe Text)
    , _tlrKind          :: !Text
    , _tlrItems         :: !(Maybe [Maybe TimelineItem])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrNextPageToken'
--
-- * 'tlrKind'
--
-- * 'tlrItems'
timelineListResponse
    :: TimelineListResponse
timelineListResponse =
    TimelineListResponse
    { _tlrNextPageToken = Nothing
    , _tlrKind = "mirror#timeline"
    , _tlrItems = Nothing
    }

-- | The next page token. Provide this as the pageToken parameter in the
-- request to retrieve the next page of results.
tlrNextPageToken :: Lens' TimelineListResponse (Maybe Text)
tlrNextPageToken
  = lens _tlrNextPageToken
      (\ s a -> s{_tlrNextPageToken = a})

-- | The type of resource. This is always mirror#timeline.
tlrKind :: Lens' TimelineListResponse Text
tlrKind = lens _tlrKind (\ s a -> s{_tlrKind = a})

-- | Items in the timeline.
tlrItems :: Lens' TimelineListResponse [Maybe TimelineItem]
tlrItems
  = lens _tlrItems (\ s a -> s{_tlrItems = a}) .
      _Default
      . _Coerce

-- | Represents an action taken by the user that triggered a notification.
--
-- /See:/ 'userAction' smart constructor.
data UserAction = UserAction
    { _uaPayload :: !(Maybe Text)
    , _uaType    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaPayload'
--
-- * 'uaType'
userAction
    :: UserAction
userAction =
    UserAction
    { _uaPayload = Nothing
    , _uaType = Nothing
    }

-- | An optional payload for the action. For actions of type CUSTOM, this is
-- the ID of the custom menu item that was selected.
uaPayload :: Lens' UserAction (Maybe Text)
uaPayload
  = lens _uaPayload (\ s a -> s{_uaPayload = a})

-- | The type of action. The value of this can be: - SHARE - the user shared
-- an item. - REPLY - the user replied to an item. - REPLY_ALL - the user
-- replied to all recipients of an item. - CUSTOM - the user selected a
-- custom menu item on the timeline item. - DELETE - the user deleted the
-- item. - PIN - the user pinned the item. - UNPIN - the user unpinned the
-- item. - LAUNCH - the user initiated a voice command. In the future,
-- additional types may be added. UserActions with unrecognized types
-- should be ignored.
uaType :: Lens' UserAction (Maybe Text)
uaType = lens _uaType (\ s a -> s{_uaType = a})

--
-- /See:/ 'userData' smart constructor.
data UserData = UserData
    { _udValue :: !(Maybe Text)
    , _udKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udValue'
--
-- * 'udKey'
userData
    :: UserData
userData =
    UserData
    { _udValue = Nothing
    , _udKey = Nothing
    }

udValue :: Lens' UserData (Maybe Text)
udValue = lens _udValue (\ s a -> s{_udValue = a})

udKey :: Lens' UserData (Maybe Text)
udKey = lens _udKey (\ s a -> s{_udKey = a})
