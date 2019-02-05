{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Chat.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Chat.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | An enum value that will be replaced by the Chat API with the
-- corresponding icon image.
data KeyValueIcon
    = KVIIconUnspecified
      -- ^ @ICON_UNSPECIFIED@
    | KVIAirplane
      -- ^ @AIRPLANE@
    | KVIBookmark
      -- ^ @BOOKMARK@
    | KVIBus
      -- ^ @BUS@
    | KVICar
      -- ^ @CAR@
    | KVIClock
      -- ^ @CLOCK@
    | KVIConfirmationNumberIcon
      -- ^ @CONFIRMATION_NUMBER_ICON@
    | KVIDollar
      -- ^ @DOLLAR@
    | KVIDescription
      -- ^ @DESCRIPTION@
    | KVIEmail
      -- ^ @EMAIL@
    | KVIEventPerformer
      -- ^ @EVENT_PERFORMER@
    | KVIEventSeat
      -- ^ @EVENT_SEAT@
    | KVIFlightArrival
      -- ^ @FLIGHT_ARRIVAL@
    | KVIFlightDeParture
      -- ^ @FLIGHT_DEPARTURE@
    | KVIHotel
      -- ^ @HOTEL@
    | KVIHotelRoomType
      -- ^ @HOTEL_ROOM_TYPE@
    | KVIInvite
      -- ^ @INVITE@
    | KVIMapPin
      -- ^ @MAP_PIN@
    | KVIMembership
      -- ^ @MEMBERSHIP@
    | KVIMultiplePeople
      -- ^ @MULTIPLE_PEOPLE@
    | KVIOffer
      -- ^ @OFFER@
    | KVIPerson
      -- ^ @PERSON@
    | KVIPhone
      -- ^ @PHONE@
    | KVIRestaurantIcon
      -- ^ @RESTAURANT_ICON@
    | KVIShoppingCart
      -- ^ @SHOPPING_CART@
    | KVIStar
      -- ^ @STAR@
    | KVIStore
      -- ^ @STORE@
    | KVITicket
      -- ^ @TICKET@
    | KVITrain
      -- ^ @TRAIN@
    | KVIVideoCamera
      -- ^ @VIDEO_CAMERA@
    | KVIVideoPlay
      -- ^ @VIDEO_PLAY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KeyValueIcon

instance FromHttpApiData KeyValueIcon where
    parseQueryParam = \case
        "ICON_UNSPECIFIED" -> Right KVIIconUnspecified
        "AIRPLANE" -> Right KVIAirplane
        "BOOKMARK" -> Right KVIBookmark
        "BUS" -> Right KVIBus
        "CAR" -> Right KVICar
        "CLOCK" -> Right KVIClock
        "CONFIRMATION_NUMBER_ICON" -> Right KVIConfirmationNumberIcon
        "DOLLAR" -> Right KVIDollar
        "DESCRIPTION" -> Right KVIDescription
        "EMAIL" -> Right KVIEmail
        "EVENT_PERFORMER" -> Right KVIEventPerformer
        "EVENT_SEAT" -> Right KVIEventSeat
        "FLIGHT_ARRIVAL" -> Right KVIFlightArrival
        "FLIGHT_DEPARTURE" -> Right KVIFlightDeParture
        "HOTEL" -> Right KVIHotel
        "HOTEL_ROOM_TYPE" -> Right KVIHotelRoomType
        "INVITE" -> Right KVIInvite
        "MAP_PIN" -> Right KVIMapPin
        "MEMBERSHIP" -> Right KVIMembership
        "MULTIPLE_PEOPLE" -> Right KVIMultiplePeople
        "OFFER" -> Right KVIOffer
        "PERSON" -> Right KVIPerson
        "PHONE" -> Right KVIPhone
        "RESTAURANT_ICON" -> Right KVIRestaurantIcon
        "SHOPPING_CART" -> Right KVIShoppingCart
        "STAR" -> Right KVIStar
        "STORE" -> Right KVIStore
        "TICKET" -> Right KVITicket
        "TRAIN" -> Right KVITrain
        "VIDEO_CAMERA" -> Right KVIVideoCamera
        "VIDEO_PLAY" -> Right KVIVideoPlay
        x -> Left ("Unable to parse KeyValueIcon from: " <> x)

instance ToHttpApiData KeyValueIcon where
    toQueryParam = \case
        KVIIconUnspecified -> "ICON_UNSPECIFIED"
        KVIAirplane -> "AIRPLANE"
        KVIBookmark -> "BOOKMARK"
        KVIBus -> "BUS"
        KVICar -> "CAR"
        KVIClock -> "CLOCK"
        KVIConfirmationNumberIcon -> "CONFIRMATION_NUMBER_ICON"
        KVIDollar -> "DOLLAR"
        KVIDescription -> "DESCRIPTION"
        KVIEmail -> "EMAIL"
        KVIEventPerformer -> "EVENT_PERFORMER"
        KVIEventSeat -> "EVENT_SEAT"
        KVIFlightArrival -> "FLIGHT_ARRIVAL"
        KVIFlightDeParture -> "FLIGHT_DEPARTURE"
        KVIHotel -> "HOTEL"
        KVIHotelRoomType -> "HOTEL_ROOM_TYPE"
        KVIInvite -> "INVITE"
        KVIMapPin -> "MAP_PIN"
        KVIMembership -> "MEMBERSHIP"
        KVIMultiplePeople -> "MULTIPLE_PEOPLE"
        KVIOffer -> "OFFER"
        KVIPerson -> "PERSON"
        KVIPhone -> "PHONE"
        KVIRestaurantIcon -> "RESTAURANT_ICON"
        KVIShoppingCart -> "SHOPPING_CART"
        KVIStar -> "STAR"
        KVIStore -> "STORE"
        KVITicket -> "TICKET"
        KVITrain -> "TRAIN"
        KVIVideoCamera -> "VIDEO_CAMERA"
        KVIVideoPlay -> "VIDEO_PLAY"

instance FromJSON KeyValueIcon where
    parseJSON = parseJSONText "KeyValueIcon"

instance ToJSON KeyValueIcon where
    toJSON = toJSONText

-- | The type of bot response.
data ActionResponseType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default type; will be handled as NEW_MESSAGE.
    | NewMessage
      -- ^ @NEW_MESSAGE@
      -- Post as a new message in the topic.
    | UpdateMessage
      -- ^ @UPDATE_MESSAGE@
      -- Update the bot\'s own message. (Only after CARD_CLICKED events.)
    | RequestConfig
      -- ^ @REQUEST_CONFIG@
      -- Privately ask the user for additional auth or config.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActionResponseType

instance FromHttpApiData ActionResponseType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "NEW_MESSAGE" -> Right NewMessage
        "UPDATE_MESSAGE" -> Right UpdateMessage
        "REQUEST_CONFIG" -> Right RequestConfig
        x -> Left ("Unable to parse ActionResponseType from: " <> x)

instance ToHttpApiData ActionResponseType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        NewMessage -> "NEW_MESSAGE"
        UpdateMessage -> "UPDATE_MESSAGE"
        RequestConfig -> "REQUEST_CONFIG"

instance FromJSON ActionResponseType where
    parseJSON = parseJSONText "ActionResponseType"

instance ToJSON ActionResponseType where
    toJSON = toJSONText

-- | State of the membership.
data MembershipState
    = MembershipStateUnspecified
      -- ^ @MEMBERSHIP_STATE_UNSPECIFIED@
      -- Default, do not use.
    | Joined
      -- ^ @JOINED@
      -- The user has joined the space.
    | Invited
      -- ^ @INVITED@
      -- The user has been invited, is able to join the space, but currently has
      -- not joined.
    | NotAMember
      -- ^ @NOT_A_MEMBER@
      -- The user is not a member of the space, has not been invited and is not
      -- able to join the space.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MembershipState

instance FromHttpApiData MembershipState where
    parseQueryParam = \case
        "MEMBERSHIP_STATE_UNSPECIFIED" -> Right MembershipStateUnspecified
        "JOINED" -> Right Joined
        "INVITED" -> Right Invited
        "NOT_A_MEMBER" -> Right NotAMember
        x -> Left ("Unable to parse MembershipState from: " <> x)

instance ToHttpApiData MembershipState where
    toQueryParam = \case
        MembershipStateUnspecified -> "MEMBERSHIP_STATE_UNSPECIFIED"
        Joined -> "JOINED"
        Invited -> "INVITED"
        NotAMember -> "NOT_A_MEMBER"

instance FromJSON MembershipState where
    parseJSON = parseJSONText "MembershipState"

instance ToJSON MembershipState where
    toJSON = toJSONText

-- | The image\'s type (e.g. square border or circular border).
data CardHeaderImageStyle
    = CHISImageStyleUnspecified
      -- ^ @IMAGE_STYLE_UNSPECIFIED@
    | CHISImage
      -- ^ @IMAGE@
      -- Square border.
    | CHISAvatar
      -- ^ @AVATAR@
      -- Circular border.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CardHeaderImageStyle

instance FromHttpApiData CardHeaderImageStyle where
    parseQueryParam = \case
        "IMAGE_STYLE_UNSPECIFIED" -> Right CHISImageStyleUnspecified
        "IMAGE" -> Right CHISImage
        "AVATAR" -> Right CHISAvatar
        x -> Left ("Unable to parse CardHeaderImageStyle from: " <> x)

instance ToHttpApiData CardHeaderImageStyle where
    toQueryParam = \case
        CHISImageStyleUnspecified -> "IMAGE_STYLE_UNSPECIFIED"
        CHISImage -> "IMAGE"
        CHISAvatar -> "AVATAR"

instance FromJSON CardHeaderImageStyle where
    parseJSON = parseJSONText "CardHeaderImageStyle"

instance ToJSON CardHeaderImageStyle where
    toJSON = toJSONText

-- | The type of user mention.
data UserMentionMetadataType
    = UMMTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default value for the enum. DO NOT USE.
    | UMMTAdd
      -- ^ @ADD@
      -- Add user to space.
    | UMMTMention
      -- ^ @MENTION@
      -- Mention user in space.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserMentionMetadataType

instance FromHttpApiData UserMentionMetadataType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right UMMTTypeUnspecified
        "ADD" -> Right UMMTAdd
        "MENTION" -> Right UMMTMention
        x -> Left ("Unable to parse UserMentionMetadataType from: " <> x)

instance ToHttpApiData UserMentionMetadataType where
    toQueryParam = \case
        UMMTTypeUnspecified -> "TYPE_UNSPECIFIED"
        UMMTAdd -> "ADD"
        UMMTMention -> "MENTION"

instance FromJSON UserMentionMetadataType where
    parseJSON = parseJSONText "UserMentionMetadataType"

instance ToJSON UserMentionMetadataType where
    toJSON = toJSONText

-- | Output only. The type of a space.
data SpaceType
    = STTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
    | STRoom
      -- ^ @ROOM@
      -- A chat space where memberships are free to change. Messages in rooms are
      -- threaded.
    | STDM
      -- ^ @DM@
      -- 1:1 Direct Message between a human and a bot, where all messages are
      -- flat.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpaceType

instance FromHttpApiData SpaceType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right STTypeUnspecified
        "ROOM" -> Right STRoom
        "DM" -> Right STDM
        x -> Left ("Unable to parse SpaceType from: " <> x)

instance ToHttpApiData SpaceType where
    toQueryParam = \case
        STTypeUnspecified -> "TYPE_UNSPECIFIED"
        STRoom -> "ROOM"
        STDM -> "DM"

instance FromJSON SpaceType where
    parseJSON = parseJSONText "SpaceType"

instance ToJSON SpaceType where
    toJSON = toJSONText

-- | The type of this annotation.
data AnnotationType
    = AnnotationTypeUnspecified
      -- ^ @ANNOTATION_TYPE_UNSPECIFIED@
      -- Default value for the enum. DO NOT USE.
    | UserMention
      -- ^ @USER_MENTION@
      -- A user is mentioned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnnotationType

instance FromHttpApiData AnnotationType where
    parseQueryParam = \case
        "ANNOTATION_TYPE_UNSPECIFIED" -> Right AnnotationTypeUnspecified
        "USER_MENTION" -> Right UserMention
        x -> Left ("Unable to parse AnnotationType from: " <> x)

instance ToHttpApiData AnnotationType where
    toQueryParam = \case
        AnnotationTypeUnspecified -> "ANNOTATION_TYPE_UNSPECIFIED"
        UserMention -> "USER_MENTION"

instance FromJSON AnnotationType where
    parseJSON = parseJSONText "AnnotationType"

instance ToJSON AnnotationType where
    toJSON = toJSONText

-- | The icon specified by an enum that indices to an icon provided by Chat
-- API.
data ImageButtonIcon
    = IBIIconUnspecified
      -- ^ @ICON_UNSPECIFIED@
    | IBIAirplane
      -- ^ @AIRPLANE@
    | IBIBookmark
      -- ^ @BOOKMARK@
    | IBIBus
      -- ^ @BUS@
    | IBICar
      -- ^ @CAR@
    | IBIClock
      -- ^ @CLOCK@
    | IBIConfirmationNumberIcon
      -- ^ @CONFIRMATION_NUMBER_ICON@
    | IBIDollar
      -- ^ @DOLLAR@
    | IBIDescription
      -- ^ @DESCRIPTION@
    | IBIEmail
      -- ^ @EMAIL@
    | IBIEventPerformer
      -- ^ @EVENT_PERFORMER@
    | IBIEventSeat
      -- ^ @EVENT_SEAT@
    | IBIFlightArrival
      -- ^ @FLIGHT_ARRIVAL@
    | IBIFlightDeParture
      -- ^ @FLIGHT_DEPARTURE@
    | IBIHotel
      -- ^ @HOTEL@
    | IBIHotelRoomType
      -- ^ @HOTEL_ROOM_TYPE@
    | IBIInvite
      -- ^ @INVITE@
    | IBIMapPin
      -- ^ @MAP_PIN@
    | IBIMembership
      -- ^ @MEMBERSHIP@
    | IBIMultiplePeople
      -- ^ @MULTIPLE_PEOPLE@
    | IBIOffer
      -- ^ @OFFER@
    | IBIPerson
      -- ^ @PERSON@
    | IBIPhone
      -- ^ @PHONE@
    | IBIRestaurantIcon
      -- ^ @RESTAURANT_ICON@
    | IBIShoppingCart
      -- ^ @SHOPPING_CART@
    | IBIStar
      -- ^ @STAR@
    | IBIStore
      -- ^ @STORE@
    | IBITicket
      -- ^ @TICKET@
    | IBITrain
      -- ^ @TRAIN@
    | IBIVideoCamera
      -- ^ @VIDEO_CAMERA@
    | IBIVideoPlay
      -- ^ @VIDEO_PLAY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageButtonIcon

instance FromHttpApiData ImageButtonIcon where
    parseQueryParam = \case
        "ICON_UNSPECIFIED" -> Right IBIIconUnspecified
        "AIRPLANE" -> Right IBIAirplane
        "BOOKMARK" -> Right IBIBookmark
        "BUS" -> Right IBIBus
        "CAR" -> Right IBICar
        "CLOCK" -> Right IBIClock
        "CONFIRMATION_NUMBER_ICON" -> Right IBIConfirmationNumberIcon
        "DOLLAR" -> Right IBIDollar
        "DESCRIPTION" -> Right IBIDescription
        "EMAIL" -> Right IBIEmail
        "EVENT_PERFORMER" -> Right IBIEventPerformer
        "EVENT_SEAT" -> Right IBIEventSeat
        "FLIGHT_ARRIVAL" -> Right IBIFlightArrival
        "FLIGHT_DEPARTURE" -> Right IBIFlightDeParture
        "HOTEL" -> Right IBIHotel
        "HOTEL_ROOM_TYPE" -> Right IBIHotelRoomType
        "INVITE" -> Right IBIInvite
        "MAP_PIN" -> Right IBIMapPin
        "MEMBERSHIP" -> Right IBIMembership
        "MULTIPLE_PEOPLE" -> Right IBIMultiplePeople
        "OFFER" -> Right IBIOffer
        "PERSON" -> Right IBIPerson
        "PHONE" -> Right IBIPhone
        "RESTAURANT_ICON" -> Right IBIRestaurantIcon
        "SHOPPING_CART" -> Right IBIShoppingCart
        "STAR" -> Right IBIStar
        "STORE" -> Right IBIStore
        "TICKET" -> Right IBITicket
        "TRAIN" -> Right IBITrain
        "VIDEO_CAMERA" -> Right IBIVideoCamera
        "VIDEO_PLAY" -> Right IBIVideoPlay
        x -> Left ("Unable to parse ImageButtonIcon from: " <> x)

instance ToHttpApiData ImageButtonIcon where
    toQueryParam = \case
        IBIIconUnspecified -> "ICON_UNSPECIFIED"
        IBIAirplane -> "AIRPLANE"
        IBIBookmark -> "BOOKMARK"
        IBIBus -> "BUS"
        IBICar -> "CAR"
        IBIClock -> "CLOCK"
        IBIConfirmationNumberIcon -> "CONFIRMATION_NUMBER_ICON"
        IBIDollar -> "DOLLAR"
        IBIDescription -> "DESCRIPTION"
        IBIEmail -> "EMAIL"
        IBIEventPerformer -> "EVENT_PERFORMER"
        IBIEventSeat -> "EVENT_SEAT"
        IBIFlightArrival -> "FLIGHT_ARRIVAL"
        IBIFlightDeParture -> "FLIGHT_DEPARTURE"
        IBIHotel -> "HOTEL"
        IBIHotelRoomType -> "HOTEL_ROOM_TYPE"
        IBIInvite -> "INVITE"
        IBIMapPin -> "MAP_PIN"
        IBIMembership -> "MEMBERSHIP"
        IBIMultiplePeople -> "MULTIPLE_PEOPLE"
        IBIOffer -> "OFFER"
        IBIPerson -> "PERSON"
        IBIPhone -> "PHONE"
        IBIRestaurantIcon -> "RESTAURANT_ICON"
        IBIShoppingCart -> "SHOPPING_CART"
        IBIStar -> "STAR"
        IBIStore -> "STORE"
        IBITicket -> "TICKET"
        IBITrain -> "TRAIN"
        IBIVideoCamera -> "VIDEO_CAMERA"
        IBIVideoPlay -> "VIDEO_PLAY"

instance FromJSON ImageButtonIcon where
    parseJSON = parseJSONText "ImageButtonIcon"

instance ToJSON ImageButtonIcon where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of the event.
data DeprecatedEventType
    = DETUnspecified
      -- ^ @UNSPECIFIED@
      -- Default value for the enum. DO NOT USE.
    | DETMessage
      -- ^ @MESSAGE@
      -- A message was sent in a room or direct message.
    | DETAddedToSpace
      -- ^ @ADDED_TO_SPACE@
      -- The bot was added to a room or DM.
    | DETRemovedFromSpace
      -- ^ @REMOVED_FROM_SPACE@
      -- The bot was removed from a room or DM.
    | DETCardClicked
      -- ^ @CARD_CLICKED@
      -- The bot\'s interactive card was clicked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeprecatedEventType

instance FromHttpApiData DeprecatedEventType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right DETUnspecified
        "MESSAGE" -> Right DETMessage
        "ADDED_TO_SPACE" -> Right DETAddedToSpace
        "REMOVED_FROM_SPACE" -> Right DETRemovedFromSpace
        "CARD_CLICKED" -> Right DETCardClicked
        x -> Left ("Unable to parse DeprecatedEventType from: " <> x)

instance ToHttpApiData DeprecatedEventType where
    toQueryParam = \case
        DETUnspecified -> "UNSPECIFIED"
        DETMessage -> "MESSAGE"
        DETAddedToSpace -> "ADDED_TO_SPACE"
        DETRemovedFromSpace -> "REMOVED_FROM_SPACE"
        DETCardClicked -> "CARD_CLICKED"

instance FromJSON DeprecatedEventType where
    parseJSON = parseJSONText "DeprecatedEventType"

instance ToJSON DeprecatedEventType where
    toJSON = toJSONText

-- | User type.
data UserType
    = UTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default value for the enum. DO NOT USE.
    | UTHuman
      -- ^ @HUMAN@
      -- Human user.
    | UTBot
      -- ^ @BOT@
      -- Bot user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserType

instance FromHttpApiData UserType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right UTTypeUnspecified
        "HUMAN" -> Right UTHuman
        "BOT" -> Right UTBot
        x -> Left ("Unable to parse UserType from: " <> x)

instance ToHttpApiData UserType where
    toQueryParam = \case
        UTTypeUnspecified -> "TYPE_UNSPECIFIED"
        UTHuman -> "HUMAN"
        UTBot -> "BOT"

instance FromJSON UserType where
    parseJSON = parseJSONText "UserType"

instance ToJSON UserType where
    toJSON = toJSONText
