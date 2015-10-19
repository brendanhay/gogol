{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      plusDomainsService

    -- * OAuth Scopes
    , userinfoProfileScope
    , plusLoginScope
    , plusProfilesReadScope
    , userinfoEmailScope
    , plusStreamWriteScope
    , plusStreamReadScope
    , plusMeScope
    , plusCirclesReadScope
    , plusMediaUploadScope
    , plusCirclesWriteScope

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

    -- * ActivityActorClientSpecificActorInfo
    , ActivityActorClientSpecificActorInfo
    , activityActorClientSpecificActorInfo
    , aacsaiYouTubeActorInfo

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

    -- * MediaInsertCollection
    , MediaInsertCollection (..)

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
    , aoStatusForViewer
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

    -- * MediaAuthorImage
    , MediaAuthorImage
    , mediaAuthorImage
    , maiURL

    -- * PeopleListByActivityCollection
    , PeopleListByActivityCollection (..)

    -- * CirclePeople
    , CirclePeople
    , circlePeople
    , cTotalItems

    -- * PlusDomainsACLentryResource
    , PlusDomainsACLentryResource
    , plusDomainsACLentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

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

    -- * MediaAuthor
    , MediaAuthor
    , mediaAuthor
    , maImage
    , maURL
    , maDisplayName
    , maId

    -- * ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , aoaiURL

    -- * CommentActorClientSpecificActorInfoYouTubeActorInfo
    , CommentActorClientSpecificActorInfoYouTubeActorInfo
    , commentActorClientSpecificActorInfoYouTubeActorInfo
    , cacsaiytaiChannelId

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

    -- * PeopleListOrderBy
    , PeopleListOrderBy (..)

    -- * ActivityObjectReplies
    , ActivityObjectReplies
    , activityObjectReplies
    , aorTotalItems
    , aorSelfLink

    -- * ActivitiesListCollection
    , ActivitiesListCollection (..)

    -- * ActivityObjectAttachmentsItemPreviewThumbnailsItem
    , ActivityObjectAttachmentsItemPreviewThumbnailsItem
    , activityObjectAttachmentsItemPreviewThumbnailsItem
    , aoaiptiURL

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
    , aPreviewThumbnails
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

    -- * ActivityObjectStatusForViewer
    , ActivityObjectStatusForViewer
    , activityObjectStatusForViewer
    , aosfvCanComment
    , aosfvResharingDisabled
    , aosfvCanUpdate
    , aosfvIsPlusOned
    , aosfvCanPlusone

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

    -- * AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

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
    , aclcKind
    , aclcItems
    , aclcDomainRestricted
    , aclcDescription

    -- * MediaExif
    , MediaExif
    , mediaExif
    , meTime

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

-- | Default request referring to version 'v1' of the Google+ Domains API. This contains the host and root path used as a starting point for constructing service requests.
plusDomainsService :: Service
plusDomainsService
  = defaultService (ServiceId "plusDomains:v1")
      "www.googleapis.com"
      "plusDomains/v1/"

-- | View your basic profile info
userinfoProfileScope :: OAuthScope
userinfoProfileScope = "https://www.googleapis.com/auth/userinfo.profile";

-- | Know your basic profile info and list of people in your circles.
plusLoginScope :: OAuthScope
plusLoginScope = "https://www.googleapis.com/auth/plus.login";

-- | View your own Google+ profile and profiles visible to you
plusProfilesReadScope :: OAuthScope
plusProfilesReadScope = "https://www.googleapis.com/auth/plus.profiles.read";

-- | View your email address
userinfoEmailScope :: OAuthScope
userinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";

-- | Manage your Google+ posts, comments, and stream
plusStreamWriteScope :: OAuthScope
plusStreamWriteScope = "https://www.googleapis.com/auth/plus.stream.write";

-- | View your Google+ posts, comments, and stream
plusStreamReadScope :: OAuthScope
plusStreamReadScope = "https://www.googleapis.com/auth/plus.stream.read";

-- | Know who you are on Google
plusMeScope :: OAuthScope
plusMeScope = "https://www.googleapis.com/auth/plus.me";

-- | View your circles and the people and pages in them
plusCirclesReadScope :: OAuthScope
plusCirclesReadScope = "https://www.googleapis.com/auth/plus.circles.read";

-- | Send your photos and videos to Google+
plusMediaUploadScope :: OAuthScope
plusMediaUploadScope = "https://www.googleapis.com/auth/plus.media.upload";

-- | Manage your circles and add people and pages. People and pages you add
-- to your circles will be notified. Others may see this information
-- publicly. People you add to circles can use Hangouts with you.
plusCirclesWriteScope :: OAuthScope
plusCirclesWriteScope = "https://www.googleapis.com/auth/plus.circles.write";
