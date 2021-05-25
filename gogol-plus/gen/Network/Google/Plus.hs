{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Plus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Builds on top of the Google+ platform.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference>
module Network.Google.Plus
    (
    -- * Service Configuration
      plusService

    -- * OAuth Scopes
    , userInfoProFileScope
    , plusLoginScope
    , userInfoEmailScope
    , plusMeScope

    -- * API Declaration
    , PlusAPI

    -- * Resources

    -- ** plus.activities.get
    , module Network.Google.Resource.Plus.Activities.Get

    -- ** plus.activities.list
    , module Network.Google.Resource.Plus.Activities.List

    -- ** plus.activities.search
    , module Network.Google.Resource.Plus.Activities.Search

    -- ** plus.comments.get
    , module Network.Google.Resource.Plus.Comments.Get

    -- ** plus.comments.list
    , module Network.Google.Resource.Plus.Comments.List

    -- ** plus.people.get
    , module Network.Google.Resource.Plus.People.Get

    -- ** plus.people.list
    , module Network.Google.Resource.Plus.People.List

    -- ** plus.people.listByActivity
    , module Network.Google.Resource.Plus.People.ListByActivity

    -- ** plus.people.search
    , module Network.Google.Resource.Plus.People.Search

    -- * Types

    -- ** ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- ** ActivityObjectAttachmentsItemEmbed
    , ActivityObjectAttachmentsItemEmbed
    , activityObjectAttachmentsItemEmbed
    , aoaieURL
    , aoaieType

    -- ** CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cpTotalItems

    -- ** CommentActorClientSpecificActorInfo
    , CommentActorClientSpecificActorInfo
    , commentActorClientSpecificActorInfo
    , cacsaiYouTubeActorInfo

    -- ** ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
    , ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
    , activityObjectActorClientSpecificActorInfoYouTubeActorInfo
    , aoacsaiytaiChannelId

    -- ** ActivityObjectPlusoners
    , ActivityObjectPlusoners
    , activityObjectPlusoners
    , aopTotalItems
    , aopSelfLink

    -- ** PersonEmailsItem
    , PersonEmailsItem
    , personEmailsItem
    , peiValue
    , peiType

    -- ** CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

    -- ** ActivityObjectAttachmentsItemThumbnailsItemImage
    , ActivityObjectAttachmentsItemThumbnailsItemImage
    , activityObjectAttachmentsItemThumbnailsItemImage
    , aoaitiiHeight
    , aoaitiiURL
    , aoaitiiWidth
    , aoaitiiType

    -- ** PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- ** PersonPlacesLivedItem
    , PersonPlacesLivedItem
    , personPlacesLivedItem
    , ppliValue
    , ppliPrimary

    -- ** ActivityActorClientSpecificActorInfo
    , ActivityActorClientSpecificActorInfo
    , activityActorClientSpecificActorInfo
    , aacsaiYouTubeActorInfo

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

    -- ** ActivityObjectAttachmentsItemImage
    , ActivityObjectAttachmentsItemImage
    , activityObjectAttachmentsItemImage
    , aoaiiHeight
    , aoaiiURL
    , aoaiiWidth
    , aoaiiType

    -- ** CommentActor
    , CommentActor
    , commentActor
    , caClientSpecificActorInfo
    , caImage
    , caURL
    , caDisplayName
    , caId
    , caVerification

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
    , aoaClientSpecificActorInfo
    , aoaImage
    , aoaURL
    , aoaDisplayName
    , aoaId
    , aoaVerification

    -- ** ActivityObjectAttachmentsItemFullImage
    , ActivityObjectAttachmentsItemFullImage
    , activityObjectAttachmentsItemFullImage
    , aoaifiHeight
    , aoaifiURL
    , aoaifiWidth
    , aoaifiType

    -- ** PeopleListByActivityCollection
    , PeopleListByActivityCollection (..)

    -- ** ActivityActorImage
    , ActivityActorImage
    , activityActorImage
    , aaiURL

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

    -- ** PersonCoverCoverPhoto
    , PersonCoverCoverPhoto
    , personCoverCoverPhoto
    , pccpHeight
    , pccpURL
    , pccpWidth

    -- ** PersonAgeRange
    , PersonAgeRange
    , personAgeRange
    , parMax
    , parMin

    -- ** ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , aoaiURL

    -- ** CommentActorClientSpecificActorInfoYouTubeActorInfo
    , CommentActorClientSpecificActorInfoYouTubeActorInfo
    , commentActorClientSpecificActorInfoYouTubeActorInfo
    , cacsaiytaiChannelId

    -- ** PeopleListOrderBy
    , PeopleListOrderBy (..)

    -- ** ActivityObjectReplies
    , ActivityObjectReplies
    , activityObjectReplies
    , aorTotalItems
    , aorSelfLink

    -- ** ActivitiesListCollection
    , ActivitiesListCollection (..)

    -- ** ActivityActorVerification
    , ActivityActorVerification
    , activityActorVerification
    , aavAdHocVerified

    -- ** ActivityObjectActorClientSpecificActorInfo
    , ActivityObjectActorClientSpecificActorInfo
    , activityObjectActorClientSpecificActorInfo
    , aoacsaiYouTubeActorInfo

    -- ** PeopleListCollection
    , PeopleListCollection (..)

    -- ** ActivityObjectAttachmentsItem
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

    -- ** ActivityObjectActorVerification
    , ActivityObjectActorVerification
    , activityObjectActorVerification
    , aoavAdHocVerified

    -- ** PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- ** PersonImage
    , PersonImage
    , personImage
    , piURL
    , piIsDefault

    -- ** ActivityActorClientSpecificActorInfoYouTubeActorInfo
    , ActivityActorClientSpecificActorInfoYouTubeActorInfo
    , activityActorClientSpecificActorInfoYouTubeActorInfo
    , aacsaiytaiChannelId

    -- ** PlusACLentryResource
    , PlusACLentryResource
    , plusACLentryResource
    , parDisplayName
    , parId
    , parType

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

    -- ** PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- ** ActivityObjectAttachmentsItemThumbnailsItem
    , ActivityObjectAttachmentsItemThumbnailsItem
    , activityObjectAttachmentsItemThumbnailsItem
    , aoaitiImage
    , aoaitiURL
    , aoaitiDescription

    -- ** PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- ** CommentInReplyToItem
    , CommentInReplyToItem
    , commentInReplyToItem
    , cirtiURL
    , cirtiId

    -- ** PersonOrganizationsItem
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

    -- ** PersonURLsItem
    , PersonURLsItem
    , personURLsItem
    , puiValue
    , puiType
    , puiLabel

    -- ** ActivitiesSearchOrderBy
    , ActivitiesSearchOrderBy (..)

    -- ** PersonCoverCoverInfo
    , PersonCoverCoverInfo
    , personCoverCoverInfo
    , pcciTopImageOffSet
    , pcciLeftImageOffSet

    -- ** ActivityObjectResharers
    , ActivityObjectResharers
    , activityObjectResharers
    , aTotalItems
    , aSelfLink

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

    -- ** Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- ** ACL
    , ACL
    , acl
    , aKind
    , aItems
    , aDescription

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaClientSpecificActorInfo
    , aaImage
    , aaURL
    , aaName
    , aaDisplayName
    , aaId
    , aaVerification

    -- ** CommentsListSortOrder
    , CommentsListSortOrder (..)

    -- ** CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

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

import Network.Google.Prelude
import Network.Google.Plus.Types
import Network.Google.Resource.Plus.Activities.Get
import Network.Google.Resource.Plus.Activities.List
import Network.Google.Resource.Plus.Activities.Search
import Network.Google.Resource.Plus.Comments.Get
import Network.Google.Resource.Plus.Comments.List
import Network.Google.Resource.Plus.People.Get
import Network.Google.Resource.Plus.People.List
import Network.Google.Resource.Plus.People.ListByActivity
import Network.Google.Resource.Plus.People.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google+ API service.
type PlusAPI =
     ActivitiesListResource :<|> ActivitiesGetResource
       :<|> ActivitiesSearchResource
       :<|> PeopleListResource
       :<|> PeopleGetResource
       :<|> PeopleListByActivityResource
       :<|> PeopleSearchResource
       :<|> CommentsListResource
       :<|> CommentsGetResource
