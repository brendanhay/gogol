{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlusDomains
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google+ API enables developers to build on top of the Google+
-- platform.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference>
module Network.Google.PlusDomains
    (
    -- * API
      PlusDomainsAPI
    , plusDomainsAPI
    , plusDomainsURL

    -- * Service Methods

    -- * REST Resources

    -- ** PlusDomainsActivitiesGet
    , module Network.Google.Resource.PlusDomains.Activities.Get

    -- ** PlusDomainsActivitiesInsert
    , module Network.Google.Resource.PlusDomains.Activities.Insert

    -- ** PlusDomainsActivitiesList
    , module Network.Google.Resource.PlusDomains.Activities.List

    -- ** PlusDomainsAudiencesList
    , module Network.Google.Resource.PlusDomains.Audiences.List

    -- ** PlusDomainsCirclesAddPeople
    , module Network.Google.Resource.PlusDomains.Circles.AddPeople

    -- ** PlusDomainsCirclesGet
    , module Network.Google.Resource.PlusDomains.Circles.Get

    -- ** PlusDomainsCirclesInsert
    , module Network.Google.Resource.PlusDomains.Circles.Insert

    -- ** PlusDomainsCirclesList
    , module Network.Google.Resource.PlusDomains.Circles.List

    -- ** PlusDomainsCirclesPatch
    , module Network.Google.Resource.PlusDomains.Circles.Patch

    -- ** PlusDomainsCirclesRemove
    , module Network.Google.Resource.PlusDomains.Circles.Remove

    -- ** PlusDomainsCirclesRemovePeople
    , module Network.Google.Resource.PlusDomains.Circles.RemovePeople

    -- ** PlusDomainsCirclesUpdate
    , module Network.Google.Resource.PlusDomains.Circles.Update

    -- ** PlusDomainsCommentsGet
    , module Network.Google.Resource.PlusDomains.Comments.Get

    -- ** PlusDomainsCommentsInsert
    , module Network.Google.Resource.PlusDomains.Comments.Insert

    -- ** PlusDomainsCommentsList
    , module Network.Google.Resource.PlusDomains.Comments.List

    -- ** PlusDomainsMediaInsert
    , module Network.Google.Resource.PlusDomains.Media.Insert

    -- ** PlusDomainsPeopleGet
    , module Network.Google.Resource.PlusDomains.People.Get

    -- ** PlusDomainsPeopleList
    , module Network.Google.Resource.PlusDomains.People.List

    -- ** PlusDomainsPeopleListByActivity
    , module Network.Google.Resource.PlusDomains.People.ListByActivity

    -- ** PlusDomainsPeopleListByCircle
    , module Network.Google.Resource.PlusDomains.People.ListByCircle

    -- * Types

    -- ** CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cpTotalItems

    -- ** Audience
    , Audience
    , audience
    , aEtag
    , aKind
    , aVisibility
    , aItem
    , aMemberCount

    -- ** FullImage
    , FullImage
    , fullImage
    , fiHeight
    , fiURL
    , fiWidth
    , fiType

    -- ** CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

    -- ** Plusoners
    , Plusoners
    , plusoners
    , pTotalItems
    , pSelfLink

    -- ** Image
    , Image
    , image
    , iURL
    , iIsDefault

    -- ** Circle
    , Circle
    , circle
    , cEtag
    , cKind
    , cPeople
    , cSelfLink
    , cDisplayName
    , cId
    , cDescription

    -- ** AuthorImage
    , AuthorImage
    , authorImage
    , aiURL

    -- ** ThumbnailsItem
    , ThumbnailsItem
    , thumbnailsItem
    , tiImage
    , tiURL
    , tiDescription

    -- ** EmailsItem
    , EmailsItem
    , emailsItem
    , eiValue
    , eiType

    -- ** Person
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

    -- ** Videostream
    , Videostream
    , videostream
    , vHeight
    , vURL
    , vWidth
    , vType

    -- ** OrderBy
    , OrderBy (..)

    -- ** Cover
    , Cover
    , cover
    , cLayout
    , cCoverInfo
    , cCoverPhoto

    -- ** OrganizationsItem
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

    -- ** ThumbnailsItemImage
    , ThumbnailsItemImage
    , thumbnailsItemImage
    , tiiHeight
    , tiiURL
    , tiiWidth
    , tiiType

    -- ** AttachmentsItemImage
    , AttachmentsItemImage
    , attachmentsItemImage
    , aiiHeight
    , aiiURL
    , aiiWidth
    , aiiType

    -- ** CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caURL
    , caDisplayName
    , caId
    , caVerification

    -- ** CircleFeed
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

    -- ** PlusDomainsPeopleListByActivityCollection
    , PlusDomainsPeopleListByActivityCollection (..)

    -- ** CoverInfo
    , CoverInfo
    , coverInfo
    , ciTopImageOffset
    , ciLeftImageOffset

    -- ** Embed
    , Embed
    , embed
    , eURL
    , eType

    -- ** People
    , People
    , people
    , peoTotalItems

    -- ** Actor
    , Actor
    , actor
    , aImage
    , aURL
    , aName
    , aDisplayName
    , aId
    , aVerification

    -- ** PlusDomainsPeopleListCollection
    , PlusDomainsPeopleListCollection (..)

    -- ** Collection
    , Collection (..)

    -- ** PlusDomainsACLentryResource
    , PlusDomainsACLentryResource
    , plusDomainsACLentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

    -- ** PeopleFeed
    , PeopleFeed
    , peopleFeed
    , pfTotalItems
    , pfEtag
    , pfNextPageToken
    , pfKind
    , pfItems
    , pfSelfLink
    , pfTitle

    -- ** ObjectActorImage
    , ObjectActorImage
    , objectActorImage
    , oaiURL

    -- ** ActorName
    , ActorName
    , actorName
    , anGivenName
    , anFamilyName

    -- ** ActorImage
    , ActorImage
    , actorImage
    , actURL

    -- ** SortOrder
    , SortOrder (..)

    -- ** Replies
    , Replies
    , replies
    , rTotalItems
    , rSelfLink

    -- ** PlusDomainsMediaInsertCollection
    , PlusDomainsMediaInsertCollection (..)

    -- ** Media
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

    -- ** Name
    , Name
    , name
    , nGivenName
    , nMiddleName
    , nFormatted
    , nHonorificPrefix
    , nFamilyName
    , nHonorificSuffix

    -- ** ObjectActorVerification
    , ObjectActorVerification
    , objectActorVerification
    , oavAdHocVerified

    -- ** PlacesLivedItem
    , PlacesLivedItem
    , placesLivedItem
    , pliValue
    , pliPrimary

    -- ** ActivityFeed
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

    -- ** AttachmentsItem
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

    -- ** Exif
    , Exif
    , exif
    , eTime

    -- ** Object
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

    -- ** PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- ** URLsItem
    , URLsItem
    , urlsItem
    , uiValue
    , uiType
    , uiLabel

    -- ** Author
    , Author
    , author
    , autImage
    , autURL
    , autDisplayName
    , autId

    -- ** AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

    -- ** StatusForViewer
    , StatusForViewer
    , statusForViewer
    , sfvCanComment
    , sfvResharingDisabled
    , sfvCanUpdate
    , sfvIsPlusOned
    , sfvCanPlusone

    -- ** Activity
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

    -- ** PreviewThumbnailsItem
    , PreviewThumbnailsItem
    , previewThumbnailsItem
    , ptiURL

    -- ** Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- ** InReplyToItem
    , InReplyToItem
    , inReplyToItem
    , irtiURL
    , irtiId

    -- ** Resharers
    , Resharers
    , resharers
    , resTotalItems
    , resSelfLink

    -- ** Comment
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

    -- ** CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- ** ACL
    , ACL
    , acl
    , aclcKind
    , aclcItems
    , aclcDomainRestricted
    , aclcDescription

    -- ** ObjectActor
    , ObjectActor
    , objectActor
    , oaImage
    , oaURL
    , oaDisplayName
    , oaId
    , oaVerification

    -- ** CoverPhoto
    , CoverPhoto
    , coverPhoto
    , cpHeight
    , cpURL
    , cpWidth

    -- ** Provider
    , Provider
    , provider
    , pTitle

    -- ** CommentFeed
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

    -- ** Position
    , Position
    , position
    , pLatitude
    , pLongitude

    -- ** CommentActorVerification
    , CommentActorVerification
    , commentActorVerification
    , cavAdHocVerified

    -- ** Verification
    , Verification
    , verification
    , vAdHocVerified
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude
import           Network.Google.Resource.PlusDomains.Activities.Get
import           Network.Google.Resource.PlusDomains.Activities.Insert
import           Network.Google.Resource.PlusDomains.Activities.List
import           Network.Google.Resource.PlusDomains.Audiences.List
import           Network.Google.Resource.PlusDomains.Circles.AddPeople
import           Network.Google.Resource.PlusDomains.Circles.Get
import           Network.Google.Resource.PlusDomains.Circles.Insert
import           Network.Google.Resource.PlusDomains.Circles.List
import           Network.Google.Resource.PlusDomains.Circles.Patch
import           Network.Google.Resource.PlusDomains.Circles.Remove
import           Network.Google.Resource.PlusDomains.Circles.RemovePeople
import           Network.Google.Resource.PlusDomains.Circles.Update
import           Network.Google.Resource.PlusDomains.Comments.Get
import           Network.Google.Resource.PlusDomains.Comments.Insert
import           Network.Google.Resource.PlusDomains.Comments.List
import           Network.Google.Resource.PlusDomains.Media.Insert
import           Network.Google.Resource.PlusDomains.People.Get
import           Network.Google.Resource.PlusDomains.People.List
import           Network.Google.Resource.PlusDomains.People.ListByActivity
import           Network.Google.Resource.PlusDomains.People.ListByCircle

{- $resources
TODO
-}

type PlusDomainsAPI =
     ActivitiesInsertResource :<|> ActivitiesListResource
       :<|> ActivitiesGetResource
       :<|> PeopleListResource
       :<|> PeopleListByCircleResource
       :<|> PeopleGetResource
       :<|> PeopleListByActivityResource
       :<|> MediaInsertResource
       :<|> AudiencesListResource
       :<|> CommentsInsertResource
       :<|> CommentsListResource
       :<|> CommentsGetResource
       :<|> CirclesInsertResource
       :<|> CirclesAddPeopleResource
       :<|> CirclesListResource
       :<|> CirclesPatchResource
       :<|> CirclesGetResource
       :<|> CirclesRemoveResource
       :<|> CirclesRemovePeopleResource
       :<|> CirclesUpdateResource

plusDomainsAPI :: Proxy PlusDomainsAPI
plusDomainsAPI = Proxy
