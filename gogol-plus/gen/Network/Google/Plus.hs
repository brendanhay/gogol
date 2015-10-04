{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Plus
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google+ API enables developers to build on top of the Google+
-- platform.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference>
module Network.Google.Plus
    (
    -- * API
      PlusAPI
    , plusAPI
    , plusURL

    -- * Service Methods

    -- * REST Resources

    -- ** PlusActivitiesGet
    , module Network.Google.Resource.Plus.Activities.Get

    -- ** PlusActivitiesList
    , module Network.Google.Resource.Plus.Activities.List

    -- ** PlusActivitiesSearch
    , module Network.Google.Resource.Plus.Activities.Search

    -- ** PlusCommentsGet
    , module Network.Google.Resource.Plus.Comments.Get

    -- ** PlusCommentsList
    , module Network.Google.Resource.Plus.Comments.List

    -- ** PlusMomentsInsert
    , module Network.Google.Resource.Plus.Moments.Insert

    -- ** PlusMomentsList
    , module Network.Google.Resource.Plus.Moments.List

    -- ** PlusPeopleGet
    , module Network.Google.Resource.Plus.People.Get

    -- ** PlusPeopleList
    , module Network.Google.Resource.Plus.People.List

    -- ** PlusPeopleListByActivity
    , module Network.Google.Resource.Plus.People.ListByActivity

    -- ** PlusPeopleSearch
    , module Network.Google.Resource.Plus.People.Search

    -- * Types

    -- ** CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cpTotalItems

    -- ** AgeRange
    , AgeRange
    , ageRange
    , arMax
    , arMin

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

    -- ** OrderBy
    , OrderBy (..)

    -- ** Cover
    , Cover
    , cover
    , cLayout
    , cCoverInfo
    , cCoverPhoto

    -- ** PlusPeopleListCollection
    , PlusPeopleListCollection (..)

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

    -- ** Moment
    , Moment
    , moment
    , mKind
    , mResult
    , mStartDate
    , mObject
    , mId
    , mType
    , mTarget

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
    , aoResharers

    -- ** ActivityObjectActor
    , ActivityObjectActor
    , activityObjectActor
    , aoaImage
    , aoaURL
    , aoaDisplayName
    , aoaId
    , aoaVerification

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

    -- ** Actor
    , Actor
    , actor
    , aImage
    , aURL
    , aName
    , aDisplayName
    , aId
    , aVerification

    -- ** Collection
    , Collection (..)

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

    -- ** ActorName
    , ActorName
    , actorName
    , anGivenName
    , anFamilyName

    -- ** ActorImage
    , ActorImage
    , actorImage
    , aiURL

    -- ** SortOrder
    , SortOrder (..)

    -- ** Replies
    , Replies
    , replies
    , rTotalItems
    , rSelfLink

    -- ** ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , aoaiURL

    -- ** Name
    , Name
    , name
    , nGivenName
    , nMiddleName
    , nFormatted
    , nHonorificPrefix
    , nFamilyName
    , nHonorificSuffix

    -- ** ItemScope
    , ItemScope
    , itemScope
    , isGivenName
    , isContentSize
    , isThumbnail
    , isTickerSymbol
    , isHeight
    , isThumbnailURL
    , isImage
    , isStreetAddress
    , isWorstRating
    , isLocation
    , isAttendees
    , isText
    , isKind
    , isLatitude
    , isPostalCode
    , isEndDate
    , isAssociatedMedia
    , isPlayerType
    , isURL
    , isWidth
    , isCaption
    , isAddress
    , isAddressCountry
    , isPostOfficeBoxNumber
    , isAdditionalName
    , isFamilyName
    , isDateCreated
    , isRatingValue
    , isDatePublished
    , isStartDate
    , isGender
    , isName
    , isBestRating
    , isAddressLocality
    , isPartOfTVSeries
    , isContentURL
    , isByArtist
    , isAbout
    , isReviewRating
    , isDateModified
    , isAuthor
    , isGeo
    , isId
    , isPerformers
    , isAttendeeCount
    , isInAlbum
    , isEmbedURL
    , isType
    , isContributor
    , isLongitude
    , isDuration
    , isAddressRegion
    , isAudio
    , isDescription
    , isBirthDate

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
    , attURL
    , attEmbed
    , attContent
    , attThumbnails
    , attDisplayName
    , attId

    -- ** ActivityObjectActorVerification
    , ActivityObjectActorVerification
    , activityObjectActorVerification
    , aoavAdHocVerified

    -- ** PlusACLentryResource
    , PlusACLentryResource
    , plusACLentryResource
    , parDisplayName
    , parId
    , parType

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

    -- ** PlusMomentsListCollection
    , PlusMomentsListCollection (..)

    -- ** Activity
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

    -- ** PlusMomentsInsertCollection
    , PlusMomentsInsertCollection (..)

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

    -- ** PlusPeopleListByActivityCollection
    , PlusPeopleListByActivityCollection (..)

    -- ** Comment
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

    -- ** CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- ** PlusPeopleListOrderBy
    , PlusPeopleListOrderBy (..)

    -- ** ACL
    , ACL
    , acl
    , aKind
    , aItems
    , aDescription

    -- ** MomentsFeed
    , MomentsFeed
    , momentsFeed
    , mfEtag
    , mfNextPageToken
    , mfNextLink
    , mfKind
    , mfItems
    , mfSelfLink
    , mfUpdated
    , mfTitle

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
    , cfEtag
    , cfNextPageToken
    , cfNextLink
    , cfKind
    , cfItems
    , cfId
    , cfUpdated
    , cfTitle

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

import           Network.Google.Plus.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Plus.Activities.Get
import           Network.Google.Resource.Plus.Activities.List
import           Network.Google.Resource.Plus.Activities.Search
import           Network.Google.Resource.Plus.Comments.Get
import           Network.Google.Resource.Plus.Comments.List
import           Network.Google.Resource.Plus.Moments.Insert
import           Network.Google.Resource.Plus.Moments.List
import           Network.Google.Resource.Plus.People.Get
import           Network.Google.Resource.Plus.People.List
import           Network.Google.Resource.Plus.People.ListByActivity
import           Network.Google.Resource.Plus.People.Search

{- $resources
TODO
-}

type PlusAPI =
     ActivitiesListResource :<|> ActivitiesGetResource
       :<|> ActivitiesSearchResource
       :<|> PeopleListResource
       :<|> PeopleGetResource
       :<|> PeopleListByActivityResource
       :<|> PeopleSearchResource
       :<|> CommentsListResource
       :<|> CommentsGetResource
       :<|> MomentsInsertResource
       :<|> MomentsListResource

plusAPI :: Proxy PlusAPI
plusAPI = Proxy
