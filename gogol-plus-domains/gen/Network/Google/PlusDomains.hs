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
-- -- | The Google+ API enables developers to build on top of the Google+
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

    -- ** ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- ** ActivityObjectAttachmentsPreviewThumbnails
    , ActivityObjectAttachmentsPreviewThumbnails
    , activityObjectAttachmentsPreviewThumbnails
    , aoaptURL

    -- ** CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

    -- ** ActivityObjectPlusoners
    , ActivityObjectPlusoners
    , activityObjectPlusoners
    , aopTotalItems
    , aopSelfLink

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

    -- ** ActivityObjectAttachments
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

    -- ** ActivityObjectAttachmentsThumbnailsImage
    , ActivityObjectAttachmentsThumbnailsImage
    , activityObjectAttachmentsThumbnailsImage
    , aoatiHeight
    , aoatiURL
    , aoatiWidth
    , aoatiType

    -- ** PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- ** PersonURLs
    , PersonURLs
    , personURLs
    , puValue
    , puType
    , puLabel

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

    -- ** PlusDomainsPeopleListOrderBy
    , PlusDomainsPeopleListOrderBy (..)

    -- ** CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtURL
    , cirtId

    -- ** PersonOrganizations
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

    -- ** ActivityObjectAttachmentsImage
    , ActivityObjectAttachmentsImage
    , activityObjectAttachmentsImage
    , aoaiHeight
    , aoaiURL
    , aoaiWidth
    , aoaiType

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

    -- ** ActivityObject
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

    -- ** PlusDomainsPeopleListByActivityCollection
    , PlusDomainsPeopleListByActivityCollection (..)

    -- ** ActivityObjectActor
    , ActivityObjectActor
    , activityObjectActor
    , aImage
    , aURL
    , aDisplayName
    , aId
    , aVerification

    -- ** PlusDomainsActivitiesListCollection
    , PlusDomainsActivitiesListCollection (..)

    -- ** PlusDomainsPeopleListCollection
    , PlusDomainsPeopleListCollection (..)

    -- ** MediaAuthorImage
    , MediaAuthorImage
    , mediaAuthorImage
    , maiURL

    -- ** ActivityActorImage
    , ActivityActorImage
    , activityActorImage
    , aaiURL

    -- ** PlusDomainsACLentryResource
    , PlusDomainsACLentryResource
    , plusDomainsACLentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

    -- ** MediaAuthor
    , MediaAuthor
    , mediaAuthor
    , maImage
    , maURL
    , maDisplayName
    , maId

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

    -- ** ActivityObjectAttachmentsEmbed
    , ActivityObjectAttachmentsEmbed
    , activityObjectAttachmentsEmbed
    , aoaeURL
    , aoaeType

    -- ** PersonCoverCoverPhoto
    , PersonCoverCoverPhoto
    , personCoverCoverPhoto
    , pccpHeight
    , pccpURL
    , pccpWidth

    -- ** CirclePeople
    , CirclePeople
    , circlePeople
    , cTotalItems

    -- ** ActivityObjectReplies
    , ActivityObjectReplies
    , activityObjectReplies
    , aorTotalItems
    , aorSelfLink

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

    -- ** ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , actURL

    -- ** ActivityActorVerification
    , ActivityActorVerification
    , activityActorVerification
    , aavAdHocVerified

    -- ** PlusDomainsCommentsListSortOrder
    , PlusDomainsCommentsListSortOrder (..)

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

    -- ** PersonPlacesLived
    , PersonPlacesLived
    , personPlacesLived
    , pplValue
    , pplPrimary

    -- ** ActivityObjectActorVerification
    , ActivityObjectActorVerification
    , activityObjectActorVerification
    , aoavAdHocVerified

    -- ** PersonEmails
    , PersonEmails
    , personEmails
    , peValue
    , peType

    -- ** PersonImage
    , PersonImage
    , personImage
    , piURL
    , piIsDefault

    -- ** PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- ** PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- ** ActivityObjectAttachmentsThumbnails
    , ActivityObjectAttachmentsThumbnails
    , activityObjectAttachmentsThumbnails
    , aoatImage
    , aoatURL
    , aoatDescription

    -- ** ActivityObjectStatusForViewer
    , ActivityObjectStatusForViewer
    , activityObjectStatusForViewer
    , aosfvCanComment
    , aosfvResharingDisabled
    , aosfvCanUpdate
    , aosfvIsPlusOned
    , aosfvCanPlusone

    -- ** AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

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

    -- ** PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- ** Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- ** PersonCoverCoverInfo
    , PersonCoverCoverInfo
    , personCoverCoverInfo
    , pcciTopImageOffset
    , pcciLeftImageOffset

    -- ** ActivityObjectResharers
    , ActivityObjectResharers
    , activityObjectResharers
    , aTotalItems
    , aSelfLink

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

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaaImage
    , aaaURL
    , aaaName
    , aaaDisplayName
    , aaaId
    , aaaVerification

    -- ** CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- ** ActivityObjectAttachmentsFullImage
    , ActivityObjectAttachmentsFullImage
    , activityObjectAttachmentsFullImage
    , aoafiHeight
    , aoafiURL
    , aoafiWidth
    , aoafiType

    -- ** ACL
    , ACL
    , aCL
    , aclKind
    , aclItems
    , aclDomainRestricted
    , aclDescription

    -- ** MediaExif
    , MediaExif
    , mediaExif
    , meTime

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

    -- ** CommentActorVerification
    , CommentActorVerification
    , commentActorVerification
    , cavAdHocVerified

    -- ** ActivityActorName
    , ActivityActorName
    , activityActorName
    , aanGivenName
    , aanFamilyName
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
