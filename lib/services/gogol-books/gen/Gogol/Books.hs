{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Books
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Books API allows clients to access the Google Books repository.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference>
module Gogol.Books
  ( -- * Configuration
    booksService,

    -- * OAuth Scopes
    Books'FullControl,

    -- * Resources

    -- ** books.bookshelves.get
    BooksBookshelvesGetResource,
    BooksBookshelvesGet (..),
    newBooksBookshelvesGet,

    -- ** books.bookshelves.list
    BooksBookshelvesListResource,
    BooksBookshelvesList (..),
    newBooksBookshelvesList,

    -- ** books.bookshelves.volumes.list
    BooksBookshelvesVolumesListResource,
    BooksBookshelvesVolumesList (..),
    newBooksBookshelvesVolumesList,

    -- ** books.cloudloading.addBook
    BooksCloudloadingAddBookResource,
    BooksCloudloadingAddBook (..),
    newBooksCloudloadingAddBook,

    -- ** books.cloudloading.deleteBook
    BooksCloudloadingDeleteBookResource,
    BooksCloudloadingDeleteBook (..),
    newBooksCloudloadingDeleteBook,

    -- ** books.cloudloading.updateBook
    BooksCloudloadingUpdateBookResource,
    BooksCloudloadingUpdateBook (..),
    newBooksCloudloadingUpdateBook,

    -- ** books.dictionary.listOfflineMetadata
    BooksDictionaryListOfflineMetadataResource,
    BooksDictionaryListOfflineMetadata (..),
    newBooksDictionaryListOfflineMetadata,

    -- ** books.familysharing.getFamilyInfo
    BooksFamilysharingGetFamilyInfoResource,
    BooksFamilysharingGetFamilyInfo (..),
    newBooksFamilysharingGetFamilyInfo,

    -- ** books.familysharing.share
    BooksFamilysharingShareResource,
    BooksFamilysharingShare (..),
    newBooksFamilysharingShare,

    -- ** books.familysharing.unshare
    BooksFamilysharingUnshareResource,
    BooksFamilysharingUnshare (..),
    newBooksFamilysharingUnshare,

    -- ** books.layers.annotationData.get
    BooksLayersAnnotationDataGetResource,
    BooksLayersAnnotationDataGet (..),
    newBooksLayersAnnotationDataGet,

    -- ** books.layers.annotationData.list
    BooksLayersAnnotationDataListResource,
    BooksLayersAnnotationDataList (..),
    newBooksLayersAnnotationDataList,

    -- ** books.layers.get
    BooksLayersGetResource,
    BooksLayersGet (..),
    newBooksLayersGet,

    -- ** books.layers.list
    BooksLayersListResource,
    BooksLayersList (..),
    newBooksLayersList,

    -- ** books.layers.volumeAnnotations.get
    BooksLayersVolumeAnnotationsGetResource,
    BooksLayersVolumeAnnotationsGet (..),
    newBooksLayersVolumeAnnotationsGet,

    -- ** books.layers.volumeAnnotations.list
    BooksLayersVolumeAnnotationsListResource,
    BooksLayersVolumeAnnotationsList (..),
    newBooksLayersVolumeAnnotationsList,

    -- ** books.myconfig.getUserSettings
    BooksMyconfigGetUserSettingsResource,
    BooksMyconfigGetUserSettings (..),
    newBooksMyconfigGetUserSettings,

    -- ** books.myconfig.releaseDownloadAccess
    BooksMyconfigReleaseDownloadAccessResource,
    BooksMyconfigReleaseDownloadAccess (..),
    newBooksMyconfigReleaseDownloadAccess,

    -- ** books.myconfig.requestAccess
    BooksMyconfigRequestAccessResource,
    BooksMyconfigRequestAccess (..),
    newBooksMyconfigRequestAccess,

    -- ** books.myconfig.syncVolumeLicenses
    BooksMyconfigSyncVolumeLicensesResource,
    BooksMyconfigSyncVolumeLicenses (..),
    newBooksMyconfigSyncVolumeLicenses,

    -- ** books.myconfig.updateUserSettings
    BooksMyconfigUpdateUserSettingsResource,
    BooksMyconfigUpdateUserSettings (..),
    newBooksMyconfigUpdateUserSettings,

    -- ** books.mylibrary.annotations.delete
    BooksMylibraryAnnotationsDeleteResource,
    BooksMylibraryAnnotationsDelete (..),
    newBooksMylibraryAnnotationsDelete,

    -- ** books.mylibrary.annotations.insert
    BooksMylibraryAnnotationsInsertResource,
    BooksMylibraryAnnotationsInsert (..),
    newBooksMylibraryAnnotationsInsert,

    -- ** books.mylibrary.annotations.list
    BooksMylibraryAnnotationsListResource,
    BooksMylibraryAnnotationsList (..),
    newBooksMylibraryAnnotationsList,

    -- ** books.mylibrary.annotations.summary
    BooksMylibraryAnnotationsSummaryResource,
    BooksMylibraryAnnotationsSummary (..),
    newBooksMylibraryAnnotationsSummary,

    -- ** books.mylibrary.annotations.update
    BooksMylibraryAnnotationsUpdateResource,
    BooksMylibraryAnnotationsUpdate (..),
    newBooksMylibraryAnnotationsUpdate,

    -- ** books.mylibrary.bookshelves.addVolume
    BooksMylibraryBookshelvesAddVolumeResource,
    BooksMylibraryBookshelvesAddVolume (..),
    newBooksMylibraryBookshelvesAddVolume,

    -- ** books.mylibrary.bookshelves.clearVolumes
    BooksMylibraryBookshelvesClearVolumesResource,
    BooksMylibraryBookshelvesClearVolumes (..),
    newBooksMylibraryBookshelvesClearVolumes,

    -- ** books.mylibrary.bookshelves.get
    BooksMylibraryBookshelvesGetResource,
    BooksMylibraryBookshelvesGet (..),
    newBooksMylibraryBookshelvesGet,

    -- ** books.mylibrary.bookshelves.list
    BooksMylibraryBookshelvesListResource,
    BooksMylibraryBookshelvesList (..),
    newBooksMylibraryBookshelvesList,

    -- ** books.mylibrary.bookshelves.moveVolume
    BooksMylibraryBookshelvesMoveVolumeResource,
    BooksMylibraryBookshelvesMoveVolume (..),
    newBooksMylibraryBookshelvesMoveVolume,

    -- ** books.mylibrary.bookshelves.removeVolume
    BooksMylibraryBookshelvesRemoveVolumeResource,
    BooksMylibraryBookshelvesRemoveVolume (..),
    newBooksMylibraryBookshelvesRemoveVolume,

    -- ** books.mylibrary.bookshelves.volumes.list
    BooksMylibraryBookshelvesVolumesListResource,
    BooksMylibraryBookshelvesVolumesList (..),
    newBooksMylibraryBookshelvesVolumesList,

    -- ** books.mylibrary.readingpositions.get
    BooksMylibraryReadingpositionsGetResource,
    BooksMylibraryReadingpositionsGet (..),
    newBooksMylibraryReadingpositionsGet,

    -- ** books.mylibrary.readingpositions.setPosition
    BooksMylibraryReadingpositionsSetPositionResource,
    BooksMylibraryReadingpositionsSetPosition (..),
    newBooksMylibraryReadingpositionsSetPosition,

    -- ** books.notification.get
    BooksNotificationGetResource,
    BooksNotificationGet (..),
    newBooksNotificationGet,

    -- ** books.onboarding.listCategories
    BooksOnboardingListCategoriesResource,
    BooksOnboardingListCategories (..),
    newBooksOnboardingListCategories,

    -- ** books.onboarding.listCategoryVolumes
    BooksOnboardingListCategoryVolumesResource,
    BooksOnboardingListCategoryVolumes (..),
    newBooksOnboardingListCategoryVolumes,

    -- ** books.personalizedstream.get
    BooksPersonalizedstreamGetResource,
    BooksPersonalizedstreamGet (..),
    newBooksPersonalizedstreamGet,

    -- ** books.promooffer.accept
    BooksPromoofferAcceptResource,
    BooksPromoofferAccept (..),
    newBooksPromoofferAccept,

    -- ** books.promooffer.dismiss
    BooksPromoofferDismissResource,
    BooksPromoofferDismiss (..),
    newBooksPromoofferDismiss,

    -- ** books.promooffer.get
    BooksPromoofferGetResource,
    BooksPromoofferGet (..),
    newBooksPromoofferGet,

    -- ** books.series.get
    BooksSeriesGetResource,
    BooksSeriesGet (..),
    newBooksSeriesGet,

    -- ** books.series.membership.get
    BooksSeriesMembershipGetResource,
    BooksSeriesMembershipGet (..),
    newBooksSeriesMembershipGet,

    -- ** books.volumes.associated.list
    BooksVolumesAssociatedListResource,
    BooksVolumesAssociatedList (..),
    newBooksVolumesAssociatedList,

    -- ** books.volumes.get
    BooksVolumesGetResource,
    BooksVolumesGet (..),
    newBooksVolumesGet,

    -- ** books.volumes.list
    BooksVolumesListResource,
    BooksVolumesList (..),
    newBooksVolumesList,

    -- ** books.volumes.mybooks.list
    BooksVolumesMybooksListResource,
    BooksVolumesMybooksList (..),
    newBooksVolumesMybooksList,

    -- ** books.volumes.recommended.list
    BooksVolumesRecommendedListResource,
    BooksVolumesRecommendedList (..),
    newBooksVolumesRecommendedList,

    -- ** books.volumes.recommended.rate
    BooksVolumesRecommendedRateResource,
    BooksVolumesRecommendedRate (..),
    newBooksVolumesRecommendedRate,

    -- ** books.volumes.useruploaded.list
    BooksVolumesUseruploadedListResource,
    BooksVolumesUseruploadedList (..),
    newBooksVolumesUseruploadedList,

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

import Gogol.Books.Bookshelves.Get
import Gogol.Books.Bookshelves.List
import Gogol.Books.Bookshelves.Volumes.List
import Gogol.Books.Cloudloading.AddBook
import Gogol.Books.Cloudloading.DeleteBook
import Gogol.Books.Cloudloading.UpdateBook
import Gogol.Books.Dictionary.ListOfflineMetadata
import Gogol.Books.Familysharing.GetFamilyInfo
import Gogol.Books.Familysharing.Share
import Gogol.Books.Familysharing.Unshare
import Gogol.Books.Layers.AnnotationData.Get
import Gogol.Books.Layers.AnnotationData.List
import Gogol.Books.Layers.Get
import Gogol.Books.Layers.List
import Gogol.Books.Layers.VolumeAnnotations.Get
import Gogol.Books.Layers.VolumeAnnotations.List
import Gogol.Books.Myconfig.GetUserSettings
import Gogol.Books.Myconfig.ReleaseDownloadAccess
import Gogol.Books.Myconfig.RequestAccess
import Gogol.Books.Myconfig.SyncVolumeLicenses
import Gogol.Books.Myconfig.UpdateUserSettings
import Gogol.Books.Mylibrary.Annotations.Delete
import Gogol.Books.Mylibrary.Annotations.Insert
import Gogol.Books.Mylibrary.Annotations.List
import Gogol.Books.Mylibrary.Annotations.Summary
import Gogol.Books.Mylibrary.Annotations.Update
import Gogol.Books.Mylibrary.Bookshelves.AddVolume
import Gogol.Books.Mylibrary.Bookshelves.ClearVolumes
import Gogol.Books.Mylibrary.Bookshelves.Get
import Gogol.Books.Mylibrary.Bookshelves.List
import Gogol.Books.Mylibrary.Bookshelves.MoveVolume
import Gogol.Books.Mylibrary.Bookshelves.RemoveVolume
import Gogol.Books.Mylibrary.Bookshelves.Volumes.List
import Gogol.Books.Mylibrary.Readingpositions.Get
import Gogol.Books.Mylibrary.Readingpositions.SetPosition
import Gogol.Books.Notification.Get
import Gogol.Books.Onboarding.ListCategories
import Gogol.Books.Onboarding.ListCategoryVolumes
import Gogol.Books.Personalizedstream.Get
import Gogol.Books.Promooffer.Accept
import Gogol.Books.Promooffer.Dismiss
import Gogol.Books.Promooffer.Get
import Gogol.Books.Series.Get
import Gogol.Books.Series.Membership.Get
import Gogol.Books.Types
import Gogol.Books.Volumes.Associated.List
import Gogol.Books.Volumes.Get
import Gogol.Books.Volumes.List
import Gogol.Books.Volumes.Mybooks.List
import Gogol.Books.Volumes.Recommended.List
import Gogol.Books.Volumes.Recommended.Rate
import Gogol.Books.Volumes.Useruploaded.List
