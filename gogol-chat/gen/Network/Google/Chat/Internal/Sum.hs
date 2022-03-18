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
-- Module      : Network.Google.Chat.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Chat.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ActionResponse_Type
    ActionResponse_Type
      ( ActionResponse_Type_TYPEUNSPECIFIED,
        ActionResponse_Type_NEWMESSAGE,
        ActionResponse_Type_UPDATEMESSAGE,
        ActionResponse_Type_UPDATEUSERMESSAGECARDS,
        ActionResponse_Type_REQUESTCONFIG,
        ActionResponse_Type_Dialog,
        ..
      ),

    -- * ActionStatus_StatusCode
    ActionStatus_StatusCode
      ( ActionStatus_StatusCode_OK,
        ActionStatus_StatusCode_Cancelled,
        ActionStatus_StatusCode_Unknown,
        ActionStatus_StatusCode_INVALIDARGUMENT,
        ActionStatus_StatusCode_DEADLINEEXCEEDED,
        ActionStatus_StatusCode_NOTFOUND,
        ActionStatus_StatusCode_ALREADYEXISTS,
        ActionStatus_StatusCode_PERMISSIONDENIED,
        ActionStatus_StatusCode_Unauthenticated,
        ActionStatus_StatusCode_RESOURCEEXHAUSTED,
        ActionStatus_StatusCode_FAILEDPRECONDITION,
        ActionStatus_StatusCode_Aborted,
        ActionStatus_StatusCode_OUTOFRANGE,
        ActionStatus_StatusCode_Unimplemented,
        ActionStatus_StatusCode_Internal,
        ActionStatus_StatusCode_Unavailable,
        ActionStatus_StatusCode_DATALOSS,
        ..
      ),

    -- * Annotation_Type
    Annotation_Type
      ( Annotation_Type_ANNOTATIONTYPEUNSPECIFIED,
        Annotation_Type_USERMENTION,
        Annotation_Type_SLASHCOMMAND,
        ..
      ),

    -- * Attachment_Source
    Attachment_Source
      ( Attachment_Source_SOURCEUNSPECIFIED,
        Attachment_Source_DRIVEFILE,
        Attachment_Source_UPLOADEDCONTENT,
        ..
      ),

    -- * CardHeader_ImageStyle
    CardHeader_ImageStyle
      ( CardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED,
        CardHeader_ImageStyle_Image,
        CardHeader_ImageStyle_Avatar,
        ..
      ),

    -- * CommonEventObject_HostApp
    CommonEventObject_HostApp
      ( CommonEventObject_HostApp_UNSPECIFIEDHOSTAPP,
        CommonEventObject_HostApp_Gmail,
        CommonEventObject_HostApp_Calendar,
        CommonEventObject_HostApp_Drive,
        CommonEventObject_HostApp_Demo,
        CommonEventObject_HostApp_Docs,
        CommonEventObject_HostApp_Sheets,
        CommonEventObject_HostApp_Slides,
        CommonEventObject_HostApp_Drawings,
        CommonEventObject_HostApp_Chat,
        ..
      ),

    -- * CommonEventObject_Platform
    CommonEventObject_Platform
      ( CommonEventObject_Platform_UNKNOWNPLATFORM,
        CommonEventObject_Platform_Web,
        CommonEventObject_Platform_Ios,
        CommonEventObject_Platform_Android,
        ..
      ),

    -- * DeprecatedEvent_DialogEventType
    DeprecatedEvent_DialogEventType
      ( DeprecatedEvent_DialogEventType_TYPEUNSPECIFIED,
        DeprecatedEvent_DialogEventType_REQUESTDIALOG,
        DeprecatedEvent_DialogEventType_SUBMITDIALOG,
        DeprecatedEvent_DialogEventType_CANCELDIALOG,
        ..
      ),

    -- * DeprecatedEvent_Type
    DeprecatedEvent_Type
      ( DeprecatedEvent_Type_Unspecified,
        DeprecatedEvent_Type_Message,
        DeprecatedEvent_Type_ADDEDTOSPACE,
        DeprecatedEvent_Type_REMOVEDFROMSPACE,
        DeprecatedEvent_Type_CARDCLICKED,
        ..
      ),

    -- * GoogleAppsCardV1Action_LoadIndicator
    GoogleAppsCardV1Action_LoadIndicator
      ( GoogleAppsCardV1Action_LoadIndicator_Spinner,
        GoogleAppsCardV1Action_LoadIndicator_None,
        ..
      ),

    -- * GoogleAppsCardV1BorderStyle_Type
    GoogleAppsCardV1BorderStyle_Type
      ( GoogleAppsCardV1BorderStyle_Type_BORDERTYPEUNSPECIFIED,
        GoogleAppsCardV1BorderStyle_Type_NOBORDER,
        GoogleAppsCardV1BorderStyle_Type_Stroke,
        ..
      ),

    -- * GoogleAppsCardV1Card_DisplayStyle
    GoogleAppsCardV1Card_DisplayStyle
      ( GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED,
        GoogleAppsCardV1Card_DisplayStyle_Peek,
        GoogleAppsCardV1Card_DisplayStyle_Replace,
        ..
      ),

    -- * GoogleAppsCardV1CardHeader_ImageType
    GoogleAppsCardV1CardHeader_ImageType
      ( GoogleAppsCardV1CardHeader_ImageType_Square,
        GoogleAppsCardV1CardHeader_ImageType_Circle,
        ..
      ),

    -- * GoogleAppsCardV1DateTimePicker_Type
    GoogleAppsCardV1DateTimePicker_Type
      ( GoogleAppsCardV1DateTimePicker_Type_DATEANDTIME,
        GoogleAppsCardV1DateTimePicker_Type_DATEONLY,
        GoogleAppsCardV1DateTimePicker_Type_TIMEONLY,
        ..
      ),

    -- * GoogleAppsCardV1GridItem_Layout
    GoogleAppsCardV1GridItem_Layout
      ( GoogleAppsCardV1GridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED,
        GoogleAppsCardV1GridItem_Layout_TEXTBELOW,
        GoogleAppsCardV1GridItem_Layout_TEXTABOVE,
        ..
      ),

    -- * GoogleAppsCardV1GridItem_TextAlignment
    GoogleAppsCardV1GridItem_TextAlignment
      ( GoogleAppsCardV1GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        GoogleAppsCardV1GridItem_TextAlignment_Start,
        GoogleAppsCardV1GridItem_TextAlignment_Center,
        GoogleAppsCardV1GridItem_TextAlignment_End,
        ..
      ),

    -- * GoogleAppsCardV1Icon_ImageType
    GoogleAppsCardV1Icon_ImageType
      ( GoogleAppsCardV1Icon_ImageType_Square,
        GoogleAppsCardV1Icon_ImageType_Circle,
        ..
      ),

    -- * GoogleAppsCardV1ImageCropStyle_Type
    GoogleAppsCardV1ImageCropStyle_Type
      ( GoogleAppsCardV1ImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED,
        GoogleAppsCardV1ImageCropStyle_Type_Square,
        GoogleAppsCardV1ImageCropStyle_Type_Circle,
        GoogleAppsCardV1ImageCropStyle_Type_RECTANGLECUSTOM,
        GoogleAppsCardV1ImageCropStyle_Type_RECTANGLE_4_3,
        ..
      ),

    -- * GoogleAppsCardV1OpenLink_OnClose
    GoogleAppsCardV1OpenLink_OnClose
      ( GoogleAppsCardV1OpenLink_OnClose_Nothing',
        GoogleAppsCardV1OpenLink_OnClose_Reload,
        ..
      ),

    -- * GoogleAppsCardV1OpenLink_OpenAs
    GoogleAppsCardV1OpenLink_OpenAs
      ( GoogleAppsCardV1OpenLink_OpenAs_FULLSIZE,
        GoogleAppsCardV1OpenLink_OpenAs_Overlay,
        ..
      ),

    -- * GoogleAppsCardV1SelectionInput_Type
    GoogleAppsCardV1SelectionInput_Type
      ( GoogleAppsCardV1SelectionInput_Type_CHECKBOX,
        GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON,
        GoogleAppsCardV1SelectionInput_Type_Switch,
        GoogleAppsCardV1SelectionInput_Type_Dropdown,
        ..
      ),

    -- * GoogleAppsCardV1SwitchControl_ControlType
    GoogleAppsCardV1SwitchControl_ControlType
      ( GoogleAppsCardV1SwitchControl_ControlType_Switch,
        GoogleAppsCardV1SwitchControl_ControlType_Checkbox,
        GoogleAppsCardV1SwitchControl_ControlType_CHECKBOX,
        ..
      ),

    -- * GoogleAppsCardV1TextInput_Type
    GoogleAppsCardV1TextInput_Type
      ( GoogleAppsCardV1TextInput_Type_SINGLELINE,
        GoogleAppsCardV1TextInput_Type_MULTIPLELINE,
        ..
      ),

    -- * GoogleAppsCardV1Widget_HorizontalAlignment
    GoogleAppsCardV1Widget_HorizontalAlignment
      ( GoogleAppsCardV1Widget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        GoogleAppsCardV1Widget_HorizontalAlignment_Start,
        GoogleAppsCardV1Widget_HorizontalAlignment_Center,
        GoogleAppsCardV1Widget_HorizontalAlignment_End,
        ..
      ),

    -- * ImageButton_Icon
    ImageButton_Icon
      ( ImageButton_Icon_ICONUNSPECIFIED,
        ImageButton_Icon_Airplane,
        ImageButton_Icon_Bookmark,
        ImageButton_Icon_Bus,
        ImageButton_Icon_Car,
        ImageButton_Icon_Clock,
        ImageButton_Icon_CONFIRMATIONNUMBERICON,
        ImageButton_Icon_Dollar,
        ImageButton_Icon_Description,
        ImageButton_Icon_Email,
        ImageButton_Icon_EVENTPERFORMER,
        ImageButton_Icon_EVENTSEAT,
        ImageButton_Icon_FLIGHTARRIVAL,
        ImageButton_Icon_FLIGHTDEPARTURE,
        ImageButton_Icon_Hotel,
        ImageButton_Icon_HOTELROOMTYPE,
        ImageButton_Icon_Invite,
        ImageButton_Icon_MAPPIN,
        ImageButton_Icon_Membership,
        ImageButton_Icon_MULTIPLEPEOPLE,
        ImageButton_Icon_Offer,
        ImageButton_Icon_Person,
        ImageButton_Icon_Phone,
        ImageButton_Icon_RESTAURANTICON,
        ImageButton_Icon_SHOPPINGCART,
        ImageButton_Icon_Star,
        ImageButton_Icon_Store,
        ImageButton_Icon_Ticket,
        ImageButton_Icon_Train,
        ImageButton_Icon_VIDEOCAMERA,
        ImageButton_Icon_VIDEOPLAY,
        ..
      ),

    -- * KeyValue_Icon
    KeyValue_Icon
      ( KeyValue_Icon_ICONUNSPECIFIED,
        KeyValue_Icon_Airplane,
        KeyValue_Icon_Bookmark,
        KeyValue_Icon_Bus,
        KeyValue_Icon_Car,
        KeyValue_Icon_Clock,
        KeyValue_Icon_CONFIRMATIONNUMBERICON,
        KeyValue_Icon_Dollar,
        KeyValue_Icon_Description,
        KeyValue_Icon_Email,
        KeyValue_Icon_EVENTPERFORMER,
        KeyValue_Icon_EVENTSEAT,
        KeyValue_Icon_FLIGHTARRIVAL,
        KeyValue_Icon_FLIGHTDEPARTURE,
        KeyValue_Icon_Hotel,
        KeyValue_Icon_HOTELROOMTYPE,
        KeyValue_Icon_Invite,
        KeyValue_Icon_MAPPIN,
        KeyValue_Icon_Membership,
        KeyValue_Icon_MULTIPLEPEOPLE,
        KeyValue_Icon_Offer,
        KeyValue_Icon_Person,
        KeyValue_Icon_Phone,
        KeyValue_Icon_RESTAURANTICON,
        KeyValue_Icon_SHOPPINGCART,
        KeyValue_Icon_Star,
        KeyValue_Icon_Store,
        KeyValue_Icon_Ticket,
        KeyValue_Icon_Train,
        KeyValue_Icon_VIDEOCAMERA,
        KeyValue_Icon_VIDEOPLAY,
        ..
      ),

    -- * Membership_State
    Membership_State
      ( Membership_State_MEMBERSHIPSTATEUNSPECIFIED,
        Membership_State_Joined,
        Membership_State_Invited,
        Membership_State_NOTAMEMBER,
        ..
      ),

    -- * SlashCommandMetadata_Type
    SlashCommandMetadata_Type
      ( SlashCommandMetadata_Type_TYPEUNSPECIFIED,
        SlashCommandMetadata_Type_Add,
        SlashCommandMetadata_Type_Invoke,
        ..
      ),

    -- * Space_Type
    Space_Type
      ( Space_Type_TYPEUNSPECIFIED,
        Space_Type_Room,
        Space_Type_DM,
        ..
      ),

    -- * User_Type
    User_Type
      ( User_Type_TYPEUNSPECIFIED,
        User_Type_Human,
        User_Type_Bot,
        ..
      ),

    -- * UserMentionMetadata_Type
    UserMentionMetadata_Type
      ( UserMentionMetadata_Type_TYPEUNSPECIFIED,
        UserMentionMetadata_Type_Add,
        UserMentionMetadata_Type_Mention,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The type of bot response.
newtype ActionResponse_Type = ActionResponse_Type {fromActionResponse_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default type; will be handled as NEW_MESSAGE.
pattern ActionResponse_Type_TYPEUNSPECIFIED :: ActionResponse_Type
pattern ActionResponse_Type_TYPEUNSPECIFIED = ActionResponse_Type "TYPE_UNSPECIFIED"

-- | Post as a new message in the topic.
pattern ActionResponse_Type_NEWMESSAGE :: ActionResponse_Type
pattern ActionResponse_Type_NEWMESSAGE = ActionResponse_Type "NEW_MESSAGE"

-- | Update the bot\'s message. This is only permitted on a CARD_CLICKED event where the message sender type is BOT.
pattern ActionResponse_Type_UPDATEMESSAGE :: ActionResponse_Type
pattern ActionResponse_Type_UPDATEMESSAGE = ActionResponse_Type "UPDATE_MESSAGE"

-- | Update the cards on a user\'s message. This is only permitted as a response to a MESSAGE event with a matched url, or a CARD_CLICKED event where the message sender type is HUMAN. Text will be ignored.
pattern ActionResponse_Type_UPDATEUSERMESSAGECARDS :: ActionResponse_Type
pattern ActionResponse_Type_UPDATEUSERMESSAGECARDS = ActionResponse_Type "UPDATE_USER_MESSAGE_CARDS"

-- | Privately ask the user for additional auth or config.
pattern ActionResponse_Type_REQUESTCONFIG :: ActionResponse_Type
pattern ActionResponse_Type_REQUESTCONFIG = ActionResponse_Type "REQUEST_CONFIG"

-- | Presents a <https://developers.google.com/chat/how-tos/bot-dialogs dialog>.
pattern ActionResponse_Type_Dialog :: ActionResponse_Type
pattern ActionResponse_Type_Dialog = ActionResponse_Type "DIALOG"

{-# COMPLETE
  ActionResponse_Type_TYPEUNSPECIFIED,
  ActionResponse_Type_NEWMESSAGE,
  ActionResponse_Type_UPDATEMESSAGE,
  ActionResponse_Type_UPDATEUSERMESSAGECARDS,
  ActionResponse_Type_REQUESTCONFIG,
  ActionResponse_Type_Dialog,
  ActionResponse_Type
  #-}

-- | The status code.
newtype ActionStatus_StatusCode = ActionStatus_StatusCode {fromActionStatus_StatusCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not an error; returned on success HTTP Mapping: 200 OK
pattern ActionStatus_StatusCode_OK :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_OK = ActionStatus_StatusCode "OK"

-- | The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request
pattern ActionStatus_StatusCode_Cancelled :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_Cancelled = ActionStatus_StatusCode "CANCELLED"

-- | Unknown error. For example, this error may be returned when a @Status@ value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error
pattern ActionStatus_StatusCode_Unknown :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_Unknown = ActionStatus_StatusCode "UNKNOWN"

-- | The client specified an invalid argument. Note that this differs from @FAILED_PRECONDITION@. @INVALID_ARGUMENT@ indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
pattern ActionStatus_StatusCode_INVALIDARGUMENT :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_INVALIDARGUMENT = ActionStatus_StatusCode "INVALID_ARGUMENT"

-- | The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
pattern ActionStatus_StatusCode_DEADLINEEXCEEDED :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_DEADLINEEXCEEDED = ActionStatus_StatusCode "DEADLINE_EXCEEDED"

-- | Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, @NOT_FOUND@ may be used. If a request is denied for some users within a class of users, such as user-based access control, @PERMISSION_DENIED@ must be used. HTTP Mapping: 404 Not Found
pattern ActionStatus_StatusCode_NOTFOUND :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_NOTFOUND = ActionStatus_StatusCode "NOT_FOUND"

-- | The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict
pattern ActionStatus_StatusCode_ALREADYEXISTS :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_ALREADYEXISTS = ActionStatus_StatusCode "ALREADY_EXISTS"

-- | The caller does not have permission to execute the specified operation. @PERMISSION_DENIED@ must not be used for rejections caused by exhausting some resource (use @RESOURCE_EXHAUSTED@ instead for those errors). @PERMISSION_DENIED@ must not be used if the caller can not be identified (use @UNAUTHENTICATED@ instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
pattern ActionStatus_StatusCode_PERMISSIONDENIED :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_PERMISSIONDENIED = ActionStatus_StatusCode "PERMISSION_DENIED"

-- | The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized
pattern ActionStatus_StatusCode_Unauthenticated :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_Unauthenticated = ActionStatus_StatusCode "UNAUTHENTICATED"

-- | Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests
pattern ActionStatus_StatusCode_RESOURCEEXHAUSTED :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_RESOURCEEXHAUSTED = ActionStatus_StatusCode "RESOURCE_EXHAUSTED"

-- | The operation was rejected because the system is not in a state required for the operation\'s execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@: (a) Use @UNAVAILABLE@ if the client can retry just the failing call. (b) Use @ABORTED@ if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use @FAILED_PRECONDITION@ if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, @FAILED_PRECONDITION@ should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request
pattern ActionStatus_StatusCode_FAILEDPRECONDITION :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_FAILEDPRECONDITION = ActionStatus_StatusCode "FAILED_PRECONDITION"

-- | The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 409 Conflict
pattern ActionStatus_StatusCode_Aborted :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_Aborted = ActionStatus_StatusCode "ABORTED"

-- | The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike @INVALID_ARGUMENT@, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate @INVALID_ARGUMENT@ if asked to read at an offset that is not in the range [0,2^32-1], but it will generate @OUT_OF_RANGE@ if asked to read from an offset past the current file size. There is a fair bit of overlap between @FAILED_PRECONDITION@ and @OUT_OF_RANGE@. We recommend using @OUT_OF_RANGE@ (the more specific error) when it applies so that callers who are iterating through a space can easily look for an @OUT_OF_RANGE@ error to detect when they are done. HTTP Mapping: 400 Bad Request
pattern ActionStatus_StatusCode_OUTOFRANGE :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_OUTOFRANGE = ActionStatus_StatusCode "OUT_OF_RANGE"

-- | The operation is not implemented or is not supported\/enabled in this service. HTTP Mapping: 501 Not Implemented
pattern ActionStatus_StatusCode_Unimplemented :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_Unimplemented = ActionStatus_StatusCode "UNIMPLEMENTED"

-- | Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error
pattern ActionStatus_StatusCode_Internal :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_Internal = ActionStatus_StatusCode "INTERNAL"

-- | The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 503 Service Unavailable
pattern ActionStatus_StatusCode_Unavailable :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_Unavailable = ActionStatus_StatusCode "UNAVAILABLE"

-- | Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error
pattern ActionStatus_StatusCode_DATALOSS :: ActionStatus_StatusCode
pattern ActionStatus_StatusCode_DATALOSS = ActionStatus_StatusCode "DATA_LOSS"

{-# COMPLETE
  ActionStatus_StatusCode_OK,
  ActionStatus_StatusCode_Cancelled,
  ActionStatus_StatusCode_Unknown,
  ActionStatus_StatusCode_INVALIDARGUMENT,
  ActionStatus_StatusCode_DEADLINEEXCEEDED,
  ActionStatus_StatusCode_NOTFOUND,
  ActionStatus_StatusCode_ALREADYEXISTS,
  ActionStatus_StatusCode_PERMISSIONDENIED,
  ActionStatus_StatusCode_Unauthenticated,
  ActionStatus_StatusCode_RESOURCEEXHAUSTED,
  ActionStatus_StatusCode_FAILEDPRECONDITION,
  ActionStatus_StatusCode_Aborted,
  ActionStatus_StatusCode_OUTOFRANGE,
  ActionStatus_StatusCode_Unimplemented,
  ActionStatus_StatusCode_Internal,
  ActionStatus_StatusCode_Unavailable,
  ActionStatus_StatusCode_DATALOSS,
  ActionStatus_StatusCode
  #-}

-- | The type of this annotation.
newtype Annotation_Type = Annotation_Type {fromAnnotation_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value for the enum. DO NOT USE.
pattern Annotation_Type_ANNOTATIONTYPEUNSPECIFIED :: Annotation_Type
pattern Annotation_Type_ANNOTATIONTYPEUNSPECIFIED = Annotation_Type "ANNOTATION_TYPE_UNSPECIFIED"

-- | A user is mentioned.
pattern Annotation_Type_USERMENTION :: Annotation_Type
pattern Annotation_Type_USERMENTION = Annotation_Type "USER_MENTION"

-- | A slash command is invoked.
pattern Annotation_Type_SLASHCOMMAND :: Annotation_Type
pattern Annotation_Type_SLASHCOMMAND = Annotation_Type "SLASH_COMMAND"

{-# COMPLETE
  Annotation_Type_ANNOTATIONTYPEUNSPECIFIED,
  Annotation_Type_USERMENTION,
  Annotation_Type_SLASHCOMMAND,
  Annotation_Type
  #-}

-- | The source of the attachment.
newtype Attachment_Source = Attachment_Source {fromAttachment_Source :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Attachment_Source_SOURCEUNSPECIFIED :: Attachment_Source
pattern Attachment_Source_SOURCEUNSPECIFIED = Attachment_Source "SOURCE_UNSPECIFIED"

-- |
pattern Attachment_Source_DRIVEFILE :: Attachment_Source
pattern Attachment_Source_DRIVEFILE = Attachment_Source "DRIVE_FILE"

-- |
pattern Attachment_Source_UPLOADEDCONTENT :: Attachment_Source
pattern Attachment_Source_UPLOADEDCONTENT = Attachment_Source "UPLOADED_CONTENT"

{-# COMPLETE
  Attachment_Source_SOURCEUNSPECIFIED,
  Attachment_Source_DRIVEFILE,
  Attachment_Source_UPLOADEDCONTENT,
  Attachment_Source
  #-}

-- | The image\'s type (e.g. square border or circular border).
newtype CardHeader_ImageStyle = CardHeader_ImageStyle {fromCardHeader_ImageStyle :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern CardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED = CardHeader_ImageStyle "IMAGE_STYLE_UNSPECIFIED"

-- | Square border.
pattern CardHeader_ImageStyle_Image :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_Image = CardHeader_ImageStyle "IMAGE"

-- | Circular border.
pattern CardHeader_ImageStyle_Avatar :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_Avatar = CardHeader_ImageStyle "AVATAR"

{-# COMPLETE
  CardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED,
  CardHeader_ImageStyle_Image,
  CardHeader_ImageStyle_Avatar,
  CardHeader_ImageStyle
  #-}

-- | The hostApp enum which indicates the app the add-on is invoked from. Always @CHAT@ for Chat apps.
newtype CommonEventObject_HostApp = CommonEventObject_HostApp {fromCommonEventObject_HostApp :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Google can\'t identify a host app.
pattern CommonEventObject_HostApp_UNSPECIFIEDHOSTAPP :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_UNSPECIFIEDHOSTAPP = CommonEventObject_HostApp "UNSPECIFIED_HOST_APP"

-- | The add-on launches from Gmail.
pattern CommonEventObject_HostApp_Gmail :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Gmail = CommonEventObject_HostApp "GMAIL"

-- | The add-on launches from Google Calendar.
pattern CommonEventObject_HostApp_Calendar :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Calendar = CommonEventObject_HostApp "CALENDAR"

-- | The add-on launches from Google Drive.
pattern CommonEventObject_HostApp_Drive :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Drive = CommonEventObject_HostApp "DRIVE"

-- | Not used.
pattern CommonEventObject_HostApp_Demo :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Demo = CommonEventObject_HostApp "DEMO"

-- | The add-on launches from Google Docs.
pattern CommonEventObject_HostApp_Docs :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Docs = CommonEventObject_HostApp "DOCS"

-- | The add-on launches from Google Sheets.
pattern CommonEventObject_HostApp_Sheets :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Sheets = CommonEventObject_HostApp "SHEETS"

-- | The add-on launches from Google Slides.
pattern CommonEventObject_HostApp_Slides :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Slides = CommonEventObject_HostApp "SLIDES"

-- | The add-on launches from Google Drawings.
pattern CommonEventObject_HostApp_Drawings :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Drawings = CommonEventObject_HostApp "DRAWINGS"

-- | A Google Chat app. Not used for Google Workspace Add-ons.
pattern CommonEventObject_HostApp_Chat :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Chat = CommonEventObject_HostApp "CHAT"

{-# COMPLETE
  CommonEventObject_HostApp_UNSPECIFIEDHOSTAPP,
  CommonEventObject_HostApp_Gmail,
  CommonEventObject_HostApp_Calendar,
  CommonEventObject_HostApp_Drive,
  CommonEventObject_HostApp_Demo,
  CommonEventObject_HostApp_Docs,
  CommonEventObject_HostApp_Sheets,
  CommonEventObject_HostApp_Slides,
  CommonEventObject_HostApp_Drawings,
  CommonEventObject_HostApp_Chat,
  CommonEventObject_HostApp
  #-}

-- | The platform enum which indicates the platform where the event originates (@WEB@, @IOS@, or @ANDROID@). Not supported by Chat apps.
newtype CommonEventObject_Platform = CommonEventObject_Platform {fromCommonEventObject_Platform :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern CommonEventObject_Platform_UNKNOWNPLATFORM :: CommonEventObject_Platform
pattern CommonEventObject_Platform_UNKNOWNPLATFORM = CommonEventObject_Platform "UNKNOWN_PLATFORM"

-- |
pattern CommonEventObject_Platform_Web :: CommonEventObject_Platform
pattern CommonEventObject_Platform_Web = CommonEventObject_Platform "WEB"

-- |
pattern CommonEventObject_Platform_Ios :: CommonEventObject_Platform
pattern CommonEventObject_Platform_Ios = CommonEventObject_Platform "IOS"

-- |
pattern CommonEventObject_Platform_Android :: CommonEventObject_Platform
pattern CommonEventObject_Platform_Android = CommonEventObject_Platform "ANDROID"

{-# COMPLETE
  CommonEventObject_Platform_UNKNOWNPLATFORM,
  CommonEventObject_Platform_Web,
  CommonEventObject_Platform_Ios,
  CommonEventObject_Platform_Android,
  CommonEventObject_Platform
  #-}

-- | The type of <https://developers.google.com/chat/how-tos/bot-dialogs dialog> event received.
newtype DeprecatedEvent_DialogEventType = DeprecatedEvent_DialogEventType {fromDeprecatedEvent_DialogEventType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | This could be used when the corresponding event is not dialog related. For example an \@mention.
pattern DeprecatedEvent_DialogEventType_TYPEUNSPECIFIED :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_TYPEUNSPECIFIED = DeprecatedEvent_DialogEventType "TYPE_UNSPECIFIED"

-- | Any user action that opens a <https://developers.google.com/chat/how-tos/bot-dialogs dialog>.
pattern DeprecatedEvent_DialogEventType_REQUESTDIALOG :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_REQUESTDIALOG = DeprecatedEvent_DialogEventType "REQUEST_DIALOG"

-- | A card click event from a <https://developers.google.com/chat/how-tos/bot-dialogs dialog>.
pattern DeprecatedEvent_DialogEventType_SUBMITDIALOG :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_SUBMITDIALOG = DeprecatedEvent_DialogEventType "SUBMIT_DIALOG"

-- | The <https://developers.google.com/chat/how-tos/bot-dialogs dialog> was cancelled.
pattern DeprecatedEvent_DialogEventType_CANCELDIALOG :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_CANCELDIALOG = DeprecatedEvent_DialogEventType "CANCEL_DIALOG"

{-# COMPLETE
  DeprecatedEvent_DialogEventType_TYPEUNSPECIFIED,
  DeprecatedEvent_DialogEventType_REQUESTDIALOG,
  DeprecatedEvent_DialogEventType_SUBMITDIALOG,
  DeprecatedEvent_DialogEventType_CANCELDIALOG,
  DeprecatedEvent_DialogEventType
  #-}

-- | The type of the event.
newtype DeprecatedEvent_Type = DeprecatedEvent_Type {fromDeprecatedEvent_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value for the enum. DO NOT USE.
pattern DeprecatedEvent_Type_Unspecified :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_Unspecified = DeprecatedEvent_Type "UNSPECIFIED"

-- | A message was sent in a space.
pattern DeprecatedEvent_Type_Message :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_Message = DeprecatedEvent_Type "MESSAGE"

-- | The bot was added to a space.
pattern DeprecatedEvent_Type_ADDEDTOSPACE :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_ADDEDTOSPACE = DeprecatedEvent_Type "ADDED_TO_SPACE"

-- | The bot was removed from a space.
pattern DeprecatedEvent_Type_REMOVEDFROMSPACE :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_REMOVEDFROMSPACE = DeprecatedEvent_Type "REMOVED_FROM_SPACE"

-- | The bot\'s interactive card was clicked.
pattern DeprecatedEvent_Type_CARDCLICKED :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_CARDCLICKED = DeprecatedEvent_Type "CARD_CLICKED"

{-# COMPLETE
  DeprecatedEvent_Type_Unspecified,
  DeprecatedEvent_Type_Message,
  DeprecatedEvent_Type_ADDEDTOSPACE,
  DeprecatedEvent_Type_REMOVEDFROMSPACE,
  DeprecatedEvent_Type_CARDCLICKED,
  DeprecatedEvent_Type
  #-}

-- | Specifies the loading indicator that the action displays while making the call to the action.
newtype GoogleAppsCardV1Action_LoadIndicator = GoogleAppsCardV1Action_LoadIndicator {fromGoogleAppsCardV1Action_LoadIndicator :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Displays a spinner to indicate that content is loading.
pattern GoogleAppsCardV1Action_LoadIndicator_Spinner :: GoogleAppsCardV1Action_LoadIndicator
pattern GoogleAppsCardV1Action_LoadIndicator_Spinner = GoogleAppsCardV1Action_LoadIndicator "SPINNER"

-- | Nothing is displayed.
pattern GoogleAppsCardV1Action_LoadIndicator_None :: GoogleAppsCardV1Action_LoadIndicator
pattern GoogleAppsCardV1Action_LoadIndicator_None = GoogleAppsCardV1Action_LoadIndicator "NONE"

{-# COMPLETE
  GoogleAppsCardV1Action_LoadIndicator_Spinner,
  GoogleAppsCardV1Action_LoadIndicator_None,
  GoogleAppsCardV1Action_LoadIndicator
  #-}

-- | The border type.
newtype GoogleAppsCardV1BorderStyle_Type = GoogleAppsCardV1BorderStyle_Type {fromGoogleAppsCardV1BorderStyle_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No value specified.
pattern GoogleAppsCardV1BorderStyle_Type_BORDERTYPEUNSPECIFIED :: GoogleAppsCardV1BorderStyle_Type
pattern GoogleAppsCardV1BorderStyle_Type_BORDERTYPEUNSPECIFIED = GoogleAppsCardV1BorderStyle_Type "BORDER_TYPE_UNSPECIFIED"

-- | No border.
pattern GoogleAppsCardV1BorderStyle_Type_NOBORDER :: GoogleAppsCardV1BorderStyle_Type
pattern GoogleAppsCardV1BorderStyle_Type_NOBORDER = GoogleAppsCardV1BorderStyle_Type "NO_BORDER"

-- | Outline.
pattern GoogleAppsCardV1BorderStyle_Type_Stroke :: GoogleAppsCardV1BorderStyle_Type
pattern GoogleAppsCardV1BorderStyle_Type_Stroke = GoogleAppsCardV1BorderStyle_Type "STROKE"

{-# COMPLETE
  GoogleAppsCardV1BorderStyle_Type_BORDERTYPEUNSPECIFIED,
  GoogleAppsCardV1BorderStyle_Type_NOBORDER,
  GoogleAppsCardV1BorderStyle_Type_Stroke,
  GoogleAppsCardV1BorderStyle_Type
  #-}

-- | The display style for @peekCardHeader@.
newtype GoogleAppsCardV1Card_DisplayStyle = GoogleAppsCardV1Card_DisplayStyle {fromGoogleAppsCardV1Card_DisplayStyle :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Do not use.
pattern GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED :: GoogleAppsCardV1Card_DisplayStyle
pattern GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED = GoogleAppsCardV1Card_DisplayStyle "DISPLAY_STYLE_UNSPECIFIED"

-- | The header of the card appears at the bottom of the sidebar, partially covering the current top card of the stack. Clicking the header pops the card into the card stack. If the card has no header, a generated header is used instead.
pattern GoogleAppsCardV1Card_DisplayStyle_Peek :: GoogleAppsCardV1Card_DisplayStyle
pattern GoogleAppsCardV1Card_DisplayStyle_Peek = GoogleAppsCardV1Card_DisplayStyle "PEEK"

-- | The card is shown by replacing the view of the top card in the card stack.
pattern GoogleAppsCardV1Card_DisplayStyle_Replace :: GoogleAppsCardV1Card_DisplayStyle
pattern GoogleAppsCardV1Card_DisplayStyle_Replace = GoogleAppsCardV1Card_DisplayStyle "REPLACE"

{-# COMPLETE
  GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED,
  GoogleAppsCardV1Card_DisplayStyle_Peek,
  GoogleAppsCardV1Card_DisplayStyle_Replace,
  GoogleAppsCardV1Card_DisplayStyle
  #-}

-- | The image\'s type.
newtype GoogleAppsCardV1CardHeader_ImageType = GoogleAppsCardV1CardHeader_ImageType {fromGoogleAppsCardV1CardHeader_ImageType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Applies no cropping to the image.
pattern GoogleAppsCardV1CardHeader_ImageType_Square :: GoogleAppsCardV1CardHeader_ImageType
pattern GoogleAppsCardV1CardHeader_ImageType_Square = GoogleAppsCardV1CardHeader_ImageType "SQUARE"

-- | Applies a circular mask to the image.
pattern GoogleAppsCardV1CardHeader_ImageType_Circle :: GoogleAppsCardV1CardHeader_ImageType
pattern GoogleAppsCardV1CardHeader_ImageType_Circle = GoogleAppsCardV1CardHeader_ImageType "CIRCLE"

{-# COMPLETE
  GoogleAppsCardV1CardHeader_ImageType_Square,
  GoogleAppsCardV1CardHeader_ImageType_Circle,
  GoogleAppsCardV1CardHeader_ImageType
  #-}

-- | The type of the date\/time picker.
newtype GoogleAppsCardV1DateTimePicker_Type = GoogleAppsCardV1DateTimePicker_Type {fromGoogleAppsCardV1DateTimePicker_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The user can select a date and time.
pattern GoogleAppsCardV1DateTimePicker_Type_DATEANDTIME :: GoogleAppsCardV1DateTimePicker_Type
pattern GoogleAppsCardV1DateTimePicker_Type_DATEANDTIME = GoogleAppsCardV1DateTimePicker_Type "DATE_AND_TIME"

-- | The user can only select a date.
pattern GoogleAppsCardV1DateTimePicker_Type_DATEONLY :: GoogleAppsCardV1DateTimePicker_Type
pattern GoogleAppsCardV1DateTimePicker_Type_DATEONLY = GoogleAppsCardV1DateTimePicker_Type "DATE_ONLY"

-- | The user can only select a time.
pattern GoogleAppsCardV1DateTimePicker_Type_TIMEONLY :: GoogleAppsCardV1DateTimePicker_Type
pattern GoogleAppsCardV1DateTimePicker_Type_TIMEONLY = GoogleAppsCardV1DateTimePicker_Type "TIME_ONLY"

{-# COMPLETE
  GoogleAppsCardV1DateTimePicker_Type_DATEANDTIME,
  GoogleAppsCardV1DateTimePicker_Type_DATEONLY,
  GoogleAppsCardV1DateTimePicker_Type_TIMEONLY,
  GoogleAppsCardV1DateTimePicker_Type
  #-}

-- | The layout to use for the grid item.
newtype GoogleAppsCardV1GridItem_Layout = GoogleAppsCardV1GridItem_Layout {fromGoogleAppsCardV1GridItem_Layout :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No layout specified.
pattern GoogleAppsCardV1GridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED :: GoogleAppsCardV1GridItem_Layout
pattern GoogleAppsCardV1GridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED = GoogleAppsCardV1GridItem_Layout "GRID_ITEM_LAYOUT_UNSPECIFIED"

-- | The title and subtitle are shown below the grid item\'s image.
pattern GoogleAppsCardV1GridItem_Layout_TEXTBELOW :: GoogleAppsCardV1GridItem_Layout
pattern GoogleAppsCardV1GridItem_Layout_TEXTBELOW = GoogleAppsCardV1GridItem_Layout "TEXT_BELOW"

-- | The title and subtitle are shown above the grid item\'s image.
pattern GoogleAppsCardV1GridItem_Layout_TEXTABOVE :: GoogleAppsCardV1GridItem_Layout
pattern GoogleAppsCardV1GridItem_Layout_TEXTABOVE = GoogleAppsCardV1GridItem_Layout "TEXT_ABOVE"

{-# COMPLETE
  GoogleAppsCardV1GridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED,
  GoogleAppsCardV1GridItem_Layout_TEXTBELOW,
  GoogleAppsCardV1GridItem_Layout_TEXTABOVE,
  GoogleAppsCardV1GridItem_Layout
  #-}

-- | The horizontal alignment of the grid item\'s text.
newtype GoogleAppsCardV1GridItem_TextAlignment = GoogleAppsCardV1GridItem_TextAlignment {fromGoogleAppsCardV1GridItem_TextAlignment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified alignment.
pattern GoogleAppsCardV1GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GoogleAppsCardV1GridItem_TextAlignment
pattern GoogleAppsCardV1GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GoogleAppsCardV1GridItem_TextAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Alignment to the start position.
pattern GoogleAppsCardV1GridItem_TextAlignment_Start :: GoogleAppsCardV1GridItem_TextAlignment
pattern GoogleAppsCardV1GridItem_TextAlignment_Start = GoogleAppsCardV1GridItem_TextAlignment "START"

-- | Alignment to the center position.
pattern GoogleAppsCardV1GridItem_TextAlignment_Center :: GoogleAppsCardV1GridItem_TextAlignment
pattern GoogleAppsCardV1GridItem_TextAlignment_Center = GoogleAppsCardV1GridItem_TextAlignment "CENTER"

-- | Alignment to the end position.
pattern GoogleAppsCardV1GridItem_TextAlignment_End :: GoogleAppsCardV1GridItem_TextAlignment
pattern GoogleAppsCardV1GridItem_TextAlignment_End = GoogleAppsCardV1GridItem_TextAlignment "END"

{-# COMPLETE
  GoogleAppsCardV1GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GoogleAppsCardV1GridItem_TextAlignment_Start,
  GoogleAppsCardV1GridItem_TextAlignment_Center,
  GoogleAppsCardV1GridItem_TextAlignment_End,
  GoogleAppsCardV1GridItem_TextAlignment
  #-}

-- | The crop style applied to the image. In some cases, applying a @CIRCLE@ crop causes the image to be drawn larger than a standard icon.
newtype GoogleAppsCardV1Icon_ImageType = GoogleAppsCardV1Icon_ImageType {fromGoogleAppsCardV1Icon_ImageType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Applies no cropping to the image.
pattern GoogleAppsCardV1Icon_ImageType_Square :: GoogleAppsCardV1Icon_ImageType
pattern GoogleAppsCardV1Icon_ImageType_Square = GoogleAppsCardV1Icon_ImageType "SQUARE"

-- | Applies a circular mask to the image.
pattern GoogleAppsCardV1Icon_ImageType_Circle :: GoogleAppsCardV1Icon_ImageType
pattern GoogleAppsCardV1Icon_ImageType_Circle = GoogleAppsCardV1Icon_ImageType "CIRCLE"

{-# COMPLETE
  GoogleAppsCardV1Icon_ImageType_Square,
  GoogleAppsCardV1Icon_ImageType_Circle,
  GoogleAppsCardV1Icon_ImageType
  #-}

-- | The crop type.
newtype GoogleAppsCardV1ImageCropStyle_Type = GoogleAppsCardV1ImageCropStyle_Type {fromGoogleAppsCardV1ImageCropStyle_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No value specified.
pattern GoogleAppsCardV1ImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED = GoogleAppsCardV1ImageCropStyle_Type "IMAGE_CROP_TYPE_UNSPECIFIED"

-- | Applies a square crop.
pattern GoogleAppsCardV1ImageCropStyle_Type_Square :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_Square = GoogleAppsCardV1ImageCropStyle_Type "SQUARE"

-- | Applies a circular crop.
pattern GoogleAppsCardV1ImageCropStyle_Type_Circle :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_Circle = GoogleAppsCardV1ImageCropStyle_Type "CIRCLE"

-- | Applies a rectangular crop with a custom aspect ratio.
pattern GoogleAppsCardV1ImageCropStyle_Type_RECTANGLECUSTOM :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_RECTANGLECUSTOM = GoogleAppsCardV1ImageCropStyle_Type "RECTANGLE_CUSTOM"

-- | Applies a rectangular crop with a 4:3 aspect ratio.
pattern GoogleAppsCardV1ImageCropStyle_Type_RECTANGLE_4_3 :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_RECTANGLE_4_3 = GoogleAppsCardV1ImageCropStyle_Type "RECTANGLE_4_3"

{-# COMPLETE
  GoogleAppsCardV1ImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED,
  GoogleAppsCardV1ImageCropStyle_Type_Square,
  GoogleAppsCardV1ImageCropStyle_Type_Circle,
  GoogleAppsCardV1ImageCropStyle_Type_RECTANGLECUSTOM,
  GoogleAppsCardV1ImageCropStyle_Type_RECTANGLE_4_3,
  GoogleAppsCardV1ImageCropStyle_Type
  #-}

-- | Whether the client forgets about a link after opening it, or observes it until the window closes. Not supported by Chat apps.
newtype GoogleAppsCardV1OpenLink_OnClose = GoogleAppsCardV1OpenLink_OnClose {fromGoogleAppsCardV1OpenLink_OnClose :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Doesn’t reload the card after the child window closes.
pattern GoogleAppsCardV1OpenLink_OnClose_Nothing' :: GoogleAppsCardV1OpenLink_OnClose
pattern GoogleAppsCardV1OpenLink_OnClose_Nothing' = GoogleAppsCardV1OpenLink_OnClose "NOTHING"

-- | Reloads the card after the child window closes. If used in conjunction with </workspace/add-ons/reference/rpc/google.apps.card.v1#openas OpenAs.OVERLAY>, the child window acts as a modal dialog and the main card is blocked until the child window closes.
pattern GoogleAppsCardV1OpenLink_OnClose_Reload :: GoogleAppsCardV1OpenLink_OnClose
pattern GoogleAppsCardV1OpenLink_OnClose_Reload = GoogleAppsCardV1OpenLink_OnClose "RELOAD"

{-# COMPLETE
  GoogleAppsCardV1OpenLink_OnClose_Nothing',
  GoogleAppsCardV1OpenLink_OnClose_Reload,
  GoogleAppsCardV1OpenLink_OnClose
  #-}

-- | How to open a link. Not supported by Chat apps.
newtype GoogleAppsCardV1OpenLink_OpenAs = GoogleAppsCardV1OpenLink_OpenAs {fromGoogleAppsCardV1OpenLink_OpenAs :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The link opens as a full size window (if that\'s the frame used by the client.
pattern GoogleAppsCardV1OpenLink_OpenAs_FULLSIZE :: GoogleAppsCardV1OpenLink_OpenAs
pattern GoogleAppsCardV1OpenLink_OpenAs_FULLSIZE = GoogleAppsCardV1OpenLink_OpenAs "FULL_SIZE"

-- | The link opens as an overlay, such as a pop-up.
pattern GoogleAppsCardV1OpenLink_OpenAs_Overlay :: GoogleAppsCardV1OpenLink_OpenAs
pattern GoogleAppsCardV1OpenLink_OpenAs_Overlay = GoogleAppsCardV1OpenLink_OpenAs "OVERLAY"

{-# COMPLETE
  GoogleAppsCardV1OpenLink_OpenAs_FULLSIZE,
  GoogleAppsCardV1OpenLink_OpenAs_Overlay,
  GoogleAppsCardV1OpenLink_OpenAs
  #-}

-- | The type of the selection.
newtype GoogleAppsCardV1SelectionInput_Type = GoogleAppsCardV1SelectionInput_Type {fromGoogleAppsCardV1SelectionInput_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A checkbox.
pattern GoogleAppsCardV1SelectionInput_Type_CHECKBOX :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_CHECKBOX = GoogleAppsCardV1SelectionInput_Type "CHECK_BOX"

-- | A radio button.
pattern GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON = GoogleAppsCardV1SelectionInput_Type "RADIO_BUTTON"

-- | A switch.
pattern GoogleAppsCardV1SelectionInput_Type_Switch :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_Switch = GoogleAppsCardV1SelectionInput_Type "SWITCH"

-- | A dropdown menu.
pattern GoogleAppsCardV1SelectionInput_Type_Dropdown :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_Dropdown = GoogleAppsCardV1SelectionInput_Type "DROPDOWN"

{-# COMPLETE
  GoogleAppsCardV1SelectionInput_Type_CHECKBOX,
  GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON,
  GoogleAppsCardV1SelectionInput_Type_Switch,
  GoogleAppsCardV1SelectionInput_Type_Dropdown,
  GoogleAppsCardV1SelectionInput_Type
  #-}

-- | The control type, either switch or checkbox.
newtype GoogleAppsCardV1SwitchControl_ControlType = GoogleAppsCardV1SwitchControl_ControlType {fromGoogleAppsCardV1SwitchControl_ControlType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A toggle-style switch.
pattern GoogleAppsCardV1SwitchControl_ControlType_Switch :: GoogleAppsCardV1SwitchControl_ControlType
pattern GoogleAppsCardV1SwitchControl_ControlType_Switch = GoogleAppsCardV1SwitchControl_ControlType "SWITCH"

-- | Deprecated in favor of @CHECK_BOX@.
pattern GoogleAppsCardV1SwitchControl_ControlType_Checkbox :: GoogleAppsCardV1SwitchControl_ControlType
pattern GoogleAppsCardV1SwitchControl_ControlType_Checkbox = GoogleAppsCardV1SwitchControl_ControlType "CHECKBOX"

-- | A checkbox.
pattern GoogleAppsCardV1SwitchControl_ControlType_CHECKBOX :: GoogleAppsCardV1SwitchControl_ControlType
pattern GoogleAppsCardV1SwitchControl_ControlType_CHECKBOX = GoogleAppsCardV1SwitchControl_ControlType "CHECK_BOX"

{-# COMPLETE
  GoogleAppsCardV1SwitchControl_ControlType_Switch,
  GoogleAppsCardV1SwitchControl_ControlType_Checkbox,
  GoogleAppsCardV1SwitchControl_ControlType_CHECKBOX,
  GoogleAppsCardV1SwitchControl_ControlType
  #-}

-- | The style of the text, for example, a single line or multiple lines.
newtype GoogleAppsCardV1TextInput_Type = GoogleAppsCardV1TextInput_Type {fromGoogleAppsCardV1TextInput_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The text is put into a single line.
pattern GoogleAppsCardV1TextInput_Type_SINGLELINE :: GoogleAppsCardV1TextInput_Type
pattern GoogleAppsCardV1TextInput_Type_SINGLELINE = GoogleAppsCardV1TextInput_Type "SINGLE_LINE"

-- | The text is put into multiple lines.
pattern GoogleAppsCardV1TextInput_Type_MULTIPLELINE :: GoogleAppsCardV1TextInput_Type
pattern GoogleAppsCardV1TextInput_Type_MULTIPLELINE = GoogleAppsCardV1TextInput_Type "MULTIPLE_LINE"

{-# COMPLETE
  GoogleAppsCardV1TextInput_Type_SINGLELINE,
  GoogleAppsCardV1TextInput_Type_MULTIPLELINE,
  GoogleAppsCardV1TextInput_Type
  #-}

-- | The horizontal alignment of this widget.
newtype GoogleAppsCardV1Widget_HorizontalAlignment = GoogleAppsCardV1Widget_HorizontalAlignment {fromGoogleAppsCardV1Widget_HorizontalAlignment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified alignment.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GoogleAppsCardV1Widget_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Alignment to the start position.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Start :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Start = GoogleAppsCardV1Widget_HorizontalAlignment "START"

-- | Alignment to the center position.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Center :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Center = GoogleAppsCardV1Widget_HorizontalAlignment "CENTER"

-- | Alignment to the end position.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_End :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_End = GoogleAppsCardV1Widget_HorizontalAlignment "END"

{-# COMPLETE
  GoogleAppsCardV1Widget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GoogleAppsCardV1Widget_HorizontalAlignment_Start,
  GoogleAppsCardV1Widget_HorizontalAlignment_Center,
  GoogleAppsCardV1Widget_HorizontalAlignment_End,
  GoogleAppsCardV1Widget_HorizontalAlignment
  #-}

-- | The icon specified by an enum that indices to an icon provided by Chat API.
newtype ImageButton_Icon = ImageButton_Icon {fromImageButton_Icon :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern ImageButton_Icon_ICONUNSPECIFIED :: ImageButton_Icon
pattern ImageButton_Icon_ICONUNSPECIFIED = ImageButton_Icon "ICON_UNSPECIFIED"

-- |
pattern ImageButton_Icon_Airplane :: ImageButton_Icon
pattern ImageButton_Icon_Airplane = ImageButton_Icon "AIRPLANE"

-- |
pattern ImageButton_Icon_Bookmark :: ImageButton_Icon
pattern ImageButton_Icon_Bookmark = ImageButton_Icon "BOOKMARK"

-- |
pattern ImageButton_Icon_Bus :: ImageButton_Icon
pattern ImageButton_Icon_Bus = ImageButton_Icon "BUS"

-- |
pattern ImageButton_Icon_Car :: ImageButton_Icon
pattern ImageButton_Icon_Car = ImageButton_Icon "CAR"

-- |
pattern ImageButton_Icon_Clock :: ImageButton_Icon
pattern ImageButton_Icon_Clock = ImageButton_Icon "CLOCK"

-- |
pattern ImageButton_Icon_CONFIRMATIONNUMBERICON :: ImageButton_Icon
pattern ImageButton_Icon_CONFIRMATIONNUMBERICON = ImageButton_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern ImageButton_Icon_Dollar :: ImageButton_Icon
pattern ImageButton_Icon_Dollar = ImageButton_Icon "DOLLAR"

-- |
pattern ImageButton_Icon_Description :: ImageButton_Icon
pattern ImageButton_Icon_Description = ImageButton_Icon "DESCRIPTION"

-- |
pattern ImageButton_Icon_Email :: ImageButton_Icon
pattern ImageButton_Icon_Email = ImageButton_Icon "EMAIL"

-- |
pattern ImageButton_Icon_EVENTPERFORMER :: ImageButton_Icon
pattern ImageButton_Icon_EVENTPERFORMER = ImageButton_Icon "EVENT_PERFORMER"

-- |
pattern ImageButton_Icon_EVENTSEAT :: ImageButton_Icon
pattern ImageButton_Icon_EVENTSEAT = ImageButton_Icon "EVENT_SEAT"

-- |
pattern ImageButton_Icon_FLIGHTARRIVAL :: ImageButton_Icon
pattern ImageButton_Icon_FLIGHTARRIVAL = ImageButton_Icon "FLIGHT_ARRIVAL"

-- |
pattern ImageButton_Icon_FLIGHTDEPARTURE :: ImageButton_Icon
pattern ImageButton_Icon_FLIGHTDEPARTURE = ImageButton_Icon "FLIGHT_DEPARTURE"

-- |
pattern ImageButton_Icon_Hotel :: ImageButton_Icon
pattern ImageButton_Icon_Hotel = ImageButton_Icon "HOTEL"

-- |
pattern ImageButton_Icon_HOTELROOMTYPE :: ImageButton_Icon
pattern ImageButton_Icon_HOTELROOMTYPE = ImageButton_Icon "HOTEL_ROOM_TYPE"

-- |
pattern ImageButton_Icon_Invite :: ImageButton_Icon
pattern ImageButton_Icon_Invite = ImageButton_Icon "INVITE"

-- |
pattern ImageButton_Icon_MAPPIN :: ImageButton_Icon
pattern ImageButton_Icon_MAPPIN = ImageButton_Icon "MAP_PIN"

-- |
pattern ImageButton_Icon_Membership :: ImageButton_Icon
pattern ImageButton_Icon_Membership = ImageButton_Icon "MEMBERSHIP"

-- |
pattern ImageButton_Icon_MULTIPLEPEOPLE :: ImageButton_Icon
pattern ImageButton_Icon_MULTIPLEPEOPLE = ImageButton_Icon "MULTIPLE_PEOPLE"

-- |
pattern ImageButton_Icon_Offer :: ImageButton_Icon
pattern ImageButton_Icon_Offer = ImageButton_Icon "OFFER"

-- |
pattern ImageButton_Icon_Person :: ImageButton_Icon
pattern ImageButton_Icon_Person = ImageButton_Icon "PERSON"

-- |
pattern ImageButton_Icon_Phone :: ImageButton_Icon
pattern ImageButton_Icon_Phone = ImageButton_Icon "PHONE"

-- |
pattern ImageButton_Icon_RESTAURANTICON :: ImageButton_Icon
pattern ImageButton_Icon_RESTAURANTICON = ImageButton_Icon "RESTAURANT_ICON"

-- |
pattern ImageButton_Icon_SHOPPINGCART :: ImageButton_Icon
pattern ImageButton_Icon_SHOPPINGCART = ImageButton_Icon "SHOPPING_CART"

-- |
pattern ImageButton_Icon_Star :: ImageButton_Icon
pattern ImageButton_Icon_Star = ImageButton_Icon "STAR"

-- |
pattern ImageButton_Icon_Store :: ImageButton_Icon
pattern ImageButton_Icon_Store = ImageButton_Icon "STORE"

-- |
pattern ImageButton_Icon_Ticket :: ImageButton_Icon
pattern ImageButton_Icon_Ticket = ImageButton_Icon "TICKET"

-- |
pattern ImageButton_Icon_Train :: ImageButton_Icon
pattern ImageButton_Icon_Train = ImageButton_Icon "TRAIN"

-- |
pattern ImageButton_Icon_VIDEOCAMERA :: ImageButton_Icon
pattern ImageButton_Icon_VIDEOCAMERA = ImageButton_Icon "VIDEO_CAMERA"

-- |
pattern ImageButton_Icon_VIDEOPLAY :: ImageButton_Icon
pattern ImageButton_Icon_VIDEOPLAY = ImageButton_Icon "VIDEO_PLAY"

{-# COMPLETE
  ImageButton_Icon_ICONUNSPECIFIED,
  ImageButton_Icon_Airplane,
  ImageButton_Icon_Bookmark,
  ImageButton_Icon_Bus,
  ImageButton_Icon_Car,
  ImageButton_Icon_Clock,
  ImageButton_Icon_CONFIRMATIONNUMBERICON,
  ImageButton_Icon_Dollar,
  ImageButton_Icon_Description,
  ImageButton_Icon_Email,
  ImageButton_Icon_EVENTPERFORMER,
  ImageButton_Icon_EVENTSEAT,
  ImageButton_Icon_FLIGHTARRIVAL,
  ImageButton_Icon_FLIGHTDEPARTURE,
  ImageButton_Icon_Hotel,
  ImageButton_Icon_HOTELROOMTYPE,
  ImageButton_Icon_Invite,
  ImageButton_Icon_MAPPIN,
  ImageButton_Icon_Membership,
  ImageButton_Icon_MULTIPLEPEOPLE,
  ImageButton_Icon_Offer,
  ImageButton_Icon_Person,
  ImageButton_Icon_Phone,
  ImageButton_Icon_RESTAURANTICON,
  ImageButton_Icon_SHOPPINGCART,
  ImageButton_Icon_Star,
  ImageButton_Icon_Store,
  ImageButton_Icon_Ticket,
  ImageButton_Icon_Train,
  ImageButton_Icon_VIDEOCAMERA,
  ImageButton_Icon_VIDEOPLAY,
  ImageButton_Icon
  #-}

-- | An enum value that will be replaced by the Chat API with the corresponding icon image.
newtype KeyValue_Icon = KeyValue_Icon {fromKeyValue_Icon :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern KeyValue_Icon_ICONUNSPECIFIED :: KeyValue_Icon
pattern KeyValue_Icon_ICONUNSPECIFIED = KeyValue_Icon "ICON_UNSPECIFIED"

-- |
pattern KeyValue_Icon_Airplane :: KeyValue_Icon
pattern KeyValue_Icon_Airplane = KeyValue_Icon "AIRPLANE"

-- |
pattern KeyValue_Icon_Bookmark :: KeyValue_Icon
pattern KeyValue_Icon_Bookmark = KeyValue_Icon "BOOKMARK"

-- |
pattern KeyValue_Icon_Bus :: KeyValue_Icon
pattern KeyValue_Icon_Bus = KeyValue_Icon "BUS"

-- |
pattern KeyValue_Icon_Car :: KeyValue_Icon
pattern KeyValue_Icon_Car = KeyValue_Icon "CAR"

-- |
pattern KeyValue_Icon_Clock :: KeyValue_Icon
pattern KeyValue_Icon_Clock = KeyValue_Icon "CLOCK"

-- |
pattern KeyValue_Icon_CONFIRMATIONNUMBERICON :: KeyValue_Icon
pattern KeyValue_Icon_CONFIRMATIONNUMBERICON = KeyValue_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern KeyValue_Icon_Dollar :: KeyValue_Icon
pattern KeyValue_Icon_Dollar = KeyValue_Icon "DOLLAR"

-- |
pattern KeyValue_Icon_Description :: KeyValue_Icon
pattern KeyValue_Icon_Description = KeyValue_Icon "DESCRIPTION"

-- |
pattern KeyValue_Icon_Email :: KeyValue_Icon
pattern KeyValue_Icon_Email = KeyValue_Icon "EMAIL"

-- |
pattern KeyValue_Icon_EVENTPERFORMER :: KeyValue_Icon
pattern KeyValue_Icon_EVENTPERFORMER = KeyValue_Icon "EVENT_PERFORMER"

-- |
pattern KeyValue_Icon_EVENTSEAT :: KeyValue_Icon
pattern KeyValue_Icon_EVENTSEAT = KeyValue_Icon "EVENT_SEAT"

-- |
pattern KeyValue_Icon_FLIGHTARRIVAL :: KeyValue_Icon
pattern KeyValue_Icon_FLIGHTARRIVAL = KeyValue_Icon "FLIGHT_ARRIVAL"

-- |
pattern KeyValue_Icon_FLIGHTDEPARTURE :: KeyValue_Icon
pattern KeyValue_Icon_FLIGHTDEPARTURE = KeyValue_Icon "FLIGHT_DEPARTURE"

-- |
pattern KeyValue_Icon_Hotel :: KeyValue_Icon
pattern KeyValue_Icon_Hotel = KeyValue_Icon "HOTEL"

-- |
pattern KeyValue_Icon_HOTELROOMTYPE :: KeyValue_Icon
pattern KeyValue_Icon_HOTELROOMTYPE = KeyValue_Icon "HOTEL_ROOM_TYPE"

-- |
pattern KeyValue_Icon_Invite :: KeyValue_Icon
pattern KeyValue_Icon_Invite = KeyValue_Icon "INVITE"

-- |
pattern KeyValue_Icon_MAPPIN :: KeyValue_Icon
pattern KeyValue_Icon_MAPPIN = KeyValue_Icon "MAP_PIN"

-- |
pattern KeyValue_Icon_Membership :: KeyValue_Icon
pattern KeyValue_Icon_Membership = KeyValue_Icon "MEMBERSHIP"

-- |
pattern KeyValue_Icon_MULTIPLEPEOPLE :: KeyValue_Icon
pattern KeyValue_Icon_MULTIPLEPEOPLE = KeyValue_Icon "MULTIPLE_PEOPLE"

-- |
pattern KeyValue_Icon_Offer :: KeyValue_Icon
pattern KeyValue_Icon_Offer = KeyValue_Icon "OFFER"

-- |
pattern KeyValue_Icon_Person :: KeyValue_Icon
pattern KeyValue_Icon_Person = KeyValue_Icon "PERSON"

-- |
pattern KeyValue_Icon_Phone :: KeyValue_Icon
pattern KeyValue_Icon_Phone = KeyValue_Icon "PHONE"

-- |
pattern KeyValue_Icon_RESTAURANTICON :: KeyValue_Icon
pattern KeyValue_Icon_RESTAURANTICON = KeyValue_Icon "RESTAURANT_ICON"

-- |
pattern KeyValue_Icon_SHOPPINGCART :: KeyValue_Icon
pattern KeyValue_Icon_SHOPPINGCART = KeyValue_Icon "SHOPPING_CART"

-- |
pattern KeyValue_Icon_Star :: KeyValue_Icon
pattern KeyValue_Icon_Star = KeyValue_Icon "STAR"

-- |
pattern KeyValue_Icon_Store :: KeyValue_Icon
pattern KeyValue_Icon_Store = KeyValue_Icon "STORE"

-- |
pattern KeyValue_Icon_Ticket :: KeyValue_Icon
pattern KeyValue_Icon_Ticket = KeyValue_Icon "TICKET"

-- |
pattern KeyValue_Icon_Train :: KeyValue_Icon
pattern KeyValue_Icon_Train = KeyValue_Icon "TRAIN"

-- |
pattern KeyValue_Icon_VIDEOCAMERA :: KeyValue_Icon
pattern KeyValue_Icon_VIDEOCAMERA = KeyValue_Icon "VIDEO_CAMERA"

-- |
pattern KeyValue_Icon_VIDEOPLAY :: KeyValue_Icon
pattern KeyValue_Icon_VIDEOPLAY = KeyValue_Icon "VIDEO_PLAY"

{-# COMPLETE
  KeyValue_Icon_ICONUNSPECIFIED,
  KeyValue_Icon_Airplane,
  KeyValue_Icon_Bookmark,
  KeyValue_Icon_Bus,
  KeyValue_Icon_Car,
  KeyValue_Icon_Clock,
  KeyValue_Icon_CONFIRMATIONNUMBERICON,
  KeyValue_Icon_Dollar,
  KeyValue_Icon_Description,
  KeyValue_Icon_Email,
  KeyValue_Icon_EVENTPERFORMER,
  KeyValue_Icon_EVENTSEAT,
  KeyValue_Icon_FLIGHTARRIVAL,
  KeyValue_Icon_FLIGHTDEPARTURE,
  KeyValue_Icon_Hotel,
  KeyValue_Icon_HOTELROOMTYPE,
  KeyValue_Icon_Invite,
  KeyValue_Icon_MAPPIN,
  KeyValue_Icon_Membership,
  KeyValue_Icon_MULTIPLEPEOPLE,
  KeyValue_Icon_Offer,
  KeyValue_Icon_Person,
  KeyValue_Icon_Phone,
  KeyValue_Icon_RESTAURANTICON,
  KeyValue_Icon_SHOPPINGCART,
  KeyValue_Icon_Star,
  KeyValue_Icon_Store,
  KeyValue_Icon_Ticket,
  KeyValue_Icon_Train,
  KeyValue_Icon_VIDEOCAMERA,
  KeyValue_Icon_VIDEOPLAY,
  KeyValue_Icon
  #-}

-- | Output only. State of the membership.
newtype Membership_State = Membership_State {fromMembership_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default, do not use.
pattern Membership_State_MEMBERSHIPSTATEUNSPECIFIED :: Membership_State
pattern Membership_State_MEMBERSHIPSTATEUNSPECIFIED = Membership_State "MEMBERSHIP_STATE_UNSPECIFIED"

-- | The user has joined the space.
pattern Membership_State_Joined :: Membership_State
pattern Membership_State_Joined = Membership_State "JOINED"

-- | The user has been invited, is able to join the space, but currently has not joined.
pattern Membership_State_Invited :: Membership_State
pattern Membership_State_Invited = Membership_State "INVITED"

-- | The user is not a member of the space, has not been invited and is not able to join the space.
pattern Membership_State_NOTAMEMBER :: Membership_State
pattern Membership_State_NOTAMEMBER = Membership_State "NOT_A_MEMBER"

{-# COMPLETE
  Membership_State_MEMBERSHIPSTATEUNSPECIFIED,
  Membership_State_Joined,
  Membership_State_Invited,
  Membership_State_NOTAMEMBER,
  Membership_State
  #-}

-- | The type of slash command.
newtype SlashCommandMetadata_Type = SlashCommandMetadata_Type {fromSlashCommandMetadata_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value for the enum. DO NOT USE.
pattern SlashCommandMetadata_Type_TYPEUNSPECIFIED :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_TYPEUNSPECIFIED = SlashCommandMetadata_Type "TYPE_UNSPECIFIED"

-- | Add bot to space.
pattern SlashCommandMetadata_Type_Add :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_Add = SlashCommandMetadata_Type "ADD"

-- | Invoke slash command in space.
pattern SlashCommandMetadata_Type_Invoke :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_Invoke = SlashCommandMetadata_Type "INVOKE"

{-# COMPLETE
  SlashCommandMetadata_Type_TYPEUNSPECIFIED,
  SlashCommandMetadata_Type_Add,
  SlashCommandMetadata_Type_Invoke,
  SlashCommandMetadata_Type
  #-}

-- | Deprecated. Use @single_user_bot_dm@ instead. Output only. The type of a space.
newtype Space_Type = Space_Type {fromSpace_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Space_Type_TYPEUNSPECIFIED :: Space_Type
pattern Space_Type_TYPEUNSPECIFIED = Space_Type "TYPE_UNSPECIFIED"

-- | Conversations between two or more humans.
pattern Space_Type_Room :: Space_Type
pattern Space_Type_Room = Space_Type "ROOM"

-- | 1:1 Direct Message between a human and a Chat bot, where all messages are flat. Note that this does not include direct messages between two humans.
pattern Space_Type_DM :: Space_Type
pattern Space_Type_DM = Space_Type "DM"

{-# COMPLETE
  Space_Type_TYPEUNSPECIFIED,
  Space_Type_Room,
  Space_Type_DM,
  Space_Type
  #-}

-- | User type.
newtype User_Type = User_Type {fromUser_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value for the enum. DO NOT USE.
pattern User_Type_TYPEUNSPECIFIED :: User_Type
pattern User_Type_TYPEUNSPECIFIED = User_Type "TYPE_UNSPECIFIED"

-- | Human user.
pattern User_Type_Human :: User_Type
pattern User_Type_Human = User_Type "HUMAN"

-- | Bot user.
pattern User_Type_Bot :: User_Type
pattern User_Type_Bot = User_Type "BOT"

{-# COMPLETE
  User_Type_TYPEUNSPECIFIED,
  User_Type_Human,
  User_Type_Bot,
  User_Type
  #-}

-- | The type of user mention.
newtype UserMentionMetadata_Type = UserMentionMetadata_Type {fromUserMentionMetadata_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value for the enum. DO NOT USE.
pattern UserMentionMetadata_Type_TYPEUNSPECIFIED :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_TYPEUNSPECIFIED = UserMentionMetadata_Type "TYPE_UNSPECIFIED"

-- | Add user to space.
pattern UserMentionMetadata_Type_Add :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_Add = UserMentionMetadata_Type "ADD"

-- | Mention user in space.
pattern UserMentionMetadata_Type_Mention :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_Mention = UserMentionMetadata_Type "MENTION"

{-# COMPLETE
  UserMentionMetadata_Type_TYPEUNSPECIFIED,
  UserMentionMetadata_Type_Add,
  UserMentionMetadata_Type_Mention,
  UserMentionMetadata_Type
  #-}
