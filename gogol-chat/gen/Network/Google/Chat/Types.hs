{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Chat.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Chat.Types
    (
    -- * Service Configuration
      chatService

    -- * Card
    , Card
    , card
    , cCardActions
    , cName
    , cHeader
    , cSections

    -- * Space
    , Space
    , space
    , sName
    , sDisplayName
    , sType

    -- * KeyValue
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

    -- * WidgetMarkup
    , WidgetMarkup
    , widgetMarkup
    , wmKeyValue
    , wmImage
    , wmButtons
    , wmTextParagraph

    -- * OnClick
    , OnClick
    , onClick
    , ocAction
    , ocOpenLink

    -- * Annotation
    , Annotation
    , annotation
    , aLength
    , aType
    , aUserMention
    , aStartIndex

    -- * Image
    , Image
    , image
    , iOnClick
    , iAspectRatio
    , iImageURL

    -- * KeyValueIcon
    , KeyValueIcon (..)

    -- * ActionParameter
    , ActionParameter
    , actionParameter
    , apValue
    , apKey

    -- * Membership
    , Membership
    , membership
    , mState
    , mName
    , mMember
    , mCreateTime

    -- * ActionResponseType
    , ActionResponseType (..)

    -- * Empty
    , Empty
    , empty

    -- * DeprecatedEvent
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

    -- * MembershipState
    , MembershipState (..)

    -- * CardHeaderImageStyle
    , CardHeaderImageStyle (..)

    -- * TextParagraph
    , TextParagraph
    , textParagraph
    , tpText

    -- * Button
    , Button
    , button
    , bTextButton
    , bImageButton

    -- * UserMentionMetadataType
    , UserMentionMetadataType (..)

    -- * ListSpacesResponse
    , ListSpacesResponse
    , listSpacesResponse
    , lsrNextPageToken
    , lsrSpaces

    -- * User
    , User
    , user
    , uName
    , uDisplayName
    , uType

    -- * SpaceType
    , SpaceType (..)

    -- * OpenLink
    , OpenLink
    , openLink
    , olURL

    -- * AnnotationType
    , AnnotationType (..)

    -- * ImageButtonIcon
    , ImageButtonIcon (..)

    -- * CardAction
    , CardAction
    , cardAction
    , caOnClick
    , caActionLabel

    -- * Xgafv
    , Xgafv (..)

    -- * DeprecatedEventType
    , DeprecatedEventType (..)

    -- * ActionResponse
    , ActionResponse
    , actionResponse
    , arURL
    , arType

    -- * FormAction
    , FormAction
    , formAction
    , faActionMethodName
    , faParameters

    -- * ListMembershipsResponse
    , ListMembershipsResponse
    , listMembershipsResponse
    , lmrNextPageToken
    , lmrMemberships

    -- * Message
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

    -- * CardHeader
    , CardHeader
    , cardHeader
    , chSubtitle
    , chImageURL
    , chTitle
    , chImageStyle

    -- * TextButton
    , TextButton
    , textButton
    , tbOnClick
    , tbText

    -- * Thread
    , Thread
    , thread
    , tName

    -- * UserMentionMetadata
    , UserMentionMetadata
    , userMentionMetadata
    , ummUser
    , ummType

    -- * ImageButton
    , ImageButton
    , imageButton
    , ibOnClick
    , ibIcon
    , ibName
    , ibIconURL

    -- * Section
    , Section
    , section
    , sWidgets
    , sHeader

    -- * UserType
    , UserType (..)
    ) where

import           Network.Google.Chat.Types.Product
import           Network.Google.Chat.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Hangouts Chat API. This contains the host and root path used as a starting point for constructing service requests.
chatService :: ServiceConfig
chatService
  = defaultService (ServiceId "chat:v1")
      "chat.googleapis.com"
