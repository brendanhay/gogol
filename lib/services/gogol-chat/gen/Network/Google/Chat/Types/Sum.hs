{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Chat.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Chat.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The image\'s type.
data GoogleAppsCardV1CardHeaderImageType
    = Square
      -- ^ @SQUARE@
      -- Applies no cropping to the image.
    | Circle
      -- ^ @CIRCLE@
      -- Applies a circular mask to the image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1CardHeaderImageType

instance FromHttpApiData GoogleAppsCardV1CardHeaderImageType where
    parseQueryParam = \case
        "SQUARE" -> Right Square
        "CIRCLE" -> Right Circle
        x -> Left ("Unable to parse GoogleAppsCardV1CardHeaderImageType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1CardHeaderImageType where
    toQueryParam = \case
        Square -> "SQUARE"
        Circle -> "CIRCLE"

instance FromJSON GoogleAppsCardV1CardHeaderImageType where
    parseJSON = parseJSONText "GoogleAppsCardV1CardHeaderImageType"

instance ToJSON GoogleAppsCardV1CardHeaderImageType where
    toJSON = toJSONText

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

-- | The horizontal alignment of the grid item\'s text.
data GoogleAppsCardV1GridItemTextAlignment
    = HorizontalAlignmentUnspecified
      -- ^ @HORIZONTAL_ALIGNMENT_UNSPECIFIED@
      -- Unspecified alignment.
    | Start
      -- ^ @START@
      -- Alignment to the start position.
    | Center
      -- ^ @CENTER@
      -- Alignment to the center position.
    | End
      -- ^ @END@
      -- Alignment to the end position.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1GridItemTextAlignment

instance FromHttpApiData GoogleAppsCardV1GridItemTextAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGNMENT_UNSPECIFIED" -> Right HorizontalAlignmentUnspecified
        "START" -> Right Start
        "CENTER" -> Right Center
        "END" -> Right End
        x -> Left ("Unable to parse GoogleAppsCardV1GridItemTextAlignment from: " <> x)

instance ToHttpApiData GoogleAppsCardV1GridItemTextAlignment where
    toQueryParam = \case
        HorizontalAlignmentUnspecified -> "HORIZONTAL_ALIGNMENT_UNSPECIFIED"
        Start -> "START"
        Center -> "CENTER"
        End -> "END"

instance FromJSON GoogleAppsCardV1GridItemTextAlignment where
    parseJSON = parseJSONText "GoogleAppsCardV1GridItemTextAlignment"

instance ToJSON GoogleAppsCardV1GridItemTextAlignment where
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
      -- Update the bot\'s message. This is only permitted on a CARD_CLICKED
      -- event where the message sender type is BOT.
    | RequestConfig
      -- ^ @REQUEST_CONFIG@
      -- Update a message, with cards only. (Only after a MESSAGE event with a
      -- matched url, or a CARD_CLICKED event on a human created message).
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

-- | The horizontal alignment of this widget.
data GoogleAppsCardV1WidgetHorizontalAlignment
    = GACVWHAHorizontalAlignmentUnspecified
      -- ^ @HORIZONTAL_ALIGNMENT_UNSPECIFIED@
      -- Unspecified alignment.
    | GACVWHAStart
      -- ^ @START@
      -- Alignment to the start position.
    | GACVWHACenter
      -- ^ @CENTER@
      -- Alignment to the center position.
    | GACVWHAEnd
      -- ^ @END@
      -- Alignment to the end position.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1WidgetHorizontalAlignment

instance FromHttpApiData GoogleAppsCardV1WidgetHorizontalAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGNMENT_UNSPECIFIED" -> Right GACVWHAHorizontalAlignmentUnspecified
        "START" -> Right GACVWHAStart
        "CENTER" -> Right GACVWHACenter
        "END" -> Right GACVWHAEnd
        x -> Left ("Unable to parse GoogleAppsCardV1WidgetHorizontalAlignment from: " <> x)

instance ToHttpApiData GoogleAppsCardV1WidgetHorizontalAlignment where
    toQueryParam = \case
        GACVWHAHorizontalAlignmentUnspecified -> "HORIZONTAL_ALIGNMENT_UNSPECIFIED"
        GACVWHAStart -> "START"
        GACVWHACenter -> "CENTER"
        GACVWHAEnd -> "END"

instance FromJSON GoogleAppsCardV1WidgetHorizontalAlignment where
    parseJSON = parseJSONText "GoogleAppsCardV1WidgetHorizontalAlignment"

instance ToJSON GoogleAppsCardV1WidgetHorizontalAlignment where
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

-- | The status code.
data ActionStatusStatusCode
    = OK
      -- ^ @OK@
      -- Not an error; returned on success HTTP Mapping: 200 OK
    | Cancelled
      -- ^ @CANCELLED@
      -- The operation was cancelled, typically by the caller. HTTP Mapping: 499
      -- Client Closed Request
    | Unknown
      -- ^ @UNKNOWN@
      -- Unknown error. For example, this error may be returned when a \`Status\`
      -- value received from another address space belongs to an error space that
      -- is not known in this address space. Also errors raised by APIs that do
      -- not return enough error information may be converted to this error. HTTP
      -- Mapping: 500 Internal Server Error
    | InvalidArgument
      -- ^ @INVALID_ARGUMENT@
      -- The client specified an invalid argument. Note that this differs from
      -- \`FAILED_PRECONDITION\`. \`INVALID_ARGUMENT\` indicates arguments that
      -- are problematic regardless of the state of the system (e.g., a malformed
      -- file name). HTTP Mapping: 400 Bad Request
    | DeadlineExceeded
      -- ^ @DEADLINE_EXCEEDED@
      -- The deadline expired before the operation could complete. For operations
      -- that change the state of the system, this error may be returned even if
      -- the operation has completed successfully. For example, a successful
      -- response from a server could have been delayed long enough for the
      -- deadline to expire. HTTP Mapping: 504 Gateway Timeout
    | NotFound
      -- ^ @NOT_FOUND@
      -- Some requested entity (e.g., file or directory) was not found. Note to
      -- server developers: if a request is denied for an entire class of users,
      -- such as gradual feature rollout or undocumented allowlist, \`NOT_FOUND\`
      -- may be used. If a request is denied for some users within a class of
      -- users, such as user-based access control, \`PERMISSION_DENIED\` must be
      -- used. HTTP Mapping: 404 Not Found
    | AlreadyExists
      -- ^ @ALREADY_EXISTS@
      -- The entity that a client attempted to create (e.g., file or directory)
      -- already exists. HTTP Mapping: 409 Conflict
    | PermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The caller does not have permission to execute the specified operation.
      -- \`PERMISSION_DENIED\` must not be used for rejections caused by
      -- exhausting some resource (use \`RESOURCE_EXHAUSTED\` instead for those
      -- errors). \`PERMISSION_DENIED\` must not be used if the caller can not be
      -- identified (use \`UNAUTHENTICATED\` instead for those errors). This
      -- error code does not imply the request is valid or the requested entity
      -- exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
    | Unauthenticated
      -- ^ @UNAUTHENTICATED@
      -- The request does not have valid authentication credentials for the
      -- operation. HTTP Mapping: 401 Unauthorized
    | ResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Some resource has been exhausted, perhaps a per-user quota, or perhaps
      -- the entire file system is out of space. HTTP Mapping: 429 Too Many
      -- Requests
    | FailedPrecondition
      -- ^ @FAILED_PRECONDITION@
      -- The operation was rejected because the system is not in a state required
      -- for the operation\'s execution. For example, the directory to be deleted
      -- is non-empty, an rmdir operation is applied to a non-directory, etc.
      -- Service implementors can use the following guidelines to decide between
      -- \`FAILED_PRECONDITION\`, \`ABORTED\`, and \`UNAVAILABLE\`: (a) Use
      -- \`UNAVAILABLE\` if the client can retry just the failing call. (b) Use
      -- \`ABORTED\` if the client should retry at a higher level. For example,
      -- when a client-specified test-and-set fails, indicating the client should
      -- restart a read-modify-write sequence. (c) Use \`FAILED_PRECONDITION\` if
      -- the client should not retry until the system state has been explicitly
      -- fixed. For example, if an \"rmdir\" fails because the directory is
      -- non-empty, \`FAILED_PRECONDITION\` should be returned since the client
      -- should not retry unless the files are deleted from the directory. HTTP
      -- Mapping: 400 Bad Request
    | Aborted
      -- ^ @ABORTED@
      -- The operation was aborted, typically due to a concurrency issue such as
      -- a sequencer check failure or transaction abort. See the guidelines above
      -- for deciding between \`FAILED_PRECONDITION\`, \`ABORTED\`, and
      -- \`UNAVAILABLE\`. HTTP Mapping: 409 Conflict
    | OutOfRange
      -- ^ @OUT_OF_RANGE@
      -- The operation was attempted past the valid range. E.g., seeking or
      -- reading past end-of-file. Unlike \`INVALID_ARGUMENT\`, this error
      -- indicates a problem that may be fixed if the system state changes. For
      -- example, a 32-bit file system will generate \`INVALID_ARGUMENT\` if
      -- asked to read at an offset that is not in the range [0,2^32-1], but it
      -- will generate \`OUT_OF_RANGE\` if asked to read from an offset past the
      -- current file size. There is a fair bit of overlap between
      -- \`FAILED_PRECONDITION\` and \`OUT_OF_RANGE\`. We recommend using
      -- \`OUT_OF_RANGE\` (the more specific error) when it applies so that
      -- callers who are iterating through a space can easily look for an
      -- \`OUT_OF_RANGE\` error to detect when they are done. HTTP Mapping: 400
      -- Bad Request
    | Unimplemented
      -- ^ @UNIMPLEMENTED@
      -- The operation is not implemented or is not supported\/enabled in this
      -- service. HTTP Mapping: 501 Not Implemented
    | Internal
      -- ^ @INTERNAL@
      -- Internal errors. This means that some invariants expected by the
      -- underlying system have been broken. This error code is reserved for
      -- serious errors. HTTP Mapping: 500 Internal Server Error
    | Unavailable
      -- ^ @UNAVAILABLE@
      -- The service is currently unavailable. This is most likely a transient
      -- condition, which can be corrected by retrying with a backoff. Note that
      -- it is not always safe to retry non-idempotent operations. See the
      -- guidelines above for deciding between \`FAILED_PRECONDITION\`,
      -- \`ABORTED\`, and \`UNAVAILABLE\`. HTTP Mapping: 503 Service Unavailable
    | DataLoss
      -- ^ @DATA_LOSS@
      -- Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server
      -- Error
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActionStatusStatusCode

instance FromHttpApiData ActionStatusStatusCode where
    parseQueryParam = \case
        "OK" -> Right OK
        "CANCELLED" -> Right Cancelled
        "UNKNOWN" -> Right Unknown
        "INVALID_ARGUMENT" -> Right InvalidArgument
        "DEADLINE_EXCEEDED" -> Right DeadlineExceeded
        "NOT_FOUND" -> Right NotFound
        "ALREADY_EXISTS" -> Right AlreadyExists
        "PERMISSION_DENIED" -> Right PermissionDenied
        "UNAUTHENTICATED" -> Right Unauthenticated
        "RESOURCE_EXHAUSTED" -> Right ResourceExhausted
        "FAILED_PRECONDITION" -> Right FailedPrecondition
        "ABORTED" -> Right Aborted
        "OUT_OF_RANGE" -> Right OutOfRange
        "UNIMPLEMENTED" -> Right Unimplemented
        "INTERNAL" -> Right Internal
        "UNAVAILABLE" -> Right Unavailable
        "DATA_LOSS" -> Right DataLoss
        x -> Left ("Unable to parse ActionStatusStatusCode from: " <> x)

instance ToHttpApiData ActionStatusStatusCode where
    toQueryParam = \case
        OK -> "OK"
        Cancelled -> "CANCELLED"
        Unknown -> "UNKNOWN"
        InvalidArgument -> "INVALID_ARGUMENT"
        DeadlineExceeded -> "DEADLINE_EXCEEDED"
        NotFound -> "NOT_FOUND"
        AlreadyExists -> "ALREADY_EXISTS"
        PermissionDenied -> "PERMISSION_DENIED"
        Unauthenticated -> "UNAUTHENTICATED"
        ResourceExhausted -> "RESOURCE_EXHAUSTED"
        FailedPrecondition -> "FAILED_PRECONDITION"
        Aborted -> "ABORTED"
        OutOfRange -> "OUT_OF_RANGE"
        Unimplemented -> "UNIMPLEMENTED"
        Internal -> "INTERNAL"
        Unavailable -> "UNAVAILABLE"
        DataLoss -> "DATA_LOSS"

instance FromJSON ActionStatusStatusCode where
    parseJSON = parseJSONText "ActionStatusStatusCode"

instance ToJSON ActionStatusStatusCode where
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

-- | The style of the text, for example, a single line or multiple lines.
data GoogleAppsCardV1TextInputType
    = SingleLine
      -- ^ @SINGLE_LINE@
      -- The text is put into a single line.
    | MultipleLine
      -- ^ @MULTIPLE_LINE@
      -- The text is put into multiple lines.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1TextInputType

instance FromHttpApiData GoogleAppsCardV1TextInputType where
    parseQueryParam = \case
        "SINGLE_LINE" -> Right SingleLine
        "MULTIPLE_LINE" -> Right MultipleLine
        x -> Left ("Unable to parse GoogleAppsCardV1TextInputType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1TextInputType where
    toQueryParam = \case
        SingleLine -> "SINGLE_LINE"
        MultipleLine -> "MULTIPLE_LINE"

instance FromJSON GoogleAppsCardV1TextInputType where
    parseJSON = parseJSONText "GoogleAppsCardV1TextInputType"

instance ToJSON GoogleAppsCardV1TextInputType where
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

data GoogleAppsCardV1ActionLoadIndicator
    = Spinner
      -- ^ @SPINNER@
      -- Displays a spinner to indicate that content is loading.
    | None
      -- ^ @NONE@
      -- Nothing is displayed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1ActionLoadIndicator

instance FromHttpApiData GoogleAppsCardV1ActionLoadIndicator where
    parseQueryParam = \case
        "SPINNER" -> Right Spinner
        "NONE" -> Right None
        x -> Left ("Unable to parse GoogleAppsCardV1ActionLoadIndicator from: " <> x)

instance ToHttpApiData GoogleAppsCardV1ActionLoadIndicator where
    toQueryParam = \case
        Spinner -> "SPINNER"
        None -> "NONE"

instance FromJSON GoogleAppsCardV1ActionLoadIndicator where
    parseJSON = parseJSONText "GoogleAppsCardV1ActionLoadIndicator"

instance ToJSON GoogleAppsCardV1ActionLoadIndicator where
    toJSON = toJSONText

-- | The source of the attachment.
data AttachmentSource
    = SourceUnspecified
      -- ^ @SOURCE_UNSPECIFIED@
    | DriveFile
      -- ^ @DRIVE_FILE@
    | UploadedContent
      -- ^ @UPLOADED_CONTENT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AttachmentSource

instance FromHttpApiData AttachmentSource where
    parseQueryParam = \case
        "SOURCE_UNSPECIFIED" -> Right SourceUnspecified
        "DRIVE_FILE" -> Right DriveFile
        "UPLOADED_CONTENT" -> Right UploadedContent
        x -> Left ("Unable to parse AttachmentSource from: " <> x)

instance ToHttpApiData AttachmentSource where
    toQueryParam = \case
        SourceUnspecified -> "SOURCE_UNSPECIFIED"
        DriveFile -> "DRIVE_FILE"
        UploadedContent -> "UPLOADED_CONTENT"

instance FromJSON AttachmentSource where
    parseJSON = parseJSONText "AttachmentSource"

instance ToJSON AttachmentSource where
    toJSON = toJSONText

-- | Output only. The type of a space. This is deprecated. Use
-- \`single_user_bot_dm\` instead.
data SpaceType
    = STTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
    | STRoom
      -- ^ @ROOM@
      -- Multi-user spaces such as rooms and DMs between humans.
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

-- | The crop style applied to the image. In some cases, applying a
-- \`CIRCLE\` crop causes the image to be drawn larger than a standard
-- icon.
data GoogleAppsCardV1IconImageType
    = GACVIITSquare
      -- ^ @SQUARE@
      -- Applies no cropping to the image.
    | GACVIITCircle
      -- ^ @CIRCLE@
      -- Applies a circular mask to the image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1IconImageType

instance FromHttpApiData GoogleAppsCardV1IconImageType where
    parseQueryParam = \case
        "SQUARE" -> Right GACVIITSquare
        "CIRCLE" -> Right GACVIITCircle
        x -> Left ("Unable to parse GoogleAppsCardV1IconImageType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1IconImageType where
    toQueryParam = \case
        GACVIITSquare -> "SQUARE"
        GACVIITCircle -> "CIRCLE"

instance FromJSON GoogleAppsCardV1IconImageType where
    parseJSON = parseJSONText "GoogleAppsCardV1IconImageType"

instance ToJSON GoogleAppsCardV1IconImageType where
    toJSON = toJSONText

-- | The layout to use for the grid item.
data GoogleAppsCardV1GridItemLayout
    = GridItemLayoutUnspecified
      -- ^ @GRID_ITEM_LAYOUT_UNSPECIFIED@
      -- No layout specified.
    | TextBelow
      -- ^ @TEXT_BELOW@
      -- The title and subtitle are shown below the grid item\'s image.
    | TextAbove
      -- ^ @TEXT_ABOVE@
      -- The title and subtitle are shown above the grid item\'s image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1GridItemLayout

instance FromHttpApiData GoogleAppsCardV1GridItemLayout where
    parseQueryParam = \case
        "GRID_ITEM_LAYOUT_UNSPECIFIED" -> Right GridItemLayoutUnspecified
        "TEXT_BELOW" -> Right TextBelow
        "TEXT_ABOVE" -> Right TextAbove
        x -> Left ("Unable to parse GoogleAppsCardV1GridItemLayout from: " <> x)

instance ToHttpApiData GoogleAppsCardV1GridItemLayout where
    toQueryParam = \case
        GridItemLayoutUnspecified -> "GRID_ITEM_LAYOUT_UNSPECIFIED"
        TextBelow -> "TEXT_BELOW"
        TextAbove -> "TEXT_ABOVE"

instance FromJSON GoogleAppsCardV1GridItemLayout where
    parseJSON = parseJSONText "GoogleAppsCardV1GridItemLayout"

instance ToJSON GoogleAppsCardV1GridItemLayout where
    toJSON = toJSONText

-- | The type of the date\/time picker.
data GoogleAppsCardV1DateTimePickerType
    = DateAndTime
      -- ^ @DATE_AND_TIME@
      -- The user can select a date and time.
    | DateOnly
      -- ^ @DATE_ONLY@
      -- The user can only select a date.
    | TimeOnly
      -- ^ @TIME_ONLY@
      -- The user can only select a time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1DateTimePickerType

instance FromHttpApiData GoogleAppsCardV1DateTimePickerType where
    parseQueryParam = \case
        "DATE_AND_TIME" -> Right DateAndTime
        "DATE_ONLY" -> Right DateOnly
        "TIME_ONLY" -> Right TimeOnly
        x -> Left ("Unable to parse GoogleAppsCardV1DateTimePickerType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1DateTimePickerType where
    toQueryParam = \case
        DateAndTime -> "DATE_AND_TIME"
        DateOnly -> "DATE_ONLY"
        TimeOnly -> "TIME_ONLY"

instance FromJSON GoogleAppsCardV1DateTimePickerType where
    parseJSON = parseJSONText "GoogleAppsCardV1DateTimePickerType"

instance ToJSON GoogleAppsCardV1DateTimePickerType where
    toJSON = toJSONText

-- | The type of this annotation.
data AnnotationType
    = ATAnnotationTypeUnspecified
      -- ^ @ANNOTATION_TYPE_UNSPECIFIED@
      -- Default value for the enum. DO NOT USE.
    | ATUserMention
      -- ^ @USER_MENTION@
      -- A user is mentioned.
    | ATSlashCommand
      -- ^ @SLASH_COMMAND@
      -- A slash command is invoked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnnotationType

instance FromHttpApiData AnnotationType where
    parseQueryParam = \case
        "ANNOTATION_TYPE_UNSPECIFIED" -> Right ATAnnotationTypeUnspecified
        "USER_MENTION" -> Right ATUserMention
        "SLASH_COMMAND" -> Right ATSlashCommand
        x -> Left ("Unable to parse AnnotationType from: " <> x)

instance ToHttpApiData AnnotationType where
    toQueryParam = \case
        ATAnnotationTypeUnspecified -> "ANNOTATION_TYPE_UNSPECIFIED"
        ATUserMention -> "USER_MENTION"
        ATSlashCommand -> "SLASH_COMMAND"

instance FromJSON AnnotationType where
    parseJSON = parseJSONText "AnnotationType"

instance ToJSON AnnotationType where
    toJSON = toJSONText

-- | The type of slash command.
data SlashCommandMetadataType
    = SCMTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default value for the enum. DO NOT USE.
    | SCMTAdd
      -- ^ @ADD@
      -- Add bot to space.
    | SCMTInvoke
      -- ^ @INVOKE@
      -- Invoke slash command in space.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SlashCommandMetadataType

instance FromHttpApiData SlashCommandMetadataType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right SCMTTypeUnspecified
        "ADD" -> Right SCMTAdd
        "INVOKE" -> Right SCMTInvoke
        x -> Left ("Unable to parse SlashCommandMetadataType from: " <> x)

instance ToHttpApiData SlashCommandMetadataType where
    toQueryParam = \case
        SCMTTypeUnspecified -> "TYPE_UNSPECIFIED"
        SCMTAdd -> "ADD"
        SCMTInvoke -> "INVOKE"

instance FromJSON SlashCommandMetadataType where
    parseJSON = parseJSONText "SlashCommandMetadataType"

instance ToJSON SlashCommandMetadataType where
    toJSON = toJSONText

-- | The control type, either switch or checkbox.
data GoogleAppsCardV1SwitchControlControlType
    = Switch
      -- ^ @SWITCH@
    | Checkbox
      -- ^ @CHECKBOX@
      -- Deprecated in favor of \`CHECK_BOX\`.
    | CheckBox
      -- ^ @CHECK_BOX@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1SwitchControlControlType

instance FromHttpApiData GoogleAppsCardV1SwitchControlControlType where
    parseQueryParam = \case
        "SWITCH" -> Right Switch
        "CHECKBOX" -> Right Checkbox
        "CHECK_BOX" -> Right CheckBox
        x -> Left ("Unable to parse GoogleAppsCardV1SwitchControlControlType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1SwitchControlControlType where
    toQueryParam = \case
        Switch -> "SWITCH"
        Checkbox -> "CHECKBOX"
        CheckBox -> "CHECK_BOX"

instance FromJSON GoogleAppsCardV1SwitchControlControlType where
    parseJSON = parseJSONText "GoogleAppsCardV1SwitchControlControlType"

instance ToJSON GoogleAppsCardV1SwitchControlControlType where
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

data GoogleAppsCardV1OpenLinkOpenAs
    = FullSize
      -- ^ @FULL_SIZE@
      -- The link opens as a full size window (if that\'s the frame used by the
      -- client.
    | Overlay
      -- ^ @OVERLAY@
      -- The link opens as an overlay, such as a pop-up.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1OpenLinkOpenAs

instance FromHttpApiData GoogleAppsCardV1OpenLinkOpenAs where
    parseQueryParam = \case
        "FULL_SIZE" -> Right FullSize
        "OVERLAY" -> Right Overlay
        x -> Left ("Unable to parse GoogleAppsCardV1OpenLinkOpenAs from: " <> x)

instance ToHttpApiData GoogleAppsCardV1OpenLinkOpenAs where
    toQueryParam = \case
        FullSize -> "FULL_SIZE"
        Overlay -> "OVERLAY"

instance FromJSON GoogleAppsCardV1OpenLinkOpenAs where
    parseJSON = parseJSONText "GoogleAppsCardV1OpenLinkOpenAs"

instance ToJSON GoogleAppsCardV1OpenLinkOpenAs where
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

data GoogleAppsCardV1OpenLinkOnClose
    = Nothing'
      -- ^ @NOTHING@
      -- Doesn’t reload the card after the child window closes. Reloads the card
      -- after the child window closes. If used in conjunction with
      -- [OpenAs.OVERLAY](\/workspace\/add-ons\/reference\/rpc\/google.apps.card.v1#openas),
      -- the child window acts as a modal dialog and the main card is blocked
      -- until the child window closes.
    | ReLoad
      -- ^ @RELOAD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1OpenLinkOnClose

instance FromHttpApiData GoogleAppsCardV1OpenLinkOnClose where
    parseQueryParam = \case
        "NOTHING" -> Right Nothing'
        "RELOAD" -> Right ReLoad
        x -> Left ("Unable to parse GoogleAppsCardV1OpenLinkOnClose from: " <> x)

instance ToHttpApiData GoogleAppsCardV1OpenLinkOnClose where
    toQueryParam = \case
        Nothing' -> "NOTHING"
        ReLoad -> "RELOAD"

instance FromJSON GoogleAppsCardV1OpenLinkOnClose where
    parseJSON = parseJSONText "GoogleAppsCardV1OpenLinkOnClose"

instance ToJSON GoogleAppsCardV1OpenLinkOnClose where
    toJSON = toJSONText

-- | The border type.
data GoogleAppsCardV1BOrderStyleType
    = BOrderTypeUnspecified
      -- ^ @BORDER_TYPE_UNSPECIFIED@
      -- No value specified.
    | NoBOrder
      -- ^ @NO_BORDER@
      -- No border.
    | Stroke
      -- ^ @STROKE@
      -- Outline.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1BOrderStyleType

instance FromHttpApiData GoogleAppsCardV1BOrderStyleType where
    parseQueryParam = \case
        "BORDER_TYPE_UNSPECIFIED" -> Right BOrderTypeUnspecified
        "NO_BORDER" -> Right NoBOrder
        "STROKE" -> Right Stroke
        x -> Left ("Unable to parse GoogleAppsCardV1BOrderStyleType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1BOrderStyleType where
    toQueryParam = \case
        BOrderTypeUnspecified -> "BORDER_TYPE_UNSPECIFIED"
        NoBOrder -> "NO_BORDER"
        Stroke -> "STROKE"

instance FromJSON GoogleAppsCardV1BOrderStyleType where
    parseJSON = parseJSONText "GoogleAppsCardV1BOrderStyleType"

instance ToJSON GoogleAppsCardV1BOrderStyleType where
    toJSON = toJSONText

data GoogleAppsCardV1SelectionInputType
    = GACVSITCheckBox
      -- ^ @CHECK_BOX@
      -- The selection type is a checkbox.
    | GACVSITRadioButton
      -- ^ @RADIO_BUTTON@
      -- The selection type is a radio button.
    | GACVSITSwitch
      -- ^ @SWITCH@
      -- The selection type is a switch.
    | GACVSITDropdown
      -- ^ @DROPDOWN@
      -- The selection type is a dropdown.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1SelectionInputType

instance FromHttpApiData GoogleAppsCardV1SelectionInputType where
    parseQueryParam = \case
        "CHECK_BOX" -> Right GACVSITCheckBox
        "RADIO_BUTTON" -> Right GACVSITRadioButton
        "SWITCH" -> Right GACVSITSwitch
        "DROPDOWN" -> Right GACVSITDropdown
        x -> Left ("Unable to parse GoogleAppsCardV1SelectionInputType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1SelectionInputType where
    toQueryParam = \case
        GACVSITCheckBox -> "CHECK_BOX"
        GACVSITRadioButton -> "RADIO_BUTTON"
        GACVSITSwitch -> "SWITCH"
        GACVSITDropdown -> "DROPDOWN"

instance FromJSON GoogleAppsCardV1SelectionInputType where
    parseJSON = parseJSONText "GoogleAppsCardV1SelectionInputType"

instance ToJSON GoogleAppsCardV1SelectionInputType where
    toJSON = toJSONText

-- | The crop type.
data GoogleAppsCardV1ImageCropStyleType
    = GACVICSTImageCropTypeUnspecified
      -- ^ @IMAGE_CROP_TYPE_UNSPECIFIED@
      -- No value specified.
    | GACVICSTSquare
      -- ^ @SQUARE@
      -- Applies a square crop.
    | GACVICSTCircle
      -- ^ @CIRCLE@
      -- Applies a circular crop.
    | GACVICSTRectangleCustom
      -- ^ @RECTANGLE_CUSTOM@
      -- Applies a rectangular crop with a custom aspect ratio.
    | GACVICSTRectangle43
      -- ^ @RECTANGLE_4_3@
      -- Applies a rectangular crop with a 4:3 aspect ratio.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1ImageCropStyleType

instance FromHttpApiData GoogleAppsCardV1ImageCropStyleType where
    parseQueryParam = \case
        "IMAGE_CROP_TYPE_UNSPECIFIED" -> Right GACVICSTImageCropTypeUnspecified
        "SQUARE" -> Right GACVICSTSquare
        "CIRCLE" -> Right GACVICSTCircle
        "RECTANGLE_CUSTOM" -> Right GACVICSTRectangleCustom
        "RECTANGLE_4_3" -> Right GACVICSTRectangle43
        x -> Left ("Unable to parse GoogleAppsCardV1ImageCropStyleType from: " <> x)

instance ToHttpApiData GoogleAppsCardV1ImageCropStyleType where
    toQueryParam = \case
        GACVICSTImageCropTypeUnspecified -> "IMAGE_CROP_TYPE_UNSPECIFIED"
        GACVICSTSquare -> "SQUARE"
        GACVICSTCircle -> "CIRCLE"
        GACVICSTRectangleCustom -> "RECTANGLE_CUSTOM"
        GACVICSTRectangle43 -> "RECTANGLE_4_3"

instance FromJSON GoogleAppsCardV1ImageCropStyleType where
    parseJSON = parseJSONText "GoogleAppsCardV1ImageCropStyleType"

instance ToJSON GoogleAppsCardV1ImageCropStyleType where
    toJSON = toJSONText

-- | The display style for peekCardHeader.
data GoogleAppsCardV1CardDisplayStyle
    = DisplayStyleUnspecified
      -- ^ @DISPLAY_STYLE_UNSPECIFIED@
    | Peek
      -- ^ @PEEK@
      -- The header of the card appears at the bottom of the sidebar, partially
      -- covering the current top card of the stack. Clicking the header pops the
      -- card into the card stack. If the card has no header, a generated header
      -- is used instead.
    | Replace
      -- ^ @REPLACE@
      -- The card is shown by replacing the view of the top card in the card
      -- stack.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsCardV1CardDisplayStyle

instance FromHttpApiData GoogleAppsCardV1CardDisplayStyle where
    parseQueryParam = \case
        "DISPLAY_STYLE_UNSPECIFIED" -> Right DisplayStyleUnspecified
        "PEEK" -> Right Peek
        "REPLACE" -> Right Replace
        x -> Left ("Unable to parse GoogleAppsCardV1CardDisplayStyle from: " <> x)

instance ToHttpApiData GoogleAppsCardV1CardDisplayStyle where
    toQueryParam = \case
        DisplayStyleUnspecified -> "DISPLAY_STYLE_UNSPECIFIED"
        Peek -> "PEEK"
        Replace -> "REPLACE"

instance FromJSON GoogleAppsCardV1CardDisplayStyle where
    parseJSON = parseJSONText "GoogleAppsCardV1CardDisplayStyle"

instance ToJSON GoogleAppsCardV1CardDisplayStyle where
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
