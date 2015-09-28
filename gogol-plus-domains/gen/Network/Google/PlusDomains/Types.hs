{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlusDomains.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlusDomains.Types
    (
    -- * Service URL
      plusDomainsURL

    -- * ActivityVerificationActor
    , ActivityVerificationActor
    , activityVerificationActor
    , avaAdHocVerified

    -- * Media
    , Media
    , media
    , mSizeBytes
    , mSummary
    , mEtag
    , mHeight
    , mVideoDuration
    , mVideoStatus
    , mKind
    , mPublished
    , mUrl
    , mWidth
    , mMediaUrl
    , mStreams
    , mExif
    , mDisplayName
    , mAuthor
    , mId
    , mUpdated
    , mMediaCreatedTime

    -- * CommentImageActor
    , CommentImageActor
    , commentImageActor
    , ciaUrl

    -- * ActivityEmbedItemAttachmentsObject
    , ActivityEmbedItemAttachmentsObject
    , activityEmbedItemAttachmentsObject
    , aeiaoUrl
    , aeiaoType

    -- * ActivityImageActorObject
    , ActivityImageActorObject
    , activityImageActorObject
    , aiaoUrl

    -- * ActivityRepliesObject
    , ActivityRepliesObject
    , activityRepliesObject
    , aroTotalItems
    , aroSelfLink

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

    -- * PersonCoverPhotoCover
    , PersonCoverPhotoCover
    , personCoverPhotoCover
    , pcpcHeight
    , pcpcUrl
    , pcpcWidth

    -- * CirclePeople
    , CirclePeople
    , circlePeople
    , cpTotalItems

    -- * Circle
    , Circle
    , circle
    , cEtag
    , cKind
    , cPeople
    , cSelfLink
    , cDisplayName
    , cId
    , cDescription

    -- * Alt
    , Alt (..)

    -- * ActivityImageActor
    , ActivityImageActor
    , activityImageActor
    , aiaUrl

    -- * CommentVerificationActor
    , CommentVerificationActor
    , commentVerificationActor
    , cvaAdHocVerified

    -- * Activity
    , Activity
    , activity
    , aAccess
    , aPlaceName
    , aEtag
    , aAnnotation
    , aLocation
    , aGeocode
    , aKind
    , aRadius
    , aPublished
    , aUrl
    , aActor
    , aAddress
    , aObject
    , aId
    , aUpdated
    , aTitle
    , aVerb
    , aCrosspostSource
    , aPlaceId
    , aProvider

    -- * ActivityActor
    , ActivityActor
    , activityActor
    , aaImage
    , aaUrl
    , aaName
    , aaDisplayName
    , aaId
    , aaVerification

    -- * AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

    -- * MediaExif
    , MediaExif
    , mediaExif
    , meTime

    -- * CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- * PeopleList'OrderBy
    , PeopleList'OrderBy (..)

    -- * ActivityResharersObject
    , ActivityResharersObject
    , activityResharersObject
    , aTotalItems
    , aSelfLink

    -- * PersonCoverInfoCover
    , PersonCoverInfoCover
    , personCoverInfoCover
    , pcicTopImageOffset
    , pcicLeftImageOffset

    -- * PersonItemUrls
    , PersonItemUrls
    , personItemUrls
    , piuValue
    , piuType
    , piuLabel

    -- * PeopleList'Collection
    , PeopleList'Collection (..)

    -- * Place
    , Place
    , place
    , pKind
    , pAddress
    , pDisplayName
    , pId
    , pPosition

    -- * ActivitiesList'Collection
    , ActivitiesList'Collection (..)

    -- * Comment
    , Comment
    , comment
    , comEtag
    , comPlusoners
    , comKind
    , comPublished
    , comActor
    , comSelfLink
    , comObject
    , comId
    , comUpdated
    , comVerb
    , comInReplyTo

    -- * ActivityImageItemAttachmentsObject
    , ActivityImageItemAttachmentsObject
    , activityImageItemAttachmentsObject
    , aiiaoHeight
    , aiiaoUrl
    , aiiaoWidth
    , aiiaoType

    -- * PersonItemOrganizations
    , PersonItemOrganizations
    , personItemOrganizations
    , pioDepartment
    , pioLocation
    , pioEndDate
    , pioPrimary
    , pioStartDate
    , pioName
    , pioTitle
    , pioType
    , pioDescription

    -- * PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- * ActivityStatusForViewerObject
    , ActivityStatusForViewerObject
    , activityStatusForViewerObject
    , asfvoCanComment
    , asfvoResharingDisabled
    , asfvoCanUpdate
    , asfvoIsPlusOned
    , asfvoCanPlusone

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

    -- * ActivityImageItemThumbnailsItemAttachmentsObject
    , ActivityImageItemThumbnailsItemAttachmentsObject
    , activityImageItemThumbnailsItemAttachmentsObject
    , aiitiaoHeight
    , aiitiaoUrl
    , aiitiaoWidth
    , aiitiaoType

    -- * PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- * MediaInsert'Collection
    , MediaInsert'Collection (..)

    -- * PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- * PersonItemEmails
    , PersonItemEmails
    , personItemEmails
    , pieValue
    , pieType

    -- * Audience
    , Audience
    , audience
    , aaEtag
    , aaKind
    , aaVisibility
    , aaItem
    , aaMemberCount

    -- * ActivityItemAttachmentsObject
    , ActivityItemAttachmentsObject
    , activityItemAttachmentsObject
    , actFullImage
    , actImage
    , actObjectType
    , actPreviewThumbnails
    , actUrl
    , actEmbed
    , actContent
    , actThumbnails
    , actDisplayName
    , actId

    -- * ActivityItemPreviewThumbnailsItemAttachmentsObject
    , ActivityItemPreviewThumbnailsItemAttachmentsObject
    , activityItemPreviewThumbnailsItemAttachmentsObject
    , aiptiaoUrl

    -- * ActivityPlusonersObject
    , ActivityPlusonersObject
    , activityPlusonersObject
    , apoTotalItems
    , apoSelfLink

    -- * CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cTotalItems

    -- * ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- * CommentsList'SortOrder
    , CommentsList'SortOrder (..)

    -- * MediaAuthor
    , MediaAuthor
    , mediaAuthor
    , maImage
    , maUrl
    , maDisplayName
    , maId

    -- * ActivityNameActor
    , ActivityNameActor
    , activityNameActor
    , anaGivenName
    , anaFamilyName

    -- * MediaImageAuthor
    , MediaImageAuthor
    , mediaImageAuthor
    , miaUrl

    -- * Person
    , Person
    , person
    , perCurrentLocation
    , perEtag
    , perImage
    , perBraggingRights
    , perPlacesLived
    , perPlusOneCount
    , perObjectType
    , perCover
    , perKind
    , perRelationshipStatus
    , perUrls
    , perDomain
    , perUrl
    , perVerified
    , perBirthday
    , perIsPlusUser
    , perTagline
    , perGender
    , perName
    , perEmails
    , perOccupation
    , perSkills
    , perAboutMe
    , perDisplayName
    , perId
    , perNickname
    , perOrganizations
    , perCircledByCount

    -- * Videostream
    , Videostream
    , videostream
    , vHeight
    , vUrl
    , vWidth
    , vType

    -- * PeopleListByActivity'Collection
    , PeopleListByActivity'Collection (..)

    -- * ActivityFullImageItemAttachmentsObject
    , ActivityFullImageItemAttachmentsObject
    , activityFullImageItemAttachmentsObject
    , afiiaoHeight
    , afiiaoUrl
    , afiiaoWidth
    , afiiaoType

    -- * ActivityActorObject
    , ActivityActorObject
    , activityActorObject
    , aaoImage
    , aaoUrl
    , aaoDisplayName
    , aaoId
    , aaoVerification

    -- * CircleFeed
    , CircleFeed
    , circleFeed
    , cirTotalItems
    , cirEtag
    , cirNextPageToken
    , cirNextLink
    , cirKind
    , cirItems
    , cirSelfLink
    , cirTitle

    -- * ActivityObject
    , ActivityObject
    , activityObject
    , aoPlusoners
    , aoAttachments
    , aoObjectType
    , aoOriginalContent
    , aoUrl
    , aoActor
    , aoContent
    , aoReplies
    , aoId
    , aoStatusForViewer
    , aoResharers

    -- * CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caUrl
    , caDisplayName
    , caId
    , caVerification

    -- * CommentItemInReplyTo
    , CommentItemInReplyTo
    , commentItemInReplyTo
    , ciirtUrl
    , ciirtId

    -- * PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- * Acl
    , Acl
    , acl
    , aclKind
    , aclItems
    , aclDomainRestricted
    , aclDescription

    -- * ActivityItemThumbnailsItemAttachmentsObject
    , ActivityItemThumbnailsItemAttachmentsObject
    , activityItemThumbnailsItemAttachmentsObject
    , aitiaoImage
    , aitiaoUrl
    , aitiaoDescription

    -- * PlusDomainsAclentryResource
    , PlusDomainsAclentryResource
    , plusDomainsAclentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

    -- * PersonImage
    , PersonImage
    , personImage
    , piUrl
    , piIsDefault

    -- * ActivityVerificationActorObject
    , ActivityVerificationActorObject
    , activityVerificationActorObject
    , avaoAdHocVerified

    -- * PersonItemPlacesLived
    , PersonItemPlacesLived
    , personItemPlacesLived
    , piplValue
    , piplPrimary

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
    ) where

import           Network.Google.PlusDomains.Types.Product
import           Network.Google.PlusDomains.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google+ Domains API.
plusDomainsURL :: BaseUrl
plusDomainsURL
  = BaseUrl Https
      "https://www.googleapis.com/plusDomains/v1/"
      443
