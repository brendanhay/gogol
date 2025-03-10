{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Chat.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Chat.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccessSettings_AccessState
    AccessSettings_AccessState
      ( AccessSettings_AccessState_ACCESSSTATEUNSPECIFIED,
        AccessSettings_AccessState_Private,
        AccessSettings_AccessState_Discoverable,
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
        ActionResponse_Type_UPDATEWIDGET,
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
        Annotation_Type_RICHLINK,
        Annotation_Type_CUSTOMEMOJI,
        ..
      ),

    -- * AppCommandMetadata_AppCommandType
    AppCommandMetadata_AppCommandType
      ( AppCommandMetadata_AppCommandType_APPCOMMANDTYPEUNSPECIFIED,
        AppCommandMetadata_AppCommandType_SLASHCOMMAND,
        AppCommandMetadata_AppCommandType_QUICKCOMMAND,
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
        CommonEventObject_HostApp_Meet,
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

    -- * DeletionMetadata_DeletionType
    DeletionMetadata_DeletionType
      ( DeletionMetadata_DeletionType_DELETIONTYPEUNSPECIFIED,
        DeletionMetadata_DeletionType_Creator,
        DeletionMetadata_DeletionType_SPACEOWNER,
        DeletionMetadata_DeletionType_Admin,
        DeletionMetadata_DeletionType_APPMESSAGEEXPIRY,
        DeletionMetadata_DeletionType_CREATORVIAAPP,
        DeletionMetadata_DeletionType_SPACEOWNERVIAAPP,
        DeletionMetadata_DeletionType_SPACEMEMBER,
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
        DeprecatedEvent_Type_WIDGETUPDATED,
        DeprecatedEvent_Type_APPCOMMAND,
        ..
      ),

    -- * GoogleAppsCardV1Action_Interaction
    GoogleAppsCardV1Action_Interaction
      ( GoogleAppsCardV1Action_Interaction_INTERACTIONUNSPECIFIED,
        GoogleAppsCardV1Action_Interaction_OPENDIALOG,
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

    -- * GoogleAppsCardV1Button_Type
    GoogleAppsCardV1Button_Type
      ( GoogleAppsCardV1Button_Type_TYPEUNSPECIFIED,
        GoogleAppsCardV1Button_Type_Outlined,
        GoogleAppsCardV1Button_Type_Filled,
        GoogleAppsCardV1Button_Type_FILLEDTONAL,
        GoogleAppsCardV1Button_Type_Borderless,
        ..
      ),

    -- * GoogleAppsCardV1Card_DisplayStyle
    GoogleAppsCardV1Card_DisplayStyle
      ( GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED,
        GoogleAppsCardV1Card_DisplayStyle_Peek,
        GoogleAppsCardV1Card_DisplayStyle_Replace,
        ..
      ),

    -- * GoogleAppsCardV1Card_SectionDividerStyle
    GoogleAppsCardV1Card_SectionDividerStyle
      ( GoogleAppsCardV1Card_SectionDividerStyle_DIVIDERSTYLEUNSPECIFIED,
        GoogleAppsCardV1Card_SectionDividerStyle_SOLIDDIVIDER,
        GoogleAppsCardV1Card_SectionDividerStyle_NODIVIDER,
        ..
      ),

    -- * GoogleAppsCardV1CardHeader_ImageType
    GoogleAppsCardV1CardHeader_ImageType
      ( GoogleAppsCardV1CardHeader_ImageType_Square,
        GoogleAppsCardV1CardHeader_ImageType_Circle,
        ..
      ),

    -- * GoogleAppsCardV1ChipList_Layout
    GoogleAppsCardV1ChipList_Layout
      ( GoogleAppsCardV1ChipList_Layout_LAYOUTUNSPECIFIED,
        GoogleAppsCardV1ChipList_Layout_Wrapped,
        GoogleAppsCardV1ChipList_Layout_HORIZONTALSCROLLABLE,
        ..
      ),

    -- * GoogleAppsCardV1CollapseControl_HorizontalAlignment
    GoogleAppsCardV1CollapseControl_HorizontalAlignment
      ( GoogleAppsCardV1CollapseControl_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        GoogleAppsCardV1CollapseControl_HorizontalAlignment_Start,
        GoogleAppsCardV1CollapseControl_HorizontalAlignment_Center,
        GoogleAppsCardV1CollapseControl_HorizontalAlignment_End,
        ..
      ),

    -- * GoogleAppsCardV1Column_HorizontalAlignment
    GoogleAppsCardV1Column_HorizontalAlignment
      ( GoogleAppsCardV1Column_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        GoogleAppsCardV1Column_HorizontalAlignment_Start,
        GoogleAppsCardV1Column_HorizontalAlignment_Center,
        GoogleAppsCardV1Column_HorizontalAlignment_End,
        ..
      ),

    -- * GoogleAppsCardV1Column_HorizontalSizeStyle
    GoogleAppsCardV1Column_HorizontalSizeStyle
      ( GoogleAppsCardV1Column_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED,
        GoogleAppsCardV1Column_HorizontalSizeStyle_FILLAVAILABLESPACE,
        GoogleAppsCardV1Column_HorizontalSizeStyle_FILLMINIMUMSPACE,
        ..
      ),

    -- * GoogleAppsCardV1Column_VerticalAlignment
    GoogleAppsCardV1Column_VerticalAlignment
      ( GoogleAppsCardV1Column_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED,
        GoogleAppsCardV1Column_VerticalAlignment_Center,
        GoogleAppsCardV1Column_VerticalAlignment_Top,
        GoogleAppsCardV1Column_VerticalAlignment_Bottom,
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

    -- * GoogleAppsCardV1PlatformDataSource_CommonDataSource
    GoogleAppsCardV1PlatformDataSource_CommonDataSource
      ( GoogleAppsCardV1PlatformDataSource_CommonDataSource_Unknown,
        GoogleAppsCardV1PlatformDataSource_CommonDataSource_User,
        ..
      ),

    -- * GoogleAppsCardV1SelectionInput_Type
    GoogleAppsCardV1SelectionInput_Type
      ( GoogleAppsCardV1SelectionInput_Type_CHECKBOX,
        GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON,
        GoogleAppsCardV1SelectionInput_Type_Switch,
        GoogleAppsCardV1SelectionInput_Type_Dropdown,
        GoogleAppsCardV1SelectionInput_Type_MULTISELECT,
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

    -- * GoogleAppsCardV1Validation_InputType
    GoogleAppsCardV1Validation_InputType
      ( GoogleAppsCardV1Validation_InputType_INPUTTYPEUNSPECIFIED,
        GoogleAppsCardV1Validation_InputType_Text,
        GoogleAppsCardV1Validation_InputType_Integer,
        GoogleAppsCardV1Validation_InputType_Float,
        GoogleAppsCardV1Validation_InputType_Email,
        GoogleAppsCardV1Validation_InputType_EMOJIPICKER,
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

    -- * Membership_Role
    Membership_Role
      ( Membership_Role_MEMBERSHIPROLEUNSPECIFIED,
        Membership_Role_ROLEMEMBER,
        Membership_Role_ROLEMANAGER,
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

    -- * RichLinkMetadata_RichLinkType
    RichLinkMetadata_RichLinkType
      ( RichLinkMetadata_RichLinkType_RICHLINKTYPEUNSPECIFIED,
        RichLinkMetadata_RichLinkType_DRIVEFILE,
        RichLinkMetadata_RichLinkType_CHATSPACE,
        ..
      ),

    -- * SlashCommandMetadata_Type
    SlashCommandMetadata_Type
      ( SlashCommandMetadata_Type_TYPEUNSPECIFIED,
        SlashCommandMetadata_Type_Add,
        SlashCommandMetadata_Type_Invoke,
        ..
      ),

    -- * Space_PredefinedPermissionSettings
    Space_PredefinedPermissionSettings
      ( Space_PredefinedPermissionSettings_PREDEFINEDPERMISSIONSETTINGSUNSPECIFIED,
        Space_PredefinedPermissionSettings_COLLABORATIONSPACE,
        Space_PredefinedPermissionSettings_ANNOUNCEMENTSPACE,
        ..
      ),

    -- * Space_SpaceHistoryState
    Space_SpaceHistoryState
      ( Space_SpaceHistoryState_HISTORYSTATEUNSPECIFIED,
        Space_SpaceHistoryState_HISTORYOFF,
        Space_SpaceHistoryState_HISTORYON,
        ..
      ),

    -- * Space_SpaceThreadingState
    Space_SpaceThreadingState
      ( Space_SpaceThreadingState_SPACETHREADINGSTATEUNSPECIFIED,
        Space_SpaceThreadingState_THREADEDMESSAGES,
        Space_SpaceThreadingState_GROUPEDMESSAGES,
        Space_SpaceThreadingState_UNTHREADEDMESSAGES,
        ..
      ),

    -- * Space_SpaceType
    Space_SpaceType
      ( Space_SpaceType_SPACETYPEUNSPECIFIED,
        Space_SpaceType_Space,
        Space_SpaceType_GROUPCHAT,
        Space_SpaceType_DIRECTMESSAGE,
        ..
      ),

    -- * Space_Type
    Space_Type
      ( Space_Type_TYPEUNSPECIFIED,
        Space_Type_Room,
        Space_Type_DM,
        ..
      ),

    -- * SpaceNotificationSetting_MuteSetting
    SpaceNotificationSetting_MuteSetting
      ( SpaceNotificationSetting_MuteSetting_MUTESETTINGUNSPECIFIED,
        SpaceNotificationSetting_MuteSetting_Unmuted,
        SpaceNotificationSetting_MuteSetting_Muted,
        ..
      ),

    -- * SpaceNotificationSetting_NotificationSetting
    SpaceNotificationSetting_NotificationSetting
      ( SpaceNotificationSetting_NotificationSetting_NOTIFICATIONSETTINGUNSPECIFIED,
        SpaceNotificationSetting_NotificationSetting_All,
        SpaceNotificationSetting_NotificationSetting_MAINCONVERSATIONS,
        SpaceNotificationSetting_NotificationSetting_FORYOU,
        SpaceNotificationSetting_NotificationSetting_Off,
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

    -- * SpacesMessagesCreateMessageReplyOption
    SpacesMessagesCreateMessageReplyOption
      ( SpacesMessagesCreateMessageReplyOption_MESSAGEREPLYOPTIONUNSPECIFIED,
        SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEFALLBACKTONEWTHREAD,
        SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEORFAIL,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | Output only. Indicates the access state of the space.
newtype AccessSettings_AccessState = AccessSettings_AccessState {fromAccessSettings_AccessState :: Core.Text}
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

-- | Access state is unknown or not supported in this API.
pattern AccessSettings_AccessState_ACCESSSTATEUNSPECIFIED :: AccessSettings_AccessState
pattern AccessSettings_AccessState_ACCESSSTATEUNSPECIFIED = AccessSettings_AccessState "ACCESS_STATE_UNSPECIFIED"

-- | Only users or Google Groups that have been individually added or invited by other users or Google Workspace administrators can discover and access the space.
pattern AccessSettings_AccessState_Private :: AccessSettings_AccessState
pattern AccessSettings_AccessState_Private = AccessSettings_AccessState "PRIVATE"

-- | A space manager has granted a target audience access to the space. Users or Google Groups that have been individually added or invited to the space can also discover and access the space. To learn more, see <https://developers.google.com/workspace/chat/space-target-audience Make a space discoverable to specific users>. Creating discoverable spaces requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
pattern AccessSettings_AccessState_Discoverable :: AccessSettings_AccessState
pattern AccessSettings_AccessState_Discoverable = AccessSettings_AccessState "DISCOVERABLE"

{-# COMPLETE
  AccessSettings_AccessState_ACCESSSTATEUNSPECIFIED,
  AccessSettings_AccessState_Private,
  AccessSettings_AccessState_Discoverable,
  AccessSettings_AccessState
  #-}

-- | Input only. The type of Chat app response.
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

-- | Default type that\'s handled as @NEW_MESSAGE@.
pattern ActionResponse_Type_TYPEUNSPECIFIED :: ActionResponse_Type
pattern ActionResponse_Type_TYPEUNSPECIFIED = ActionResponse_Type "TYPE_UNSPECIFIED"

-- | Post as a new message in the topic.
pattern ActionResponse_Type_NEWMESSAGE :: ActionResponse_Type
pattern ActionResponse_Type_NEWMESSAGE = ActionResponse_Type "NEW_MESSAGE"

-- | Update the Chat app\'s message. This is only permitted on a @CARD_CLICKED@ event where the message sender type is @BOT@.
pattern ActionResponse_Type_UPDATEMESSAGE :: ActionResponse_Type
pattern ActionResponse_Type_UPDATEMESSAGE = ActionResponse_Type "UPDATE_MESSAGE"

-- | Update the cards on a user\'s message. This is only permitted as a response to a @MESSAGE@ event with a matched url, or a @CARD_CLICKED@ event where the message sender type is @HUMAN@. Text is ignored.
pattern ActionResponse_Type_UPDATEUSERMESSAGECARDS :: ActionResponse_Type
pattern ActionResponse_Type_UPDATEUSERMESSAGECARDS = ActionResponse_Type "UPDATE_USER_MESSAGE_CARDS"

-- | Privately ask the user for additional authentication or configuration.
pattern ActionResponse_Type_REQUESTCONFIG :: ActionResponse_Type
pattern ActionResponse_Type_REQUESTCONFIG = ActionResponse_Type "REQUEST_CONFIG"

-- | Presents a <https://developers.google.com/workspace/chat/dialogs dialog>.
pattern ActionResponse_Type_Dialog :: ActionResponse_Type
pattern ActionResponse_Type_Dialog = ActionResponse_Type "DIALOG"

-- | Widget text autocomplete options query.
pattern ActionResponse_Type_UPDATEWIDGET :: ActionResponse_Type
pattern ActionResponse_Type_UPDATEWIDGET = ActionResponse_Type "UPDATE_WIDGET"

{-# COMPLETE
  ActionResponse_Type_TYPEUNSPECIFIED,
  ActionResponse_Type_NEWMESSAGE,
  ActionResponse_Type_UPDATEMESSAGE,
  ActionResponse_Type_UPDATEUSERMESSAGECARDS,
  ActionResponse_Type_REQUESTCONFIG,
  ActionResponse_Type_Dialog,
  ActionResponse_Type_UPDATEWIDGET,
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

-- | Not an error; returned on success. HTTP Mapping: 200 OK
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

-- | Default value for the enum. Don\'t use.
pattern Annotation_Type_ANNOTATIONTYPEUNSPECIFIED :: Annotation_Type
pattern Annotation_Type_ANNOTATIONTYPEUNSPECIFIED = Annotation_Type "ANNOTATION_TYPE_UNSPECIFIED"

-- | A user is mentioned.
pattern Annotation_Type_USERMENTION :: Annotation_Type
pattern Annotation_Type_USERMENTION = Annotation_Type "USER_MENTION"

-- | A slash command is invoked.
pattern Annotation_Type_SLASHCOMMAND :: Annotation_Type
pattern Annotation_Type_SLASHCOMMAND = Annotation_Type "SLASH_COMMAND"

-- | A rich link annotation.
pattern Annotation_Type_RICHLINK :: Annotation_Type
pattern Annotation_Type_RICHLINK = Annotation_Type "RICH_LINK"

-- | A custom emoji annotation.
pattern Annotation_Type_CUSTOMEMOJI :: Annotation_Type
pattern Annotation_Type_CUSTOMEMOJI = Annotation_Type "CUSTOM_EMOJI"

{-# COMPLETE
  Annotation_Type_ANNOTATIONTYPEUNSPECIFIED,
  Annotation_Type_USERMENTION,
  Annotation_Type_SLASHCOMMAND,
  Annotation_Type_RICHLINK,
  Annotation_Type_CUSTOMEMOJI,
  Annotation_Type
  #-}

-- | The type of Chat app command.
newtype AppCommandMetadata_AppCommandType = AppCommandMetadata_AppCommandType {fromAppCommandMetadata_AppCommandType :: Core.Text}
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

-- | Default value. Unspecified.
pattern AppCommandMetadata_AppCommandType_APPCOMMANDTYPEUNSPECIFIED :: AppCommandMetadata_AppCommandType
pattern AppCommandMetadata_AppCommandType_APPCOMMANDTYPEUNSPECIFIED = AppCommandMetadata_AppCommandType "APP_COMMAND_TYPE_UNSPECIFIED"

-- | A slash command. The user sends the command in a Chat message.
pattern AppCommandMetadata_AppCommandType_SLASHCOMMAND :: AppCommandMetadata_AppCommandType
pattern AppCommandMetadata_AppCommandType_SLASHCOMMAND = AppCommandMetadata_AppCommandType "SLASH_COMMAND"

-- | A quick command. The user selects the command from the Chat menu in the message reply area.
pattern AppCommandMetadata_AppCommandType_QUICKCOMMAND :: AppCommandMetadata_AppCommandType
pattern AppCommandMetadata_AppCommandType_QUICKCOMMAND = AppCommandMetadata_AppCommandType "QUICK_COMMAND"

{-# COMPLETE
  AppCommandMetadata_AppCommandType_APPCOMMANDTYPEUNSPECIFIED,
  AppCommandMetadata_AppCommandType_SLASHCOMMAND,
  AppCommandMetadata_AppCommandType_QUICKCOMMAND,
  AppCommandMetadata_AppCommandType
  #-}

-- | Output only. The source of the attachment.
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

-- | Reserved.
pattern Attachment_Source_SOURCEUNSPECIFIED :: Attachment_Source
pattern Attachment_Source_SOURCEUNSPECIFIED = Attachment_Source "SOURCE_UNSPECIFIED"

-- | The file is a Google Drive file.
pattern Attachment_Source_DRIVEFILE :: Attachment_Source
pattern Attachment_Source_DRIVEFILE = Attachment_Source "DRIVE_FILE"

-- | The file is uploaded to Chat.
pattern Attachment_Source_UPLOADEDCONTENT :: Attachment_Source
pattern Attachment_Source_UPLOADEDCONTENT = Attachment_Source "UPLOADED_CONTENT"

{-# COMPLETE
  Attachment_Source_SOURCEUNSPECIFIED,
  Attachment_Source_DRIVEFILE,
  Attachment_Source_UPLOADEDCONTENT,
  Attachment_Source
  #-}

-- | The image\'s type (for example, square border or circular border).
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

-- | The add-on launches from Google Meet.
pattern CommonEventObject_HostApp_Meet :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Meet = CommonEventObject_HostApp "MEET"

-- | The add-on launches from Google Sheets.
pattern CommonEventObject_HostApp_Sheets :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Sheets = CommonEventObject_HostApp "SHEETS"

-- | The add-on launches from Google Slides.
pattern CommonEventObject_HostApp_Slides :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Slides = CommonEventObject_HostApp "SLIDES"

-- | The add-on launches from Google Drawings.
pattern CommonEventObject_HostApp_Drawings :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Drawings = CommonEventObject_HostApp "DRAWINGS"

-- | A Google Chat app. Not used for Google Workspace add-ons.
pattern CommonEventObject_HostApp_Chat :: CommonEventObject_HostApp
pattern CommonEventObject_HostApp_Chat = CommonEventObject_HostApp "CHAT"

{-# COMPLETE
  CommonEventObject_HostApp_UNSPECIFIEDHOSTAPP,
  CommonEventObject_HostApp_Gmail,
  CommonEventObject_HostApp_Calendar,
  CommonEventObject_HostApp_Drive,
  CommonEventObject_HostApp_Demo,
  CommonEventObject_HostApp_Docs,
  CommonEventObject_HostApp_Meet,
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

pattern CommonEventObject_Platform_UNKNOWNPLATFORM :: CommonEventObject_Platform
pattern CommonEventObject_Platform_UNKNOWNPLATFORM = CommonEventObject_Platform "UNKNOWN_PLATFORM"

pattern CommonEventObject_Platform_Web :: CommonEventObject_Platform
pattern CommonEventObject_Platform_Web = CommonEventObject_Platform "WEB"

pattern CommonEventObject_Platform_Ios :: CommonEventObject_Platform
pattern CommonEventObject_Platform_Ios = CommonEventObject_Platform "IOS"

pattern CommonEventObject_Platform_Android :: CommonEventObject_Platform
pattern CommonEventObject_Platform_Android = CommonEventObject_Platform "ANDROID"

{-# COMPLETE
  CommonEventObject_Platform_UNKNOWNPLATFORM,
  CommonEventObject_Platform_Web,
  CommonEventObject_Platform_Ios,
  CommonEventObject_Platform_Android,
  CommonEventObject_Platform
  #-}

-- | Indicates who deleted the message.
newtype DeletionMetadata_DeletionType = DeletionMetadata_DeletionType {fromDeletionMetadata_DeletionType :: Core.Text}
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

-- | This value is unused.
pattern DeletionMetadata_DeletionType_DELETIONTYPEUNSPECIFIED :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_DELETIONTYPEUNSPECIFIED = DeletionMetadata_DeletionType "DELETION_TYPE_UNSPECIFIED"

-- | User deleted their own message.
pattern DeletionMetadata_DeletionType_Creator :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_Creator = DeletionMetadata_DeletionType "CREATOR"

-- | A space manager deleted the message.
pattern DeletionMetadata_DeletionType_SPACEOWNER :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_SPACEOWNER = DeletionMetadata_DeletionType "SPACE_OWNER"

-- | A Google Workspace administrator deleted the message. Administrators can delete any message in the space, including messages sent by any space member or Chat app.
pattern DeletionMetadata_DeletionType_Admin :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_Admin = DeletionMetadata_DeletionType "ADMIN"

-- | A Chat app deleted its own message when it expired.
pattern DeletionMetadata_DeletionType_APPMESSAGEEXPIRY :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_APPMESSAGEEXPIRY = DeletionMetadata_DeletionType "APP_MESSAGE_EXPIRY"

-- | A Chat app deleted the message on behalf of the creator (using user authentication).
pattern DeletionMetadata_DeletionType_CREATORVIAAPP :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_CREATORVIAAPP = DeletionMetadata_DeletionType "CREATOR_VIA_APP"

-- | A Chat app deleted the message on behalf of a space manager (using user authentication).
pattern DeletionMetadata_DeletionType_SPACEOWNERVIAAPP :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_SPACEOWNERVIAAPP = DeletionMetadata_DeletionType "SPACE_OWNER_VIA_APP"

-- | A member of the space deleted the message. Users can delete messages sent by apps.
pattern DeletionMetadata_DeletionType_SPACEMEMBER :: DeletionMetadata_DeletionType
pattern DeletionMetadata_DeletionType_SPACEMEMBER = DeletionMetadata_DeletionType "SPACE_MEMBER"

{-# COMPLETE
  DeletionMetadata_DeletionType_DELETIONTYPEUNSPECIFIED,
  DeletionMetadata_DeletionType_Creator,
  DeletionMetadata_DeletionType_SPACEOWNER,
  DeletionMetadata_DeletionType_Admin,
  DeletionMetadata_DeletionType_APPMESSAGEEXPIRY,
  DeletionMetadata_DeletionType_CREATORVIAAPP,
  DeletionMetadata_DeletionType_SPACEOWNERVIAAPP,
  DeletionMetadata_DeletionType_SPACEMEMBER,
  DeletionMetadata_DeletionType
  #-}

-- | The type of <https://developers.google.com/workspace/chat/dialogs dialog> interaction event received.
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

-- | Default value. Unspecified.
pattern DeprecatedEvent_DialogEventType_TYPEUNSPECIFIED :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_TYPEUNSPECIFIED = DeprecatedEvent_DialogEventType "TYPE_UNSPECIFIED"

-- | A user opens a dialog.
pattern DeprecatedEvent_DialogEventType_REQUESTDIALOG :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_REQUESTDIALOG = DeprecatedEvent_DialogEventType "REQUEST_DIALOG"

-- | A user clicks an interactive element of a dialog. For example, a user fills out information in a dialog and clicks a button to submit the information.
pattern DeprecatedEvent_DialogEventType_SUBMITDIALOG :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_SUBMITDIALOG = DeprecatedEvent_DialogEventType "SUBMIT_DIALOG"

-- | A user closes a dialog without submitting information. The Chat app only receives this interaction event when users click the close icon in the top right corner of the dialog. When the user closes the dialog by other means (such as refreshing the browser, clicking outside the dialog box, or pressing the escape key), no event is sent. .
pattern DeprecatedEvent_DialogEventType_CANCELDIALOG :: DeprecatedEvent_DialogEventType
pattern DeprecatedEvent_DialogEventType_CANCELDIALOG = DeprecatedEvent_DialogEventType "CANCEL_DIALOG"

{-# COMPLETE
  DeprecatedEvent_DialogEventType_TYPEUNSPECIFIED,
  DeprecatedEvent_DialogEventType_REQUESTDIALOG,
  DeprecatedEvent_DialogEventType_SUBMITDIALOG,
  DeprecatedEvent_DialogEventType_CANCELDIALOG,
  DeprecatedEvent_DialogEventType
  #-}

-- | The </workspace/chat/api/reference/rest/v1/EventType type> of user interaction with the Chat app, such as @MESSAGE@ or @ADDED_TO_SPACE@.
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

-- | A user sends the Chat app a message, or invokes the Chat app in a space, such as any of the following examples: * Any message in a direct message (DM) space with the Chat app. * A message in a multi-person space where a person \@mentions the Chat app, or uses one of its <https://developers.google.com/workspace/chat/commands#types slash commands>. * If you\'ve configured link previews for your Chat app, a user posts a message that contains a link that matches the configured URL pattern.
pattern DeprecatedEvent_Type_Message :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_Message = DeprecatedEvent_Type "MESSAGE"

-- | A user adds the Chat app to a space, or a Google Workspace administrator installs the Chat app in direct message spaces for users in their organization. Chat apps typically respond to this interaction event by posting a welcome message in the space. When administrators install Chat apps, the @space.adminInstalled@ field is set to @true@ and users can\'t uninstall them. To learn about Chat apps installed by administrators, see Google Workspace Admin Help\'s documentation, <https://support.google.com/a/answer/172482 Install Marketplace apps in your domain>.
pattern DeprecatedEvent_Type_ADDEDTOSPACE :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_ADDEDTOSPACE = DeprecatedEvent_Type "ADDED_TO_SPACE"

-- | A user removes the Chat app from a space, or a Google Workspace administrator uninstalls the Chat app for a user in their organization. Chat apps can\'t respond with messages to this event, because they have already been removed. When administrators uninstall Chat apps, the @space.adminInstalled@ field is set to @false@. If a user installed the Chat app before the administrator, the Chat app remains installed for the user and the Chat app doesn\'t receive a @REMOVED_FROM_SPACE@ interaction event.
pattern DeprecatedEvent_Type_REMOVEDFROMSPACE :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_REMOVEDFROMSPACE = DeprecatedEvent_Type "REMOVED_FROM_SPACE"

-- | A user clicks an interactive element of a card or dialog from a Chat app, such as a button. To receive an interaction event, the button must trigger another interaction with the Chat app. For example, a Chat app doesn\'t receive a @CARD_CLICKED@ interaction event if a user clicks a button that opens a link to a website, but receives interaction events in the following examples: * The user clicks a @Send feedback@ button on a card, which opens a dialog for the user to input information. * The user clicks a @Submit@ button after inputting information into a card or dialog. If a user clicks a button to open, submit, or cancel a dialog, the @CARD_CLICKED@ interaction event\'s @isDialogEvent@ field is set to @true@ and includes a <https://developers.google.com/workspace/chat/api/reference/rest/v1/DialogEventType DialogEventType>.
pattern DeprecatedEvent_Type_CARDCLICKED :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_CARDCLICKED = DeprecatedEvent_Type "CARD_CLICKED"

-- | A user updates a widget in a card message or dialog.
pattern DeprecatedEvent_Type_WIDGETUPDATED :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_WIDGETUPDATED = DeprecatedEvent_Type "WIDGET_UPDATED"

-- | A user uses a Chat app <https://developers.google.com/workspace/chat/commands#types quick command>.
pattern DeprecatedEvent_Type_APPCOMMAND :: DeprecatedEvent_Type
pattern DeprecatedEvent_Type_APPCOMMAND = DeprecatedEvent_Type "APP_COMMAND"

{-# COMPLETE
  DeprecatedEvent_Type_Unspecified,
  DeprecatedEvent_Type_Message,
  DeprecatedEvent_Type_ADDEDTOSPACE,
  DeprecatedEvent_Type_REMOVEDFROMSPACE,
  DeprecatedEvent_Type_CARDCLICKED,
  DeprecatedEvent_Type_WIDGETUPDATED,
  DeprecatedEvent_Type_APPCOMMAND,
  DeprecatedEvent_Type
  #-}

-- | Optional. Required when opening a <https://developers.google.com/workspace/chat/dialogs dialog>. What to do in response to an interaction with a user, such as a user clicking a button in a card message. If unspecified, the app responds by executing an @action@—like opening a link or running a function—as normal. By specifying an @interaction@, the app can respond in special interactive ways. For example, by setting @interaction@ to @OPEN_DIALOG@, the app can open a <https://developers.google.com/workspace/chat/dialogs dialog>. When specified, a loading indicator isn\'t shown. If specified for an add-on, the entire card is stripped and nothing is shown in the client. <https://developers.google.com/workspace/chat Google Chat apps>:
newtype GoogleAppsCardV1Action_Interaction = GoogleAppsCardV1Action_Interaction {fromGoogleAppsCardV1Action_Interaction :: Core.Text}
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

-- | Default value. The @action@ executes as normal.
pattern GoogleAppsCardV1Action_Interaction_INTERACTIONUNSPECIFIED :: GoogleAppsCardV1Action_Interaction
pattern GoogleAppsCardV1Action_Interaction_INTERACTIONUNSPECIFIED = GoogleAppsCardV1Action_Interaction "INTERACTION_UNSPECIFIED"

-- | Opens a <https://developers.google.com/workspace/chat/dialogs dialog>, a windowed, card-based interface that Chat apps use to interact with users. Only supported by Chat apps in response to button-clicks on card messages. If specified for an add-on, the entire card is stripped and nothing is shown in the client. <https://developers.google.com/workspace/chat Google Chat apps>:
pattern GoogleAppsCardV1Action_Interaction_OPENDIALOG :: GoogleAppsCardV1Action_Interaction
pattern GoogleAppsCardV1Action_Interaction_OPENDIALOG = GoogleAppsCardV1Action_Interaction "OPEN_DIALOG"

{-# COMPLETE
  GoogleAppsCardV1Action_Interaction_INTERACTIONUNSPECIFIED,
  GoogleAppsCardV1Action_Interaction_OPENDIALOG,
  GoogleAppsCardV1Action_Interaction
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1BorderStyle_Type_BORDERTYPEUNSPECIFIED :: GoogleAppsCardV1BorderStyle_Type
pattern GoogleAppsCardV1BorderStyle_Type_BORDERTYPEUNSPECIFIED = GoogleAppsCardV1BorderStyle_Type "BORDER_TYPE_UNSPECIFIED"

-- | Default value. No border.
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

-- | Optional. The type of a button. If unset, button type defaults to @OUTLINED@. If the @color@ field is set, the button type is forced to @FILLED@ and any value set for this field is ignored.
newtype GoogleAppsCardV1Button_Type = GoogleAppsCardV1Button_Type {fromGoogleAppsCardV1Button_Type :: Core.Text}
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1Button_Type_TYPEUNSPECIFIED :: GoogleAppsCardV1Button_Type
pattern GoogleAppsCardV1Button_Type_TYPEUNSPECIFIED = GoogleAppsCardV1Button_Type "TYPE_UNSPECIFIED"

-- | Outlined buttons are medium-emphasis buttons. They usually contain actions that are important, but aren’t the primary action in a Chat app or an add-on.
pattern GoogleAppsCardV1Button_Type_Outlined :: GoogleAppsCardV1Button_Type
pattern GoogleAppsCardV1Button_Type_Outlined = GoogleAppsCardV1Button_Type "OUTLINED"

-- | A filled button has a container with a solid color. It has the most visual impact and is recommended for the important and primary action in a Chat app or an add-on.
pattern GoogleAppsCardV1Button_Type_Filled :: GoogleAppsCardV1Button_Type
pattern GoogleAppsCardV1Button_Type_Filled = GoogleAppsCardV1Button_Type "FILLED"

-- | A filled tonal button is an alternative middle ground between filled and outlined buttons. They’re useful in contexts where a lower-priority button requires slightly more emphasis than an outline button would give.
pattern GoogleAppsCardV1Button_Type_FILLEDTONAL :: GoogleAppsCardV1Button_Type
pattern GoogleAppsCardV1Button_Type_FILLEDTONAL = GoogleAppsCardV1Button_Type "FILLED_TONAL"

-- | A button does not have an invisible container in its default state. It is often used for the lowest priority actions, especially when presenting multiple options.
pattern GoogleAppsCardV1Button_Type_Borderless :: GoogleAppsCardV1Button_Type
pattern GoogleAppsCardV1Button_Type_Borderless = GoogleAppsCardV1Button_Type "BORDERLESS"

{-# COMPLETE
  GoogleAppsCardV1Button_Type_TYPEUNSPECIFIED,
  GoogleAppsCardV1Button_Type_Outlined,
  GoogleAppsCardV1Button_Type_Filled,
  GoogleAppsCardV1Button_Type_FILLEDTONAL,
  GoogleAppsCardV1Button_Type_Borderless,
  GoogleAppsCardV1Button_Type
  #-}

-- | In Google Workspace add-ons, sets the display properties of the @peekCardHeader@. <https://developers.google.com/workspace/add-ons Google Workspace add-ons>:
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED :: GoogleAppsCardV1Card_DisplayStyle
pattern GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED = GoogleAppsCardV1Card_DisplayStyle "DISPLAY_STYLE_UNSPECIFIED"

-- | The header of the card appears at the bottom of the sidebar, partially covering the current top card of the stack. Clicking the header pops the card into the card stack. If the card has no header, a generated header is used instead.
pattern GoogleAppsCardV1Card_DisplayStyle_Peek :: GoogleAppsCardV1Card_DisplayStyle
pattern GoogleAppsCardV1Card_DisplayStyle_Peek = GoogleAppsCardV1Card_DisplayStyle "PEEK"

-- | Default value. The card is shown by replacing the view of the top card in the card stack.
pattern GoogleAppsCardV1Card_DisplayStyle_Replace :: GoogleAppsCardV1Card_DisplayStyle
pattern GoogleAppsCardV1Card_DisplayStyle_Replace = GoogleAppsCardV1Card_DisplayStyle "REPLACE"

{-# COMPLETE
  GoogleAppsCardV1Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED,
  GoogleAppsCardV1Card_DisplayStyle_Peek,
  GoogleAppsCardV1Card_DisplayStyle_Replace,
  GoogleAppsCardV1Card_DisplayStyle
  #-}

-- | The divider style between the header, sections and footer.
newtype GoogleAppsCardV1Card_SectionDividerStyle = GoogleAppsCardV1Card_SectionDividerStyle {fromGoogleAppsCardV1Card_SectionDividerStyle :: Core.Text}
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1Card_SectionDividerStyle_DIVIDERSTYLEUNSPECIFIED :: GoogleAppsCardV1Card_SectionDividerStyle
pattern GoogleAppsCardV1Card_SectionDividerStyle_DIVIDERSTYLEUNSPECIFIED = GoogleAppsCardV1Card_SectionDividerStyle "DIVIDER_STYLE_UNSPECIFIED"

-- | Default option. Render a solid divider.
pattern GoogleAppsCardV1Card_SectionDividerStyle_SOLIDDIVIDER :: GoogleAppsCardV1Card_SectionDividerStyle
pattern GoogleAppsCardV1Card_SectionDividerStyle_SOLIDDIVIDER = GoogleAppsCardV1Card_SectionDividerStyle "SOLID_DIVIDER"

-- | If set, no divider is rendered. This style completely removes the divider from the layout. The result is equivalent to not adding a divider at all.
pattern GoogleAppsCardV1Card_SectionDividerStyle_NODIVIDER :: GoogleAppsCardV1Card_SectionDividerStyle
pattern GoogleAppsCardV1Card_SectionDividerStyle_NODIVIDER = GoogleAppsCardV1Card_SectionDividerStyle "NO_DIVIDER"

{-# COMPLETE
  GoogleAppsCardV1Card_SectionDividerStyle_DIVIDERSTYLEUNSPECIFIED,
  GoogleAppsCardV1Card_SectionDividerStyle_SOLIDDIVIDER,
  GoogleAppsCardV1Card_SectionDividerStyle_NODIVIDER,
  GoogleAppsCardV1Card_SectionDividerStyle
  #-}

-- | The shape used to crop the image. <https://developers.google.com/workspace/extend Google Workspace add-ons and Chat apps>:
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

-- | Default value. Applies a square mask to the image. For example, a 4x3 image becomes 3x3.
pattern GoogleAppsCardV1CardHeader_ImageType_Square :: GoogleAppsCardV1CardHeader_ImageType
pattern GoogleAppsCardV1CardHeader_ImageType_Square = GoogleAppsCardV1CardHeader_ImageType "SQUARE"

-- | Applies a circular mask to the image. For example, a 4x3 image becomes a circle with a diameter of 3.
pattern GoogleAppsCardV1CardHeader_ImageType_Circle :: GoogleAppsCardV1CardHeader_ImageType
pattern GoogleAppsCardV1CardHeader_ImageType_Circle = GoogleAppsCardV1CardHeader_ImageType "CIRCLE"

{-# COMPLETE
  GoogleAppsCardV1CardHeader_ImageType_Square,
  GoogleAppsCardV1CardHeader_ImageType_Circle,
  GoogleAppsCardV1CardHeader_ImageType
  #-}

-- | Specified chip list layout.
newtype GoogleAppsCardV1ChipList_Layout = GoogleAppsCardV1ChipList_Layout {fromGoogleAppsCardV1ChipList_Layout :: Core.Text}
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1ChipList_Layout_LAYOUTUNSPECIFIED :: GoogleAppsCardV1ChipList_Layout
pattern GoogleAppsCardV1ChipList_Layout_LAYOUTUNSPECIFIED = GoogleAppsCardV1ChipList_Layout "LAYOUT_UNSPECIFIED"

-- | Default value. The chip list wraps to the next line if there isn\'t enough horizontal space.
pattern GoogleAppsCardV1ChipList_Layout_Wrapped :: GoogleAppsCardV1ChipList_Layout
pattern GoogleAppsCardV1ChipList_Layout_Wrapped = GoogleAppsCardV1ChipList_Layout "WRAPPED"

-- | The chips scroll horizontally if they don\'t fit in the available space.
pattern GoogleAppsCardV1ChipList_Layout_HORIZONTALSCROLLABLE :: GoogleAppsCardV1ChipList_Layout
pattern GoogleAppsCardV1ChipList_Layout_HORIZONTALSCROLLABLE = GoogleAppsCardV1ChipList_Layout "HORIZONTAL_SCROLLABLE"

{-# COMPLETE
  GoogleAppsCardV1ChipList_Layout_LAYOUTUNSPECIFIED,
  GoogleAppsCardV1ChipList_Layout_Wrapped,
  GoogleAppsCardV1ChipList_Layout_HORIZONTALSCROLLABLE,
  GoogleAppsCardV1ChipList_Layout
  #-}

-- | The horizontal alignment of the expand and collapse button.
newtype GoogleAppsCardV1CollapseControl_HorizontalAlignment = GoogleAppsCardV1CollapseControl_HorizontalAlignment {fromGoogleAppsCardV1CollapseControl_HorizontalAlignment :: Core.Text}
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GoogleAppsCardV1CollapseControl_HorizontalAlignment
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GoogleAppsCardV1CollapseControl_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Default value. Aligns widgets to the start position of the column. For left-to-right layouts, aligns to the left. For right-to-left layouts, aligns to the right.
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_Start :: GoogleAppsCardV1CollapseControl_HorizontalAlignment
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_Start = GoogleAppsCardV1CollapseControl_HorizontalAlignment "START"

-- | Aligns widgets to the center of the column.
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_Center :: GoogleAppsCardV1CollapseControl_HorizontalAlignment
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_Center = GoogleAppsCardV1CollapseControl_HorizontalAlignment "CENTER"

-- | Aligns widgets to the end position of the column. For left-to-right layouts, aligns widgets to the right. For right-to-left layouts, aligns widgets to the left.
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_End :: GoogleAppsCardV1CollapseControl_HorizontalAlignment
pattern GoogleAppsCardV1CollapseControl_HorizontalAlignment_End = GoogleAppsCardV1CollapseControl_HorizontalAlignment "END"

{-# COMPLETE
  GoogleAppsCardV1CollapseControl_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GoogleAppsCardV1CollapseControl_HorizontalAlignment_Start,
  GoogleAppsCardV1CollapseControl_HorizontalAlignment_Center,
  GoogleAppsCardV1CollapseControl_HorizontalAlignment_End,
  GoogleAppsCardV1CollapseControl_HorizontalAlignment
  #-}

-- | Specifies whether widgets align to the left, right, or center of a column.
newtype GoogleAppsCardV1Column_HorizontalAlignment = GoogleAppsCardV1Column_HorizontalAlignment {fromGoogleAppsCardV1Column_HorizontalAlignment :: Core.Text}
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1Column_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GoogleAppsCardV1Column_HorizontalAlignment
pattern GoogleAppsCardV1Column_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GoogleAppsCardV1Column_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Default value. Aligns widgets to the start position of the column. For left-to-right layouts, aligns to the left. For right-to-left layouts, aligns to the right.
pattern GoogleAppsCardV1Column_HorizontalAlignment_Start :: GoogleAppsCardV1Column_HorizontalAlignment
pattern GoogleAppsCardV1Column_HorizontalAlignment_Start = GoogleAppsCardV1Column_HorizontalAlignment "START"

-- | Aligns widgets to the center of the column.
pattern GoogleAppsCardV1Column_HorizontalAlignment_Center :: GoogleAppsCardV1Column_HorizontalAlignment
pattern GoogleAppsCardV1Column_HorizontalAlignment_Center = GoogleAppsCardV1Column_HorizontalAlignment "CENTER"

-- | Aligns widgets to the end position of the column. For left-to-right layouts, aligns widgets to the right. For right-to-left layouts, aligns widgets to the left.
pattern GoogleAppsCardV1Column_HorizontalAlignment_End :: GoogleAppsCardV1Column_HorizontalAlignment
pattern GoogleAppsCardV1Column_HorizontalAlignment_End = GoogleAppsCardV1Column_HorizontalAlignment "END"

{-# COMPLETE
  GoogleAppsCardV1Column_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GoogleAppsCardV1Column_HorizontalAlignment_Start,
  GoogleAppsCardV1Column_HorizontalAlignment_Center,
  GoogleAppsCardV1Column_HorizontalAlignment_End,
  GoogleAppsCardV1Column_HorizontalAlignment
  #-}

-- | Specifies how a column fills the width of the card.
newtype GoogleAppsCardV1Column_HorizontalSizeStyle = GoogleAppsCardV1Column_HorizontalSizeStyle {fromGoogleAppsCardV1Column_HorizontalSizeStyle :: Core.Text}
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1Column_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED :: GoogleAppsCardV1Column_HorizontalSizeStyle
pattern GoogleAppsCardV1Column_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED = GoogleAppsCardV1Column_HorizontalSizeStyle "HORIZONTAL_SIZE_STYLE_UNSPECIFIED"

-- | Default value. Column fills the available space, up to 70% of the card\'s width. If both columns are set to @FILL_AVAILABLE_SPACE@, each column fills 50% of the space.
pattern GoogleAppsCardV1Column_HorizontalSizeStyle_FILLAVAILABLESPACE :: GoogleAppsCardV1Column_HorizontalSizeStyle
pattern GoogleAppsCardV1Column_HorizontalSizeStyle_FILLAVAILABLESPACE = GoogleAppsCardV1Column_HorizontalSizeStyle "FILL_AVAILABLE_SPACE"

-- | Column fills the least amount of space possible and no more than 30% of the card\'s width.
pattern GoogleAppsCardV1Column_HorizontalSizeStyle_FILLMINIMUMSPACE :: GoogleAppsCardV1Column_HorizontalSizeStyle
pattern GoogleAppsCardV1Column_HorizontalSizeStyle_FILLMINIMUMSPACE = GoogleAppsCardV1Column_HorizontalSizeStyle "FILL_MINIMUM_SPACE"

{-# COMPLETE
  GoogleAppsCardV1Column_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED,
  GoogleAppsCardV1Column_HorizontalSizeStyle_FILLAVAILABLESPACE,
  GoogleAppsCardV1Column_HorizontalSizeStyle_FILLMINIMUMSPACE,
  GoogleAppsCardV1Column_HorizontalSizeStyle
  #-}

-- | Specifies whether widgets align to the top, bottom, or center of a column.
newtype GoogleAppsCardV1Column_VerticalAlignment = GoogleAppsCardV1Column_VerticalAlignment {fromGoogleAppsCardV1Column_VerticalAlignment :: Core.Text}
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1Column_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED :: GoogleAppsCardV1Column_VerticalAlignment
pattern GoogleAppsCardV1Column_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED = GoogleAppsCardV1Column_VerticalAlignment "VERTICAL_ALIGNMENT_UNSPECIFIED"

-- | Default value. Aligns widgets to the center of a column.
pattern GoogleAppsCardV1Column_VerticalAlignment_Center :: GoogleAppsCardV1Column_VerticalAlignment
pattern GoogleAppsCardV1Column_VerticalAlignment_Center = GoogleAppsCardV1Column_VerticalAlignment "CENTER"

-- | Aligns widgets to the top of a column.
pattern GoogleAppsCardV1Column_VerticalAlignment_Top :: GoogleAppsCardV1Column_VerticalAlignment
pattern GoogleAppsCardV1Column_VerticalAlignment_Top = GoogleAppsCardV1Column_VerticalAlignment "TOP"

-- | Aligns widgets to the bottom of a column.
pattern GoogleAppsCardV1Column_VerticalAlignment_Bottom :: GoogleAppsCardV1Column_VerticalAlignment
pattern GoogleAppsCardV1Column_VerticalAlignment_Bottom = GoogleAppsCardV1Column_VerticalAlignment "BOTTOM"

{-# COMPLETE
  GoogleAppsCardV1Column_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED,
  GoogleAppsCardV1Column_VerticalAlignment_Center,
  GoogleAppsCardV1Column_VerticalAlignment_Top,
  GoogleAppsCardV1Column_VerticalAlignment_Bottom,
  GoogleAppsCardV1Column_VerticalAlignment
  #-}

-- | Whether the widget supports inputting a date, a time, or the date and time.
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

-- | Users input a date and time.
pattern GoogleAppsCardV1DateTimePicker_Type_DATEANDTIME :: GoogleAppsCardV1DateTimePicker_Type
pattern GoogleAppsCardV1DateTimePicker_Type_DATEANDTIME = GoogleAppsCardV1DateTimePicker_Type "DATE_AND_TIME"

-- | Users input a date.
pattern GoogleAppsCardV1DateTimePicker_Type_DATEONLY :: GoogleAppsCardV1DateTimePicker_Type
pattern GoogleAppsCardV1DateTimePicker_Type_DATEONLY = GoogleAppsCardV1DateTimePicker_Type "DATE_ONLY"

-- | Users input a time.
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

-- | Don\'t use. Unspecified.
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

-- | The crop style applied to the image. In some cases, applying a @CIRCLE@ crop causes the image to be drawn larger than a built-in icon.
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

-- | Default value. Applies a square mask to the image. For example, a 4x3 image becomes 3x3.
pattern GoogleAppsCardV1Icon_ImageType_Square :: GoogleAppsCardV1Icon_ImageType
pattern GoogleAppsCardV1Icon_ImageType_Square = GoogleAppsCardV1Icon_ImageType "SQUARE"

-- | Applies a circular mask to the image. For example, a 4x3 image becomes a circle with a diameter of 3.
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1ImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED = GoogleAppsCardV1ImageCropStyle_Type "IMAGE_CROP_TYPE_UNSPECIFIED"

-- | Default value. Applies a square crop.
pattern GoogleAppsCardV1ImageCropStyle_Type_Square :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_Square = GoogleAppsCardV1ImageCropStyle_Type "SQUARE"

-- | Applies a circular crop.
pattern GoogleAppsCardV1ImageCropStyle_Type_Circle :: GoogleAppsCardV1ImageCropStyle_Type
pattern GoogleAppsCardV1ImageCropStyle_Type_Circle = GoogleAppsCardV1ImageCropStyle_Type "CIRCLE"

-- | Applies a rectangular crop with a custom aspect ratio. Set the custom aspect ratio with @aspectRatio@.
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

-- | Whether the client forgets about a link after opening it, or observes it until the window closes. <https://developers.google.com/workspace/add-ons Google Workspace add-ons>:
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

-- | Default value. The card doesn\'t reload; nothing happens.
pattern GoogleAppsCardV1OpenLink_OnClose_Nothing' :: GoogleAppsCardV1OpenLink_OnClose
pattern GoogleAppsCardV1OpenLink_OnClose_Nothing' = GoogleAppsCardV1OpenLink_OnClose "NOTHING"

-- | Reloads the card after the child window closes. If used in conjunction with <https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#openas OpenAs.OVERLAY>, the child window acts as a modal dialog and the parent card is blocked until the child window closes.
pattern GoogleAppsCardV1OpenLink_OnClose_Reload :: GoogleAppsCardV1OpenLink_OnClose
pattern GoogleAppsCardV1OpenLink_OnClose_Reload = GoogleAppsCardV1OpenLink_OnClose "RELOAD"

{-# COMPLETE
  GoogleAppsCardV1OpenLink_OnClose_Nothing',
  GoogleAppsCardV1OpenLink_OnClose_Reload,
  GoogleAppsCardV1OpenLink_OnClose
  #-}

-- | How to open a link. <https://developers.google.com/workspace/add-ons Google Workspace add-ons>:
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

-- | The link opens as a full-size window (if that\'s the frame used by the client).
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

-- | A data source shared by all Google Workspace applications, such as users in a Google Workspace organization.
newtype GoogleAppsCardV1PlatformDataSource_CommonDataSource = GoogleAppsCardV1PlatformDataSource_CommonDataSource {fromGoogleAppsCardV1PlatformDataSource_CommonDataSource :: Core.Text}
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

-- | Default value. Don\'t use.
pattern GoogleAppsCardV1PlatformDataSource_CommonDataSource_Unknown :: GoogleAppsCardV1PlatformDataSource_CommonDataSource
pattern GoogleAppsCardV1PlatformDataSource_CommonDataSource_Unknown = GoogleAppsCardV1PlatformDataSource_CommonDataSource "UNKNOWN"

-- | Google Workspace users. The user can only view and select users from their Google Workspace organization.
pattern GoogleAppsCardV1PlatformDataSource_CommonDataSource_User :: GoogleAppsCardV1PlatformDataSource_CommonDataSource
pattern GoogleAppsCardV1PlatformDataSource_CommonDataSource_User = GoogleAppsCardV1PlatformDataSource_CommonDataSource "USER"

{-# COMPLETE
  GoogleAppsCardV1PlatformDataSource_CommonDataSource_Unknown,
  GoogleAppsCardV1PlatformDataSource_CommonDataSource_User,
  GoogleAppsCardV1PlatformDataSource_CommonDataSource
  #-}

-- | The type of items that are displayed to users in a @SelectionInput@ widget. Selection types support different types of interactions. For example, users can select one or more checkboxes, but they can only select one value from a dropdown menu.
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

-- | A set of checkboxes. Users can select one or more checkboxes.
pattern GoogleAppsCardV1SelectionInput_Type_CHECKBOX :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_CHECKBOX = GoogleAppsCardV1SelectionInput_Type "CHECK_BOX"

-- | A set of radio buttons. Users can select one radio button.
pattern GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON = GoogleAppsCardV1SelectionInput_Type "RADIO_BUTTON"

-- | A set of switches. Users can turn on one or more switches.
pattern GoogleAppsCardV1SelectionInput_Type_Switch :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_Switch = GoogleAppsCardV1SelectionInput_Type "SWITCH"

-- | A dropdown menu. Users can select one item from the menu.
pattern GoogleAppsCardV1SelectionInput_Type_Dropdown :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_Dropdown = GoogleAppsCardV1SelectionInput_Type "DROPDOWN"

-- | A menu with a text box. Users can type and select one or more items. For Google Workspace add-ons, you must populate items using a static array of @SelectionItem@ objects. For Google Chat apps, you can also populate items using a dynamic data source and autosuggest items as users type in the menu. For example, users can start typing the name of a Google Chat space and the widget autosuggests the space. To dynamically populate items for a multiselect menu, use one of the following types of data sources: * Google Workspace data: Items are populated using data from Google Workspace, such as Google Workspace users or Google Chat spaces. * External data: Items are populated from an external data source outside of Google Workspace. For examples of how to implement multiselect menus for Chat apps, see <https://developers.google.com/workspace/chat/design-interactive-card-dialog#multiselect-menu Add a multiselect menu>. <https://developers.google.com/workspace/extend Google Workspace add-ons and Chat apps>:
pattern GoogleAppsCardV1SelectionInput_Type_MULTISELECT :: GoogleAppsCardV1SelectionInput_Type
pattern GoogleAppsCardV1SelectionInput_Type_MULTISELECT = GoogleAppsCardV1SelectionInput_Type "MULTI_SELECT"

{-# COMPLETE
  GoogleAppsCardV1SelectionInput_Type_CHECKBOX,
  GoogleAppsCardV1SelectionInput_Type_RADIOBUTTON,
  GoogleAppsCardV1SelectionInput_Type_Switch,
  GoogleAppsCardV1SelectionInput_Type_Dropdown,
  GoogleAppsCardV1SelectionInput_Type_MULTISELECT,
  GoogleAppsCardV1SelectionInput_Type
  #-}

-- | How the switch appears in the user interface. <https://developers.google.com/workspace/extend Google Workspace add-ons and Chat apps>:
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

-- | How a text input field appears in the user interface. For example, whether the field is single or multi-line.
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

-- | The text input field has a fixed height of one line.
pattern GoogleAppsCardV1TextInput_Type_SINGLELINE :: GoogleAppsCardV1TextInput_Type
pattern GoogleAppsCardV1TextInput_Type_SINGLELINE = GoogleAppsCardV1TextInput_Type "SINGLE_LINE"

-- | The text input field has a fixed height of multiple lines.
pattern GoogleAppsCardV1TextInput_Type_MULTIPLELINE :: GoogleAppsCardV1TextInput_Type
pattern GoogleAppsCardV1TextInput_Type_MULTIPLELINE = GoogleAppsCardV1TextInput_Type "MULTIPLE_LINE"

{-# COMPLETE
  GoogleAppsCardV1TextInput_Type_SINGLELINE,
  GoogleAppsCardV1TextInput_Type_MULTIPLELINE,
  GoogleAppsCardV1TextInput_Type
  #-}

-- | Specify the type of the input widgets. <https://developers.google.com/workspace/extend Google Workspace add-ons and Chat apps>:
newtype GoogleAppsCardV1Validation_InputType = GoogleAppsCardV1Validation_InputType {fromGoogleAppsCardV1Validation_InputType :: Core.Text}
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

-- | Unspecified type. Do not use.
pattern GoogleAppsCardV1Validation_InputType_INPUTTYPEUNSPECIFIED :: GoogleAppsCardV1Validation_InputType
pattern GoogleAppsCardV1Validation_InputType_INPUTTYPEUNSPECIFIED = GoogleAppsCardV1Validation_InputType "INPUT_TYPE_UNSPECIFIED"

-- | Regular text that accepts all characters.
pattern GoogleAppsCardV1Validation_InputType_Text :: GoogleAppsCardV1Validation_InputType
pattern GoogleAppsCardV1Validation_InputType_Text = GoogleAppsCardV1Validation_InputType "TEXT"

-- | An integer value.
pattern GoogleAppsCardV1Validation_InputType_Integer :: GoogleAppsCardV1Validation_InputType
pattern GoogleAppsCardV1Validation_InputType_Integer = GoogleAppsCardV1Validation_InputType "INTEGER"

-- | A float value.
pattern GoogleAppsCardV1Validation_InputType_Float :: GoogleAppsCardV1Validation_InputType
pattern GoogleAppsCardV1Validation_InputType_Float = GoogleAppsCardV1Validation_InputType "FLOAT"

-- | An email address.
pattern GoogleAppsCardV1Validation_InputType_Email :: GoogleAppsCardV1Validation_InputType
pattern GoogleAppsCardV1Validation_InputType_Email = GoogleAppsCardV1Validation_InputType "EMAIL"

-- | A emoji selected from system-provided emoji picker.
pattern GoogleAppsCardV1Validation_InputType_EMOJIPICKER :: GoogleAppsCardV1Validation_InputType
pattern GoogleAppsCardV1Validation_InputType_EMOJIPICKER = GoogleAppsCardV1Validation_InputType "EMOJI_PICKER"

{-# COMPLETE
  GoogleAppsCardV1Validation_InputType_INPUTTYPEUNSPECIFIED,
  GoogleAppsCardV1Validation_InputType_Text,
  GoogleAppsCardV1Validation_InputType_Integer,
  GoogleAppsCardV1Validation_InputType_Float,
  GoogleAppsCardV1Validation_InputType_Email,
  GoogleAppsCardV1Validation_InputType_EMOJIPICKER,
  GoogleAppsCardV1Validation_InputType
  #-}

-- | Specifies whether widgets align to the left, right, or center of a column.
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

-- | Don\'t use. Unspecified.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GoogleAppsCardV1Widget_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Default value. Aligns widgets to the start position of the column. For left-to-right layouts, aligns to the left. For right-to-left layouts, aligns to the right.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Start :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Start = GoogleAppsCardV1Widget_HorizontalAlignment "START"

-- | Aligns widgets to the center of the column.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Center :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_Center = GoogleAppsCardV1Widget_HorizontalAlignment "CENTER"

-- | Aligns widgets to the end position of the column. For left-to-right layouts, aligns widgets to the right. For right-to-left layouts, aligns widgets to the left.
pattern GoogleAppsCardV1Widget_HorizontalAlignment_End :: GoogleAppsCardV1Widget_HorizontalAlignment
pattern GoogleAppsCardV1Widget_HorizontalAlignment_End = GoogleAppsCardV1Widget_HorizontalAlignment "END"

{-# COMPLETE
  GoogleAppsCardV1Widget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GoogleAppsCardV1Widget_HorizontalAlignment_Start,
  GoogleAppsCardV1Widget_HorizontalAlignment_Center,
  GoogleAppsCardV1Widget_HorizontalAlignment_End,
  GoogleAppsCardV1Widget_HorizontalAlignment
  #-}

-- | The icon specified by an @enum@ that indices to an icon provided by Chat API.
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

pattern ImageButton_Icon_ICONUNSPECIFIED :: ImageButton_Icon
pattern ImageButton_Icon_ICONUNSPECIFIED = ImageButton_Icon "ICON_UNSPECIFIED"

pattern ImageButton_Icon_Airplane :: ImageButton_Icon
pattern ImageButton_Icon_Airplane = ImageButton_Icon "AIRPLANE"

pattern ImageButton_Icon_Bookmark :: ImageButton_Icon
pattern ImageButton_Icon_Bookmark = ImageButton_Icon "BOOKMARK"

pattern ImageButton_Icon_Bus :: ImageButton_Icon
pattern ImageButton_Icon_Bus = ImageButton_Icon "BUS"

pattern ImageButton_Icon_Car :: ImageButton_Icon
pattern ImageButton_Icon_Car = ImageButton_Icon "CAR"

pattern ImageButton_Icon_Clock :: ImageButton_Icon
pattern ImageButton_Icon_Clock = ImageButton_Icon "CLOCK"

pattern ImageButton_Icon_CONFIRMATIONNUMBERICON :: ImageButton_Icon
pattern ImageButton_Icon_CONFIRMATIONNUMBERICON = ImageButton_Icon "CONFIRMATION_NUMBER_ICON"

pattern ImageButton_Icon_Dollar :: ImageButton_Icon
pattern ImageButton_Icon_Dollar = ImageButton_Icon "DOLLAR"

pattern ImageButton_Icon_Description :: ImageButton_Icon
pattern ImageButton_Icon_Description = ImageButton_Icon "DESCRIPTION"

pattern ImageButton_Icon_Email :: ImageButton_Icon
pattern ImageButton_Icon_Email = ImageButton_Icon "EMAIL"

pattern ImageButton_Icon_EVENTPERFORMER :: ImageButton_Icon
pattern ImageButton_Icon_EVENTPERFORMER = ImageButton_Icon "EVENT_PERFORMER"

pattern ImageButton_Icon_EVENTSEAT :: ImageButton_Icon
pattern ImageButton_Icon_EVENTSEAT = ImageButton_Icon "EVENT_SEAT"

pattern ImageButton_Icon_FLIGHTARRIVAL :: ImageButton_Icon
pattern ImageButton_Icon_FLIGHTARRIVAL = ImageButton_Icon "FLIGHT_ARRIVAL"

pattern ImageButton_Icon_FLIGHTDEPARTURE :: ImageButton_Icon
pattern ImageButton_Icon_FLIGHTDEPARTURE = ImageButton_Icon "FLIGHT_DEPARTURE"

pattern ImageButton_Icon_Hotel :: ImageButton_Icon
pattern ImageButton_Icon_Hotel = ImageButton_Icon "HOTEL"

pattern ImageButton_Icon_HOTELROOMTYPE :: ImageButton_Icon
pattern ImageButton_Icon_HOTELROOMTYPE = ImageButton_Icon "HOTEL_ROOM_TYPE"

pattern ImageButton_Icon_Invite :: ImageButton_Icon
pattern ImageButton_Icon_Invite = ImageButton_Icon "INVITE"

pattern ImageButton_Icon_MAPPIN :: ImageButton_Icon
pattern ImageButton_Icon_MAPPIN = ImageButton_Icon "MAP_PIN"

pattern ImageButton_Icon_Membership :: ImageButton_Icon
pattern ImageButton_Icon_Membership = ImageButton_Icon "MEMBERSHIP"

pattern ImageButton_Icon_MULTIPLEPEOPLE :: ImageButton_Icon
pattern ImageButton_Icon_MULTIPLEPEOPLE = ImageButton_Icon "MULTIPLE_PEOPLE"

pattern ImageButton_Icon_Offer :: ImageButton_Icon
pattern ImageButton_Icon_Offer = ImageButton_Icon "OFFER"

pattern ImageButton_Icon_Person :: ImageButton_Icon
pattern ImageButton_Icon_Person = ImageButton_Icon "PERSON"

pattern ImageButton_Icon_Phone :: ImageButton_Icon
pattern ImageButton_Icon_Phone = ImageButton_Icon "PHONE"

pattern ImageButton_Icon_RESTAURANTICON :: ImageButton_Icon
pattern ImageButton_Icon_RESTAURANTICON = ImageButton_Icon "RESTAURANT_ICON"

pattern ImageButton_Icon_SHOPPINGCART :: ImageButton_Icon
pattern ImageButton_Icon_SHOPPINGCART = ImageButton_Icon "SHOPPING_CART"

pattern ImageButton_Icon_Star :: ImageButton_Icon
pattern ImageButton_Icon_Star = ImageButton_Icon "STAR"

pattern ImageButton_Icon_Store :: ImageButton_Icon
pattern ImageButton_Icon_Store = ImageButton_Icon "STORE"

pattern ImageButton_Icon_Ticket :: ImageButton_Icon
pattern ImageButton_Icon_Ticket = ImageButton_Icon "TICKET"

pattern ImageButton_Icon_Train :: ImageButton_Icon
pattern ImageButton_Icon_Train = ImageButton_Icon "TRAIN"

pattern ImageButton_Icon_VIDEOCAMERA :: ImageButton_Icon
pattern ImageButton_Icon_VIDEOCAMERA = ImageButton_Icon "VIDEO_CAMERA"

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

-- | An enum value that\'s replaced by the Chat API with the corresponding icon image.
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

pattern KeyValue_Icon_ICONUNSPECIFIED :: KeyValue_Icon
pattern KeyValue_Icon_ICONUNSPECIFIED = KeyValue_Icon "ICON_UNSPECIFIED"

pattern KeyValue_Icon_Airplane :: KeyValue_Icon
pattern KeyValue_Icon_Airplane = KeyValue_Icon "AIRPLANE"

pattern KeyValue_Icon_Bookmark :: KeyValue_Icon
pattern KeyValue_Icon_Bookmark = KeyValue_Icon "BOOKMARK"

pattern KeyValue_Icon_Bus :: KeyValue_Icon
pattern KeyValue_Icon_Bus = KeyValue_Icon "BUS"

pattern KeyValue_Icon_Car :: KeyValue_Icon
pattern KeyValue_Icon_Car = KeyValue_Icon "CAR"

pattern KeyValue_Icon_Clock :: KeyValue_Icon
pattern KeyValue_Icon_Clock = KeyValue_Icon "CLOCK"

pattern KeyValue_Icon_CONFIRMATIONNUMBERICON :: KeyValue_Icon
pattern KeyValue_Icon_CONFIRMATIONNUMBERICON = KeyValue_Icon "CONFIRMATION_NUMBER_ICON"

pattern KeyValue_Icon_Dollar :: KeyValue_Icon
pattern KeyValue_Icon_Dollar = KeyValue_Icon "DOLLAR"

pattern KeyValue_Icon_Description :: KeyValue_Icon
pattern KeyValue_Icon_Description = KeyValue_Icon "DESCRIPTION"

pattern KeyValue_Icon_Email :: KeyValue_Icon
pattern KeyValue_Icon_Email = KeyValue_Icon "EMAIL"

pattern KeyValue_Icon_EVENTPERFORMER :: KeyValue_Icon
pattern KeyValue_Icon_EVENTPERFORMER = KeyValue_Icon "EVENT_PERFORMER"

pattern KeyValue_Icon_EVENTSEAT :: KeyValue_Icon
pattern KeyValue_Icon_EVENTSEAT = KeyValue_Icon "EVENT_SEAT"

pattern KeyValue_Icon_FLIGHTARRIVAL :: KeyValue_Icon
pattern KeyValue_Icon_FLIGHTARRIVAL = KeyValue_Icon "FLIGHT_ARRIVAL"

pattern KeyValue_Icon_FLIGHTDEPARTURE :: KeyValue_Icon
pattern KeyValue_Icon_FLIGHTDEPARTURE = KeyValue_Icon "FLIGHT_DEPARTURE"

pattern KeyValue_Icon_Hotel :: KeyValue_Icon
pattern KeyValue_Icon_Hotel = KeyValue_Icon "HOTEL"

pattern KeyValue_Icon_HOTELROOMTYPE :: KeyValue_Icon
pattern KeyValue_Icon_HOTELROOMTYPE = KeyValue_Icon "HOTEL_ROOM_TYPE"

pattern KeyValue_Icon_Invite :: KeyValue_Icon
pattern KeyValue_Icon_Invite = KeyValue_Icon "INVITE"

pattern KeyValue_Icon_MAPPIN :: KeyValue_Icon
pattern KeyValue_Icon_MAPPIN = KeyValue_Icon "MAP_PIN"

pattern KeyValue_Icon_Membership :: KeyValue_Icon
pattern KeyValue_Icon_Membership = KeyValue_Icon "MEMBERSHIP"

pattern KeyValue_Icon_MULTIPLEPEOPLE :: KeyValue_Icon
pattern KeyValue_Icon_MULTIPLEPEOPLE = KeyValue_Icon "MULTIPLE_PEOPLE"

pattern KeyValue_Icon_Offer :: KeyValue_Icon
pattern KeyValue_Icon_Offer = KeyValue_Icon "OFFER"

pattern KeyValue_Icon_Person :: KeyValue_Icon
pattern KeyValue_Icon_Person = KeyValue_Icon "PERSON"

pattern KeyValue_Icon_Phone :: KeyValue_Icon
pattern KeyValue_Icon_Phone = KeyValue_Icon "PHONE"

pattern KeyValue_Icon_RESTAURANTICON :: KeyValue_Icon
pattern KeyValue_Icon_RESTAURANTICON = KeyValue_Icon "RESTAURANT_ICON"

pattern KeyValue_Icon_SHOPPINGCART :: KeyValue_Icon
pattern KeyValue_Icon_SHOPPINGCART = KeyValue_Icon "SHOPPING_CART"

pattern KeyValue_Icon_Star :: KeyValue_Icon
pattern KeyValue_Icon_Star = KeyValue_Icon "STAR"

pattern KeyValue_Icon_Store :: KeyValue_Icon
pattern KeyValue_Icon_Store = KeyValue_Icon "STORE"

pattern KeyValue_Icon_Ticket :: KeyValue_Icon
pattern KeyValue_Icon_Ticket = KeyValue_Icon "TICKET"

pattern KeyValue_Icon_Train :: KeyValue_Icon
pattern KeyValue_Icon_Train = KeyValue_Icon "TRAIN"

pattern KeyValue_Icon_VIDEOCAMERA :: KeyValue_Icon
pattern KeyValue_Icon_VIDEOCAMERA = KeyValue_Icon "VIDEO_CAMERA"

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

-- | Optional. User\'s role within a Chat space, which determines their permitted actions in the space. This field can only be used as input in @UpdateMembership@.
newtype Membership_Role = Membership_Role {fromMembership_Role :: Core.Text}
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

-- | Default value. For users: they aren\'t a member of the space, but can be invited. For Google Groups: they\'re always assigned this role (other enum values might be used in the future).
pattern Membership_Role_MEMBERSHIPROLEUNSPECIFIED :: Membership_Role
pattern Membership_Role_MEMBERSHIPROLEUNSPECIFIED = Membership_Role "MEMBERSHIP_ROLE_UNSPECIFIED"

-- | A member of the space. The user has basic permissions, like sending messages to the space. In 1:1 and unnamed group conversations, everyone has this role.
pattern Membership_Role_ROLEMEMBER :: Membership_Role
pattern Membership_Role_ROLEMEMBER = Membership_Role "ROLE_MEMBER"

-- | A space manager. The user has all basic permissions plus administrative permissions that let them manage the space, like adding or removing members. Only supported in SpaceType.SPACE.
pattern Membership_Role_ROLEMANAGER :: Membership_Role
pattern Membership_Role_ROLEMANAGER = Membership_Role "ROLE_MANAGER"

{-# COMPLETE
  Membership_Role_MEMBERSHIPROLEUNSPECIFIED,
  Membership_Role_ROLEMEMBER,
  Membership_Role_ROLEMANAGER,
  Membership_Role
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

-- | Default value. Don\'t use.
pattern Membership_State_MEMBERSHIPSTATEUNSPECIFIED :: Membership_State
pattern Membership_State_MEMBERSHIPSTATEUNSPECIFIED = Membership_State "MEMBERSHIP_STATE_UNSPECIFIED"

-- | The user is added to the space, and can participate in the space.
pattern Membership_State_Joined :: Membership_State
pattern Membership_State_Joined = Membership_State "JOINED"

-- | The user is invited to join the space, but hasn\'t joined it.
pattern Membership_State_Invited :: Membership_State
pattern Membership_State_Invited = Membership_State "INVITED"

-- | The user doesn\'t belong to the space and doesn\'t have a pending invitation to join the space.
pattern Membership_State_NOTAMEMBER :: Membership_State
pattern Membership_State_NOTAMEMBER = Membership_State "NOT_A_MEMBER"

{-# COMPLETE
  Membership_State_MEMBERSHIPSTATEUNSPECIFIED,
  Membership_State_Joined,
  Membership_State_Invited,
  Membership_State_NOTAMEMBER,
  Membership_State
  #-}

-- | The rich link type.
newtype RichLinkMetadata_RichLinkType = RichLinkMetadata_RichLinkType {fromRichLinkMetadata_RichLinkType :: Core.Text}
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

-- | Default value for the enum. Don\'t use.
pattern RichLinkMetadata_RichLinkType_RICHLINKTYPEUNSPECIFIED :: RichLinkMetadata_RichLinkType
pattern RichLinkMetadata_RichLinkType_RICHLINKTYPEUNSPECIFIED = RichLinkMetadata_RichLinkType "RICH_LINK_TYPE_UNSPECIFIED"

-- | A Google Drive rich link type.
pattern RichLinkMetadata_RichLinkType_DRIVEFILE :: RichLinkMetadata_RichLinkType
pattern RichLinkMetadata_RichLinkType_DRIVEFILE = RichLinkMetadata_RichLinkType "DRIVE_FILE"

-- | A Chat space rich link type. For example, a space smart chip.
pattern RichLinkMetadata_RichLinkType_CHATSPACE :: RichLinkMetadata_RichLinkType
pattern RichLinkMetadata_RichLinkType_CHATSPACE = RichLinkMetadata_RichLinkType "CHAT_SPACE"

{-# COMPLETE
  RichLinkMetadata_RichLinkType_RICHLINKTYPEUNSPECIFIED,
  RichLinkMetadata_RichLinkType_DRIVEFILE,
  RichLinkMetadata_RichLinkType_CHATSPACE,
  RichLinkMetadata_RichLinkType
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

-- | Default value for the enum. Don\'t use.
pattern SlashCommandMetadata_Type_TYPEUNSPECIFIED :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_TYPEUNSPECIFIED = SlashCommandMetadata_Type "TYPE_UNSPECIFIED"

-- | Add Chat app to space.
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

-- | Optional. Input only. Predefined space permission settings, input only when creating a space. If the field is not set, a collaboration space is created. After you create the space, settings are populated in the @PermissionSettings@ field. Setting predefined permission settings supports: - In <https://developers.google.com/workspace/preview Developer Preview>, <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> with the @chat.app.spaces@ or @chat.app.spaces.create@ scopes. - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication>
newtype Space_PredefinedPermissionSettings = Space_PredefinedPermissionSettings {fromSpace_PredefinedPermissionSettings :: Core.Text}
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

-- | Unspecified. Don\'t use.
pattern Space_PredefinedPermissionSettings_PREDEFINEDPERMISSIONSETTINGSUNSPECIFIED :: Space_PredefinedPermissionSettings
pattern Space_PredefinedPermissionSettings_PREDEFINEDPERMISSIONSETTINGSUNSPECIFIED = Space_PredefinedPermissionSettings "PREDEFINED_PERMISSION_SETTINGS_UNSPECIFIED"

-- | Setting to make the space a collaboration space where all members can post messages.
pattern Space_PredefinedPermissionSettings_COLLABORATIONSPACE :: Space_PredefinedPermissionSettings
pattern Space_PredefinedPermissionSettings_COLLABORATIONSPACE = Space_PredefinedPermissionSettings "COLLABORATION_SPACE"

-- | Setting to make the space an announcement space where only space managers can post messages.
pattern Space_PredefinedPermissionSettings_ANNOUNCEMENTSPACE :: Space_PredefinedPermissionSettings
pattern Space_PredefinedPermissionSettings_ANNOUNCEMENTSPACE = Space_PredefinedPermissionSettings "ANNOUNCEMENT_SPACE"

{-# COMPLETE
  Space_PredefinedPermissionSettings_PREDEFINEDPERMISSIONSETTINGSUNSPECIFIED,
  Space_PredefinedPermissionSettings_COLLABORATIONSPACE,
  Space_PredefinedPermissionSettings_ANNOUNCEMENTSPACE,
  Space_PredefinedPermissionSettings
  #-}

-- | Optional. The message history state for messages and threads in this space.
newtype Space_SpaceHistoryState = Space_SpaceHistoryState {fromSpace_SpaceHistoryState :: Core.Text}
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
pattern Space_SpaceHistoryState_HISTORYSTATEUNSPECIFIED :: Space_SpaceHistoryState
pattern Space_SpaceHistoryState_HISTORYSTATEUNSPECIFIED = Space_SpaceHistoryState "HISTORY_STATE_UNSPECIFIED"

-- | History off. <https://support.google.com/chat/answer/7664687 Messages and threads are kept for 24 hours>.
pattern Space_SpaceHistoryState_HISTORYOFF :: Space_SpaceHistoryState
pattern Space_SpaceHistoryState_HISTORYOFF = Space_SpaceHistoryState "HISTORY_OFF"

-- | History on. The organization\'s <https://support.google.com/vault/answer/7657597 Vault retention rules> specify for how long messages and threads are kept.
pattern Space_SpaceHistoryState_HISTORYON :: Space_SpaceHistoryState
pattern Space_SpaceHistoryState_HISTORYON = Space_SpaceHistoryState "HISTORY_ON"

{-# COMPLETE
  Space_SpaceHistoryState_HISTORYSTATEUNSPECIFIED,
  Space_SpaceHistoryState_HISTORYOFF,
  Space_SpaceHistoryState_HISTORYON,
  Space_SpaceHistoryState
  #-}

-- | Output only. The threading state in the Chat space.
newtype Space_SpaceThreadingState = Space_SpaceThreadingState {fromSpace_SpaceThreadingState :: Core.Text}
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

-- | Reserved.
pattern Space_SpaceThreadingState_SPACETHREADINGSTATEUNSPECIFIED :: Space_SpaceThreadingState
pattern Space_SpaceThreadingState_SPACETHREADINGSTATEUNSPECIFIED = Space_SpaceThreadingState "SPACE_THREADING_STATE_UNSPECIFIED"

-- | Named spaces that support message threads. When users respond to a message, they can reply in-thread, which keeps their response in the context of the original message.
pattern Space_SpaceThreadingState_THREADEDMESSAGES :: Space_SpaceThreadingState
pattern Space_SpaceThreadingState_THREADEDMESSAGES = Space_SpaceThreadingState "THREADED_MESSAGES"

-- | Named spaces where the conversation is organized by topic. Topics and their replies are grouped together.
pattern Space_SpaceThreadingState_GROUPEDMESSAGES :: Space_SpaceThreadingState
pattern Space_SpaceThreadingState_GROUPEDMESSAGES = Space_SpaceThreadingState "GROUPED_MESSAGES"

-- | Direct messages (DMs) between two people and group conversations between 3 or more people.
pattern Space_SpaceThreadingState_UNTHREADEDMESSAGES :: Space_SpaceThreadingState
pattern Space_SpaceThreadingState_UNTHREADEDMESSAGES = Space_SpaceThreadingState "UNTHREADED_MESSAGES"

{-# COMPLETE
  Space_SpaceThreadingState_SPACETHREADINGSTATEUNSPECIFIED,
  Space_SpaceThreadingState_THREADEDMESSAGES,
  Space_SpaceThreadingState_GROUPEDMESSAGES,
  Space_SpaceThreadingState_UNTHREADEDMESSAGES,
  Space_SpaceThreadingState
  #-}

-- | Optional. The type of space. Required when creating a space or updating the space type of a space. Output only for other usage.
newtype Space_SpaceType = Space_SpaceType {fromSpace_SpaceType :: Core.Text}
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

-- | Reserved.
pattern Space_SpaceType_SPACETYPEUNSPECIFIED :: Space_SpaceType
pattern Space_SpaceType_SPACETYPEUNSPECIFIED = Space_SpaceType "SPACE_TYPE_UNSPECIFIED"

-- | A place where people send messages, share files, and collaborate. A @SPACE@ can include Chat apps.
pattern Space_SpaceType_Space :: Space_SpaceType
pattern Space_SpaceType_Space = Space_SpaceType "SPACE"

-- | Group conversations between 3 or more people. A @GROUP_CHAT@ can include Chat apps.
pattern Space_SpaceType_GROUPCHAT :: Space_SpaceType
pattern Space_SpaceType_GROUPCHAT = Space_SpaceType "GROUP_CHAT"

-- | 1:1 messages between two humans or a human and a Chat app.
pattern Space_SpaceType_DIRECTMESSAGE :: Space_SpaceType
pattern Space_SpaceType_DIRECTMESSAGE = Space_SpaceType "DIRECT_MESSAGE"

{-# COMPLETE
  Space_SpaceType_SPACETYPEUNSPECIFIED,
  Space_SpaceType_Space,
  Space_SpaceType_GROUPCHAT,
  Space_SpaceType_DIRECTMESSAGE,
  Space_SpaceType
  #-}

-- | Output only. Deprecated: Use @space_type@ instead. The type of a space.
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

-- | Reserved.
pattern Space_Type_TYPEUNSPECIFIED :: Space_Type
pattern Space_Type_TYPEUNSPECIFIED = Space_Type "TYPE_UNSPECIFIED"

-- | Conversations between two or more humans.
pattern Space_Type_Room :: Space_Type
pattern Space_Type_Room = Space_Type "ROOM"

-- | 1:1 Direct Message between a human and a Chat app, where all messages are flat. Note that this doesn\'t include direct messages between two humans.
pattern Space_Type_DM :: Space_Type
pattern Space_Type_DM = Space_Type "DM"

{-# COMPLETE
  Space_Type_TYPEUNSPECIFIED,
  Space_Type_Room,
  Space_Type_DM,
  Space_Type
  #-}

-- | The space notification mute setting.
newtype SpaceNotificationSetting_MuteSetting = SpaceNotificationSetting_MuteSetting {fromSpaceNotificationSetting_MuteSetting :: Core.Text}
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

-- | Reserved.
pattern SpaceNotificationSetting_MuteSetting_MUTESETTINGUNSPECIFIED :: SpaceNotificationSetting_MuteSetting
pattern SpaceNotificationSetting_MuteSetting_MUTESETTINGUNSPECIFIED = SpaceNotificationSetting_MuteSetting "MUTE_SETTING_UNSPECIFIED"

-- | The user will receive notifications for the space based on the notification setting.
pattern SpaceNotificationSetting_MuteSetting_Unmuted :: SpaceNotificationSetting_MuteSetting
pattern SpaceNotificationSetting_MuteSetting_Unmuted = SpaceNotificationSetting_MuteSetting "UNMUTED"

-- | The user will not receive any notifications for the space, regardless of the notification setting.
pattern SpaceNotificationSetting_MuteSetting_Muted :: SpaceNotificationSetting_MuteSetting
pattern SpaceNotificationSetting_MuteSetting_Muted = SpaceNotificationSetting_MuteSetting "MUTED"

{-# COMPLETE
  SpaceNotificationSetting_MuteSetting_MUTESETTINGUNSPECIFIED,
  SpaceNotificationSetting_MuteSetting_Unmuted,
  SpaceNotificationSetting_MuteSetting_Muted,
  SpaceNotificationSetting_MuteSetting
  #-}

-- | The notification setting.
newtype SpaceNotificationSetting_NotificationSetting = SpaceNotificationSetting_NotificationSetting {fromSpaceNotificationSetting_NotificationSetting :: Core.Text}
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

-- | Reserved.
pattern SpaceNotificationSetting_NotificationSetting_NOTIFICATIONSETTINGUNSPECIFIED :: SpaceNotificationSetting_NotificationSetting
pattern SpaceNotificationSetting_NotificationSetting_NOTIFICATIONSETTINGUNSPECIFIED = SpaceNotificationSetting_NotificationSetting "NOTIFICATION_SETTING_UNSPECIFIED"

-- | Notifications are triggered by \@mentions, followed threads, first message of new threads. All new threads are automatically followed, unless manually unfollowed by the user.
pattern SpaceNotificationSetting_NotificationSetting_All :: SpaceNotificationSetting_NotificationSetting
pattern SpaceNotificationSetting_NotificationSetting_All = SpaceNotificationSetting_NotificationSetting "ALL"

-- | The notification is triggered by \@mentions, followed threads, first message of new threads. Not available for 1:1 direct messages.
pattern SpaceNotificationSetting_NotificationSetting_MAINCONVERSATIONS :: SpaceNotificationSetting_NotificationSetting
pattern SpaceNotificationSetting_NotificationSetting_MAINCONVERSATIONS = SpaceNotificationSetting_NotificationSetting "MAIN_CONVERSATIONS"

-- | The notification is triggered by \@mentions, followed threads. Not available for 1:1 direct messages.
pattern SpaceNotificationSetting_NotificationSetting_FORYOU :: SpaceNotificationSetting_NotificationSetting
pattern SpaceNotificationSetting_NotificationSetting_FORYOU = SpaceNotificationSetting_NotificationSetting "FOR_YOU"

-- | Notification is off.
pattern SpaceNotificationSetting_NotificationSetting_Off :: SpaceNotificationSetting_NotificationSetting
pattern SpaceNotificationSetting_NotificationSetting_Off = SpaceNotificationSetting_NotificationSetting "OFF"

{-# COMPLETE
  SpaceNotificationSetting_NotificationSetting_NOTIFICATIONSETTINGUNSPECIFIED,
  SpaceNotificationSetting_NotificationSetting_All,
  SpaceNotificationSetting_NotificationSetting_MAINCONVERSATIONS,
  SpaceNotificationSetting_NotificationSetting_FORYOU,
  SpaceNotificationSetting_NotificationSetting_Off,
  SpaceNotificationSetting_NotificationSetting
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

-- | Chat app user.
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

-- | Default value for the enum. Don\'t use.
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

-- | Optional. Specifies whether a message starts a thread or replies to one. Only supported in named spaces. When <https://developers.google.com/workspace/chat/receive-respond-interactions responding to user interactions>, this field is ignored. For interactions within a thread, the reply is created in the same thread. Otherwise, the reply is created as a new thread.
newtype SpacesMessagesCreateMessageReplyOption = SpacesMessagesCreateMessageReplyOption {fromSpacesMessagesCreateMessageReplyOption :: Core.Text}
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

-- | Default. Starts a new thread. Using this option ignores any thread ID or @thread_key@ that\'s included.
pattern SpacesMessagesCreateMessageReplyOption_MESSAGEREPLYOPTIONUNSPECIFIED :: SpacesMessagesCreateMessageReplyOption
pattern SpacesMessagesCreateMessageReplyOption_MESSAGEREPLYOPTIONUNSPECIFIED = SpacesMessagesCreateMessageReplyOption "MESSAGE_REPLY_OPTION_UNSPECIFIED"

-- | Creates the message as a reply to the thread specified by thread ID or @thread_key@. If it fails, the message starts a new thread instead.
pattern SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEFALLBACKTONEWTHREAD :: SpacesMessagesCreateMessageReplyOption
pattern SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEFALLBACKTONEWTHREAD = SpacesMessagesCreateMessageReplyOption "REPLY_MESSAGE_FALLBACK_TO_NEW_THREAD"

-- | Creates the message as a reply to the thread specified by thread ID or @thread_key@. If a new @thread_key@ is used, a new thread is created. If the message creation fails, a @NOT_FOUND@ error is returned instead.
pattern SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEORFAIL :: SpacesMessagesCreateMessageReplyOption
pattern SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEORFAIL = SpacesMessagesCreateMessageReplyOption "REPLY_MESSAGE_OR_FAIL"

{-# COMPLETE
  SpacesMessagesCreateMessageReplyOption_MESSAGEREPLYOPTIONUNSPECIFIED,
  SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEFALLBACKTONEWTHREAD,
  SpacesMessagesCreateMessageReplyOption_REPLYMESSAGEORFAIL,
  SpacesMessagesCreateMessageReplyOption
  #-}
