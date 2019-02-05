{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PhotosLibrary.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PhotosLibrary.Types
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

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * LocationEnrichment
    , LocationEnrichment
    , locationEnrichment
    , leLocation

    -- * DateFilter
    , DateFilter
    , dateFilter
    , dfDates
    , dfRanges

    -- * Photo
    , Photo
    , photo
    , pFocalLength
    , pCameraMake
    , pExposureTime
    , pCameraModel
    , pIsoEquivalent
    , pApertureFNumber

    -- * TextEnrichment
    , TextEnrichment
    , textEnrichment
    , teText

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * AddEnrichmentToAlbumResponse
    , AddEnrichmentToAlbumResponse
    , addEnrichmentToAlbumResponse
    , aetarEnrichmentItem

    -- * SearchMediaItemsResponse
    , SearchMediaItemsResponse
    , searchMediaItemsResponse
    , smirNextPageToken
    , smirMediaItems

    -- * JoinSharedAlbumResponse
    , JoinSharedAlbumResponse
    , joinSharedAlbumResponse

    -- * CreateAlbumRequest
    , CreateAlbumRequest
    , createAlbumRequest
    , carAlbum

    -- * Location
    , Location
    , location
    , lLatlng
    , lLocationName

    -- * VideoStatus
    , VideoStatus (..)

    -- * NewEnrichmentItem
    , NewEnrichmentItem
    , newEnrichmentItem
    , neiLocationEnrichment
    , neiTextEnrichment
    , neiMapEnrichment

    -- * ShareInfo
    , ShareInfo
    , shareInfo
    , siShareableURL
    , siShareToken
    , siSharedAlbumOptions

    -- * BatchCreateMediaItemsRequest
    , BatchCreateMediaItemsRequest
    , batchCreateMediaItemsRequest
    , bcmirAlbumId
    , bcmirNewMediaItems
    , bcmirAlbumPosition

    -- * Filters
    , Filters
    , filters
    , fDateFilter
    , fIncludeArchivedMedia
    , fMediaTypeFilter
    , fContentFilter

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * DateRange
    , DateRange
    , dateRange
    , drEndDate
    , drStartDate

    -- * SharedAlbumOptions
    , SharedAlbumOptions
    , sharedAlbumOptions
    , saoIsCollaborative
    , saoIsCommentable

    -- * MediaMetadata
    , MediaMetadata
    , mediaMetadata
    , mmCreationTime
    , mmPhoto
    , mmHeight
    , mmWidth
    , mmVideo

    -- * ShareAlbumResponse
    , ShareAlbumResponse
    , shareAlbumResponse
    , sarShareInfo

    -- * Video
    , Video
    , video
    , vStatus
    , vCameraMake
    , vCameraModel
    , vFps

    -- * MediaItem
    , MediaItem
    , mediaItem
    , miProductURL
    , miBaseURL
    , miMediaMetadata
    , miMimeType
    , miId
    , miContributorInfo
    , miDescription

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * EnrichmentItem
    , EnrichmentItem
    , enrichmentItem
    , eiId

    -- * ListSharedAlbumsResponse
    , ListSharedAlbumsResponse
    , listSharedAlbumsResponse
    , lsarNextPageToken
    , lsarSharedAlbums

    -- * MediaTypeFilter
    , MediaTypeFilter
    , mediaTypeFilter
    , mtfMediaTypes

    -- * NewMediaItemResult
    , NewMediaItemResult
    , newMediaItemResult
    , nmirStatus
    , nmirUploadToken
    , nmirMediaItem

    -- * Album
    , Album
    , album
    , aIsWriteable
    , aProductURL
    , aShareInfo
    , aCoverPhotoBaseURL
    , aId
    , aTotalMediaItems
    , aTitle

    -- * SimpleMediaItem
    , SimpleMediaItem
    , simpleMediaItem
    , smiUploadToken

    -- * AlbumPositionPosition
    , AlbumPositionPosition (..)

    -- * Xgafv
    , Xgafv (..)

    -- * ContributorInfo
    , ContributorInfo
    , contributorInfo
    , ciProFilePictureBaseURL
    , ciDisplayName

    -- * ListAlbumsResponse
    , ListAlbumsResponse
    , listAlbumsResponse
    , larNextPageToken
    , larAlbums

    -- * MapEnrichment
    , MapEnrichment
    , mapEnrichment
    , meDestination
    , meOrigin

    -- * SearchMediaItemsRequest
    , SearchMediaItemsRequest
    , searchMediaItemsRequest
    , smirAlbumId
    , smirFilters
    , smirPageToken
    , smirPageSize

    -- * NewMediaItem
    , NewMediaItem
    , newMediaItem
    , nmiSimpleMediaItem
    , nmiDescription

    -- * AddEnrichmentToAlbumRequest
    , AddEnrichmentToAlbumRequest
    , addEnrichmentToAlbumRequest
    , aetarNewEnrichmentItem
    , aetarAlbumPosition

    -- * JoinSharedAlbumRequest
    , JoinSharedAlbumRequest
    , joinSharedAlbumRequest
    , jsarShareToken

    -- * ShareAlbumRequest
    , ShareAlbumRequest
    , shareAlbumRequest
    , sarSharedAlbumOptions

    -- * AlbumPosition
    , AlbumPosition
    , albumPosition
    , apRelativeMediaItemId
    , apRelativeEnrichmentItemId
    , apPosition

    -- * ContentFilter
    , ContentFilter
    , contentFilter
    , cfIncludedContentCategories
    , cfExcludedContentCategories

    -- * BatchCreateMediaItemsResponse
    , BatchCreateMediaItemsResponse
    , batchCreateMediaItemsResponse
    , bcmirNewMediaItemResults
    ) where

import           Network.Google.PhotosLibrary.Types.Product
import           Network.Google.PhotosLibrary.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Photos Library API. This contains the host and root path used as a starting point for constructing service requests.
photosLibraryService :: ServiceConfig
photosLibraryService
  = defaultService (ServiceId "photoslibrary:v1")
      "photoslibrary.googleapis.com"

-- | View your Google Photos library
photosLibraryReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/photoslibrary.readonly"]
photosLibraryReadOnlyScope = Proxy;

-- | View and manage your Google Photos library
photosLibraryScope :: Proxy '["https://www.googleapis.com/auth/photoslibrary"]
photosLibraryScope = Proxy;

-- | View the photos, videos and albums in your Google Photos
drivePhotosReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/drive.photos.readonly"]
drivePhotosReadOnlyScope = Proxy;

-- | Manage and add to shared albums on your behalf
photosLibrarySharingScope :: Proxy '["https://www.googleapis.com/auth/photoslibrary.sharing"]
photosLibrarySharingScope = Proxy;

-- | Add to your Google Photos library
photosLibraryAppendOnlyScope :: Proxy '["https://www.googleapis.com/auth/photoslibrary.appendonly"]
photosLibraryAppendOnlyScope = Proxy;

-- | Manage photos added by this app
photosLibraryReadOnlyAppcreatedDataScope :: Proxy '["https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata"]
photosLibraryReadOnlyAppcreatedDataScope = Proxy;
