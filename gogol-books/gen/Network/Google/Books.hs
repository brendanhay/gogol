{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Books
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you search for books and manage your Google Books library.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference>
module Network.Google.Books
    (
    -- * API
      BooksAPI
    , booksAPI
    , booksURL

    -- * Service Methods

    -- * REST Resources

    -- ** BooksBookshelvesGet
    , module Books.Bookshelves.Get

    -- ** BooksBookshelvesList
    , module Books.Bookshelves.List

    -- ** BooksBookshelvesVolumesList
    , module Books.Bookshelves.Volumes.List

    -- ** BooksCloudloadingAddBook
    , module Books.Cloudloading.AddBook

    -- ** BooksCloudloadingDeleteBook
    , module Books.Cloudloading.DeleteBook

    -- ** BooksCloudloadingUpdateBook
    , module Books.Cloudloading.UpdateBook

    -- ** BooksDictionaryListOfflineMetadata
    , module Books.Dictionary.ListOfflineMetadata

    -- ** BooksLayersAnnotationDataGet
    , module Books.Layers.AnnotationData.Get

    -- ** BooksLayersAnnotationDataList
    , module Books.Layers.AnnotationData.List

    -- ** BooksLayersGet
    , module Books.Layers.Get

    -- ** BooksLayersList
    , module Books.Layers.List

    -- ** BooksLayersVolumeAnnotationsGet
    , module Books.Layers.VolumeAnnotations.Get

    -- ** BooksLayersVolumeAnnotationsList
    , module Books.Layers.VolumeAnnotations.List

    -- ** BooksMyconfigGetUserSettings
    , module Books.Myconfig.GetUserSettings

    -- ** BooksMyconfigReleaseDownloadAccess
    , module Books.Myconfig.ReleaseDownloadAccess

    -- ** BooksMyconfigRequestAccess
    , module Books.Myconfig.RequestAccess

    -- ** BooksMyconfigSyncVolumeLicenses
    , module Books.Myconfig.SyncVolumeLicenses

    -- ** BooksMyconfigUpdateUserSettings
    , module Books.Myconfig.UpdateUserSettings

    -- ** BooksMylibraryAnnotationsDelete
    , module Books.Mylibrary.Annotations.Delete

    -- ** BooksMylibraryAnnotationsInsert
    , module Books.Mylibrary.Annotations.Insert

    -- ** BooksMylibraryAnnotationsList
    , module Books.Mylibrary.Annotations.List

    -- ** BooksMylibraryAnnotationsSummary
    , module Books.Mylibrary.Annotations.Summary

    -- ** BooksMylibraryAnnotationsUpdate
    , module Books.Mylibrary.Annotations.Update

    -- ** BooksMylibraryBookshelvesAddVolume
    , module Books.Mylibrary.Bookshelves.AddVolume

    -- ** BooksMylibraryBookshelvesClearVolumes
    , module Books.Mylibrary.Bookshelves.ClearVolumes

    -- ** BooksMylibraryBookshelvesGet
    , module Books.Mylibrary.Bookshelves.Get

    -- ** BooksMylibraryBookshelvesList
    , module Books.Mylibrary.Bookshelves.List

    -- ** BooksMylibraryBookshelvesMoveVolume
    , module Books.Mylibrary.Bookshelves.MoveVolume

    -- ** BooksMylibraryBookshelvesRemoveVolume
    , module Books.Mylibrary.Bookshelves.RemoveVolume

    -- ** BooksMylibraryBookshelvesVolumesList
    , module Books.Mylibrary.Bookshelves.Volumes.List

    -- ** BooksMylibraryReadingpositionsGet
    , module Books.Mylibrary.Readingpositions.Get

    -- ** BooksMylibraryReadingpositionsSetPosition
    , module Books.Mylibrary.Readingpositions.SetPosition

    -- ** BooksOnboardingListCategories
    , module Books.Onboarding.ListCategories

    -- ** BooksOnboardingListCategoryVolumes
    , module Books.Onboarding.ListCategoryVolumes

    -- ** BooksPromoofferAccept
    , module Books.Promooffer.Accept

    -- ** BooksPromoofferDismiss
    , module Books.Promooffer.Dismiss

    -- ** BooksPromoofferGet
    , module Books.Promooffer.Get

    -- ** BooksVolumesAssociatedList
    , module Books.Volumes.Associated.List

    -- ** BooksVolumesGet
    , module Books.Volumes.Get

    -- ** BooksVolumesList
    , module Books.Volumes.List

    -- ** BooksVolumesMybooksList
    , module Books.Volumes.Mybooks.List

    -- ** BooksVolumesRecommendedList
    , module Books.Volumes.Recommended.List

    -- ** BooksVolumesRecommendedRate
    , module Books.Volumes.Recommended.Rate

    -- ** BooksVolumesUseruploadedList
    , module Books.Volumes.Useruploaded.List

    -- * Types

    -- ** Volumeannotations
    , Volumeannotations
    , volumeannotations
    , vTotalItems
    , vNextPageToken
    , vKind
    , vItems
    , vVersion

    -- ** Annotations
    , Annotations
    , annotations
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- ** Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- ** Annotationsdata
    , Annotationsdata
    , annotationsdata
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- ** Annotation
    , Annotation
    , annotation
    , aaSelectedText
    , aaLayerSummary
    , aaHighlightStyle
    , aaClientVersionRanges
    , aaPageIds
    , aaKind
    , aaData
    , aaCreated
    , aaAfterSelectedText
    , aaSelfLink
    , aaCurrentVersionRanges
    , aaVolumeId
    , aaBeforeSelectedText
    , aaId
    , aaDeleted
    , aaUpdated
    , aaLayerId

    -- ** BooksCloudloadingResource
    , BooksCloudloadingResource
    , booksCloudloadingResource
    , bcrProcessingState
    , bcrVolumeId
    , bcrAuthor
    , bcrTitle

    -- ** Layersummary
    , Layersummary
    , layersummary
    , lAnnotationsDataLink
    , lAnnotationsLink
    , lKind
    , lDataCount
    , lContentVersion
    , lVolumeAnnotationsVersion
    , lAnnotationCount
    , lAnnotationTypes
    , lSelfLink
    , lVolumeId
    , lId
    , lUpdated
    , lLayerId

    -- ** Annotationdata
    , Annotationdata
    , annotationdata
    , annnEncodedData
    , annnKind
    , annnData
    , annnSelfLink
    , annnAnnotationType
    , annnVolumeId
    , annnId
    , annnUpdated
    , annnLayerId

    -- ** Volumeannotation
    , Volumeannotation
    , volumeannotation
    , volSelectedText
    , volAnnotationDataLink
    , volPageIds
    , volKind
    , volData
    , volSelfLink
    , volAnnotationType
    , volAnnotationDataId
    , volContentRanges
    , volVolumeId
    , volId
    , volDeleted
    , volUpdated
    , volLayerId

    -- ** BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- ** Bookshelf
    , Bookshelf
    , bookshelf
    , bAccess
    , bVolumesLastUpdated
    , bKind
    , bCreated
    , bVolumeCount
    , bSelfLink
    , bId
    , bUpdated
    , bTitle
    , bDescription

    -- ** Category
    , Category
    , category
    , cKind
    , cItems

    -- ** AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- ** Volume
    , Volume
    , volume
    , vvUserInfo
    , vvEtag
    , vvAccessInfo
    , vvKind
    , vvSearchInfo
    , vvSelfLink
    , vvLayerInfo
    , vvSaleInfo
    , vvId
    , vvRecommendedInfo
    , vvVolumeInfo

    -- ** Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- ** Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- ** DownloadAccessRestriction
    , DownloadAccessRestriction
    , downloadAccessRestriction
    , darJustAcquired
    , darSignature
    , darKind
    , darMaxDownloadDevices
    , darDownloadsAcquired
    , darReasonCode
    , darVolumeId
    , darRestricted
    , darSource
    , darDeviceAllowed
    , darMessage
    , darNonce

    -- ** Review
    , Review
    , review
    , rRating
    , rKind
    , rContent
    , rDate
    , rVolumeId
    , rAuthor
    , rSource
    , rFullTextUrl
    , rTitle
    , rType

    -- ** Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- ** RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** ReadingPosition
    , ReadingPosition
    , readingPosition
    , rpEpubCfiPosition
    , rpKind
    , rpGbImagePosition
    , rpPdfPosition
    , rpVolumeId
    , rpUpdated
    , rpGbTextPosition

    -- ** Offers
    , Offers
    , offers
    , oKind
    , oItems

    -- ** Volumes
    , Volumes
    , volumes
    , v1TotalItems
    , v1Kind
    , v1Items

    -- ** Bookshelves
    , Bookshelves
    , bookshelves
    , booKind
    , booItems

    -- ** ConcurrentAccessRestriction
    , ConcurrentAccessRestriction
    , concurrentAccessRestriction
    , carMaxConcurrentDevices
    , carSignature
    , carTimeWindowSeconds
    , carKind
    , carReasonCode
    , carVolumeId
    , carRestricted
    , carSource
    , carDeviceAllowed
    , carMessage
    , carNonce

    -- ** DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- ** Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems

    -- ** BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Books.Bookshelves.Get
import           Network.Google.Resource.Books.Bookshelves.List
import           Network.Google.Resource.Books.Bookshelves.Volumes.List
import           Network.Google.Resource.Books.Cloudloading.AddBook
import           Network.Google.Resource.Books.Cloudloading.DeleteBook
import           Network.Google.Resource.Books.Cloudloading.UpdateBook
import           Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
import           Network.Google.Resource.Books.Layers.AnnotationData.Get
import           Network.Google.Resource.Books.Layers.AnnotationData.List
import           Network.Google.Resource.Books.Layers.Get
import           Network.Google.Resource.Books.Layers.List
import           Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
import           Network.Google.Resource.Books.Layers.VolumeAnnotations.List
import           Network.Google.Resource.Books.Myconfig.GetUserSettings
import           Network.Google.Resource.Books.Myconfig.ReleaseDownloadAccess
import           Network.Google.Resource.Books.Myconfig.RequestAccess
import           Network.Google.Resource.Books.Myconfig.SyncVolumeLicenses
import           Network.Google.Resource.Books.Myconfig.UpdateUserSettings
import           Network.Google.Resource.Books.Mylibrary.Annotations.Delete
import           Network.Google.Resource.Books.Mylibrary.Annotations.Insert
import           Network.Google.Resource.Books.Mylibrary.Annotations.List
import           Network.Google.Resource.Books.Mylibrary.Annotations.Summary
import           Network.Google.Resource.Books.Mylibrary.Annotations.Update
import           Network.Google.Resource.Books.Mylibrary.Bookshelves.AddVolume
import           Network.Google.Resource.Books.Mylibrary.Bookshelves.ClearVolumes
import           Network.Google.Resource.Books.Mylibrary.Bookshelves.Get
import           Network.Google.Resource.Books.Mylibrary.Bookshelves.List
import           Network.Google.Resource.Books.Mylibrary.Bookshelves.MoveVolume
import           Network.Google.Resource.Books.Mylibrary.Bookshelves.RemoveVolume
import           Network.Google.Resource.Books.Mylibrary.Bookshelves.Volumes.List
import           Network.Google.Resource.Books.Mylibrary.Readingpositions.Get
import           Network.Google.Resource.Books.Mylibrary.Readingpositions.SetPosition
import           Network.Google.Resource.Books.Onboarding.ListCategories
import           Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
import           Network.Google.Resource.Books.Promooffer.Accept
import           Network.Google.Resource.Books.Promooffer.Dismiss
import           Network.Google.Resource.Books.Promooffer.Get
import           Network.Google.Resource.Books.Volumes.Associated.List
import           Network.Google.Resource.Books.Volumes.Get
import           Network.Google.Resource.Books.Volumes.List
import           Network.Google.Resource.Books.Volumes.Mybooks.List
import           Network.Google.Resource.Books.Volumes.Recommended.List
import           Network.Google.Resource.Books.Volumes.Recommended.Rate
import           Network.Google.Resource.Books.Volumes.Useruploaded.List

{- $resources
TODO
-}

type BooksAPI =
     Onboarding :<|> Mylibrary :<|> Promooffer :<|>
       Cloudloading
       :<|> Layers
       :<|> Dictionary
       :<|> Volumes
       :<|> Bookshelves
       :<|> Myconfig

booksAPI :: Proxy BooksAPI
booksAPI = Proxy
