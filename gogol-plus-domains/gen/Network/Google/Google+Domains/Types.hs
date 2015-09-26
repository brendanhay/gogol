{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Google+Domains.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Google+Domains.Types
    (
    -- * API Definition
      plusDomains


    -- * Acl
    , Acl
    , acl
    , aclKind
    , aclItems
    , aclDomainRestricted
    , aclDescription

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

    -- * ActivityActorObject
    , ActivityActorObject
    , activityActorObject
    , aaoImage
    , aaoUrl
    , aaoDisplayName
    , aaoId
    , aaoVerification

    -- * ActivityEmbedItemAttachmentsObject
    , ActivityEmbedItemAttachmentsObject
    , activityEmbedItemAttachmentsObject
    , aeiaoUrl
    , aeiaoType

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

    -- * ActivityFullImageItemAttachmentsObject
    , ActivityFullImageItemAttachmentsObject
    , activityFullImageItemAttachmentsObject
    , afiiaoHeight
    , afiiaoUrl
    , afiiaoWidth
    , afiiaoType

    -- * ActivityImageActor
    , ActivityImageActor
    , activityImageActor
    , aiaUrl

    -- * ActivityImageActorObject
    , ActivityImageActorObject
    , activityImageActorObject
    , aiaoUrl

    -- * ActivityImageItemAttachmentsObject
    , ActivityImageItemAttachmentsObject
    , activityImageItemAttachmentsObject
    , aiiaoHeight
    , aiiaoUrl
    , aiiaoWidth
    , aiiaoType

    -- * ActivityImageItemThumbnailsItemAttachmentsObject
    , ActivityImageItemThumbnailsItemAttachmentsObject
    , activityImageItemThumbnailsItemAttachmentsObject
    , aiitiaoHeight
    , aiitiaoUrl
    , aiitiaoWidth
    , aiitiaoType

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

    -- * ActivityItemThumbnailsItemAttachmentsObject
    , ActivityItemThumbnailsItemAttachmentsObject
    , activityItemThumbnailsItemAttachmentsObject
    , aitiaoImage
    , aitiaoUrl
    , aitiaoDescription

    -- * ActivityNameActor
    , ActivityNameActor
    , activityNameActor
    , anaGivenName
    , anaFamilyName

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

    -- * ActivityPlusonersObject
    , ActivityPlusonersObject
    , activityPlusonersObject
    , apoTotalItems
    , apoSelfLink

    -- * ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- * ActivityRepliesObject
    , ActivityRepliesObject
    , activityRepliesObject
    , aroTotalItems
    , aroSelfLink

    -- * ActivityResharersObject
    , ActivityResharersObject
    , activityResharersObject
    , aTotalItems
    , aSelfLink

    -- * ActivityStatusForViewerObject
    , ActivityStatusForViewerObject
    , activityStatusForViewerObject
    , asfvoCanComment
    , asfvoResharingDisabled
    , asfvoCanUpdate
    , asfvoIsPlusOned
    , asfvoCanPlusone

    -- * ActivityVerificationActor
    , ActivityVerificationActor
    , activityVerificationActor
    , avaAdHocVerified

    -- * ActivityVerificationActorObject
    , ActivityVerificationActorObject
    , activityVerificationActorObject
    , avaoAdHocVerified

    -- * Audience
    , Audience
    , audience
    , aaEtag
    , aaKind
    , aaVisibility
    , aaItem
    , aaMemberCount

    -- * AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

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

    -- * CirclePeople
    , CirclePeople
    , circlePeople
    , cpTotalItems

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

    -- * CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caUrl
    , caDisplayName
    , caId
    , caVerification

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

    -- * CommentImageActor
    , CommentImageActor
    , commentImageActor
    , ciaUrl

    -- * CommentItemInReplyTo
    , CommentItemInReplyTo
    , commentItemInReplyTo
    , ciirtUrl
    , ciirtId

    -- * CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- * CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cTotalItems

    -- * CommentVerificationActor
    , CommentVerificationActor
    , commentVerificationActor
    , cvaAdHocVerified

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

    -- * MediaAuthor
    , MediaAuthor
    , mediaAuthor
    , maImage
    , maUrl
    , maDisplayName
    , maId

    -- * MediaExif
    , MediaExif
    , mediaExif
    , meTime

    -- * MediaImageAuthor
    , MediaImageAuthor
    , mediaImageAuthor
    , miaUrl

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

    -- * PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- * PersonCoverInfoCover
    , PersonCoverInfoCover
    , personCoverInfoCover
    , pcicTopImageOffset
    , pcicLeftImageOffset

    -- * PersonCoverPhotoCover
    , PersonCoverPhotoCover
    , personCoverPhotoCover
    , pcpcHeight
    , pcpcUrl
    , pcpcWidth

    -- * PersonImage
    , PersonImage
    , personImage
    , piUrl
    , piIsDefault

    -- * PersonItemEmails
    , PersonItemEmails
    , personItemEmails
    , pieValue
    , pieType

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

    -- * PersonItemPlacesLived
    , PersonItemPlacesLived
    , personItemPlacesLived
    , piplValue
    , piplPrimary

    -- * PersonItemUrls
    , PersonItemUrls
    , personItemUrls
    , piuValue
    , piuType
    , piuLabel

    -- * PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- * Place
    , Place
    , place
    , pKind
    , pAddress
    , pDisplayName
    , pId
    , pPosition

    -- * PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- * PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- * PlusDomainsAclentryResource
    , PlusDomainsAclentryResource
    , plusDomainsAclentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

    -- * Videostream
    , Videostream
    , videostream
    , vHeight
    , vUrl
    , vWidth
    , vType
    ) where

import Network.Google.Prelude
import Network.Google.Google+Domains.Types.Product
import Network.Google.Google+Domains.Types.Sum

plusDomains :: a
plusDomains = error "plusDomains"
