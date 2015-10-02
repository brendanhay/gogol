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
    , aoaptURL

    -- * CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

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
    , aoaURL
    , aoaEmbed
    , aoaContent
    , aoaThumbnails
    , aoaDisplayName
    , aoaId

    -- * ActivityObjectAttachmentsThumbnailsImage
    , ActivityObjectAttachmentsThumbnailsImage
    , activityObjectAttachmentsThumbnailsImage
    , aoatiHeight
    , aoatiURL
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
    , vURL
    , vWidth
    , vType

    -- * PlusDomainsPeopleListOrderBy
    , PlusDomainsPeopleListOrderBy (..)

    -- * CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtURL
    , cirtId

    -- * PersonOrganizations
    , PersonOrganizations
    , personOrganizations
    , poDePartyment
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
    , aoaiURL
    , aoaiWidth
    , aoaiType

    -- * CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caURL
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
    , aoURL
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
    , aURL
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
    , maiURL

    -- * ActivityActorImage
    , ActivityActorImage
    , activityActorImage
    , aaiURL

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
    , maURL
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
    , aoaeURL
    , aoaeType

    -- * PersonCoverCoverPhoto
    , PersonCoverCoverPhoto
    , personCoverCoverPhoto
    , pccpHeight
    , pccpURL
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
    , mURL
    , mWidth
    , mMediaURL
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
    , actURL

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
    , piURL
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
    , aoatURL
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
    , aaURL
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
    , aaaURL
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
    , aoafiURL
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
