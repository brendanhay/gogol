{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Chat
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables bots to fetch information and perform actions in Google Chat.
-- Authentication using a service account is a prerequisite for using the
-- Google Chat REST API.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference>
module Network.Google.Chat
    (
    -- * Service Configuration
      chatService

    -- * API Declaration
    , ChatAPI

    -- * Resources

    -- ** chat.dms.conversations.messages
    , module Network.Google.Resource.Chat.Dms.Conversations.Messages

    -- ** chat.dms.messages
    , module Network.Google.Resource.Chat.Dms.Messages

    -- ** chat.dms.webhooks
    , module Network.Google.Resource.Chat.Dms.Webhooks

    -- ** chat.media.download
    , module Network.Google.Resource.Chat.Media.Download

    -- ** chat.rooms.conversations.messages
    , module Network.Google.Resource.Chat.Rooms.Conversations.Messages

    -- ** chat.rooms.messages
    , module Network.Google.Resource.Chat.Rooms.Messages

    -- ** chat.rooms.webhooks
    , module Network.Google.Resource.Chat.Rooms.Webhooks

    -- ** chat.spaces.get
    , module Network.Google.Resource.Chat.Spaces.Get

    -- ** chat.spaces.list
    , module Network.Google.Resource.Chat.Spaces.List

    -- ** chat.spaces.members.get
    , module Network.Google.Resource.Chat.Spaces.Members.Get

    -- ** chat.spaces.members.list
    , module Network.Google.Resource.Chat.Spaces.Members.List

    -- ** chat.spaces.messages.attachments.get
    , module Network.Google.Resource.Chat.Spaces.Messages.Attachments.Get

    -- ** chat.spaces.messages.create
    , module Network.Google.Resource.Chat.Spaces.Messages.Create

    -- ** chat.spaces.messages.delete
    , module Network.Google.Resource.Chat.Spaces.Messages.Delete

    -- ** chat.spaces.messages.get
    , module Network.Google.Resource.Chat.Spaces.Messages.Get

    -- ** chat.spaces.messages.update
    , module Network.Google.Resource.Chat.Spaces.Messages.Update

    -- ** chat.spaces.webhooks
    , module Network.Google.Resource.Chat.Spaces.Webhooks

    -- * Types

    -- ** Card
    , Card
    , card
    , cCardActions
    , cName
    , cHeader
    , cSections

    -- ** GoogleAppsCardV1ButtonList
    , GoogleAppsCardV1ButtonList
    , googleAppsCardV1ButtonList
    , gacvblButtons

    -- ** GoogleAppsCardV1CardHeaderImageType
    , GoogleAppsCardV1CardHeaderImageType (..)

    -- ** Space
    , Space
    , space
    , sName
    , sThreaded
    , sDisplayName
    , sType
    , sSingleUserBotDm

    -- ** KeyValue
    , KeyValue
    , keyValue
    , kvOnClick
    , kvTopLabel
    , kvIcon
    , kvButton
    , kvContent
    , kvIconURL
    , kvContentMultiline
    , kvBottomLabel

    -- ** GoogleAppsCardV1OpenLink
    , GoogleAppsCardV1OpenLink
    , googleAppsCardV1OpenLink
    , gacvolURL
    , gacvolOpenAs
    , gacvolOnClose

    -- ** WidgetMarkup
    , WidgetMarkup
    , widgetMarkup
    , wmKeyValue
    , wmImage
    , wmButtons
    , wmTextParagraph

    -- ** GoogleAppsCardV1CardFixedFooter
    , GoogleAppsCardV1CardFixedFooter
    , googleAppsCardV1CardFixedFooter
    , gacvcffPrimaryButton
    , gacvcffSecondaryButton

    -- ** GoogleAppsCardV1DateTimePicker
    , GoogleAppsCardV1DateTimePicker
    , googleAppsCardV1DateTimePicker
    , gacvdtpValueMsEpoch
    , gacvdtpTimezoneOffSetDate
    , gacvdtpName
    , gacvdtpType
    , gacvdtpLabel
    , gacvdtpOnChangeAction

    -- ** OnClick
    , OnClick
    , onClick
    , ocAction
    , ocOpenLink

    -- ** Annotation
    , Annotation
    , annotation
    , aLength
    , aSlashCommand
    , aType
    , aUserMention
    , aStartIndex

    -- ** Image
    , Image
    , image
    , iOnClick
    , iAspectRatio
    , iImageURL

    -- ** GoogleAppsCardV1Suggestions
    , GoogleAppsCardV1Suggestions
    , googleAppsCardV1Suggestions
    , gacvsItems

    -- ** KeyValueIcon
    , KeyValueIcon (..)

    -- ** ActionParameter
    , ActionParameter
    , actionParameter
    , apValue
    , apKey

    -- ** SlashCommandMetadata
    , SlashCommandMetadata
    , slashCommandMetadata
    , scmBot
    , scmCommandId
    , scmCommandName
    , scmType
    , scmTriggersDialog

    -- ** GoogleAppsCardV1GridItemTextAlignment
    , GoogleAppsCardV1GridItemTextAlignment (..)

    -- ** GoogleAppsCardV1CardAction
    , GoogleAppsCardV1CardAction
    , googleAppsCardV1CardAction
    , gacvcaOnClick
    , gacvcaActionLabel

    -- ** Membership
    , Membership
    , membership
    , mState
    , mName
    , mMember
    , mCreateTime

    -- ** ActionResponseType
    , ActionResponseType (..)

    -- ** GoogleAppsCardV1WidgetHorizontalAlignment
    , GoogleAppsCardV1WidgetHorizontalAlignment (..)

    -- ** Empty
    , Empty
    , empty

    -- ** Color
    , Color
    , color
    , cRed
    , cAlpha
    , cGreen
    , cBlue

    -- ** DeprecatedEvent
    , DeprecatedEvent
    , deprecatedEvent
    , deSpace
    , deToken
    , deAction
    , deEventTime
    , deUser
    , deConfigCompleteRedirectURL
    , deType
    , deMessage
    , deThreadKey

    -- ** MembershipState
    , MembershipState (..)

    -- ** GoogleAppsCardV1Grid
    , GoogleAppsCardV1Grid
    , googleAppsCardV1Grid
    , gacvgOnClick
    , gacvgColumnCount
    , gacvgItems
    , gacvgTitle
    , gacvgBOrderStyle

    -- ** GoogleAppsCardV1ImageComponent
    , GoogleAppsCardV1ImageComponent
    , googleAppsCardV1ImageComponent
    , gacvicImageURI
    , gacvicAltText
    , gacvicBOrderStyle
    , gacvicCropStyle

    -- ** AttachmentDataRef
    , AttachmentDataRef
    , attachmentDataRef
    , adrResourceName

    -- ** GoogleAppsCardV1BOrderStyle
    , GoogleAppsCardV1BOrderStyle
    , googleAppsCardV1BOrderStyle
    , gacvbosCornerRadius
    , gacvbosType
    , gacvbosStrokeColor

    -- ** ActionStatusStatusCode
    , ActionStatusStatusCode (..)

    -- ** GoogleAppsCardV1CardHeader
    , GoogleAppsCardV1CardHeader
    , googleAppsCardV1CardHeader
    , gacvchImageAltText
    , gacvchSubtitle
    , gacvchImageURL
    , gacvchImageType
    , gacvchTitle

    -- ** CardHeaderImageStyle
    , CardHeaderImageStyle (..)

    -- ** GoogleAppsCardV1TextInputType
    , GoogleAppsCardV1TextInputType (..)

    -- ** TextParagraph
    , TextParagraph
    , textParagraph
    , tpText

    -- ** GoogleAppsCardV1ImageCropStyle
    , GoogleAppsCardV1ImageCropStyle
    , googleAppsCardV1ImageCropStyle
    , gacvicsAspectRatio
    , gacvicsType

    -- ** Button
    , Button
    , button
    , bTextButton
    , bImageButton

    -- ** UserMentionMetadataType
    , UserMentionMetadataType (..)

    -- ** ListSpacesResponse
    , ListSpacesResponse
    , listSpacesResponse
    , lsrNextPageToken
    , lsrSpaces

    -- ** GoogleAppsCardV1SelectionInput
    , GoogleAppsCardV1SelectionInput
    , googleAppsCardV1SelectionInput
    , gacvsiItems
    , gacvsiName
    , gacvsiType
    , gacvsiLabel
    , gacvsiOnChangeAction

    -- ** GoogleAppsCardV1DecoratedText
    , GoogleAppsCardV1DecoratedText
    , googleAppsCardV1DecoratedText
    , gacvdtOnClick
    , gacvdtTopLabel
    , gacvdtSwitchControl
    , gacvdtText
    , gacvdtStartIcon
    , gacvdtIcon
    , gacvdtButton
    , gacvdtEndIcon
    , gacvdtWrapText
    , gacvdtBottomLabel

    -- ** GoogleAppsCardV1SuggestionItem
    , GoogleAppsCardV1SuggestionItem
    , googleAppsCardV1SuggestionItem
    , gacvsiText

    -- ** GoogleAppsCardV1Divider
    , GoogleAppsCardV1Divider
    , googleAppsCardV1Divider

    -- ** GoogleAppsCardV1Section
    , GoogleAppsCardV1Section
    , googleAppsCardV1Section
    , gacvsCollapsible
    , gacvsUncollapsibleWidgetsCount
    , gacvsWidgets
    , gacvsHeader

    -- ** Attachment
    , Attachment
    , attachment
    , aDownloadURI
    , aAttachmentDataRef
    , aContentName
    , aName
    , aThumbnailURI
    , aSource
    , aDriveDataRef
    , aContentType

    -- ** GoogleAppsCardV1ActionLoadIndicator
    , GoogleAppsCardV1ActionLoadIndicator (..)

    -- ** User
    , User
    , user
    , uIsAnonymous
    , uName
    , uDisplayName
    , uDomainId
    , uType

    -- ** Media
    , Media
    , media
    , mResourceName

    -- ** GoogleAppsCardV1Card
    , GoogleAppsCardV1Card
    , googleAppsCardV1Card
    , gacvcDisplayStyle
    , gacvcPeekCardHeader
    , gacvcCardActions
    , gacvcName
    , gacvcHeader
    , gacvcSections
    , gacvcFixedFooter

    -- ** GoogleAppsCardV1Widget
    , GoogleAppsCardV1Widget
    , googleAppsCardV1Widget
    , gacvwImage
    , gacvwTextInput
    , gacvwTextParagraph
    , gacvwButtonList
    , gacvwDateTimePicker
    , gacvwGrid
    , gacvwSelectionInput
    , gacvwDecoratedText
    , gacvwHorizontalAlignment
    , gacvwDivider

    -- ** AttachmentSource
    , AttachmentSource (..)

    -- ** SpaceType
    , SpaceType (..)

    -- ** GoogleAppsCardV1IconImageType
    , GoogleAppsCardV1IconImageType (..)

    -- ** OpenLink
    , OpenLink
    , openLink
    , olURL

    -- ** GoogleAppsCardV1GridItemLayout
    , GoogleAppsCardV1GridItemLayout (..)

    -- ** GoogleAppsCardV1DateTimePickerType
    , GoogleAppsCardV1DateTimePickerType (..)

    -- ** GoogleAppsCardV1ActionParameter
    , GoogleAppsCardV1ActionParameter
    , googleAppsCardV1ActionParameter
    , gacvapValue
    , gacvapKey

    -- ** GoogleAppsCardV1Image
    , GoogleAppsCardV1Image
    , googleAppsCardV1Image
    , gacviOnClick
    , gacviAltText
    , gacviImageURL

    -- ** AnnotationType
    , AnnotationType (..)

    -- ** GoogleAppsCardV1OnClick
    , GoogleAppsCardV1OnClick
    , googleAppsCardV1OnClick
    , gacvocCard
    , gacvocOpenDynamicLinkAction
    , gacvocAction
    , gacvocOpenLink

    -- ** SlashCommandMetadataType
    , SlashCommandMetadataType (..)

    -- ** SlashCommand
    , SlashCommand
    , slashCommand
    , scCommandId

    -- ** GoogleAppsCardV1SwitchControlControlType
    , GoogleAppsCardV1SwitchControlControlType (..)

    -- ** ImageButtonIcon
    , ImageButtonIcon (..)

    -- ** CardAction
    , CardAction
    , cardAction
    , caOnClick
    , caActionLabel

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleAppsCardV1OpenLinkOpenAs
    , GoogleAppsCardV1OpenLinkOpenAs (..)

    -- ** ActionStatus
    , ActionStatus
    , actionStatus
    , asUserFacingMessage
    , asStatusCode

    -- ** GoogleAppsCardV1SelectionItem
    , GoogleAppsCardV1SelectionItem
    , googleAppsCardV1SelectionItem
    , gText
    , gValue
    , gSelected

    -- ** DeprecatedEventType
    , DeprecatedEventType (..)

    -- ** ActionResponse
    , ActionResponse
    , actionResponse
    , arURL
    , arType
    , arDialogAction

    -- ** GoogleAppsCardV1GridItem
    , GoogleAppsCardV1GridItem
    , googleAppsCardV1GridItem
    , gacvgiImage
    , gacvgiLayout
    , gacvgiTextAlignment
    , gacvgiSubtitle
    , gacvgiId
    , gacvgiTitle

    -- ** GoogleAppsCardV1SwitchControl
    , GoogleAppsCardV1SwitchControl
    , googleAppsCardV1SwitchControl
    , gacvscValue
    , gacvscSelected
    , gacvscName
    , gacvscControlType
    , gacvscOnChangeAction

    -- ** DriveDataRef
    , DriveDataRef
    , driveDataRef
    , ddrDriveFileId

    -- ** FormAction
    , FormAction
    , formAction
    , faActionMethodName
    , faParameters

    -- ** ListMembershipsResponse
    , ListMembershipsResponse
    , listMembershipsResponse
    , lmrNextPageToken
    , lmrMemberships

    -- ** Dialog
    , Dialog
    , dialog
    , dBody

    -- ** Message
    , Message
    , message
    , mesAnnotations
    , mesSpace
    , mesText
    , mesSender
    , mesAttachment
    , mesName
    , mesPreviewText
    , mesCards
    , mesSlashCommand
    , mesActionResponse
    , mesArgumentText
    , mesThread
    , mesFallbackText
    , mesCreateTime

    -- ** GoogleAppsCardV1Icon
    , GoogleAppsCardV1Icon
    , googleAppsCardV1Icon
    , gKnownIcon
    , gAltText
    , gImageType
    , gIconURL

    -- ** GoogleAppsCardV1OpenLinkOnClose
    , GoogleAppsCardV1OpenLinkOnClose (..)

    -- ** CardHeader
    , CardHeader
    , cardHeader
    , chSubtitle
    , chImageURL
    , chTitle
    , chImageStyle

    -- ** GoogleAppsCardV1TextInput
    , GoogleAppsCardV1TextInput
    , googleAppsCardV1TextInput
    , gacvtiAutoCompleteAction
    , gacvtiValue
    , gacvtiName
    , gacvtiType
    , gacvtiHintText
    , gacvtiLabel
    , gacvtiInitialSuggestions
    , gacvtiOnChangeAction

    -- ** TextButton
    , TextButton
    , textButton
    , tbOnClick
    , tbText

    -- ** GoogleAppsCardV1BOrderStyleType
    , GoogleAppsCardV1BOrderStyleType (..)

    -- ** GoogleAppsCardV1TextParagraph
    , GoogleAppsCardV1TextParagraph
    , googleAppsCardV1TextParagraph
    , gacvtpText

    -- ** DialogAction
    , DialogAction
    , dialogAction
    , daActionStatus
    , daDialog

    -- ** GoogleAppsCardV1Button
    , GoogleAppsCardV1Button
    , googleAppsCardV1Button
    , gacvbOnClick
    , gacvbColor
    , gacvbText
    , gacvbDisabled
    , gacvbIcon
    , gacvbAltText

    -- ** GoogleAppsCardV1Action
    , GoogleAppsCardV1Action
    , googleAppsCardV1Action
    , gacvaLoadIndicator
    , gacvaFunction
    , gacvaParameters
    , gacvaPersistValues

    -- ** Thread
    , Thread
    , thread
    , tName

    -- ** UserMentionMetadata
    , UserMentionMetadata
    , userMentionMetadata
    , ummUser
    , ummType

    -- ** GoogleAppsCardV1SelectionInputType
    , GoogleAppsCardV1SelectionInputType (..)

    -- ** GoogleAppsCardV1ImageCropStyleType
    , GoogleAppsCardV1ImageCropStyleType (..)

    -- ** ImageButton
    , ImageButton
    , imageButton
    , ibOnClick
    , ibIcon
    , ibName
    , ibIconURL

    -- ** Section
    , Section
    , section
    , sWidgets
    , sHeader

    -- ** GoogleAppsCardV1CardDisplayStyle
    , GoogleAppsCardV1CardDisplayStyle (..)

    -- ** UserType
    , UserType (..)
    ) where

import Network.Google.Prelude
import Network.Google.Chat.Types
import Network.Google.Resource.Chat.Dms.Conversations.Messages
import Network.Google.Resource.Chat.Dms.Messages
import Network.Google.Resource.Chat.Dms.Webhooks
import Network.Google.Resource.Chat.Media.Download
import Network.Google.Resource.Chat.Rooms.Conversations.Messages
import Network.Google.Resource.Chat.Rooms.Messages
import Network.Google.Resource.Chat.Rooms.Webhooks
import Network.Google.Resource.Chat.Spaces.Get
import Network.Google.Resource.Chat.Spaces.List
import Network.Google.Resource.Chat.Spaces.Members.Get
import Network.Google.Resource.Chat.Spaces.Members.List
import Network.Google.Resource.Chat.Spaces.Messages.Attachments.Get
import Network.Google.Resource.Chat.Spaces.Messages.Create
import Network.Google.Resource.Chat.Spaces.Messages.Delete
import Network.Google.Resource.Chat.Spaces.Messages.Get
import Network.Google.Resource.Chat.Spaces.Messages.Update
import Network.Google.Resource.Chat.Spaces.Webhooks

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Chat API service.
type ChatAPI =
     RoomsConversationsMessagesResource :<|>
       RoomsMessagesResource
       :<|> RoomsWebhooksResource
       :<|> MediaDownloadResource
       :<|> SpacesMembersListResource
       :<|> SpacesMembersGetResource
       :<|> SpacesMessagesAttachmentsGetResource
       :<|> SpacesMessagesGetResource
       :<|> SpacesMessagesCreateResource
       :<|> SpacesMessagesDeleteResource
       :<|> SpacesMessagesUpdateResource
       :<|> SpacesListResource
       :<|> SpacesGetResource
       :<|> SpacesWebhooksResource
       :<|> DmsConversationsMessagesResource
       :<|> DmsMessagesResource
       :<|> DmsWebhooksResource
