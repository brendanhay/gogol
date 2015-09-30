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

    -- * CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cpTotalItems

    -- * Audience
    , Audience
    , audience
    , aEtag
    , aKind
    , aVisibility
    , aItem
    , aMemberCount

    -- * ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- * ActivityObjectAttachmentsPreviewThumbnails
    , ActivityObjectAttachmentsPreviewThumbnails
    , activityObjectAttachmentsPreviewThumbnails
    , aoaptUrl

    -- * CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiUrl

    -- * ActivityObjectPlusoners
    , ActivityObjectPlusoners
    , activityObjectPlusoners
    , aopTotalItems
    , aopSelfLink

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

    -- * ActivityObjectAttachments
    , ActivityObjectAttachments
    , activityObjectAttachments
    , aoaFullImage
    , aoaImage
    , aoaObjectType
    , aoaPreviewThumbnails
    , aoaUrl
    , aoaEmbed
    , aoaContent
    , aoaThumbnails
    , aoaDisplayName
    , aoaId

    -- * ActivityObjectAttachmentsThumbnailsImage
    , ActivityObjectAttachmentsThumbnailsImage
    , activityObjectAttachmentsThumbnailsImage
    , aoatiHeight
    , aoatiUrl
    , aoatiWidth
    , aoatiType

    -- * PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- * PersonURLs
    , PersonURLs
    , personURLs
    , puValue
    , puType
    , puLabel

    -- * Person
    , Person
    , person
    , pCurrentLocation
    , pEtag
    , pImage
    , pBraggingRights
    , pPlacesLived
    , pPlusOneCount
    , pObjectType
    , pCover
    , pKind
    , pRelationshipStatus
    , pUrls
    , pDomain
    , pUrl
    , pVerified
    , pBirthday
    , pIsPlusUser
    , pTagline
    , pGender
    , pName
    , pEmails
    , pOccupation
    , pSkills
    , pAboutMe
    , pDisplayName
    , pId
    , pNickname
    , pOrganizations
    , pCircledByCount

    -- * Videostream
    , Videostream
    , videostream
    , vHeight
    , vUrl
    , vWidth
    , vType

    -- * PlusDomainsPeopleListOrderBy
    , PlusDomainsPeopleListOrderBy (..)

    -- * CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtUrl
    , cirtId

    -- * PersonOrganizations
    , PersonOrganizations
    , personOrganizations
    , poDepartment
    , poLocation
    , poEndDate
    , poPrimary
    , poStartDate
    , poName
    , poTitle
    , poType
    , poDescription

    -- * ActivityObjectAttachmentsImage
    , ActivityObjectAttachmentsImage
    , activityObjectAttachmentsImage
    , aoaiHeight
    , aoaiUrl
    , aoaiWidth
    , aoaiType

    -- * CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caUrl
    , caDisplayName
    , caId
    , caVerification

    -- * CircleFeed
    , CircleFeed
    , circleFeed
    , cfTotalItems
    , cfEtag
    , cfNextPageToken
    , cfNextLink
    , cfKind
    , cfItems
    , cfSelfLink
    , cfTitle

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

    -- * PlusDomainsPeopleListByActivityCollection
    , PlusDomainsPeopleListByActivityCollection (..)

    -- * ActivityObjectActor
    , ActivityObjectActor
    , activityObjectActor
    , aImage
    , aUrl
    , aDisplayName
    , aId
    , aVerification

    -- * PlusDomainsActivitiesListCollection
    , PlusDomainsActivitiesListCollection (..)

    -- * PlusDomainsPeopleListCollection
    , PlusDomainsPeopleListCollection (..)

    -- * MediaAuthorImage
    , MediaAuthorImage
    , mediaAuthorImage
    , maiUrl

    -- * ActivityActorImage
    , ActivityActorImage
    , activityActorImage
    , aaiUrl

    -- * PlusDomainsACLentryResource
    , PlusDomainsACLentryResource
    , plusDomainsACLentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

    -- * MediaAuthor
    , MediaAuthor
    , mediaAuthor
    , maImage
    , maUrl
    , maDisplayName
    , maId

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

    -- * ActivityObjectAttachmentsEmbed
    , ActivityObjectAttachmentsEmbed
    , activityObjectAttachmentsEmbed
    , aoaeUrl
    , aoaeType

    -- * PersonCoverCoverPhoto
    , PersonCoverCoverPhoto
    , personCoverCoverPhoto
    , pccpHeight
    , pccpUrl
    , pccpWidth

    -- * CirclePeople
    , CirclePeople
    , circlePeople
    , cTotalItems

    -- * ActivityObjectReplies
    , ActivityObjectReplies
    , activityObjectReplies
    , aorTotalItems
    , aorSelfLink

    -- * PlusDomainsMediaInsertCollection
    , PlusDomainsMediaInsertCollection (..)

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

    -- * ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , actUrl

    -- * ActivityActorVerification
    , ActivityActorVerification
    , activityActorVerification
    , aavAdHocVerified

    -- * PlusDomainsCommentsListSortOrder
    , PlusDomainsCommentsListSortOrder (..)

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

    -- * PersonPlacesLived
    , PersonPlacesLived
    , personPlacesLived
    , pplValue
    , pplPrimary

    -- * ActivityObjectActorVerification
    , ActivityObjectActorVerification
    , activityObjectActorVerification
    , aoavAdHocVerified

    -- * PersonEmails
    , PersonEmails
    , personEmails
    , peValue
    , peType

    -- * PersonImage
    , PersonImage
    , personImage
    , piUrl
    , piIsDefault

    -- * PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- * PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- * ActivityObjectAttachmentsThumbnails
    , ActivityObjectAttachmentsThumbnails
    , activityObjectAttachmentsThumbnails
    , aoatImage
    , aoatUrl
    , aoatDescription

    -- * ActivityObjectStatusForViewer
    , ActivityObjectStatusForViewer
    , activityObjectStatusForViewer
    , aosfvCanComment
    , aosfvResharingDisabled
    , aosfvCanUpdate
    , aosfvIsPlusOned
    , aosfvCanPlusone

    -- * AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

    -- * Activity
    , Activity
    , activity
    , aaAccess
    , aaPlaceName
    , aaEtag
    , aaAnnotation
    , aaLocation
    , aaGeocode
    , aaKind
    , aaRadius
    , aaPublished
    , aaUrl
    , aaActor
    , aaAddress
    , aaObject
    , aaId
    , aaUpdated
    , aaTitle
    , aaVerb
    , aaCrosspostSource
    , aaPlaceId
    , aaProvider

    -- * PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- * Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- * PersonCoverCoverInfo
    , PersonCoverCoverInfo
    , personCoverCoverInfo
    , pcciTopImageOffset
    , pcciLeftImageOffset

    -- * ActivityObjectResharers
    , ActivityObjectResharers
    , activityObjectResharers
    , aTotalItems
    , aSelfLink

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

    -- * ActivityActor
    , ActivityActor
    , activityActor
    , aaaImage
    , aaaUrl
    , aaaName
    , aaaDisplayName
    , aaaId
    , aaaVerification

    -- * CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- * ActivityObjectAttachmentsFullImage
    , ActivityObjectAttachmentsFullImage
    , activityObjectAttachmentsFullImage
    , aoafiHeight
    , aoafiUrl
    , aoafiWidth
    , aoafiType

    -- * ACL
    , ACL
    , aCL
    , aclKind
    , aclItems
    , aclDomainRestricted
    , aclDescription

    -- * MediaExif
    , MediaExif
    , mediaExif
    , meTime

    -- * CommentFeed
    , CommentFeed
    , commentFeed
    , cffEtag
    , cffNextPageToken
    , cffNextLink
    , cffKind
    , cffItems
    , cffId
    , cffUpdated
    , cffTitle

    -- * Alt
    , Alt (..)

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

import           Network.Google.PlusDomains.Types.Product
import           Network.Google.PlusDomains.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google+ Domains API.
plusDomainsURL :: BaseUrl
plusDomainsURL
  = BaseUrl Https
      "https://www.googleapis.com/plusDomains/v1/"
      443
