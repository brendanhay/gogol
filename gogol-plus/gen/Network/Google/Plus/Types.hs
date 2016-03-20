{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Plus.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Plus.Types
    (
    -- * Service Configuration
      plusService

    -- * OAuth Scopes
    , authUserinfoProfileScope
    , authPlusLoginScope
    , authUserinfoEmailScope
    , authPlusMeScope

    -- * ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- * ActivityObjectAttachmentsItemEmbed
    , ActivityObjectAttachmentsItemEmbed
    , activityObjectAttachmentsItemEmbed
    , aoaieURL
    , aoaieType

    -- * CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cpTotalItems

    -- * CommentActorClientSpecificActorInfo
    , CommentActorClientSpecificActorInfo
    , commentActorClientSpecificActorInfo
    , cacsaiYouTubeActorInfo

    -- * ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
    , ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
    , activityObjectActorClientSpecificActorInfoYouTubeActorInfo
    , aoacsaiytaiChannelId

    -- * ActivityObjectPlusoners
    , ActivityObjectPlusoners
    , activityObjectPlusoners
    , aopTotalItems
    , aopSelfLink

    -- * PersonEmailsItem
    , PersonEmailsItem
    , personEmailsItem
    , peiValue
    , peiType

    -- * CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

    -- * ActivityObjectAttachmentsItemThumbnailsItemImage
    , ActivityObjectAttachmentsItemThumbnailsItemImage
    , activityObjectAttachmentsItemThumbnailsItemImage
    , aoaitiiHeight
    , aoaitiiURL
    , aoaitiiWidth
    , aoaitiiType

    -- * PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- * PersonPlacesLivedItem
    , PersonPlacesLivedItem
    , personPlacesLivedItem
    , ppliValue
    , ppliPrimary

    -- * ActivityActorClientSpecificActorInfo
    , ActivityActorClientSpecificActorInfo
    , activityActorClientSpecificActorInfo
    , aacsaiYouTubeActorInfo

    -- * Person
    , Person
    , person
    , pCurrentLocation
    , pAgeRange
    , pEtag
    , pImage
    , pBraggingRights
    , pPlacesLived
    , pPlusOneCount
    , pObjectType
    , pCover
    , pKind
    , pRelationshipStatus
    , pURLs
    , pDomain
    , pURL
    , pVerified
    , pBirthday
    , pIsPlusUser
    , pTagline
    , pGender
    , pName
    , pEmails
    , pOccupation
    , pSkills
    , pLanguage
    , pAboutMe
    , pDisplayName
    , pId
    , pNickname
    , pOrganizations
    , pCircledByCount

    -- * ActivityObjectAttachmentsItemImage
    , ActivityObjectAttachmentsItemImage
    , activityObjectAttachmentsItemImage
    , aoaiiHeight
    , aoaiiURL
    , aoaiiWidth
    , aoaiiType

    -- * CommentActor
    , CommentActor
    , commentActor
    , caClientSpecificActorInfo
    , caImage
    , caURL
    , caDisplayName
    , caId
    , caVerification

    -- * ActivityObject
    , ActivityObject
    , activityObject
    , aoPlusoners
    , aoAttachments
    , aoObjectType
    , aoOriginalContent
    , aoURL
    , aoActor
    , aoContent
    , aoReplies
    , aoId
    , aoResharers

    -- * ActivityObjectActor
    , ActivityObjectActor
    , activityObjectActor
    , aoaClientSpecificActorInfo
    , aoaImage
    , aoaURL
    , aoaDisplayName
    , aoaId
    , aoaVerification

    -- * ActivityObjectAttachmentsItemFullImage
    , ActivityObjectAttachmentsItemFullImage
    , activityObjectAttachmentsItemFullImage
    , aoaifiHeight
    , aoaifiURL
    , aoaifiWidth
    , aoaifiType

    -- * PeopleListByActivityCollection
    , PeopleListByActivityCollection (..)

    -- * ActivityActorImage
    , ActivityActorImage
    , activityActorImage
    , aaiURL

    -- * PeopleFeed
    , PeopleFeed
    , peopleFeed
    , pfTotalItems
    , pfEtag
    , pfNextPageToken
    , pfKind
    , pfItems
    , pfSelfLink
    , pfTitle

    -- * PersonCoverCoverPhoto
    , PersonCoverCoverPhoto
    , personCoverCoverPhoto
    , pccpHeight
    , pccpURL
    , pccpWidth

    -- * PersonAgeRange
    , PersonAgeRange
    , personAgeRange
    , parMax
    , parMin

    -- * ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , aoaiURL

    -- * CommentActorClientSpecificActorInfoYouTubeActorInfo
    , CommentActorClientSpecificActorInfoYouTubeActorInfo
    , commentActorClientSpecificActorInfoYouTubeActorInfo
    , cacsaiytaiChannelId

    -- * PeopleListOrderBy
    , PeopleListOrderBy (..)

    -- * ActivityObjectReplies
    , ActivityObjectReplies
    , activityObjectReplies
    , aorTotalItems
    , aorSelfLink

    -- * ActivitiesListCollection
    , ActivitiesListCollection (..)

    -- * ActivityActorVerification
    , ActivityActorVerification
    , activityActorVerification
    , aavAdHocVerified

    -- * ActivityObjectActorClientSpecificActorInfo
    , ActivityObjectActorClientSpecificActorInfo
    , activityObjectActorClientSpecificActorInfo
    , aoacsaiYouTubeActorInfo

    -- * PeopleListCollection
    , PeopleListCollection (..)

    -- * ActivityObjectAttachmentsItem
    , ActivityObjectAttachmentsItem
    , activityObjectAttachmentsItem
    , aFullImage
    , aImage
    , aObjectType
    , aURL
    , aEmbed
    , aContent
    , aThumbnails
    , aDisplayName
    , aId

    -- * ActivityFeed
    , ActivityFeed
    , activityFeed
    , afEtag
    , afNextPageToken
    , afNextLink
    , afKind
    , afItems
    , afSelfLink
    , afId
    , afUpdated
    , afTitle

    -- * ActivityObjectActorVerification
    , ActivityObjectActorVerification
    , activityObjectActorVerification
    , aoavAdHocVerified

    -- * PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- * PersonImage
    , PersonImage
    , personImage
    , piURL
    , piIsDefault

    -- * ActivityActorClientSpecificActorInfoYouTubeActorInfo
    , ActivityActorClientSpecificActorInfoYouTubeActorInfo
    , activityActorClientSpecificActorInfoYouTubeActorInfo
    , aacsaiytaiChannelId

    -- * PlusACLentryResource
    , PlusACLentryResource
    , plusACLentryResource
    , parDisplayName
    , parId
    , parType

    -- * Activity
    , Activity
    , activity
    , actAccess
    , actPlaceName
    , actEtag
    , actAnnotation
    , actLocation
    , actGeocode
    , actKind
    , actRadius
    , actPublished
    , actURL
    , actActor
    , actAddress
    , actObject
    , actId
    , actUpdated
    , actTitle
    , actVerb
    , actCrosspostSource
    , actPlaceId
    , actProvider

    -- * PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- * ActivityObjectAttachmentsItemThumbnailsItem
    , ActivityObjectAttachmentsItemThumbnailsItem
    , activityObjectAttachmentsItemThumbnailsItem
    , aoaitiImage
    , aoaitiURL
    , aoaitiDescription

    -- * PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- * CommentInReplyToItem
    , CommentInReplyToItem
    , commentInReplyToItem
    , cirtiURL
    , cirtiId

    -- * PersonOrganizationsItem
    , PersonOrganizationsItem
    , personOrganizationsItem
    , poiDePartment
    , poiLocation
    , poiEndDate
    , poiPrimary
    , poiStartDate
    , poiName
    , poiTitle
    , poiType
    , poiDescription

    -- * PersonURLsItem
    , PersonURLsItem
    , personURLsItem
    , puiValue
    , puiType
    , puiLabel

    -- * ActivitiesSearchOrderBy
    , ActivitiesSearchOrderBy (..)

    -- * PersonCoverCoverInfo
    , PersonCoverCoverInfo
    , personCoverCoverInfo
    , pcciTopImageOffSet
    , pcciLeftImageOffSet

    -- * ActivityObjectResharers
    , ActivityObjectResharers
    , activityObjectResharers
    , aTotalItems
    , aSelfLink

    -- * Comment
    , Comment
    , comment
    , cEtag
    , cPlusoners
    , cKind
    , cPublished
    , cActor
    , cSelfLink
    , cObject
    , cId
    , cUpdated
    , cVerb
    , cInReplyTo

    -- * Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- * ACL
    , ACL
    , acl
    , aKind
    , aItems
    , aDescription

    -- * ActivityActor
    , ActivityActor
    , activityActor
    , aaClientSpecificActorInfo
    , aaImage
    , aaURL
    , aaName
    , aaDisplayName
    , aaId
    , aaVerification

    -- * CommentsListSortOrder
    , CommentsListSortOrder (..)

    -- * CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- * CommentFeed
    , CommentFeed
    , commentFeed
    , cfEtag
    , cfNextPageToken
    , cfNextLink
    , cfKind
    , cfItems
    , cfId
    , cfUpdated
    , cfTitle

    -- * CommentActorVerification
    , CommentActorVerification
    , commentActorVerification
    , cavAdHocVerified

    -- * ActivityActorName
    , ActivityActorName
    , activityActorName
    , aanGivenName
    , aanFamilyName
    ) where

import           Network.Google.Plus.Types.Product
import           Network.Google.Plus.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google+ API. This contains the host and root path used as a starting point for constructing service requests.
plusService :: Service
plusService
  = defaultService (ServiceId "plus:v1")
      "www.googleapis.com"

-- | View your basic profile info
authUserinfoProfileScope :: Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
authUserinfoProfileScope = Proxy;

-- | Know the list of people in your circles, your age range, and language
authPlusLoginScope :: Proxy '["https://www.googleapis.com/auth/plus.login"]
authPlusLoginScope = Proxy;

-- | View your email address
authUserinfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
authUserinfoEmailScope = Proxy;

-- | Know who you are on Google
authPlusMeScope :: Proxy '["https://www.googleapis.com/auth/plus.me"]
authPlusMeScope = Proxy;
