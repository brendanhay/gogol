{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Books.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Books.Types
  ( -- * Configuration
    booksService,

    -- * OAuth Scopes
    booksScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Annotation
    Annotation (..),
    newAnnotation,

    -- ** Annotation_ClientVersionRanges
    Annotation_ClientVersionRanges (..),
    newAnnotation_ClientVersionRanges,

    -- ** Annotation_CurrentVersionRanges
    Annotation_CurrentVersionRanges (..),
    newAnnotation_CurrentVersionRanges,

    -- ** Annotation_LayerSummary
    Annotation_LayerSummary (..),
    newAnnotation_LayerSummary,

    -- ** Annotations
    Annotations (..),
    newAnnotations,

    -- ** AnnotationsSummary
    AnnotationsSummary (..),
    newAnnotationsSummary,

    -- ** AnnotationsSummary_LayersItem
    AnnotationsSummary_LayersItem (..),
    newAnnotationsSummary_LayersItem,

    -- ** Annotationsdata
    Annotationsdata (..),
    newAnnotationsdata,

    -- ** BooksAnnotationsRange
    BooksAnnotationsRange (..),
    newBooksAnnotationsRange,

    -- ** BooksCloudloadingResource
    BooksCloudloadingResource (..),
    newBooksCloudloadingResource,

    -- ** BooksVolumesRecommendedRateResponse
    BooksVolumesRecommendedRateResponse (..),
    newBooksVolumesRecommendedRateResponse,

    -- ** Bookshelf
    Bookshelf (..),
    newBookshelf,

    -- ** Bookshelves
    Bookshelves (..),
    newBookshelves,

    -- ** Category
    Category (..),
    newCategory,

    -- ** Category_ItemsItem
    Category_ItemsItem (..),
    newCategory_ItemsItem,

    -- ** ConcurrentAccessRestriction
    ConcurrentAccessRestriction (..),
    newConcurrentAccessRestriction,

    -- ** DictionaryAnnotationdata
    DictionaryAnnotationdata (..),
    newDictionaryAnnotationdata,

    -- ** Dictlayerdata
    Dictlayerdata (..),
    newDictlayerdata,

    -- ** Dictlayerdata_Common
    Dictlayerdata_Common (..),
    newDictlayerdata_Common,

    -- ** Dictlayerdata_Dict
    Dictlayerdata_Dict (..),
    newDictlayerdata_Dict,

    -- ** Dictlayerdata_Dict_Source
    Dictlayerdata_Dict_Source (..),
    newDictlayerdata_Dict_Source,

    -- ** Dictlayerdata_Dict_WordsItem
    Dictlayerdata_Dict_WordsItem (..),
    newDictlayerdata_Dict_WordsItem,

    -- ** Dictlayerdata_Dict_WordsItem_DerivativesItem
    Dictlayerdata_Dict_WordsItem_DerivativesItem (..),
    newDictlayerdata_Dict_WordsItem_DerivativesItem,

    -- ** Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
    Dictlayerdata_Dict_WordsItem_DerivativesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_DerivativesItem_Source,

    -- ** Dictlayerdata_Dict_WordsItem_ExamplesItem
    Dictlayerdata_Dict_WordsItem_ExamplesItem (..),
    newDictlayerdata_Dict_WordsItem_ExamplesItem,

    -- ** Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
    Dictlayerdata_Dict_WordsItem_ExamplesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_ExamplesItem_Source,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem
    Dictlayerdata_Dict_WordsItem_SensesItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
    Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem_Source
    Dictlayerdata_Dict_WordsItem_SensesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_Source,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem,

    -- ** Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source,

    -- ** Dictlayerdata_Dict_WordsItem_Source
    Dictlayerdata_Dict_WordsItem_Source (..),
    newDictlayerdata_Dict_WordsItem_Source,

    -- ** Discoveryclusters
    Discoveryclusters (..),
    newDiscoveryclusters,

    -- ** Discoveryclusters_ClustersItem
    Discoveryclusters_ClustersItem (..),
    newDiscoveryclusters_ClustersItem,

    -- ** Discoveryclusters_ClustersItem_Banner_with_content_container
    Discoveryclusters_ClustersItem_Banner_with_content_container (..),
    newDiscoveryclusters_ClustersItem_Banner_with_content_container,

    -- ** DownloadAccessRestriction
    DownloadAccessRestriction (..),
    newDownloadAccessRestriction,

    -- ** DownloadAccesses
    DownloadAccesses (..),
    newDownloadAccesses,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FamilyInfo
    FamilyInfo (..),
    newFamilyInfo,

    -- ** FamilyInfo_Membership
    FamilyInfo_Membership (..),
    newFamilyInfo_Membership,

    -- ** GeoAnnotationdata
    GeoAnnotationdata (..),
    newGeoAnnotationdata,

    -- ** Geolayerdata
    Geolayerdata (..),
    newGeolayerdata,

    -- ** Geolayerdata_Common
    Geolayerdata_Common (..),
    newGeolayerdata_Common,

    -- ** Geolayerdata_Geo
    Geolayerdata_Geo (..),
    newGeolayerdata_Geo,

    -- ** Geolayerdata_Geo_Viewport
    Geolayerdata_Geo_Viewport (..),
    newGeolayerdata_Geo_Viewport,

    -- ** Geolayerdata_Geo_Viewport_Hi
    Geolayerdata_Geo_Viewport_Hi (..),
    newGeolayerdata_Geo_Viewport_Hi,

    -- ** Geolayerdata_Geo_Viewport_Lo
    Geolayerdata_Geo_Viewport_Lo (..),
    newGeolayerdata_Geo_Viewport_Lo,

    -- ** Layersummaries
    Layersummaries (..),
    newLayersummaries,

    -- ** Layersummary
    Layersummary (..),
    newLayersummary,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** Metadata_ItemsItem
    Metadata_ItemsItem (..),
    newMetadata_ItemsItem,

    -- ** Notification
    Notification (..),
    newNotification,

    -- ** Offers
    Offers (..),
    newOffers,

    -- ** Offers_ItemsItem
    Offers_ItemsItem (..),
    newOffers_ItemsItem,

    -- ** Offers_ItemsItem_ItemsItem
    Offers_ItemsItem_ItemsItem (..),
    newOffers_ItemsItem_ItemsItem,

    -- ** ReadingPosition
    ReadingPosition (..),
    newReadingPosition,

    -- ** RequestAccessData
    RequestAccessData (..),
    newRequestAccessData,

    -- ** Review
    Review (..),
    newReview,

    -- ** Review_Author
    Review_Author (..),
    newReview_Author,

    -- ** Review_Source
    Review_Source (..),
    newReview_Source,

    -- ** Series
    Series (..),
    newSeries,

    -- ** Series_SeriesItem
    Series_SeriesItem (..),
    newSeries_SeriesItem,

    -- ** Series_SeriesItem_SeriesSubscriptionReleaseInfo
    Series_SeriesItem_SeriesSubscriptionReleaseInfo (..),
    newSeries_SeriesItem_SeriesSubscriptionReleaseInfo,

    -- ** Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo (..),
    newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo,

    -- ** Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo (..),
    newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo,

    -- ** Seriesmembership
    Seriesmembership (..),
    newSeriesmembership,

    -- ** Usersettings
    Usersettings (..),
    newUsersettings,

    -- ** Usersettings_NotesExport
    Usersettings_NotesExport (..),
    newUsersettings_NotesExport,

    -- ** Usersettings_Notification
    Usersettings_Notification (..),
    newUsersettings_Notification,

    -- ** Usersettings_Notification_MatchMyInterests
    Usersettings_Notification_MatchMyInterests (..),
    newUsersettings_Notification_MatchMyInterests,

    -- ** Usersettings_Notification_MoreFromAuthors
    Usersettings_Notification_MoreFromAuthors (..),
    newUsersettings_Notification_MoreFromAuthors,

    -- ** Usersettings_Notification_MoreFromSeries
    Usersettings_Notification_MoreFromSeries (..),
    newUsersettings_Notification_MoreFromSeries,

    -- ** Usersettings_Notification_PriceDrop
    Usersettings_Notification_PriceDrop (..),
    newUsersettings_Notification_PriceDrop,

    -- ** Usersettings_Notification_RewardExpirations
    Usersettings_Notification_RewardExpirations (..),
    newUsersettings_Notification_RewardExpirations,

    -- ** Volume
    Volume (..),
    newVolume,

    -- ** Volume_AccessInfo
    Volume_AccessInfo (..),
    newVolume_AccessInfo,

    -- ** Volume_AccessInfo_Epub
    Volume_AccessInfo_Epub (..),
    newVolume_AccessInfo_Epub,

    -- ** Volume_AccessInfo_Pdf
    Volume_AccessInfo_Pdf (..),
    newVolume_AccessInfo_Pdf,

    -- ** Volume_LayerInfo
    Volume_LayerInfo (..),
    newVolume_LayerInfo,

    -- ** Volume_LayerInfo_LayersItem
    Volume_LayerInfo_LayersItem (..),
    newVolume_LayerInfo_LayersItem,

    -- ** Volume_RecommendedInfo
    Volume_RecommendedInfo (..),
    newVolume_RecommendedInfo,

    -- ** Volume_SaleInfo
    Volume_SaleInfo (..),
    newVolume_SaleInfo,

    -- ** Volume_SaleInfo_ListPrice
    Volume_SaleInfo_ListPrice (..),
    newVolume_SaleInfo_ListPrice,

    -- ** Volume_SaleInfo_OffersItem
    Volume_SaleInfo_OffersItem (..),
    newVolume_SaleInfo_OffersItem,

    -- ** Volume_SaleInfo_OffersItem_ListPrice
    Volume_SaleInfo_OffersItem_ListPrice (..),
    newVolume_SaleInfo_OffersItem_ListPrice,

    -- ** Volume_SaleInfo_OffersItem_RentalDuration
    Volume_SaleInfo_OffersItem_RentalDuration (..),
    newVolume_SaleInfo_OffersItem_RentalDuration,

    -- ** Volume_SaleInfo_OffersItem_RetailPrice
    Volume_SaleInfo_OffersItem_RetailPrice (..),
    newVolume_SaleInfo_OffersItem_RetailPrice,

    -- ** Volume_SaleInfo_RetailPrice
    Volume_SaleInfo_RetailPrice (..),
    newVolume_SaleInfo_RetailPrice,

    -- ** Volume_SearchInfo
    Volume_SearchInfo (..),
    newVolume_SearchInfo,

    -- ** Volume_UserInfo
    Volume_UserInfo (..),
    newVolume_UserInfo,

    -- ** Volume_UserInfo_Copy
    Volume_UserInfo_Copy (..),
    newVolume_UserInfo_Copy,

    -- ** Volume_UserInfo_FamilySharing
    Volume_UserInfo_FamilySharing (..),
    newVolume_UserInfo_FamilySharing,

    -- ** Volume_UserInfo_RentalPeriod
    Volume_UserInfo_RentalPeriod (..),
    newVolume_UserInfo_RentalPeriod,

    -- ** Volume_UserInfo_UserUploadedVolumeInfo
    Volume_UserInfo_UserUploadedVolumeInfo (..),
    newVolume_UserInfo_UserUploadedVolumeInfo,

    -- ** Volume_VolumeInfo
    Volume_VolumeInfo (..),
    newVolume_VolumeInfo,

    -- ** Volume_VolumeInfo_Dimensions
    Volume_VolumeInfo_Dimensions (..),
    newVolume_VolumeInfo_Dimensions,

    -- ** Volume_VolumeInfo_ImageLinks
    Volume_VolumeInfo_ImageLinks (..),
    newVolume_VolumeInfo_ImageLinks,

    -- ** Volume_VolumeInfo_IndustryIdentifiersItem
    Volume_VolumeInfo_IndustryIdentifiersItem (..),
    newVolume_VolumeInfo_IndustryIdentifiersItem,

    -- ** Volume_VolumeInfo_PanelizationSummary
    Volume_VolumeInfo_PanelizationSummary (..),
    newVolume_VolumeInfo_PanelizationSummary,

    -- ** Volume_VolumeInfo_ReadingModes
    Volume_VolumeInfo_ReadingModes (..),
    newVolume_VolumeInfo_ReadingModes,

    -- ** Volume2
    Volume2 (..),
    newVolume2,

    -- ** Volumeannotation
    Volumeannotation (..),
    newVolumeannotation,

    -- ** Volumeannotation_ContentRanges
    Volumeannotation_ContentRanges (..),
    newVolumeannotation_ContentRanges,

    -- ** Volumeannotations
    Volumeannotations (..),
    newVolumeannotations,

    -- ** Volumes
    Volumes (..),
    newVolumes,

    -- ** Volumeseriesinfo
    Volumeseriesinfo (..),
    newVolumeseriesinfo,

    -- ** Volumeseriesinfo_VolumeSeriesItem
    Volumeseriesinfo_VolumeSeriesItem (..),
    newVolumeseriesinfo_VolumeSeriesItem,

    -- ** Volumeseriesinfo_VolumeSeriesItem_IssueItem
    Volumeseriesinfo_VolumeSeriesItem_IssueItem (..),
    newVolumeseriesinfo_VolumeSeriesItem_IssueItem,

    -- ** MyconfigRequestAccessLicenseTypes
    MyconfigRequestAccessLicenseTypes (..),

    -- ** MyconfigSyncVolumeLicensesFeatures
    MyconfigSyncVolumeLicensesFeatures (..),

    -- ** MylibraryBookshelvesAddVolumeReason
    MylibraryBookshelvesAddVolumeReason (..),

    -- ** MylibraryBookshelvesRemoveVolumeReason
    MylibraryBookshelvesRemoveVolumeReason (..),

    -- ** MylibraryBookshelvesVolumesListProjection
    MylibraryBookshelvesVolumesListProjection (..),

    -- ** MylibraryReadingpositionsSetPositionAction
    MylibraryReadingpositionsSetPositionAction (..),

    -- ** OnboardingListCategoryVolumesMaxAllowedMaturityRating
    OnboardingListCategoryVolumesMaxAllowedMaturityRating (..),

    -- ** PersonalizedstreamGetMaxAllowedMaturityRating
    PersonalizedstreamGetMaxAllowedMaturityRating (..),

    -- ** VolumesAssociatedListAssociation
    VolumesAssociatedListAssociation (..),

    -- ** VolumesAssociatedListMaxAllowedMaturityRating
    VolumesAssociatedListMaxAllowedMaturityRating (..),

    -- ** VolumesGetProjection
    VolumesGetProjection (..),

    -- ** VolumesListDownload
    VolumesListDownload (..),

    -- ** VolumesListFilter
    VolumesListFilter (..),

    -- ** VolumesListLibraryRestrict
    VolumesListLibraryRestrict (..),

    -- ** VolumesListMaxAllowedMaturityRating
    VolumesListMaxAllowedMaturityRating (..),

    -- ** VolumesListOrderBy
    VolumesListOrderBy (..),

    -- ** VolumesListPrintType
    VolumesListPrintType (..),

    -- ** VolumesListProjection
    VolumesListProjection (..),

    -- ** VolumesMybooksListAcquireMethod
    VolumesMybooksListAcquireMethod (..),

    -- ** VolumesMybooksListProcessingState
    VolumesMybooksListProcessingState (..),

    -- ** VolumesRecommendedListMaxAllowedMaturityRating
    VolumesRecommendedListMaxAllowedMaturityRating (..),

    -- ** VolumesRecommendedRateRating
    VolumesRecommendedRateRating (..),

    -- ** VolumesUseruploadedListProcessingState
    VolumesUseruploadedListProcessingState (..),
  )
where

import Network.Google.Books.Internal.Product
import Network.Google.Books.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Books API. This contains the host and root path used as a starting point for constructing service requests.
booksService :: Core.ServiceConfig
booksService =
  Core.defaultService
    (Core.ServiceId "books:v1")
    "books.googleapis.com"

-- | Manage your books
booksScope :: Core.Proxy '["https://www.googleapis.com/auth/books"]
booksScope = Core.Proxy
