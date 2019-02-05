{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PhotosLibrary
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manage photos, videos, and albums in Google Photos
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference>
module Network.Google.PhotosLibrary
    (
    -- * Service Configuration
      photosLibraryService

    -- * OAuth Scopes
    , photosLibraryReadOnlyScope
    , photosLibraryScope
    , drivePhotosReadOnlyScope
    , photosLibrarySharingScope
    , photosLibraryAppendOnlyScope
    , photosLibraryReadOnlyAppcreatedDataScope

    -- * API Declaration
    , PhotosLibraryAPI

    -- * Resources

    -- ** photoslibrary.albums.addEnrichment
    , module Network.Google.Resource.PhotosLibrary.Albums.AddEnrichment

    -- ** photoslibrary.albums.create
    , module Network.Google.Resource.PhotosLibrary.Albums.Create

    -- ** photoslibrary.albums.get
    , module Network.Google.Resource.PhotosLibrary.Albums.Get

    -- ** photoslibrary.albums.list
    , module Network.Google.Resource.PhotosLibrary.Albums.List

    -- ** photoslibrary.albums.share
    , module Network.Google.Resource.PhotosLibrary.Albums.Share

    -- ** photoslibrary.mediaItems.batchCreate
    , module Network.Google.Resource.PhotosLibrary.MediaItems.BatchCreate

    -- ** photoslibrary.mediaItems.get
    , module Network.Google.Resource.PhotosLibrary.MediaItems.Get

    -- ** photoslibrary.mediaItems.search
    , module Network.Google.Resource.PhotosLibrary.MediaItems.Search

    -- ** photoslibrary.sharedAlbums.join
    , module Network.Google.Resource.PhotosLibrary.SharedAlbums.Join

    -- ** photoslibrary.sharedAlbums.list
    , module Network.Google.Resource.PhotosLibrary.SharedAlbums.List

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** LocationEnrichment
    , LocationEnrichment
    , locationEnrichment
    , leLocation

    -- ** DateFilter
    , DateFilter
    , dateFilter
    , dfDates
    , dfRanges

    -- ** Photo
    , Photo
    , photo
    , pFocalLength
    , pCameraMake
    , pExposureTime
    , pCameraModel
    , pIsoEquivalent
    , pApertureFNumber

    -- ** TextEnrichment
    , TextEnrichment
    , textEnrichment
    , teText

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** AddEnrichmentToAlbumResponse
    , AddEnrichmentToAlbumResponse
    , addEnrichmentToAlbumResponse
    , aetarEnrichmentItem

    -- ** SearchMediaItemsResponse
    , SearchMediaItemsResponse
    , searchMediaItemsResponse
    , smirNextPageToken
    , smirMediaItems

    -- ** JoinSharedAlbumResponse
    , JoinSharedAlbumResponse
    , joinSharedAlbumResponse

    -- ** CreateAlbumRequest
    , CreateAlbumRequest
    , createAlbumRequest
    , carAlbum

    -- ** Location
    , Location
    , location
    , lLatlng
    , lLocationName

    -- ** VideoStatus
    , VideoStatus (..)

    -- ** NewEnrichmentItem
    , NewEnrichmentItem
    , newEnrichmentItem
    , neiLocationEnrichment
    , neiTextEnrichment
    , neiMapEnrichment

    -- ** ShareInfo
    , ShareInfo
    , shareInfo
    , siShareableURL
    , siShareToken
    , siSharedAlbumOptions

    -- ** BatchCreateMediaItemsRequest
    , BatchCreateMediaItemsRequest
    , batchCreateMediaItemsRequest
    , bcmirAlbumId
    , bcmirNewMediaItems
    , bcmirAlbumPosition

    -- ** Filters
    , Filters
    , filters
    , fDateFilter
    , fIncludeArchivedMedia
    , fMediaTypeFilter
    , fContentFilter

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** DateRange
    , DateRange
    , dateRange
    , drEndDate
    , drStartDate

    -- ** SharedAlbumOptions
    , SharedAlbumOptions
    , sharedAlbumOptions
    , saoIsCollaborative
    , saoIsCommentable

    -- ** MediaMetadata
    , MediaMetadata
    , mediaMetadata
    , mmCreationTime
    , mmPhoto
    , mmHeight
    , mmWidth
    , mmVideo

    -- ** ShareAlbumResponse
    , ShareAlbumResponse
    , shareAlbumResponse
    , sarShareInfo

    -- ** Video
    , Video
    , video
    , vStatus
    , vCameraMake
    , vCameraModel
    , vFps

    -- ** MediaItem
    , MediaItem
    , mediaItem
    , miProductURL
    , miBaseURL
    , miMediaMetadata
    , miMimeType
    , miId
    , miContributorInfo
    , miDescription

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** EnrichmentItem
    , EnrichmentItem
    , enrichmentItem
    , eiId

    -- ** ListSharedAlbumsResponse
    , ListSharedAlbumsResponse
    , listSharedAlbumsResponse
    , lsarNextPageToken
    , lsarSharedAlbums

    -- ** MediaTypeFilter
    , MediaTypeFilter
    , mediaTypeFilter
    , mtfMediaTypes

    -- ** NewMediaItemResult
    , NewMediaItemResult
    , newMediaItemResult
    , nmirStatus
    , nmirUploadToken
    , nmirMediaItem

    -- ** Album
    , Album
    , album
    , aIsWriteable
    , aProductURL
    , aShareInfo
    , aCoverPhotoBaseURL
    , aId
    , aTotalMediaItems
    , aTitle

    -- ** SimpleMediaItem
    , SimpleMediaItem
    , simpleMediaItem
    , smiUploadToken

    -- ** AlbumPositionPosition
    , AlbumPositionPosition (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** ContributorInfo
    , ContributorInfo
    , contributorInfo
    , ciProFilePictureBaseURL
    , ciDisplayName

    -- ** ListAlbumsResponse
    , ListAlbumsResponse
    , listAlbumsResponse
    , larNextPageToken
    , larAlbums

    -- ** MapEnrichment
    , MapEnrichment
    , mapEnrichment
    , meDestination
    , meOrigin

    -- ** SearchMediaItemsRequest
    , SearchMediaItemsRequest
    , searchMediaItemsRequest
    , smirAlbumId
    , smirFilters
    , smirPageToken
    , smirPageSize

    -- ** NewMediaItem
    , NewMediaItem
    , newMediaItem
    , nmiSimpleMediaItem
    , nmiDescription

    -- ** AddEnrichmentToAlbumRequest
    , AddEnrichmentToAlbumRequest
    , addEnrichmentToAlbumRequest
    , aetarNewEnrichmentItem
    , aetarAlbumPosition

    -- ** JoinSharedAlbumRequest
    , JoinSharedAlbumRequest
    , joinSharedAlbumRequest
    , jsarShareToken

    -- ** ShareAlbumRequest
    , ShareAlbumRequest
    , shareAlbumRequest
    , sarSharedAlbumOptions

    -- ** AlbumPosition
    , AlbumPosition
    , albumPosition
    , apRelativeMediaItemId
    , apRelativeEnrichmentItemId
    , apPosition

    -- ** ContentFilter
    , ContentFilter
    , contentFilter
    , cfIncludedContentCategories
    , cfExcludedContentCategories

    -- ** BatchCreateMediaItemsResponse
    , BatchCreateMediaItemsResponse
    , batchCreateMediaItemsResponse
    , bcmirNewMediaItemResults
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude
import           Network.Google.Resource.PhotosLibrary.Albums.AddEnrichment
import           Network.Google.Resource.PhotosLibrary.Albums.Create
import           Network.Google.Resource.PhotosLibrary.Albums.Get
import           Network.Google.Resource.PhotosLibrary.Albums.List
import           Network.Google.Resource.PhotosLibrary.Albums.Share
import           Network.Google.Resource.PhotosLibrary.MediaItems.BatchCreate
import           Network.Google.Resource.PhotosLibrary.MediaItems.Get
import           Network.Google.Resource.PhotosLibrary.MediaItems.Search
import           Network.Google.Resource.PhotosLibrary.SharedAlbums.Join
import           Network.Google.Resource.PhotosLibrary.SharedAlbums.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Photos Library API service.
type PhotosLibraryAPI =
     MediaItemsGetResource :<|>
       MediaItemsBatchCreateResource
       :<|> MediaItemsSearchResource
       :<|> AlbumsListResource
       :<|> AlbumsShareResource
       :<|> AlbumsAddEnrichmentResource
       :<|> AlbumsGetResource
       :<|> AlbumsCreateResource
       :<|> SharedAlbumsListResource
       :<|> SharedAlbumsJoinResource
