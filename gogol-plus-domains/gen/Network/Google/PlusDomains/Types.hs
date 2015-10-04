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

    -- * FullImage
    , FullImage
    , fullImage
    , fiHeight
    , fiURL
    , fiWidth
    , fiType

    -- * CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

    -- * Plusoners
    , Plusoners
    , plusoners
    , pTotalItems
    , pSelfLink

    -- * Image
    , Image
    , image
    , iURL
    , iIsDefault

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

    -- * AuthorImage
    , AuthorImage
    , authorImage
    , aiURL

    -- * ThumbnailsItem
    , ThumbnailsItem
    , thumbnailsItem
    , tiImage
    , tiURL
    , tiDescription

    -- * EmailsItem
    , EmailsItem
    , emailsItem
    , eiValue
    , eiType

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

    -- * OrderBy
    , OrderBy (..)

    -- * Cover
    , Cover
    , cover
    , cLayout
    , cCoverInfo
    , cCoverPhoto

    -- * OrganizationsItem
    , OrganizationsItem
    , organizationsItem
    , oiDePartment
    , oiLocation
    , oiEndDate
    , oiPrimary
    , oiStartDate
    , oiName
    , oiTitle
    , oiType
    , oiDescription

    -- * ThumbnailsItemImage
    , ThumbnailsItemImage
    , thumbnailsItemImage
    , tiiHeight
    , tiiURL
    , tiiWidth
    , tiiType

    -- * AttachmentsItemImage
    , AttachmentsItemImage
    , attachmentsItemImage
    , aiiHeight
    , aiiURL
    , aiiWidth
    , aiiType

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

    -- * PlusDomainsPeopleListByActivityCollection
    , PlusDomainsPeopleListByActivityCollection (..)

    -- * CoverInfo
    , CoverInfo
    , coverInfo
    , ciTopImageOffset
    , ciLeftImageOffset

    -- * Embed
    , Embed
    , embed
    , eURL
    , eType

    -- * People
    , People
    , people
    , peoTotalItems

    -- * Actor
    , Actor
    , actor
    , aImage
    , aURL
    , aName
    , aDisplayName
    , aId
    , aVerification

    -- * PlusDomainsPeopleListCollection
    , PlusDomainsPeopleListCollection (..)

    -- * Collection
    , Collection (..)

    -- * PlusDomainsACLentryResource
    , PlusDomainsACLentryResource
    , plusDomainsACLentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

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

    -- * ObjectActorImage
    , ObjectActorImage
    , objectActorImage
    , oaiURL

    -- * ActorName
    , ActorName
    , actorName
    , anGivenName
    , anFamilyName

    -- * ActorImage
    , ActorImage
    , actorImage
    , actURL

    -- * SortOrder
    , SortOrder (..)

    -- * Replies
    , Replies
    , replies
    , rTotalItems
    , rSelfLink

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

    -- * Name
    , Name
    , name
    , nGivenName
    , nMiddleName
    , nFormatted
    , nHonorificPrefix
    , nFamilyName
    , nHonorificSuffix

    -- * ObjectActorVerification
    , ObjectActorVerification
    , objectActorVerification
    , oavAdHocVerified

    -- * PlacesLivedItem
    , PlacesLivedItem
    , placesLivedItem
    , pliValue
    , pliPrimary

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

    -- * AttachmentsItem
    , AttachmentsItem
    , attachmentsItem
    , attFullImage
    , attImage
    , attObjectType
    , attPreviewThumbnails
    , attURL
    , attEmbed
    , attContent
    , attThumbnails
    , attDisplayName
    , attId

    -- * Exif
    , Exif
    , exif
    , eTime

    -- * Object
    , Object
    , object'
    , oPlusoners
    , oAttachments
    , oObjectType
    , oOriginalContent
    , oURL
    , oActor
    , oContent
    , oReplies
    , oId
    , oStatusForViewer
    , oResharers

    -- * PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- * URLsItem
    , URLsItem
    , urlsItem
    , uiValue
    , uiType
    , uiLabel

    -- * Author
    , Author
    , author
    , autImage
    , autURL
    , autDisplayName
    , autId

    -- * AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

    -- * StatusForViewer
    , StatusForViewer
    , statusForViewer
    , sfvCanComment
    , sfvResharingDisabled
    , sfvCanUpdate
    , sfvIsPlusOned
    , sfvCanPlusone

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

    -- * PreviewThumbnailsItem
    , PreviewThumbnailsItem
    , previewThumbnailsItem
    , ptiURL

    -- * Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- * InReplyToItem
    , InReplyToItem
    , inReplyToItem
    , irtiURL
    , irtiId

    -- * Resharers
    , Resharers
    , resharers
    , resTotalItems
    , resSelfLink

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

    -- * CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- * ACL
    , ACL
    , acl
    , aclcKind
    , aclcItems
    , aclcDomainRestricted
    , aclcDescription

    -- * ObjectActor
    , ObjectActor
    , objectActor
    , oaImage
    , oaURL
    , oaDisplayName
    , oaId
    , oaVerification

    -- * CoverPhoto
    , CoverPhoto
    , coverPhoto
    , cpHeight
    , cpURL
    , cpWidth

    -- * Provider
    , Provider
    , provider
    , pTitle

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

    -- * Position
    , Position
    , position
    , pLatitude
    , pLongitude

    -- * CommentActorVerification
    , CommentActorVerification
    , commentActorVerification
    , cavAdHocVerified

    -- * Verification
    , Verification
    , verification
    , vAdHocVerified
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
