{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Chat
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables bots to fetch information and perform actions in Hangouts Chat.
--
-- /See:/ <https://developers.google.com/hangouts/chat Hangouts Chat API Reference>
module Network.Google.Chat
    (
    -- * Service Configuration
      chatService

    -- * API Declaration
    , ChatAPI

    -- * Resources

    -- ** chat.spaces.get
    , module Network.Google.Resource.Chat.Spaces.Get

    -- ** chat.spaces.list
    , module Network.Google.Resource.Chat.Spaces.List

    -- ** chat.spaces.members.get
    , module Network.Google.Resource.Chat.Spaces.Members.Get

    -- ** chat.spaces.members.list
    , module Network.Google.Resource.Chat.Spaces.Members.List

    -- ** chat.spaces.messages.create
    , module Network.Google.Resource.Chat.Spaces.Messages.Create

    -- ** chat.spaces.messages.delete
    , module Network.Google.Resource.Chat.Spaces.Messages.Delete

    -- ** chat.spaces.messages.get
    , module Network.Google.Resource.Chat.Spaces.Messages.Get

    -- ** chat.spaces.messages.update
    , module Network.Google.Resource.Chat.Spaces.Messages.Update

    -- * Types

    -- ** Card
    , Card
    , card
    , cCardActions
    , cName
    , cHeader
    , cSections

    -- ** Space
    , Space
    , space
    , sName
    , sDisplayName
    , sType

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

    -- ** WidgetMarkup
    , WidgetMarkup
    , widgetMarkup
    , wmKeyValue
    , wmImage
    , wmButtons
    , wmTextParagraph

    -- ** OnClick
    , OnClick
    , onClick
    , ocAction
    , ocOpenLink

    -- ** Annotation
    , Annotation
    , annotation
    , aLength
    , aType
    , aUserMention
    , aStartIndex

    -- ** Image
    , Image
    , image
    , iOnClick
    , iAspectRatio
    , iImageURL

    -- ** KeyValueIcon
    , KeyValueIcon (..)

    -- ** ActionParameter
    , ActionParameter
    , actionParameter
    , apValue
    , apKey

    -- ** Membership
    , Membership
    , membership
    , mState
    , mName
    , mMember
    , mCreateTime

    -- ** ActionResponseType
    , ActionResponseType (..)

    -- ** Empty
    , Empty
    , empty

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

    -- ** CardHeaderImageStyle
    , CardHeaderImageStyle (..)

    -- ** TextParagraph
    , TextParagraph
    , textParagraph
    , tpText

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

    -- ** User
    , User
    , user
    , uName
    , uDisplayName
    , uType

    -- ** SpaceType
    , SpaceType (..)

    -- ** OpenLink
    , OpenLink
    , openLink
    , olURL

    -- ** AnnotationType
    , AnnotationType (..)

    -- ** ImageButtonIcon
    , ImageButtonIcon (..)

    -- ** CardAction
    , CardAction
    , cardAction
    , caOnClick
    , caActionLabel

    -- ** Xgafv
    , Xgafv (..)

    -- ** DeprecatedEventType
    , DeprecatedEventType (..)

    -- ** ActionResponse
    , ActionResponse
    , actionResponse
    , arURL
    , arType

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

    -- ** Message
    , Message
    , message
    , mesAnnotations
    , mesSpace
    , mesText
    , mesSender
    , mesName
    , mesPreviewText
    , mesCards
    , mesActionResponse
    , mesArgumentText
    , mesThread
    , mesFallbackText
    , mesCreateTime

    -- ** CardHeader
    , CardHeader
    , cardHeader
    , chSubtitle
    , chImageURL
    , chTitle
    , chImageStyle

    -- ** TextButton
    , TextButton
    , textButton
    , tbOnClick
    , tbText

    -- ** Thread
    , Thread
    , thread
    , tName

    -- ** UserMentionMetadata
    , UserMentionMetadata
    , userMentionMetadata
    , ummUser
    , ummType

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

    -- ** UserType
    , UserType (..)
    ) where

import           Network.Google.Chat.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Chat.Spaces.Get
import           Network.Google.Resource.Chat.Spaces.List
import           Network.Google.Resource.Chat.Spaces.Members.Get
import           Network.Google.Resource.Chat.Spaces.Members.List
import           Network.Google.Resource.Chat.Spaces.Messages.Create
import           Network.Google.Resource.Chat.Spaces.Messages.Delete
import           Network.Google.Resource.Chat.Spaces.Messages.Get
import           Network.Google.Resource.Chat.Spaces.Messages.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Hangouts Chat API service.
type ChatAPI =
     SpacesMembersListResource :<|>
       SpacesMembersGetResource
       :<|> SpacesMessagesGetResource
       :<|> SpacesMessagesCreateResource
       :<|> SpacesMessagesDeleteResource
       :<|> SpacesMessagesUpdateResource
       :<|> SpacesListResource
       :<|> SpacesGetResource
