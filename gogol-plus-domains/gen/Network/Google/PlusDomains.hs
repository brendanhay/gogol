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
    , module PlusDomains.Activities.Get

    -- ** PlusDomainsActivitiesInsert
    , module PlusDomains.Activities.Insert

    -- ** PlusDomainsActivitiesList
    , module PlusDomains.Activities.List

    -- ** PlusDomainsAudiencesList
    , module PlusDomains.Audiences.List

    -- ** PlusDomainsCirclesAddPeople
    , module PlusDomains.Circles.AddPeople

    -- ** PlusDomainsCirclesGet
    , module PlusDomains.Circles.Get

    -- ** PlusDomainsCirclesInsert
    , module PlusDomains.Circles.Insert

    -- ** PlusDomainsCirclesList
    , module PlusDomains.Circles.List

    -- ** PlusDomainsCirclesPatch
    , module PlusDomains.Circles.Patch

    -- ** PlusDomainsCirclesRemove
    , module PlusDomains.Circles.Remove

    -- ** PlusDomainsCirclesRemovePeople
    , module PlusDomains.Circles.RemovePeople

    -- ** PlusDomainsCirclesUpdate
    , module PlusDomains.Circles.Update

    -- ** PlusDomainsCommentsGet
    , module PlusDomains.Comments.Get

    -- ** PlusDomainsCommentsInsert
    , module PlusDomains.Comments.Insert

    -- ** PlusDomainsCommentsList
    , module PlusDomains.Comments.List

    -- ** PlusDomainsMediaInsert
    , module PlusDomains.Media.Insert

    -- ** PlusDomainsPeopleGet
    , module PlusDomains.People.Get

    -- ** PlusDomainsPeopleList
    , module PlusDomains.People.List

    -- ** PlusDomainsPeopleListByActivity
    , module PlusDomains.People.ListByActivity

    -- ** PlusDomainsPeopleListByCircle
    , module PlusDomains.People.ListByCircle

    -- * Types

    -- ** Audience
    , Audience
    , audience
    , aEtag
    , aKind
    , aVisibility
    , aItem
    , aMemberCount

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

    -- ** Videostream
    , Videostream
    , videostream
    , vHeight
    , vUrl
    , vWidth
    , vType

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
    , actAccess
    , actPlaceName
    , actEtag
    , actAnnotation
    , actLocation
    , actGeocode
    , actKind
    , actRadius
    , actPublished
    , actUrl
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

    -- ** Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

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

    -- ** ACL
    , ACL
    , aCL
    , aclKind
    , aclItems
    , aclDomainRestricted
    , aclDescription

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
     Activities :<|> People :<|> Media :<|> Audiences :<|>
       Comments
       :<|> Circles

plusDomainsAPI :: Proxy PlusDomainsAPI
plusDomainsAPI = Proxy
