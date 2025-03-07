{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Books.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Books.Internal.Product
  ( -- * Annotation
    Annotation (..),
    newAnnotation,

    -- * Annotation_ClientVersionRanges
    Annotation_ClientVersionRanges (..),
    newAnnotation_ClientVersionRanges,

    -- * Annotation_CurrentVersionRanges
    Annotation_CurrentVersionRanges (..),
    newAnnotation_CurrentVersionRanges,

    -- * Annotation_LayerSummary
    Annotation_LayerSummary (..),
    newAnnotation_LayerSummary,

    -- * Annotations
    Annotations (..),
    newAnnotations,

    -- * AnnotationsSummary
    AnnotationsSummary (..),
    newAnnotationsSummary,

    -- * AnnotationsSummary_LayersItem
    AnnotationsSummary_LayersItem (..),
    newAnnotationsSummary_LayersItem,

    -- * Annotationsdata
    Annotationsdata (..),
    newAnnotationsdata,

    -- * BooksAnnotationsRange
    BooksAnnotationsRange (..),
    newBooksAnnotationsRange,

    -- * BooksCloudloadingResource
    BooksCloudloadingResource (..),
    newBooksCloudloadingResource,

    -- * BooksVolumesRecommendedRateResponse
    BooksVolumesRecommendedRateResponse (..),
    newBooksVolumesRecommendedRateResponse,

    -- * Bookshelf
    Bookshelf (..),
    newBookshelf,

    -- * Bookshelves
    Bookshelves (..),
    newBookshelves,

    -- * Category
    Category (..),
    newCategory,

    -- * Category_ItemsItem
    Category_ItemsItem (..),
    newCategory_ItemsItem,

    -- * ConcurrentAccessRestriction
    ConcurrentAccessRestriction (..),
    newConcurrentAccessRestriction,

    -- * DictionaryAnnotationdata
    DictionaryAnnotationdata (..),
    newDictionaryAnnotationdata,

    -- * Dictlayerdata
    Dictlayerdata (..),
    newDictlayerdata,

    -- * Dictlayerdata_Common
    Dictlayerdata_Common (..),
    newDictlayerdata_Common,

    -- * Dictlayerdata_Dict
    Dictlayerdata_Dict (..),
    newDictlayerdata_Dict,

    -- * Dictlayerdata_Dict_Source
    Dictlayerdata_Dict_Source (..),
    newDictlayerdata_Dict_Source,

    -- * Dictlayerdata_Dict_WordsItem
    Dictlayerdata_Dict_WordsItem (..),
    newDictlayerdata_Dict_WordsItem,

    -- * Dictlayerdata_Dict_WordsItem_DerivativesItem
    Dictlayerdata_Dict_WordsItem_DerivativesItem (..),
    newDictlayerdata_Dict_WordsItem_DerivativesItem,

    -- * Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
    Dictlayerdata_Dict_WordsItem_DerivativesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_DerivativesItem_Source,

    -- * Dictlayerdata_Dict_WordsItem_ExamplesItem
    Dictlayerdata_Dict_WordsItem_ExamplesItem (..),
    newDictlayerdata_Dict_WordsItem_ExamplesItem,

    -- * Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
    Dictlayerdata_Dict_WordsItem_ExamplesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_ExamplesItem_Source,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem
    Dictlayerdata_Dict_WordsItem_SensesItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
    Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem_Source
    Dictlayerdata_Dict_WordsItem_SensesItem_Source (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_Source,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem,

    -- * Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source (..),
    newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source,

    -- * Dictlayerdata_Dict_WordsItem_Source
    Dictlayerdata_Dict_WordsItem_Source (..),
    newDictlayerdata_Dict_WordsItem_Source,

    -- * Discoveryclusters
    Discoveryclusters (..),
    newDiscoveryclusters,

    -- * Discoveryclusters_ClustersItem
    Discoveryclusters_ClustersItem (..),
    newDiscoveryclusters_ClustersItem,

    -- * Discoveryclusters_ClustersItem_Banner_with_content_container
    Discoveryclusters_ClustersItem_Banner_with_content_container (..),
    newDiscoveryclusters_ClustersItem_Banner_with_content_container,

    -- * DownloadAccessRestriction
    DownloadAccessRestriction (..),
    newDownloadAccessRestriction,

    -- * DownloadAccesses
    DownloadAccesses (..),
    newDownloadAccesses,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FamilyInfo
    FamilyInfo (..),
    newFamilyInfo,

    -- * FamilyInfo_Membership
    FamilyInfo_Membership (..),
    newFamilyInfo_Membership,

    -- * GeoAnnotationdata
    GeoAnnotationdata (..),
    newGeoAnnotationdata,

    -- * Geolayerdata
    Geolayerdata (..),
    newGeolayerdata,

    -- * Geolayerdata_Common
    Geolayerdata_Common (..),
    newGeolayerdata_Common,

    -- * Geolayerdata_Geo
    Geolayerdata_Geo (..),
    newGeolayerdata_Geo,

    -- * Geolayerdata_Geo_Viewport
    Geolayerdata_Geo_Viewport (..),
    newGeolayerdata_Geo_Viewport,

    -- * Geolayerdata_Geo_Viewport_Hi
    Geolayerdata_Geo_Viewport_Hi (..),
    newGeolayerdata_Geo_Viewport_Hi,

    -- * Geolayerdata_Geo_Viewport_Lo
    Geolayerdata_Geo_Viewport_Lo (..),
    newGeolayerdata_Geo_Viewport_Lo,

    -- * Layersummaries
    Layersummaries (..),
    newLayersummaries,

    -- * Layersummary
    Layersummary (..),
    newLayersummary,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * Metadata_ItemsItem
    Metadata_ItemsItem (..),
    newMetadata_ItemsItem,

    -- * Notification
    Notification (..),
    newNotification,

    -- * Offers
    Offers (..),
    newOffers,

    -- * Offers_ItemsItem
    Offers_ItemsItem (..),
    newOffers_ItemsItem,

    -- * Offers_ItemsItem_ItemsItem
    Offers_ItemsItem_ItemsItem (..),
    newOffers_ItemsItem_ItemsItem,

    -- * ReadingPosition
    ReadingPosition (..),
    newReadingPosition,

    -- * RequestAccessData
    RequestAccessData (..),
    newRequestAccessData,

    -- * Review
    Review (..),
    newReview,

    -- * Review_Author
    Review_Author (..),
    newReview_Author,

    -- * Review_Source
    Review_Source (..),
    newReview_Source,

    -- * Series
    Series (..),
    newSeries,

    -- * Series_SeriesItem
    Series_SeriesItem (..),
    newSeries_SeriesItem,

    -- * Series_SeriesItem_SeriesSubscriptionReleaseInfo
    Series_SeriesItem_SeriesSubscriptionReleaseInfo (..),
    newSeries_SeriesItem_SeriesSubscriptionReleaseInfo,

    -- * Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo (..),
    newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo,

    -- * Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo (..),
    newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo,

    -- * Seriesmembership
    Seriesmembership (..),
    newSeriesmembership,

    -- * Usersettings
    Usersettings (..),
    newUsersettings,

    -- * Usersettings_NotesExport
    Usersettings_NotesExport (..),
    newUsersettings_NotesExport,

    -- * Usersettings_Notification
    Usersettings_Notification (..),
    newUsersettings_Notification,

    -- * Usersettings_Notification_MatchMyInterests
    Usersettings_Notification_MatchMyInterests (..),
    newUsersettings_Notification_MatchMyInterests,

    -- * Usersettings_Notification_MoreFromAuthors
    Usersettings_Notification_MoreFromAuthors (..),
    newUsersettings_Notification_MoreFromAuthors,

    -- * Usersettings_Notification_MoreFromSeries
    Usersettings_Notification_MoreFromSeries (..),
    newUsersettings_Notification_MoreFromSeries,

    -- * Usersettings_Notification_PriceDrop
    Usersettings_Notification_PriceDrop (..),
    newUsersettings_Notification_PriceDrop,

    -- * Usersettings_Notification_RewardExpirations
    Usersettings_Notification_RewardExpirations (..),
    newUsersettings_Notification_RewardExpirations,

    -- * Volume
    Volume (..),
    newVolume,

    -- * Volume_AccessInfo
    Volume_AccessInfo (..),
    newVolume_AccessInfo,

    -- * Volume_AccessInfo_Epub
    Volume_AccessInfo_Epub (..),
    newVolume_AccessInfo_Epub,

    -- * Volume_AccessInfo_Pdf
    Volume_AccessInfo_Pdf (..),
    newVolume_AccessInfo_Pdf,

    -- * Volume_LayerInfo
    Volume_LayerInfo (..),
    newVolume_LayerInfo,

    -- * Volume_LayerInfo_LayersItem
    Volume_LayerInfo_LayersItem (..),
    newVolume_LayerInfo_LayersItem,

    -- * Volume_RecommendedInfo
    Volume_RecommendedInfo (..),
    newVolume_RecommendedInfo,

    -- * Volume_SaleInfo
    Volume_SaleInfo (..),
    newVolume_SaleInfo,

    -- * Volume_SaleInfo_ListPrice
    Volume_SaleInfo_ListPrice (..),
    newVolume_SaleInfo_ListPrice,

    -- * Volume_SaleInfo_OffersItem
    Volume_SaleInfo_OffersItem (..),
    newVolume_SaleInfo_OffersItem,

    -- * Volume_SaleInfo_OffersItem_ListPrice
    Volume_SaleInfo_OffersItem_ListPrice (..),
    newVolume_SaleInfo_OffersItem_ListPrice,

    -- * Volume_SaleInfo_OffersItem_RentalDuration
    Volume_SaleInfo_OffersItem_RentalDuration (..),
    newVolume_SaleInfo_OffersItem_RentalDuration,

    -- * Volume_SaleInfo_OffersItem_RetailPrice
    Volume_SaleInfo_OffersItem_RetailPrice (..),
    newVolume_SaleInfo_OffersItem_RetailPrice,

    -- * Volume_SaleInfo_RetailPrice
    Volume_SaleInfo_RetailPrice (..),
    newVolume_SaleInfo_RetailPrice,

    -- * Volume_SearchInfo
    Volume_SearchInfo (..),
    newVolume_SearchInfo,

    -- * Volume_UserInfo
    Volume_UserInfo (..),
    newVolume_UserInfo,

    -- * Volume_UserInfo_Copy
    Volume_UserInfo_Copy (..),
    newVolume_UserInfo_Copy,

    -- * Volume_UserInfo_FamilySharing
    Volume_UserInfo_FamilySharing (..),
    newVolume_UserInfo_FamilySharing,

    -- * Volume_UserInfo_RentalPeriod
    Volume_UserInfo_RentalPeriod (..),
    newVolume_UserInfo_RentalPeriod,

    -- * Volume_UserInfo_UserUploadedVolumeInfo
    Volume_UserInfo_UserUploadedVolumeInfo (..),
    newVolume_UserInfo_UserUploadedVolumeInfo,

    -- * Volume_VolumeInfo
    Volume_VolumeInfo (..),
    newVolume_VolumeInfo,

    -- * Volume_VolumeInfo_Dimensions
    Volume_VolumeInfo_Dimensions (..),
    newVolume_VolumeInfo_Dimensions,

    -- * Volume_VolumeInfo_ImageLinks
    Volume_VolumeInfo_ImageLinks (..),
    newVolume_VolumeInfo_ImageLinks,

    -- * Volume_VolumeInfo_IndustryIdentifiersItem
    Volume_VolumeInfo_IndustryIdentifiersItem (..),
    newVolume_VolumeInfo_IndustryIdentifiersItem,

    -- * Volume_VolumeInfo_PanelizationSummary
    Volume_VolumeInfo_PanelizationSummary (..),
    newVolume_VolumeInfo_PanelizationSummary,

    -- * Volume_VolumeInfo_ReadingModes
    Volume_VolumeInfo_ReadingModes (..),
    newVolume_VolumeInfo_ReadingModes,

    -- * Volume2
    Volume2 (..),
    newVolume2,

    -- * Volumeannotation
    Volumeannotation (..),
    newVolumeannotation,

    -- * Volumeannotation_ContentRanges
    Volumeannotation_ContentRanges (..),
    newVolumeannotation_ContentRanges,

    -- * Volumeannotations
    Volumeannotations (..),
    newVolumeannotations,

    -- * Volumes
    Volumes (..),
    newVolumes,

    -- * Volumeseriesinfo
    Volumeseriesinfo (..),
    newVolumeseriesinfo,

    -- * Volumeseriesinfo_VolumeSeriesItem
    Volumeseriesinfo_VolumeSeriesItem (..),
    newVolumeseriesinfo_VolumeSeriesItem,

    -- * Volumeseriesinfo_VolumeSeriesItem_IssueItem
    Volumeseriesinfo_VolumeSeriesItem_IssueItem (..),
    newVolumeseriesinfo_VolumeSeriesItem_IssueItem,
  )
where

import Gogol.Books.Internal.Sum
import Gogol.Prelude qualified as Core

--
-- /See:/ 'newAnnotation' smart constructor.
data Annotation = Annotation
  { -- | Anchor text after excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty.
    afterSelectedText :: (Core.Maybe Core.Text),
    -- | Anchor text before excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty.
    beforeSelectedText :: (Core.Maybe Core.Text),
    -- | Selection ranges sent from the client.
    clientVersionRanges :: (Core.Maybe Annotation_ClientVersionRanges),
    -- | Timestamp for the created time of this annotation.
    created :: (Core.Maybe Core.Text),
    -- | Selection ranges for the most recent content version.
    currentVersionRanges :: (Core.Maybe Annotation_CurrentVersionRanges),
    -- | User-created data for this annotation.
    data' :: (Core.Maybe Core.Text),
    -- | Indicates that this annotation is deleted.
    deleted :: (Core.Maybe Core.Bool),
    -- | The highlight style for this annotation.
    highlightStyle :: (Core.Maybe Core.Text),
    -- | Id of this annotation, in the form of a GUID.
    id :: (Core.Maybe Core.Text),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | The layer this annotation is for.
    layerId :: (Core.Maybe Core.Text),
    layerSummary :: (Core.Maybe Annotation_LayerSummary),
    -- | Pages that this annotation spans.
    pageIds :: (Core.Maybe [Core.Text]),
    -- | Excerpt from the volume.
    selectedText :: (Core.Maybe Core.Text),
    -- | URL to this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | Timestamp for the last time this annotation was modified.
    updated :: (Core.Maybe Core.Text),
    -- | The volume that this annotation belongs to.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
newAnnotation ::
  Annotation
newAnnotation =
  Annotation
    { afterSelectedText = Core.Nothing,
      beforeSelectedText = Core.Nothing,
      clientVersionRanges = Core.Nothing,
      created = Core.Nothing,
      currentVersionRanges = Core.Nothing,
      data' = Core.Nothing,
      deleted = Core.Nothing,
      highlightStyle = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      layerId = Core.Nothing,
      layerSummary = Core.Nothing,
      pageIds = Core.Nothing,
      selectedText = Core.Nothing,
      selfLink = Core.Nothing,
      updated = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON Annotation where
  parseJSON =
    Core.withObject
      "Annotation"
      ( \o ->
          Annotation
            Core.<$> (o Core..:? "afterSelectedText")
            Core.<*> (o Core..:? "beforeSelectedText")
            Core.<*> (o Core..:? "clientVersionRanges")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "currentVersionRanges")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "deleted")
            Core.<*> (o Core..:? "highlightStyle")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "layerId")
            Core.<*> (o Core..:? "layerSummary")
            Core.<*> (o Core..:? "pageIds")
            Core.<*> (o Core..:? "selectedText")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON Annotation where
  toJSON Annotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("afterSelectedText" Core..=) Core.<$> afterSelectedText,
            ("beforeSelectedText" Core..=) Core.<$> beforeSelectedText,
            ("clientVersionRanges" Core..=) Core.<$> clientVersionRanges,
            ("created" Core..=) Core.<$> created,
            ("currentVersionRanges" Core..=) Core.<$> currentVersionRanges,
            ("data" Core..=) Core.<$> data',
            ("deleted" Core..=) Core.<$> deleted,
            ("highlightStyle" Core..=) Core.<$> highlightStyle,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("layerId" Core..=) Core.<$> layerId,
            ("layerSummary" Core..=) Core.<$> layerSummary,
            ("pageIds" Core..=) Core.<$> pageIds,
            ("selectedText" Core..=) Core.<$> selectedText,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("updated" Core..=) Core.<$> updated,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

-- | Selection ranges sent from the client.
--
-- /See:/ 'newAnnotation_ClientVersionRanges' smart constructor.
data Annotation_ClientVersionRanges = Annotation_ClientVersionRanges
  { -- | Range in CFI format for this annotation sent by client.
    cfiRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Content version the client sent in.
    contentVersion :: (Core.Maybe Core.Text),
    -- | Range in GB image format for this annotation sent by client.
    gbImageRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Range in GB text format for this annotation sent by client.
    gbTextRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Range in image CFI format for this annotation sent by client.
    imageCfiRange :: (Core.Maybe BooksAnnotationsRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation_ClientVersionRanges' with the minimum fields required to make a request.
newAnnotation_ClientVersionRanges ::
  Annotation_ClientVersionRanges
newAnnotation_ClientVersionRanges =
  Annotation_ClientVersionRanges
    { cfiRange = Core.Nothing,
      contentVersion = Core.Nothing,
      gbImageRange = Core.Nothing,
      gbTextRange = Core.Nothing,
      imageCfiRange = Core.Nothing
    }

instance Core.FromJSON Annotation_ClientVersionRanges where
  parseJSON =
    Core.withObject
      "Annotation_ClientVersionRanges"
      ( \o ->
          Annotation_ClientVersionRanges
            Core.<$> (o Core..:? "cfiRange")
            Core.<*> (o Core..:? "contentVersion")
            Core.<*> (o Core..:? "gbImageRange")
            Core.<*> (o Core..:? "gbTextRange")
            Core.<*> (o Core..:? "imageCfiRange")
      )

instance Core.ToJSON Annotation_ClientVersionRanges where
  toJSON Annotation_ClientVersionRanges {..} =
    Core.object
      ( Core.catMaybes
          [ ("cfiRange" Core..=) Core.<$> cfiRange,
            ("contentVersion" Core..=) Core.<$> contentVersion,
            ("gbImageRange" Core..=) Core.<$> gbImageRange,
            ("gbTextRange" Core..=) Core.<$> gbTextRange,
            ("imageCfiRange" Core..=) Core.<$> imageCfiRange
          ]
      )

-- | Selection ranges for the most recent content version.
--
-- /See:/ 'newAnnotation_CurrentVersionRanges' smart constructor.
data Annotation_CurrentVersionRanges = Annotation_CurrentVersionRanges
  { -- | Range in CFI format for this annotation for version above.
    cfiRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Content version applicable to ranges below.
    contentVersion :: (Core.Maybe Core.Text),
    -- | Range in GB image format for this annotation for version above.
    gbImageRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Range in GB text format for this annotation for version above.
    gbTextRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Range in image CFI format for this annotation for version above.
    imageCfiRange :: (Core.Maybe BooksAnnotationsRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation_CurrentVersionRanges' with the minimum fields required to make a request.
newAnnotation_CurrentVersionRanges ::
  Annotation_CurrentVersionRanges
newAnnotation_CurrentVersionRanges =
  Annotation_CurrentVersionRanges
    { cfiRange = Core.Nothing,
      contentVersion = Core.Nothing,
      gbImageRange = Core.Nothing,
      gbTextRange = Core.Nothing,
      imageCfiRange = Core.Nothing
    }

instance Core.FromJSON Annotation_CurrentVersionRanges where
  parseJSON =
    Core.withObject
      "Annotation_CurrentVersionRanges"
      ( \o ->
          Annotation_CurrentVersionRanges
            Core.<$> (o Core..:? "cfiRange")
            Core.<*> (o Core..:? "contentVersion")
            Core.<*> (o Core..:? "gbImageRange")
            Core.<*> (o Core..:? "gbTextRange")
            Core.<*> (o Core..:? "imageCfiRange")
      )

instance Core.ToJSON Annotation_CurrentVersionRanges where
  toJSON Annotation_CurrentVersionRanges {..} =
    Core.object
      ( Core.catMaybes
          [ ("cfiRange" Core..=) Core.<$> cfiRange,
            ("contentVersion" Core..=) Core.<$> contentVersion,
            ("gbImageRange" Core..=) Core.<$> gbImageRange,
            ("gbTextRange" Core..=) Core.<$> gbTextRange,
            ("imageCfiRange" Core..=) Core.<$> imageCfiRange
          ]
      )

--
-- /See:/ 'newAnnotation_LayerSummary' smart constructor.
data Annotation_LayerSummary = Annotation_LayerSummary
  { -- | Maximum allowed characters on this layer, especially for the \"copy\" layer.
    allowedCharacterCount :: (Core.Maybe Core.Int32),
    -- | Type of limitation on this layer. \"limited\" or \"unlimited\" for the \"copy\" layer.
    limitType :: (Core.Maybe Core.Text),
    -- | Remaining allowed characters on this layer, especially for the \"copy\" layer.
    remainingCharacterCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation_LayerSummary' with the minimum fields required to make a request.
newAnnotation_LayerSummary ::
  Annotation_LayerSummary
newAnnotation_LayerSummary =
  Annotation_LayerSummary
    { allowedCharacterCount = Core.Nothing,
      limitType = Core.Nothing,
      remainingCharacterCount = Core.Nothing
    }

instance Core.FromJSON Annotation_LayerSummary where
  parseJSON =
    Core.withObject
      "Annotation_LayerSummary"
      ( \o ->
          Annotation_LayerSummary
            Core.<$> (o Core..:? "allowedCharacterCount")
            Core.<*> (o Core..:? "limitType")
            Core.<*> (o Core..:? "remainingCharacterCount")
      )

instance Core.ToJSON Annotation_LayerSummary where
  toJSON Annotation_LayerSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedCharacterCount" Core..=) Core.<$> allowedCharacterCount,
            ("limitType" Core..=) Core.<$> limitType,
            ("remainingCharacterCount" Core..=)
              Core.<$> remainingCharacterCount
          ]
      )

--
-- /See:/ 'newAnnotations' smart constructor.
data Annotations = Annotations
  { -- | A list of annotations.
    items :: (Core.Maybe [Annotation]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | Token to pass in for pagination for the next page. This will not be present if this request does not have more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Total number of annotations found. This may be greater than the number of notes returned in this response if results have been paginated.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotations' with the minimum fields required to make a request.
newAnnotations ::
  Annotations
newAnnotations =
  Annotations
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON Annotations where
  parseJSON =
    Core.withObject
      "Annotations"
      ( \o ->
          Annotations
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON Annotations where
  toJSON Annotations {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newAnnotationsSummary' smart constructor.
data AnnotationsSummary = AnnotationsSummary
  { kind :: (Core.Maybe Core.Text),
    layers :: (Core.Maybe [AnnotationsSummary_LayersItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotationsSummary' with the minimum fields required to make a request.
newAnnotationsSummary ::
  AnnotationsSummary
newAnnotationsSummary =
  AnnotationsSummary {kind = Core.Nothing, layers = Core.Nothing}

instance Core.FromJSON AnnotationsSummary where
  parseJSON =
    Core.withObject
      "AnnotationsSummary"
      ( \o ->
          AnnotationsSummary
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "layers")
      )

instance Core.ToJSON AnnotationsSummary where
  toJSON AnnotationsSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("layers" Core..=) Core.<$> layers
          ]
      )

--
-- /See:/ 'newAnnotationsSummary_LayersItem' smart constructor.
data AnnotationsSummary_LayersItem = AnnotationsSummary_LayersItem
  { allowedCharacterCount :: (Core.Maybe Core.Int32),
    layerId :: (Core.Maybe Core.Text),
    limitType :: (Core.Maybe Core.Text),
    remainingCharacterCount :: (Core.Maybe Core.Int32),
    updated :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotationsSummary_LayersItem' with the minimum fields required to make a request.
newAnnotationsSummary_LayersItem ::
  AnnotationsSummary_LayersItem
newAnnotationsSummary_LayersItem =
  AnnotationsSummary_LayersItem
    { allowedCharacterCount =
        Core.Nothing,
      layerId = Core.Nothing,
      limitType = Core.Nothing,
      remainingCharacterCount = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON AnnotationsSummary_LayersItem where
  parseJSON =
    Core.withObject
      "AnnotationsSummary_LayersItem"
      ( \o ->
          AnnotationsSummary_LayersItem
            Core.<$> (o Core..:? "allowedCharacterCount")
            Core.<*> (o Core..:? "layerId")
            Core.<*> (o Core..:? "limitType")
            Core.<*> (o Core..:? "remainingCharacterCount")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON AnnotationsSummary_LayersItem where
  toJSON AnnotationsSummary_LayersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedCharacterCount" Core..=) Core.<$> allowedCharacterCount,
            ("layerId" Core..=) Core.<$> layerId,
            ("limitType" Core..=) Core.<$> limitType,
            ("remainingCharacterCount" Core..=)
              Core.<$> remainingCharacterCount,
            ("updated" Core..=) Core.<$> updated
          ]
      )

--
-- /See:/ 'newAnnotationsdata' smart constructor.
data Annotationsdata = Annotationsdata
  { -- | A list of Annotation Data.
    items :: (Core.Maybe [GeoAnnotationdata]),
    -- | Resource type
    kind :: (Core.Maybe Core.Text),
    -- | Token to pass in for pagination for the next page. This will not be present if this request does not have more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of volume annotations found.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotationsdata' with the minimum fields required to make a request.
newAnnotationsdata ::
  Annotationsdata
newAnnotationsdata =
  Annotationsdata
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON Annotationsdata where
  parseJSON =
    Core.withObject
      "Annotationsdata"
      ( \o ->
          Annotationsdata
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON Annotationsdata where
  toJSON Annotationsdata {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newBooksAnnotationsRange' smart constructor.
data BooksAnnotationsRange = BooksAnnotationsRange
  { -- | The offset from the ending position.
    endOffset :: (Core.Maybe Core.Text),
    -- | The ending position for the range.
    endPosition :: (Core.Maybe Core.Text),
    -- | The offset from the starting position.
    startOffset :: (Core.Maybe Core.Text),
    -- | The starting position for the range.
    startPosition :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksAnnotationsRange' with the minimum fields required to make a request.
newBooksAnnotationsRange ::
  BooksAnnotationsRange
newBooksAnnotationsRange =
  BooksAnnotationsRange
    { endOffset = Core.Nothing,
      endPosition = Core.Nothing,
      startOffset = Core.Nothing,
      startPosition = Core.Nothing
    }

instance Core.FromJSON BooksAnnotationsRange where
  parseJSON =
    Core.withObject
      "BooksAnnotationsRange"
      ( \o ->
          BooksAnnotationsRange
            Core.<$> (o Core..:? "endOffset")
            Core.<*> (o Core..:? "endPosition")
            Core.<*> (o Core..:? "startOffset")
            Core.<*> (o Core..:? "startPosition")
      )

instance Core.ToJSON BooksAnnotationsRange where
  toJSON BooksAnnotationsRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endOffset" Core..=) Core.<$> endOffset,
            ("endPosition" Core..=) Core.<$> endPosition,
            ("startOffset" Core..=) Core.<$> startOffset,
            ("startPosition" Core..=) Core.<$> startPosition
          ]
      )

--
-- /See:/ 'newBooksCloudloadingResource' smart constructor.
data BooksCloudloadingResource = BooksCloudloadingResource
  { author :: (Core.Maybe Core.Text),
    processingState :: (Core.Maybe Core.Text),
    title :: (Core.Maybe Core.Text),
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksCloudloadingResource' with the minimum fields required to make a request.
newBooksCloudloadingResource ::
  BooksCloudloadingResource
newBooksCloudloadingResource =
  BooksCloudloadingResource
    { author = Core.Nothing,
      processingState = Core.Nothing,
      title = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON BooksCloudloadingResource where
  parseJSON =
    Core.withObject
      "BooksCloudloadingResource"
      ( \o ->
          BooksCloudloadingResource
            Core.<$> (o Core..:? "author")
            Core.<*> (o Core..:? "processingState")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON BooksCloudloadingResource where
  toJSON BooksCloudloadingResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("author" Core..=) Core.<$> author,
            ("processingState" Core..=) Core.<$> processingState,
            ("title" Core..=) Core.<$> title,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newBooksVolumesRecommendedRateResponse' smart constructor.
newtype BooksVolumesRecommendedRateResponse = BooksVolumesRecommendedRateResponse
  { consistencyToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksVolumesRecommendedRateResponse' with the minimum fields required to make a request.
newBooksVolumesRecommendedRateResponse ::
  BooksVolumesRecommendedRateResponse
newBooksVolumesRecommendedRateResponse =
  BooksVolumesRecommendedRateResponse
    { consistencyToken =
        Core.Nothing
    }

instance Core.FromJSON BooksVolumesRecommendedRateResponse where
  parseJSON =
    Core.withObject
      "BooksVolumesRecommendedRateResponse"
      ( \o ->
          BooksVolumesRecommendedRateResponse
            Core.<$> (o Core..:? "consistency_token")
      )

instance Core.ToJSON BooksVolumesRecommendedRateResponse where
  toJSON BooksVolumesRecommendedRateResponse {..} =
    Core.object
      ( Core.catMaybes
          [("consistency_token" Core..=) Core.<$> consistencyToken]
      )

--
-- /See:/ 'newBookshelf' smart constructor.
data Bookshelf = Bookshelf
  { -- | Whether this bookshelf is PUBLIC or PRIVATE.
    access :: (Core.Maybe Core.Text),
    -- | Created time for this bookshelf (formatted UTC timestamp with millisecond resolution).
    created :: (Core.Maybe Core.Text),
    -- | Description of this bookshelf.
    description :: (Core.Maybe Core.Text),
    -- | Id of this bookshelf, only unique by user.
    id :: (Core.Maybe Core.Int32),
    -- | Resource type for bookshelf metadata.
    kind :: (Core.Maybe Core.Text),
    -- | URL to this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | Title of this bookshelf.
    title :: (Core.Maybe Core.Text),
    -- | Last modified time of this bookshelf (formatted UTC timestamp with millisecond resolution).
    updated :: (Core.Maybe Core.Text),
    -- | Number of volumes in this bookshelf.
    volumeCount :: (Core.Maybe Core.Int32),
    -- | Last time a volume was added or removed from this bookshelf (formatted UTC timestamp with millisecond resolution).
    volumesLastUpdated :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bookshelf' with the minimum fields required to make a request.
newBookshelf ::
  Bookshelf
newBookshelf =
  Bookshelf
    { access = Core.Nothing,
      created = Core.Nothing,
      description = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      selfLink = Core.Nothing,
      title = Core.Nothing,
      updated = Core.Nothing,
      volumeCount = Core.Nothing,
      volumesLastUpdated = Core.Nothing
    }

instance Core.FromJSON Bookshelf where
  parseJSON =
    Core.withObject
      "Bookshelf"
      ( \o ->
          Bookshelf
            Core.<$> (o Core..:? "access")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "volumeCount")
            Core.<*> (o Core..:? "volumesLastUpdated")
      )

instance Core.ToJSON Bookshelf where
  toJSON Bookshelf {..} =
    Core.object
      ( Core.catMaybes
          [ ("access" Core..=) Core.<$> access,
            ("created" Core..=) Core.<$> created,
            ("description" Core..=) Core.<$> description,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("title" Core..=) Core.<$> title,
            ("updated" Core..=) Core.<$> updated,
            ("volumeCount" Core..=) Core.<$> volumeCount,
            ("volumesLastUpdated" Core..=) Core.<$> volumesLastUpdated
          ]
      )

--
-- /See:/ 'newBookshelves' smart constructor.
data Bookshelves = Bookshelves
  { -- | A list of bookshelves.
    items :: (Core.Maybe [Bookshelf]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bookshelves' with the minimum fields required to make a request.
newBookshelves ::
  Bookshelves
newBookshelves =
  Bookshelves {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON Bookshelves where
  parseJSON =
    Core.withObject
      "Bookshelves"
      ( \o ->
          Bookshelves
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Bookshelves where
  toJSON Bookshelves {..} =
    Core.object
      ( Core.catMaybes
          [("items" Core..=) Core.<$> items, ("kind" Core..=) Core.<$> kind]
      )

--
-- /See:/ 'newCategory' smart constructor.
data Category = Category
  { -- | A list of onboarding categories.
    items :: (Core.Maybe [Category_ItemsItem]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Category' with the minimum fields required to make a request.
newCategory ::
  Category
newCategory = Category {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON Category where
  parseJSON =
    Core.withObject
      "Category"
      ( \o ->
          Category
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Category where
  toJSON Category {..} =
    Core.object
      ( Core.catMaybes
          [("items" Core..=) Core.<$> items, ("kind" Core..=) Core.<$> kind]
      )

--
-- /See:/ 'newCategory_ItemsItem' smart constructor.
data Category_ItemsItem = Category_ItemsItem
  { badgeUrl :: (Core.Maybe Core.Text),
    categoryId :: (Core.Maybe Core.Text),
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Category_ItemsItem' with the minimum fields required to make a request.
newCategory_ItemsItem ::
  Category_ItemsItem
newCategory_ItemsItem =
  Category_ItemsItem
    { badgeUrl = Core.Nothing,
      categoryId = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Category_ItemsItem where
  parseJSON =
    Core.withObject
      "Category_ItemsItem"
      ( \o ->
          Category_ItemsItem
            Core.<$> (o Core..:? "badgeUrl")
            Core.<*> (o Core..:? "categoryId")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Category_ItemsItem where
  toJSON Category_ItemsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("badgeUrl" Core..=) Core.<$> badgeUrl,
            ("categoryId" Core..=) Core.<$> categoryId,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newConcurrentAccessRestriction' smart constructor.
data ConcurrentAccessRestriction = ConcurrentAccessRestriction
  { -- | Whether access is granted for this (user, device, volume).
    deviceAllowed :: (Core.Maybe Core.Bool),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | The maximum number of concurrent access licenses for this volume.
    maxConcurrentDevices :: (Core.Maybe Core.Int32),
    -- | Error\/warning message.
    message :: (Core.Maybe Core.Text),
    -- | Client nonce for verification. Download access and client-validation only.
    nonce :: (Core.Maybe Core.Text),
    -- | Error\/warning reason code.
    reasonCode :: (Core.Maybe Core.Text),
    -- | Whether this volume has any concurrent access restrictions.
    restricted :: (Core.Maybe Core.Bool),
    -- | Response signature.
    signature :: (Core.Maybe Core.Text),
    -- | Client app identifier for verification. Download access and client-validation only.
    source :: (Core.Maybe Core.Text),
    -- | Time in seconds for license auto-expiration.
    timeWindowSeconds :: (Core.Maybe Core.Int32),
    -- | Identifies the volume for which this entry applies.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConcurrentAccessRestriction' with the minimum fields required to make a request.
newConcurrentAccessRestriction ::
  ConcurrentAccessRestriction
newConcurrentAccessRestriction =
  ConcurrentAccessRestriction
    { deviceAllowed = Core.Nothing,
      kind = Core.Nothing,
      maxConcurrentDevices = Core.Nothing,
      message = Core.Nothing,
      nonce = Core.Nothing,
      reasonCode = Core.Nothing,
      restricted = Core.Nothing,
      signature = Core.Nothing,
      source = Core.Nothing,
      timeWindowSeconds = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON ConcurrentAccessRestriction where
  parseJSON =
    Core.withObject
      "ConcurrentAccessRestriction"
      ( \o ->
          ConcurrentAccessRestriction
            Core.<$> (o Core..:? "deviceAllowed")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "maxConcurrentDevices")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "nonce")
            Core.<*> (o Core..:? "reasonCode")
            Core.<*> (o Core..:? "restricted")
            Core.<*> (o Core..:? "signature")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "timeWindowSeconds")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON ConcurrentAccessRestriction where
  toJSON ConcurrentAccessRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceAllowed" Core..=) Core.<$> deviceAllowed,
            ("kind" Core..=) Core.<$> kind,
            ("maxConcurrentDevices" Core..=) Core.<$> maxConcurrentDevices,
            ("message" Core..=) Core.<$> message,
            ("nonce" Core..=) Core.<$> nonce,
            ("reasonCode" Core..=) Core.<$> reasonCode,
            ("restricted" Core..=) Core.<$> restricted,
            ("signature" Core..=) Core.<$> signature,
            ("source" Core..=) Core.<$> source,
            ("timeWindowSeconds" Core..=) Core.<$> timeWindowSeconds,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newDictionaryAnnotationdata' smart constructor.
data DictionaryAnnotationdata = DictionaryAnnotationdata
  { -- | The type of annotation this data is for.
    annotationType :: (Core.Maybe Core.Text),
    -- | JSON encoded data for this dictionary annotation data. Emitted with name \'data\' in JSON output. Either this or geo_data will be populated.
    data' :: (Core.Maybe Dictlayerdata),
    -- | Base64 encoded data for this annotation data.
    encodedData :: (Core.Maybe Core.Base64),
    -- | Unique id for this annotation data.
    id :: (Core.Maybe Core.Text),
    -- | Resource Type
    kind :: (Core.Maybe Core.Text),
    -- | The Layer id for this data. *
    layerId :: (Core.Maybe Core.Text),
    -- | URL for this resource. *
    selfLink :: (Core.Maybe Core.Text),
    -- | Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format).
    updated :: (Core.Maybe Core.Text),
    -- | The volume id for this data. *
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DictionaryAnnotationdata' with the minimum fields required to make a request.
newDictionaryAnnotationdata ::
  DictionaryAnnotationdata
newDictionaryAnnotationdata =
  DictionaryAnnotationdata
    { annotationType = Core.Nothing,
      data' = Core.Nothing,
      encodedData = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      layerId = Core.Nothing,
      selfLink = Core.Nothing,
      updated = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON DictionaryAnnotationdata where
  parseJSON =
    Core.withObject
      "DictionaryAnnotationdata"
      ( \o ->
          DictionaryAnnotationdata
            Core.<$> (o Core..:? "annotationType")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "encodedData")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "layerId")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON DictionaryAnnotationdata where
  toJSON DictionaryAnnotationdata {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotationType" Core..=) Core.<$> annotationType,
            ("data" Core..=) Core.<$> data',
            ("encodedData" Core..=) Core.<$> encodedData,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("layerId" Core..=) Core.<$> layerId,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("updated" Core..=) Core.<$> updated,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newDictlayerdata' smart constructor.
data Dictlayerdata = Dictlayerdata
  { common :: (Core.Maybe Dictlayerdata_Common),
    dict :: (Core.Maybe Dictlayerdata_Dict),
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata' with the minimum fields required to make a request.
newDictlayerdata ::
  Dictlayerdata
newDictlayerdata =
  Dictlayerdata
    { common = Core.Nothing,
      dict = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON Dictlayerdata where
  parseJSON =
    Core.withObject
      "Dictlayerdata"
      ( \o ->
          Dictlayerdata
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "dict")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Dictlayerdata where
  toJSON Dictlayerdata {..} =
    Core.object
      ( Core.catMaybes
          [ ("common" Core..=) Core.<$> common,
            ("dict" Core..=) Core.<$> dict,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newDictlayerdata_Common' smart constructor.
newtype Dictlayerdata_Common = Dictlayerdata_Common
  { -- | The display title and localized canonical name to use when searching for this entity on Google search.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Common' with the minimum fields required to make a request.
newDictlayerdata_Common ::
  Dictlayerdata_Common
newDictlayerdata_Common =
  Dictlayerdata_Common {title = Core.Nothing}

instance Core.FromJSON Dictlayerdata_Common where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Common"
      (\o -> Dictlayerdata_Common Core.<$> (o Core..:? "title"))

instance Core.ToJSON Dictlayerdata_Common where
  toJSON Dictlayerdata_Common {..} =
    Core.object (Core.catMaybes [("title" Core..=) Core.<$> title])

--
-- /See:/ 'newDictlayerdata_Dict' smart constructor.
data Dictlayerdata_Dict = Dictlayerdata_Dict
  { -- | The source, url and attribution for this dictionary data.
    source :: (Core.Maybe Dictlayerdata_Dict_Source),
    words :: (Core.Maybe [Dictlayerdata_Dict_WordsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict' with the minimum fields required to make a request.
newDictlayerdata_Dict ::
  Dictlayerdata_Dict
newDictlayerdata_Dict =
  Dictlayerdata_Dict {source = Core.Nothing, words = Core.Nothing}

instance Core.FromJSON Dictlayerdata_Dict where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict"
      ( \o ->
          Dictlayerdata_Dict
            Core.<$> (o Core..:? "source")
            Core.<*> (o Core..:? "words")
      )

instance Core.ToJSON Dictlayerdata_Dict where
  toJSON Dictlayerdata_Dict {..} =
    Core.object
      ( Core.catMaybes
          [ ("source" Core..=) Core.<$> source,
            ("words" Core..=) Core.<$> words
          ]
      )

-- | The source, url and attribution for this dictionary data.
--
-- /See:/ 'newDictlayerdata_Dict_Source' smart constructor.
data Dictlayerdata_Dict_Source = Dictlayerdata_Dict_Source
  { attribution :: (Core.Maybe Core.Text),
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_Source' with the minimum fields required to make a request.
newDictlayerdata_Dict_Source ::
  Dictlayerdata_Dict_Source
newDictlayerdata_Dict_Source =
  Dictlayerdata_Dict_Source
    { attribution = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Dictlayerdata_Dict_Source where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_Source"
      ( \o ->
          Dictlayerdata_Dict_Source
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Dictlayerdata_Dict_Source where
  toJSON Dictlayerdata_Dict_Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribution" Core..=) Core.<$> attribution,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem' smart constructor.
data Dictlayerdata_Dict_WordsItem = Dictlayerdata_Dict_WordsItem
  { derivatives :: (Core.Maybe [Dictlayerdata_Dict_WordsItem_DerivativesItem]),
    examples :: (Core.Maybe [Dictlayerdata_Dict_WordsItem_ExamplesItem]),
    senses :: (Core.Maybe [Dictlayerdata_Dict_WordsItem_SensesItem]),
    -- | The words with different meanings but not related words, e.g. \"go\" (game) and \"go\" (verb).
    source :: (Core.Maybe Dictlayerdata_Dict_WordsItem_Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem ::
  Dictlayerdata_Dict_WordsItem
newDictlayerdata_Dict_WordsItem =
  Dictlayerdata_Dict_WordsItem
    { derivatives = Core.Nothing,
      examples = Core.Nothing,
      senses = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON Dictlayerdata_Dict_WordsItem where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem
            Core.<$> (o Core..:? "derivatives")
            Core.<*> (o Core..:? "examples")
            Core.<*> (o Core..:? "senses")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON Dictlayerdata_Dict_WordsItem where
  toJSON Dictlayerdata_Dict_WordsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("derivatives" Core..=) Core.<$> derivatives,
            ("examples" Core..=) Core.<$> examples,
            ("senses" Core..=) Core.<$> senses,
            ("source" Core..=) Core.<$> source
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_DerivativesItem' smart constructor.
data Dictlayerdata_Dict_WordsItem_DerivativesItem = Dictlayerdata_Dict_WordsItem_DerivativesItem
  { source :: (Core.Maybe Dictlayerdata_Dict_WordsItem_DerivativesItem_Source),
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_DerivativesItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_DerivativesItem ::
  Dictlayerdata_Dict_WordsItem_DerivativesItem
newDictlayerdata_Dict_WordsItem_DerivativesItem =
  Dictlayerdata_Dict_WordsItem_DerivativesItem
    { source =
        Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON Dictlayerdata_Dict_WordsItem_DerivativesItem where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_DerivativesItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_DerivativesItem
            Core.<$> (o Core..:? "source")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Dictlayerdata_Dict_WordsItem_DerivativesItem where
  toJSON Dictlayerdata_Dict_WordsItem_DerivativesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("source" Core..=) Core.<$> source,
            ("text" Core..=) Core.<$> text
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_DerivativesItem_Source' smart constructor.
data Dictlayerdata_Dict_WordsItem_DerivativesItem_Source = Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
  { attribution :: (Core.Maybe Core.Text),
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_DerivativesItem_Source' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_DerivativesItem_Source ::
  Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
newDictlayerdata_Dict_WordsItem_DerivativesItem_Source =
  Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
    { attribution =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_DerivativesItem_Source"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "url")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_DerivativesItem_Source
  where
  toJSON Dictlayerdata_Dict_WordsItem_DerivativesItem_Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribution" Core..=) Core.<$> attribution,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_ExamplesItem' smart constructor.
data Dictlayerdata_Dict_WordsItem_ExamplesItem = Dictlayerdata_Dict_WordsItem_ExamplesItem
  { source :: (Core.Maybe Dictlayerdata_Dict_WordsItem_ExamplesItem_Source),
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_ExamplesItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_ExamplesItem ::
  Dictlayerdata_Dict_WordsItem_ExamplesItem
newDictlayerdata_Dict_WordsItem_ExamplesItem =
  Dictlayerdata_Dict_WordsItem_ExamplesItem
    { source = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON Dictlayerdata_Dict_WordsItem_ExamplesItem where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_ExamplesItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_ExamplesItem
            Core.<$> (o Core..:? "source")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Dictlayerdata_Dict_WordsItem_ExamplesItem where
  toJSON Dictlayerdata_Dict_WordsItem_ExamplesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("source" Core..=) Core.<$> source,
            ("text" Core..=) Core.<$> text
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_ExamplesItem_Source' smart constructor.
data Dictlayerdata_Dict_WordsItem_ExamplesItem_Source = Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
  { attribution :: (Core.Maybe Core.Text),
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_ExamplesItem_Source' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_ExamplesItem_Source ::
  Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
newDictlayerdata_Dict_WordsItem_ExamplesItem_Source =
  Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
    { attribution =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_ExamplesItem_Source"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "url")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_ExamplesItem_Source
  where
  toJSON Dictlayerdata_Dict_WordsItem_ExamplesItem_Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribution" Core..=) Core.<$> attribution,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem = Dictlayerdata_Dict_WordsItem_SensesItem
  { conjugations ::
      ( Core.Maybe
          [Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem]
      ),
    definitions ::
      ( Core.Maybe
          [Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem]
      ),
    partOfSpeech :: (Core.Maybe Core.Text),
    pronunciation :: (Core.Maybe Core.Text),
    pronunciationUrl :: (Core.Maybe Core.Text),
    source :: (Core.Maybe Dictlayerdata_Dict_WordsItem_SensesItem_Source),
    syllabification :: (Core.Maybe Core.Text),
    synonyms :: (Core.Maybe [Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem ::
  Dictlayerdata_Dict_WordsItem_SensesItem
newDictlayerdata_Dict_WordsItem_SensesItem =
  Dictlayerdata_Dict_WordsItem_SensesItem
    { conjugations =
        Core.Nothing,
      definitions = Core.Nothing,
      partOfSpeech = Core.Nothing,
      pronunciation = Core.Nothing,
      pronunciationUrl = Core.Nothing,
      source = Core.Nothing,
      syllabification = Core.Nothing,
      synonyms = Core.Nothing
    }

instance Core.FromJSON Dictlayerdata_Dict_WordsItem_SensesItem where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem
            Core.<$> (o Core..:? "conjugations")
            Core.<*> (o Core..:? "definitions")
            Core.<*> (o Core..:? "partOfSpeech")
            Core.<*> (o Core..:? "pronunciation")
            Core.<*> (o Core..:? "pronunciationUrl")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "syllabification")
            Core.<*> (o Core..:? "synonyms")
      )

instance Core.ToJSON Dictlayerdata_Dict_WordsItem_SensesItem where
  toJSON Dictlayerdata_Dict_WordsItem_SensesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("conjugations" Core..=) Core.<$> conjugations,
            ("definitions" Core..=) Core.<$> definitions,
            ("partOfSpeech" Core..=) Core.<$> partOfSpeech,
            ("pronunciation" Core..=) Core.<$> pronunciation,
            ("pronunciationUrl" Core..=) Core.<$> pronunciationUrl,
            ("source" Core..=) Core.<$> source,
            ("syllabification" Core..=) Core.<$> syllabification,
            ("synonyms" Core..=) Core.<$> synonyms
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem = Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
  { type' :: (Core.Maybe Core.Text),
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem ::
  Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
newDictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem =
  Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
    { type' =
        Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
            Core.<$> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem
  where
  toJSON Dictlayerdata_Dict_WordsItem_SensesItem_ConjugationsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem = Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
  { definition :: (Core.Maybe Core.Text),
    examples ::
      ( Core.Maybe
          [Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem ::
  Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem =
  Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
    { definition =
        Core.Nothing,
      examples = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
            Core.<$> (o Core..:? "definition")
            Core.<*> (o Core..:? "examples")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem
  where
  toJSON Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("definition" Core..=) Core.<$> definition,
            ("examples" Core..=) Core.<$> examples
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem = Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
  { source ::
      ( Core.Maybe
          Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
      ),
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem ::
  Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem =
  Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
    { source =
        Core.Nothing,
      text = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
            Core.<$> (o Core..:? "source")
            Core.<*> (o Core..:? "text")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem
  where
  toJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("source" Core..=) Core.<$> source,
              ("text" Core..=) Core.<$> text
            ]
        )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source = Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
  { attribution :: (Core.Maybe Core.Text),
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source ::
  Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
newDictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source =
  Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
    { attribution =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "url")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source
  where
  toJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_DefinitionsItem_ExamplesItem_Source {..} =
      Core.object
        ( Core.catMaybes
            [ ("attribution" Core..=) Core.<$> attribution,
              ("url" Core..=) Core.<$> url
            ]
        )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem_Source' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem_Source = Dictlayerdata_Dict_WordsItem_SensesItem_Source
  { attribution :: (Core.Maybe Core.Text),
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem_Source' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem_Source ::
  Dictlayerdata_Dict_WordsItem_SensesItem_Source
newDictlayerdata_Dict_WordsItem_SensesItem_Source =
  Dictlayerdata_Dict_WordsItem_SensesItem_Source
    { attribution =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_Source
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem_Source"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem_Source
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Dictlayerdata_Dict_WordsItem_SensesItem_Source where
  toJSON Dictlayerdata_Dict_WordsItem_SensesItem_Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribution" Core..=) Core.<$> attribution,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem = Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
  { source ::
      ( Core.Maybe
          Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
      ),
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem ::
  Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem =
  Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
    { source =
        Core.Nothing,
      text = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
            Core.<$> (o Core..:? "source")
            Core.<*> (o Core..:? "text")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem
  where
  toJSON Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("source" Core..=) Core.<$> source,
            ("text" Core..=) Core.<$> text
          ]
      )

--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source' smart constructor.
data Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source = Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
  { attribution :: (Core.Maybe Core.Text),
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source ::
  Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
newDictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source =
  Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
    { attribution =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
  where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "url")
      )

instance
  Core.ToJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source
  where
  toJSON
    Dictlayerdata_Dict_WordsItem_SensesItem_SynonymsItem_Source {..} =
      Core.object
        ( Core.catMaybes
            [ ("attribution" Core..=) Core.<$> attribution,
              ("url" Core..=) Core.<$> url
            ]
        )

-- | The words with different meanings but not related words, e.g. \"go\" (game) and \"go\" (verb).
--
-- /See:/ 'newDictlayerdata_Dict_WordsItem_Source' smart constructor.
data Dictlayerdata_Dict_WordsItem_Source = Dictlayerdata_Dict_WordsItem_Source
  { attribution :: (Core.Maybe Core.Text),
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dictlayerdata_Dict_WordsItem_Source' with the minimum fields required to make a request.
newDictlayerdata_Dict_WordsItem_Source ::
  Dictlayerdata_Dict_WordsItem_Source
newDictlayerdata_Dict_WordsItem_Source =
  Dictlayerdata_Dict_WordsItem_Source
    { attribution = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Dictlayerdata_Dict_WordsItem_Source where
  parseJSON =
    Core.withObject
      "Dictlayerdata_Dict_WordsItem_Source"
      ( \o ->
          Dictlayerdata_Dict_WordsItem_Source
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Dictlayerdata_Dict_WordsItem_Source where
  toJSON Dictlayerdata_Dict_WordsItem_Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribution" Core..=) Core.<$> attribution,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newDiscoveryclusters' smart constructor.
data Discoveryclusters = Discoveryclusters
  { clusters :: (Core.Maybe [Discoveryclusters_ClustersItem]),
    -- | Resorce type.
    kind :: (Core.Maybe Core.Text),
    totalClusters :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Discoveryclusters' with the minimum fields required to make a request.
newDiscoveryclusters ::
  Discoveryclusters
newDiscoveryclusters =
  Discoveryclusters
    { clusters = Core.Nothing,
      kind = Core.Nothing,
      totalClusters = Core.Nothing
    }

instance Core.FromJSON Discoveryclusters where
  parseJSON =
    Core.withObject
      "Discoveryclusters"
      ( \o ->
          Discoveryclusters
            Core.<$> (o Core..:? "clusters")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "totalClusters")
      )

instance Core.ToJSON Discoveryclusters where
  toJSON Discoveryclusters {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusters" Core..=) Core.<$> clusters,
            ("kind" Core..=) Core.<$> kind,
            ("totalClusters" Core..=) Core.<$> totalClusters
          ]
      )

--
-- /See:/ 'newDiscoveryclusters_ClustersItem' smart constructor.
data Discoveryclusters_ClustersItem = Discoveryclusters_ClustersItem
  { bannerWithContentContainer ::
      ( Core.Maybe
          Discoveryclusters_ClustersItem_Banner_with_content_container
      ),
    subTitle :: (Core.Maybe Core.Text),
    title :: (Core.Maybe Core.Text),
    totalVolumes :: (Core.Maybe Core.Int32),
    uid :: (Core.Maybe Core.Text),
    volumes :: (Core.Maybe [Volume])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Discoveryclusters_ClustersItem' with the minimum fields required to make a request.
newDiscoveryclusters_ClustersItem ::
  Discoveryclusters_ClustersItem
newDiscoveryclusters_ClustersItem =
  Discoveryclusters_ClustersItem
    { bannerWithContentContainer =
        Core.Nothing,
      subTitle = Core.Nothing,
      title = Core.Nothing,
      totalVolumes = Core.Nothing,
      uid = Core.Nothing,
      volumes = Core.Nothing
    }

instance Core.FromJSON Discoveryclusters_ClustersItem where
  parseJSON =
    Core.withObject
      "Discoveryclusters_ClustersItem"
      ( \o ->
          Discoveryclusters_ClustersItem
            Core.<$> (o Core..:? "banner_with_content_container")
            Core.<*> (o Core..:? "subTitle")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "totalVolumes")
            Core.<*> (o Core..:? "uid")
            Core.<*> (o Core..:? "volumes")
      )

instance Core.ToJSON Discoveryclusters_ClustersItem where
  toJSON Discoveryclusters_ClustersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("banner_with_content_container" Core..=)
              Core.<$> bannerWithContentContainer,
            ("subTitle" Core..=) Core.<$> subTitle,
            ("title" Core..=) Core.<$> title,
            ("totalVolumes" Core..=) Core.<$> totalVolumes,
            ("uid" Core..=) Core.<$> uid,
            ("volumes" Core..=) Core.<$> volumes
          ]
      )

--
-- /See:/ 'newDiscoveryclusters_ClustersItem_Banner_with_content_container' smart constructor.
data Discoveryclusters_ClustersItem_Banner_with_content_container = Discoveryclusters_ClustersItem_Banner_with_content_container
  { fillColorArgb :: (Core.Maybe Core.Text),
    imageUrl :: (Core.Maybe Core.Text),
    maskColorArgb :: (Core.Maybe Core.Text),
    moreButtonText :: (Core.Maybe Core.Text),
    moreButtonUrl :: (Core.Maybe Core.Text),
    textColorArgb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Discoveryclusters_ClustersItem_Banner_with_content_container' with the minimum fields required to make a request.
newDiscoveryclusters_ClustersItem_Banner_with_content_container ::
  Discoveryclusters_ClustersItem_Banner_with_content_container
newDiscoveryclusters_ClustersItem_Banner_with_content_container =
  Discoveryclusters_ClustersItem_Banner_with_content_container
    { fillColorArgb =
        Core.Nothing,
      imageUrl = Core.Nothing,
      maskColorArgb = Core.Nothing,
      moreButtonText = Core.Nothing,
      moreButtonUrl = Core.Nothing,
      textColorArgb = Core.Nothing
    }

instance
  Core.FromJSON
    Discoveryclusters_ClustersItem_Banner_with_content_container
  where
  parseJSON =
    Core.withObject
      "Discoveryclusters_ClustersItem_Banner_with_content_container"
      ( \o ->
          Discoveryclusters_ClustersItem_Banner_with_content_container
            Core.<$> (o Core..:? "fillColorArgb")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "maskColorArgb")
            Core.<*> (o Core..:? "moreButtonText")
            Core.<*> (o Core..:? "moreButtonUrl")
            Core.<*> (o Core..:? "textColorArgb")
      )

instance
  Core.ToJSON
    Discoveryclusters_ClustersItem_Banner_with_content_container
  where
  toJSON
    Discoveryclusters_ClustersItem_Banner_with_content_container {..} =
      Core.object
        ( Core.catMaybes
            [ ("fillColorArgb" Core..=) Core.<$> fillColorArgb,
              ("imageUrl" Core..=) Core.<$> imageUrl,
              ("maskColorArgb" Core..=) Core.<$> maskColorArgb,
              ("moreButtonText" Core..=) Core.<$> moreButtonText,
              ("moreButtonUrl" Core..=) Core.<$> moreButtonUrl,
              ("textColorArgb" Core..=) Core.<$> textColorArgb
            ]
        )

--
-- /See:/ 'newDownloadAccessRestriction' smart constructor.
data DownloadAccessRestriction = DownloadAccessRestriction
  { -- | If restricted, whether access is granted for this (user, device, volume).
    deviceAllowed :: (Core.Maybe Core.Bool),
    -- | If restricted, the number of content download licenses already acquired (including the requesting client, if licensed).
    downloadsAcquired :: (Core.Maybe Core.Int32),
    -- | If deviceAllowed, whether access was just acquired with this request.
    justAcquired :: (Core.Maybe Core.Bool),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | If restricted, the maximum number of content download licenses for this volume.
    maxDownloadDevices :: (Core.Maybe Core.Int32),
    -- | Error\/warning message.
    message :: (Core.Maybe Core.Text),
    -- | Client nonce for verification. Download access and client-validation only.
    nonce :: (Core.Maybe Core.Text),
    -- | Error\/warning reason code. Additional codes may be added in the future. 0 OK 100 ACCESS/DENIED/PUBLISHER/LIMIT 101 ACCESS/DENIED/LIMIT 200 WARNING/USED/LAST/ACCESS
    reasonCode :: (Core.Maybe Core.Text),
    -- | Whether this volume has any download access restrictions.
    restricted :: (Core.Maybe Core.Bool),
    -- | Response signature.
    signature :: (Core.Maybe Core.Text),
    -- | Client app identifier for verification. Download access and client-validation only.
    source :: (Core.Maybe Core.Text),
    -- | Identifies the volume for which this entry applies.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DownloadAccessRestriction' with the minimum fields required to make a request.
newDownloadAccessRestriction ::
  DownloadAccessRestriction
newDownloadAccessRestriction =
  DownloadAccessRestriction
    { deviceAllowed = Core.Nothing,
      downloadsAcquired = Core.Nothing,
      justAcquired = Core.Nothing,
      kind = Core.Nothing,
      maxDownloadDevices = Core.Nothing,
      message = Core.Nothing,
      nonce = Core.Nothing,
      reasonCode = Core.Nothing,
      restricted = Core.Nothing,
      signature = Core.Nothing,
      source = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON DownloadAccessRestriction where
  parseJSON =
    Core.withObject
      "DownloadAccessRestriction"
      ( \o ->
          DownloadAccessRestriction
            Core.<$> (o Core..:? "deviceAllowed")
            Core.<*> (o Core..:? "downloadsAcquired")
            Core.<*> (o Core..:? "justAcquired")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "maxDownloadDevices")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "nonce")
            Core.<*> (o Core..:? "reasonCode")
            Core.<*> (o Core..:? "restricted")
            Core.<*> (o Core..:? "signature")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON DownloadAccessRestriction where
  toJSON DownloadAccessRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceAllowed" Core..=) Core.<$> deviceAllowed,
            ("downloadsAcquired" Core..=) Core.<$> downloadsAcquired,
            ("justAcquired" Core..=) Core.<$> justAcquired,
            ("kind" Core..=) Core.<$> kind,
            ("maxDownloadDevices" Core..=) Core.<$> maxDownloadDevices,
            ("message" Core..=) Core.<$> message,
            ("nonce" Core..=) Core.<$> nonce,
            ("reasonCode" Core..=) Core.<$> reasonCode,
            ("restricted" Core..=) Core.<$> restricted,
            ("signature" Core..=) Core.<$> signature,
            ("source" Core..=) Core.<$> source,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newDownloadAccesses' smart constructor.
data DownloadAccesses = DownloadAccesses
  { -- | A list of download access responses.
    downloadAccessList :: (Core.Maybe [DownloadAccessRestriction]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DownloadAccesses' with the minimum fields required to make a request.
newDownloadAccesses ::
  DownloadAccesses
newDownloadAccesses =
  DownloadAccesses
    { downloadAccessList = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON DownloadAccesses where
  parseJSON =
    Core.withObject
      "DownloadAccesses"
      ( \o ->
          DownloadAccesses
            Core.<$> (o Core..:? "downloadAccessList")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON DownloadAccesses where
  toJSON DownloadAccesses {..} =
    Core.object
      ( Core.catMaybes
          [ ("downloadAccessList" Core..=) Core.<$> downloadAccessList,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newFamilyInfo' smart constructor.
data FamilyInfo = FamilyInfo
  { -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | Family membership info of the user that made the request.
    membership :: (Core.Maybe FamilyInfo_Membership)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FamilyInfo' with the minimum fields required to make a request.
newFamilyInfo ::
  FamilyInfo
newFamilyInfo =
  FamilyInfo {kind = Core.Nothing, membership = Core.Nothing}

instance Core.FromJSON FamilyInfo where
  parseJSON =
    Core.withObject
      "FamilyInfo"
      ( \o ->
          FamilyInfo
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "membership")
      )

instance Core.ToJSON FamilyInfo where
  toJSON FamilyInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("membership" Core..=) Core.<$> membership
          ]
      )

-- | Family membership info of the user that made the request.
--
-- /See:/ 'newFamilyInfo_Membership' smart constructor.
data FamilyInfo_Membership = FamilyInfo_Membership
  { -- | Restrictions on user buying and acquiring content.
    acquirePermission :: (Core.Maybe Core.Text),
    -- | The age group of the user.
    ageGroup :: (Core.Maybe Core.Text),
    -- | The maximum allowed maturity rating for the user.
    allowedMaturityRating :: (Core.Maybe Core.Text),
    isInFamily :: (Core.Maybe Core.Bool),
    -- | The role of the user in the family.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FamilyInfo_Membership' with the minimum fields required to make a request.
newFamilyInfo_Membership ::
  FamilyInfo_Membership
newFamilyInfo_Membership =
  FamilyInfo_Membership
    { acquirePermission = Core.Nothing,
      ageGroup = Core.Nothing,
      allowedMaturityRating = Core.Nothing,
      isInFamily = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON FamilyInfo_Membership where
  parseJSON =
    Core.withObject
      "FamilyInfo_Membership"
      ( \o ->
          FamilyInfo_Membership
            Core.<$> (o Core..:? "acquirePermission")
            Core.<*> (o Core..:? "ageGroup")
            Core.<*> (o Core..:? "allowedMaturityRating")
            Core.<*> (o Core..:? "isInFamily")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON FamilyInfo_Membership where
  toJSON FamilyInfo_Membership {..} =
    Core.object
      ( Core.catMaybes
          [ ("acquirePermission" Core..=) Core.<$> acquirePermission,
            ("ageGroup" Core..=) Core.<$> ageGroup,
            ("allowedMaturityRating" Core..=) Core.<$> allowedMaturityRating,
            ("isInFamily" Core..=) Core.<$> isInFamily,
            ("role" Core..=) Core.<$> role'
          ]
      )

--
-- /See:/ 'newGeoAnnotationdata' smart constructor.
data GeoAnnotationdata = GeoAnnotationdata
  { -- | The type of annotation this data is for.
    annotationType :: (Core.Maybe Core.Text),
    -- | JSON encoded data for this geo annotation data. Emitted with name \'data\' in JSON output. Either this or dict_data will be populated.
    data' :: (Core.Maybe Geolayerdata),
    -- | Base64 encoded data for this annotation data.
    encodedData :: (Core.Maybe Core.Base64),
    -- | Unique id for this annotation data.
    id :: (Core.Maybe Core.Text),
    -- | Resource Type
    kind :: (Core.Maybe Core.Text),
    -- | The Layer id for this data. *
    layerId :: (Core.Maybe Core.Text),
    -- | URL for this resource. *
    selfLink :: (Core.Maybe Core.Text),
    -- | Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format).
    updated :: (Core.Maybe Core.Text),
    -- | The volume id for this data. *
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoAnnotationdata' with the minimum fields required to make a request.
newGeoAnnotationdata ::
  GeoAnnotationdata
newGeoAnnotationdata =
  GeoAnnotationdata
    { annotationType = Core.Nothing,
      data' = Core.Nothing,
      encodedData = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      layerId = Core.Nothing,
      selfLink = Core.Nothing,
      updated = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON GeoAnnotationdata where
  parseJSON =
    Core.withObject
      "GeoAnnotationdata"
      ( \o ->
          GeoAnnotationdata
            Core.<$> (o Core..:? "annotationType")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "encodedData")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "layerId")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON GeoAnnotationdata where
  toJSON GeoAnnotationdata {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotationType" Core..=) Core.<$> annotationType,
            ("data" Core..=) Core.<$> data',
            ("encodedData" Core..=) Core.<$> encodedData,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("layerId" Core..=) Core.<$> layerId,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("updated" Core..=) Core.<$> updated,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newGeolayerdata' smart constructor.
data Geolayerdata = Geolayerdata
  { common :: (Core.Maybe Geolayerdata_Common),
    geo :: (Core.Maybe Geolayerdata_Geo),
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Geolayerdata' with the minimum fields required to make a request.
newGeolayerdata ::
  Geolayerdata
newGeolayerdata =
  Geolayerdata
    { common = Core.Nothing,
      geo = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON Geolayerdata where
  parseJSON =
    Core.withObject
      "Geolayerdata"
      ( \o ->
          Geolayerdata
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "geo")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Geolayerdata where
  toJSON Geolayerdata {..} =
    Core.object
      ( Core.catMaybes
          [ ("common" Core..=) Core.<$> common,
            ("geo" Core..=) Core.<$> geo,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newGeolayerdata_Common' smart constructor.
data Geolayerdata_Common = Geolayerdata_Common
  { -- | The language of the information url and description.
    lang :: (Core.Maybe Core.Text),
    -- | The URL for the preview image information.
    previewImageUrl :: (Core.Maybe Core.Text),
    -- | The description for this location.
    snippet :: (Core.Maybe Core.Text),
    -- | The URL for information for this location. Ex: wikipedia link.
    snippetUrl :: (Core.Maybe Core.Text),
    -- | The display title and localized canonical name to use when searching for this entity on Google search.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Geolayerdata_Common' with the minimum fields required to make a request.
newGeolayerdata_Common ::
  Geolayerdata_Common
newGeolayerdata_Common =
  Geolayerdata_Common
    { lang = Core.Nothing,
      previewImageUrl = Core.Nothing,
      snippet = Core.Nothing,
      snippetUrl = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Geolayerdata_Common where
  parseJSON =
    Core.withObject
      "Geolayerdata_Common"
      ( \o ->
          Geolayerdata_Common
            Core.<$> (o Core..:? "lang")
            Core.<*> (o Core..:? "previewImageUrl")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "snippetUrl")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Geolayerdata_Common where
  toJSON Geolayerdata_Common {..} =
    Core.object
      ( Core.catMaybes
          [ ("lang" Core..=) Core.<$> lang,
            ("previewImageUrl" Core..=) Core.<$> previewImageUrl,
            ("snippet" Core..=) Core.<$> snippet,
            ("snippetUrl" Core..=) Core.<$> snippetUrl,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newGeolayerdata_Geo' smart constructor.
data Geolayerdata_Geo = Geolayerdata_Geo
  { -- | The boundary of the location as a set of loops containing pairs of latitude, longitude coordinates.
    boundary :: (Core.Maybe [Core.Text]),
    -- | The cache policy active for this data. EX: UNRESTRICTED, RESTRICTED, NEVER
    cachePolicy :: (Core.Maybe Core.Text),
    -- | The country code of the location.
    countryCode :: (Core.Maybe Core.Text),
    -- | The latitude of the location.
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude of the location.
    longitude :: (Core.Maybe Core.Double),
    -- | The type of map that should be used for this location. EX: HYBRID, ROADMAP, SATELLITE, TERRAIN
    mapType :: (Core.Maybe Core.Text),
    -- | The viewport for showing this location. This is a latitude, longitude rectangle.
    viewport :: (Core.Maybe Geolayerdata_Geo_Viewport),
    -- | The Zoom level to use for the map. Zoom levels between 0 (the lowest zoom level, in which the entire world can be seen on one map) to 21+ (down to individual buildings). See: https: \/\/developers.google.com\/maps\/documentation\/staticmaps\/#Zoomlevels
    zoom :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Geolayerdata_Geo' with the minimum fields required to make a request.
newGeolayerdata_Geo ::
  Geolayerdata_Geo
newGeolayerdata_Geo =
  Geolayerdata_Geo
    { boundary = Core.Nothing,
      cachePolicy = Core.Nothing,
      countryCode = Core.Nothing,
      latitude = Core.Nothing,
      longitude = Core.Nothing,
      mapType = Core.Nothing,
      viewport = Core.Nothing,
      zoom = Core.Nothing
    }

instance Core.FromJSON Geolayerdata_Geo where
  parseJSON =
    Core.withObject
      "Geolayerdata_Geo"
      ( \o ->
          Geolayerdata_Geo
            Core.<$> (o Core..:? "boundary")
            Core.<*> (o Core..:? "cachePolicy")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
            Core.<*> (o Core..:? "mapType")
            Core.<*> (o Core..:? "viewport")
            Core.<*> (o Core..:? "zoom")
      )

instance Core.ToJSON Geolayerdata_Geo where
  toJSON Geolayerdata_Geo {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundary" Core..=) Core.<$> boundary,
            ("cachePolicy" Core..=) Core.<$> cachePolicy,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude,
            ("mapType" Core..=) Core.<$> mapType,
            ("viewport" Core..=) Core.<$> viewport,
            ("zoom" Core..=) Core.<$> zoom
          ]
      )

-- | The viewport for showing this location. This is a latitude, longitude rectangle.
--
-- /See:/ 'newGeolayerdata_Geo_Viewport' smart constructor.
data Geolayerdata_Geo_Viewport = Geolayerdata_Geo_Viewport
  { hi :: (Core.Maybe Geolayerdata_Geo_Viewport_Hi),
    lo :: (Core.Maybe Geolayerdata_Geo_Viewport_Lo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Geolayerdata_Geo_Viewport' with the minimum fields required to make a request.
newGeolayerdata_Geo_Viewport ::
  Geolayerdata_Geo_Viewport
newGeolayerdata_Geo_Viewport =
  Geolayerdata_Geo_Viewport {hi = Core.Nothing, lo = Core.Nothing}

instance Core.FromJSON Geolayerdata_Geo_Viewport where
  parseJSON =
    Core.withObject
      "Geolayerdata_Geo_Viewport"
      ( \o ->
          Geolayerdata_Geo_Viewport
            Core.<$> (o Core..:? "hi")
            Core.<*> (o Core..:? "lo")
      )

instance Core.ToJSON Geolayerdata_Geo_Viewport where
  toJSON Geolayerdata_Geo_Viewport {..} =
    Core.object
      ( Core.catMaybes
          [("hi" Core..=) Core.<$> hi, ("lo" Core..=) Core.<$> lo]
      )

--
-- /See:/ 'newGeolayerdata_Geo_Viewport_Hi' smart constructor.
data Geolayerdata_Geo_Viewport_Hi = Geolayerdata_Geo_Viewport_Hi
  { latitude :: (Core.Maybe Core.Double),
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Geolayerdata_Geo_Viewport_Hi' with the minimum fields required to make a request.
newGeolayerdata_Geo_Viewport_Hi ::
  Geolayerdata_Geo_Viewport_Hi
newGeolayerdata_Geo_Viewport_Hi =
  Geolayerdata_Geo_Viewport_Hi
    { latitude = Core.Nothing,
      longitude = Core.Nothing
    }

instance Core.FromJSON Geolayerdata_Geo_Viewport_Hi where
  parseJSON =
    Core.withObject
      "Geolayerdata_Geo_Viewport_Hi"
      ( \o ->
          Geolayerdata_Geo_Viewport_Hi
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON Geolayerdata_Geo_Viewport_Hi where
  toJSON Geolayerdata_Geo_Viewport_Hi {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

--
-- /See:/ 'newGeolayerdata_Geo_Viewport_Lo' smart constructor.
data Geolayerdata_Geo_Viewport_Lo = Geolayerdata_Geo_Viewport_Lo
  { latitude :: (Core.Maybe Core.Double),
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Geolayerdata_Geo_Viewport_Lo' with the minimum fields required to make a request.
newGeolayerdata_Geo_Viewport_Lo ::
  Geolayerdata_Geo_Viewport_Lo
newGeolayerdata_Geo_Viewport_Lo =
  Geolayerdata_Geo_Viewport_Lo
    { latitude = Core.Nothing,
      longitude = Core.Nothing
    }

instance Core.FromJSON Geolayerdata_Geo_Viewport_Lo where
  parseJSON =
    Core.withObject
      "Geolayerdata_Geo_Viewport_Lo"
      ( \o ->
          Geolayerdata_Geo_Viewport_Lo
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON Geolayerdata_Geo_Viewport_Lo where
  toJSON Geolayerdata_Geo_Viewport_Lo {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

--
-- /See:/ 'newLayersummaries' smart constructor.
data Layersummaries = Layersummaries
  { -- | A list of layer summary items.
    items :: (Core.Maybe [Layersummary]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | The total number of layer summaries found.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Layersummaries' with the minimum fields required to make a request.
newLayersummaries ::
  Layersummaries
newLayersummaries =
  Layersummaries
    { items = Core.Nothing,
      kind = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON Layersummaries where
  parseJSON =
    Core.withObject
      "Layersummaries"
      ( \o ->
          Layersummaries
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON Layersummaries where
  toJSON Layersummaries {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newLayersummary' smart constructor.
data Layersummary = Layersummary
  { -- | The number of annotations for this layer.
    annotationCount :: (Core.Maybe Core.Int32),
    -- | The list of annotation types contained for this layer.
    annotationTypes :: (Core.Maybe [Core.Text]),
    -- | Link to get data for this annotation.
    annotationsDataLink :: (Core.Maybe Core.Text),
    -- | The link to get the annotations for this layer.
    annotationsLink :: (Core.Maybe Core.Text),
    -- | The content version this resource is for.
    contentVersion :: (Core.Maybe Core.Text),
    -- | The number of data items for this layer.
    dataCount :: (Core.Maybe Core.Int32),
    -- | Unique id of this layer summary.
    id :: (Core.Maybe Core.Text),
    -- | Resource Type
    kind :: (Core.Maybe Core.Text),
    -- | The layer id for this summary.
    layerId :: (Core.Maybe Core.Text),
    -- | URL to this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | Timestamp for the last time an item in this layer was updated. (RFC 3339 UTC date-time format).
    updated :: (Core.Maybe Core.Text),
    -- | The current version of this layer\'s volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately.
    volumeAnnotationsVersion :: (Core.Maybe Core.Text),
    -- | The volume id this resource is for.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Layersummary' with the minimum fields required to make a request.
newLayersummary ::
  Layersummary
newLayersummary =
  Layersummary
    { annotationCount = Core.Nothing,
      annotationTypes = Core.Nothing,
      annotationsDataLink = Core.Nothing,
      annotationsLink = Core.Nothing,
      contentVersion = Core.Nothing,
      dataCount = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      layerId = Core.Nothing,
      selfLink = Core.Nothing,
      updated = Core.Nothing,
      volumeAnnotationsVersion = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON Layersummary where
  parseJSON =
    Core.withObject
      "Layersummary"
      ( \o ->
          Layersummary
            Core.<$> (o Core..:? "annotationCount")
            Core.<*> (o Core..:? "annotationTypes")
            Core.<*> (o Core..:? "annotationsDataLink")
            Core.<*> (o Core..:? "annotationsLink")
            Core.<*> (o Core..:? "contentVersion")
            Core.<*> (o Core..:? "dataCount")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "layerId")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "volumeAnnotationsVersion")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON Layersummary where
  toJSON Layersummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotationCount" Core..=) Core.<$> annotationCount,
            ("annotationTypes" Core..=) Core.<$> annotationTypes,
            ("annotationsDataLink" Core..=) Core.<$> annotationsDataLink,
            ("annotationsLink" Core..=) Core.<$> annotationsLink,
            ("contentVersion" Core..=) Core.<$> contentVersion,
            ("dataCount" Core..=) Core.<$> dataCount,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("layerId" Core..=) Core.<$> layerId,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("updated" Core..=) Core.<$> updated,
            ("volumeAnnotationsVersion" Core..=)
              Core.<$> volumeAnnotationsVersion,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
  { -- | A list of offline dictionary metadata.
    items :: (Core.Maybe [Metadata_ItemsItem]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata ::
  Metadata
newMetadata = Metadata {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON Metadata where
  parseJSON =
    Core.withObject
      "Metadata"
      ( \o ->
          Metadata
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Metadata where
  toJSON Metadata {..} =
    Core.object
      ( Core.catMaybes
          [("items" Core..=) Core.<$> items, ("kind" Core..=) Core.<$> kind]
      )

--
-- /See:/ 'newMetadata_ItemsItem' smart constructor.
data Metadata_ItemsItem = Metadata_ItemsItem
  { downloadUrl :: (Core.Maybe Core.Text),
    encryptedKey :: (Core.Maybe Core.Text),
    language :: (Core.Maybe Core.Text),
    size :: (Core.Maybe Core.Int64),
    version :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata_ItemsItem' with the minimum fields required to make a request.
newMetadata_ItemsItem ::
  Metadata_ItemsItem
newMetadata_ItemsItem =
  Metadata_ItemsItem
    { downloadUrl = Core.Nothing,
      encryptedKey = Core.Nothing,
      language = Core.Nothing,
      size = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Metadata_ItemsItem where
  parseJSON =
    Core.withObject
      "Metadata_ItemsItem"
      ( \o ->
          Metadata_ItemsItem
            Core.<$> (o Core..:? "download_url")
            Core.<*> (o Core..:? "encrypted_key")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "size" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "version" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Metadata_ItemsItem where
  toJSON Metadata_ItemsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("download_url" Core..=) Core.<$> downloadUrl,
            ("encrypted_key" Core..=) Core.<$> encryptedKey,
            ("language" Core..=) Core.<$> language,
            ("size" Core..=) Core.. Core.AsText Core.<$> size,
            ("version" Core..=) Core.. Core.AsText Core.<$> version
          ]
      )

--
-- /See:/ 'newNotification' smart constructor.
data Notification = Notification
  { body :: (Core.Maybe Core.Text),
    -- | The list of crm experiment ids.
    crmExperimentIds :: (Core.Maybe [Core.Int64]),
    docId :: (Core.Maybe Core.Text),
    docType :: (Core.Maybe Core.Text),
    dontShowNotification :: (Core.Maybe Core.Bool),
    iconUrl :: (Core.Maybe Core.Text),
    isDocumentMature :: (Core.Maybe Core.Bool),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    notificationGroup :: (Core.Maybe Core.Text),
    notificationType :: (Core.Maybe Core.Text),
    pcampaignId :: (Core.Maybe Core.Text),
    reason :: (Core.Maybe Core.Text),
    showNotificationSettingsAction :: (Core.Maybe Core.Bool),
    targetUrl :: (Core.Maybe Core.Text),
    timeToExpireMs :: (Core.Maybe Core.Int64),
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
newNotification ::
  Notification
newNotification =
  Notification
    { body = Core.Nothing,
      crmExperimentIds = Core.Nothing,
      docId = Core.Nothing,
      docType = Core.Nothing,
      dontShowNotification = Core.Nothing,
      iconUrl = Core.Nothing,
      isDocumentMature = Core.Nothing,
      kind = Core.Nothing,
      notificationGroup = Core.Nothing,
      notificationType = Core.Nothing,
      pcampaignId = Core.Nothing,
      reason = Core.Nothing,
      showNotificationSettingsAction = Core.Nothing,
      targetUrl = Core.Nothing,
      timeToExpireMs = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Notification where
  parseJSON =
    Core.withObject
      "Notification"
      ( \o ->
          Notification
            Core.<$> (o Core..:? "body")
            Core.<*> ( o
                         Core..:? "crmExperimentIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "doc_id")
            Core.<*> (o Core..:? "doc_type")
            Core.<*> (o Core..:? "dont_show_notification")
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "is_document_mature")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "notificationGroup")
            Core.<*> (o Core..:? "notification_type")
            Core.<*> (o Core..:? "pcampaign_id")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "show_notification_settings_action")
            Core.<*> (o Core..:? "targetUrl")
            Core.<*> (o Core..:? "timeToExpireMs" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Notification where
  toJSON Notification {..} =
    Core.object
      ( Core.catMaybes
          [ ("body" Core..=) Core.<$> body,
            ("crmExperimentIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> crmExperimentIds,
            ("doc_id" Core..=) Core.<$> docId,
            ("doc_type" Core..=) Core.<$> docType,
            ("dont_show_notification" Core..=) Core.<$> dontShowNotification,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("is_document_mature" Core..=) Core.<$> isDocumentMature,
            ("kind" Core..=) Core.<$> kind,
            ("notificationGroup" Core..=) Core.<$> notificationGroup,
            ("notification_type" Core..=) Core.<$> notificationType,
            ("pcampaign_id" Core..=) Core.<$> pcampaignId,
            ("reason" Core..=) Core.<$> reason,
            ("show_notification_settings_action" Core..=)
              Core.<$> showNotificationSettingsAction,
            ("targetUrl" Core..=) Core.<$> targetUrl,
            ("timeToExpireMs" Core..=)
              Core.. Core.AsText
              Core.<$> timeToExpireMs,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newOffers' smart constructor.
data Offers = Offers
  { -- | A list of offers.
    items :: (Core.Maybe [Offers_ItemsItem]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Offers' with the minimum fields required to make a request.
newOffers ::
  Offers
newOffers = Offers {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON Offers where
  parseJSON =
    Core.withObject
      "Offers"
      ( \o ->
          Offers Core.<$> (o Core..:? "items") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Offers where
  toJSON Offers {..} =
    Core.object
      ( Core.catMaybes
          [("items" Core..=) Core.<$> items, ("kind" Core..=) Core.<$> kind]
      )

--
-- /See:/ 'newOffers_ItemsItem' smart constructor.
data Offers_ItemsItem = Offers_ItemsItem
  { artUrl :: (Core.Maybe Core.Text),
    gservicesKey :: (Core.Maybe Core.Text),
    id :: (Core.Maybe Core.Text),
    items :: (Core.Maybe [Offers_ItemsItem_ItemsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Offers_ItemsItem' with the minimum fields required to make a request.
newOffers_ItemsItem ::
  Offers_ItemsItem
newOffers_ItemsItem =
  Offers_ItemsItem
    { artUrl = Core.Nothing,
      gservicesKey = Core.Nothing,
      id = Core.Nothing,
      items = Core.Nothing
    }

instance Core.FromJSON Offers_ItemsItem where
  parseJSON =
    Core.withObject
      "Offers_ItemsItem"
      ( \o ->
          Offers_ItemsItem
            Core.<$> (o Core..:? "artUrl")
            Core.<*> (o Core..:? "gservicesKey")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "items")
      )

instance Core.ToJSON Offers_ItemsItem where
  toJSON Offers_ItemsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("artUrl" Core..=) Core.<$> artUrl,
            ("gservicesKey" Core..=) Core.<$> gservicesKey,
            ("id" Core..=) Core.<$> id,
            ("items" Core..=) Core.<$> items
          ]
      )

--
-- /See:/ 'newOffers_ItemsItem_ItemsItem' smart constructor.
data Offers_ItemsItem_ItemsItem = Offers_ItemsItem_ItemsItem
  { author :: (Core.Maybe Core.Text),
    canonicalVolumeLink :: (Core.Maybe Core.Text),
    coverUrl :: (Core.Maybe Core.Text),
    description :: (Core.Maybe Core.Text),
    title :: (Core.Maybe Core.Text),
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Offers_ItemsItem_ItemsItem' with the minimum fields required to make a request.
newOffers_ItemsItem_ItemsItem ::
  Offers_ItemsItem_ItemsItem
newOffers_ItemsItem_ItemsItem =
  Offers_ItemsItem_ItemsItem
    { author = Core.Nothing,
      canonicalVolumeLink = Core.Nothing,
      coverUrl = Core.Nothing,
      description = Core.Nothing,
      title = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON Offers_ItemsItem_ItemsItem where
  parseJSON =
    Core.withObject
      "Offers_ItemsItem_ItemsItem"
      ( \o ->
          Offers_ItemsItem_ItemsItem
            Core.<$> (o Core..:? "author")
            Core.<*> (o Core..:? "canonicalVolumeLink")
            Core.<*> (o Core..:? "coverUrl")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON Offers_ItemsItem_ItemsItem where
  toJSON Offers_ItemsItem_ItemsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("author" Core..=) Core.<$> author,
            ("canonicalVolumeLink" Core..=) Core.<$> canonicalVolumeLink,
            ("coverUrl" Core..=) Core.<$> coverUrl,
            ("description" Core..=) Core.<$> description,
            ("title" Core..=) Core.<$> title,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newReadingPosition' smart constructor.
data ReadingPosition = ReadingPosition
  { -- | Position in an EPUB as a CFI.
    epubCfiPosition :: (Core.Maybe Core.Text),
    -- | Position in a volume for image-based content.
    gbImagePosition :: (Core.Maybe Core.Text),
    -- | Position in a volume for text-based content.
    gbTextPosition :: (Core.Maybe Core.Text),
    -- | Resource type for a reading position.
    kind :: (Core.Maybe Core.Text),
    -- | Position in a PDF file.
    pdfPosition :: (Core.Maybe Core.Text),
    -- | Timestamp when this reading position was last updated (formatted UTC timestamp with millisecond resolution).
    updated :: (Core.Maybe Core.Text),
    -- | Volume id associated with this reading position.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadingPosition' with the minimum fields required to make a request.
newReadingPosition ::
  ReadingPosition
newReadingPosition =
  ReadingPosition
    { epubCfiPosition = Core.Nothing,
      gbImagePosition = Core.Nothing,
      gbTextPosition = Core.Nothing,
      kind = Core.Nothing,
      pdfPosition = Core.Nothing,
      updated = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON ReadingPosition where
  parseJSON =
    Core.withObject
      "ReadingPosition"
      ( \o ->
          ReadingPosition
            Core.<$> (o Core..:? "epubCfiPosition")
            Core.<*> (o Core..:? "gbImagePosition")
            Core.<*> (o Core..:? "gbTextPosition")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "pdfPosition")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON ReadingPosition where
  toJSON ReadingPosition {..} =
    Core.object
      ( Core.catMaybes
          [ ("epubCfiPosition" Core..=) Core.<$> epubCfiPosition,
            ("gbImagePosition" Core..=) Core.<$> gbImagePosition,
            ("gbTextPosition" Core..=) Core.<$> gbTextPosition,
            ("kind" Core..=) Core.<$> kind,
            ("pdfPosition" Core..=) Core.<$> pdfPosition,
            ("updated" Core..=) Core.<$> updated,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

--
-- /See:/ 'newRequestAccessData' smart constructor.
data RequestAccessData = RequestAccessData
  { -- | A concurrent access response.
    concurrentAccess :: (Core.Maybe ConcurrentAccessRestriction),
    -- | A download access response.
    downloadAccess :: (Core.Maybe DownloadAccessRestriction),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestAccessData' with the minimum fields required to make a request.
newRequestAccessData ::
  RequestAccessData
newRequestAccessData =
  RequestAccessData
    { concurrentAccess = Core.Nothing,
      downloadAccess = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON RequestAccessData where
  parseJSON =
    Core.withObject
      "RequestAccessData"
      ( \o ->
          RequestAccessData
            Core.<$> (o Core..:? "concurrentAccess")
            Core.<*> (o Core..:? "downloadAccess")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON RequestAccessData where
  toJSON RequestAccessData {..} =
    Core.object
      ( Core.catMaybes
          [ ("concurrentAccess" Core..=) Core.<$> concurrentAccess,
            ("downloadAccess" Core..=) Core.<$> downloadAccess,
            ("kind" Core..=) Core.<$> kind
          ]
      )

--
-- /See:/ 'newReview' smart constructor.
data Review = Review
  { -- | Author of this review.
    author :: (Core.Maybe Review_Author),
    -- | Review text.
    content :: (Core.Maybe Core.Text),
    -- | Date of this review.
    date :: (Core.Maybe Core.Text),
    -- | URL for the full review text, for reviews gathered from the web.
    fullTextUrl :: (Core.Maybe Core.Text),
    -- | Resource type for a review.
    kind :: (Core.Maybe Core.Text),
    -- | Star rating for this review. Possible values are ONE, TWO, THREE, FOUR, FIVE or NOT_RATED.
    rating :: (Core.Maybe Core.Text),
    -- | Information regarding the source of this review, when the review is not from a Google Books user.
    source :: (Core.Maybe Review_Source),
    -- | Title for this review.
    title :: (Core.Maybe Core.Text),
    -- | Source type for this review. Possible values are EDITORIAL, WEB/USER or GOOGLE/USER.
    type' :: (Core.Maybe Core.Text),
    -- | Volume that this review is for.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Review' with the minimum fields required to make a request.
newReview ::
  Review
newReview =
  Review
    { author = Core.Nothing,
      content = Core.Nothing,
      date = Core.Nothing,
      fullTextUrl = Core.Nothing,
      kind = Core.Nothing,
      rating = Core.Nothing,
      source = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON Review where
  parseJSON =
    Core.withObject
      "Review"
      ( \o ->
          Review
            Core.<$> (o Core..:? "author")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "fullTextUrl")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "rating")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON Review where
  toJSON Review {..} =
    Core.object
      ( Core.catMaybes
          [ ("author" Core..=) Core.<$> author,
            ("content" Core..=) Core.<$> content,
            ("date" Core..=) Core.<$> date,
            ("fullTextUrl" Core..=) Core.<$> fullTextUrl,
            ("kind" Core..=) Core.<$> kind,
            ("rating" Core..=) Core.<$> rating,
            ("source" Core..=) Core.<$> source,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type',
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

-- | Author of this review.
--
-- /See:/ 'newReview_Author' smart constructor.
newtype Review_Author = Review_Author
  { -- | Name of this person.
    displayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Review_Author' with the minimum fields required to make a request.
newReview_Author ::
  Review_Author
newReview_Author = Review_Author {displayName = Core.Nothing}

instance Core.FromJSON Review_Author where
  parseJSON =
    Core.withObject
      "Review_Author"
      (\o -> Review_Author Core.<$> (o Core..:? "displayName"))

instance Core.ToJSON Review_Author where
  toJSON Review_Author {..} =
    Core.object
      (Core.catMaybes [("displayName" Core..=) Core.<$> displayName])

-- | Information regarding the source of this review, when the review is not from a Google Books user.
--
-- /See:/ 'newReview_Source' smart constructor.
data Review_Source = Review_Source
  { -- | Name of the source.
    description :: (Core.Maybe Core.Text),
    -- | Extra text about the source of the review.
    extraDescription :: (Core.Maybe Core.Text),
    -- | URL of the source of the review.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Review_Source' with the minimum fields required to make a request.
newReview_Source ::
  Review_Source
newReview_Source =
  Review_Source
    { description = Core.Nothing,
      extraDescription = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Review_Source where
  parseJSON =
    Core.withObject
      "Review_Source"
      ( \o ->
          Review_Source
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "extraDescription")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Review_Source where
  toJSON Review_Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("extraDescription" Core..=) Core.<$> extraDescription,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newSeries' smart constructor.
data Series = Series
  { -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    series :: (Core.Maybe [Series_SeriesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Series' with the minimum fields required to make a request.
newSeries ::
  Series
newSeries = Series {kind = Core.Nothing, series = Core.Nothing}

instance Core.FromJSON Series where
  parseJSON =
    Core.withObject
      "Series"
      ( \o ->
          Series Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "series")
      )

instance Core.ToJSON Series where
  toJSON Series {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("series" Core..=) Core.<$> series
          ]
      )

--
-- /See:/ 'newSeries_SeriesItem' smart constructor.
data Series_SeriesItem = Series_SeriesItem
  { bannerImageUrl :: (Core.Maybe Core.Text),
    eligibleForSubscription :: (Core.Maybe Core.Bool),
    imageUrl :: (Core.Maybe Core.Text),
    isComplete :: (Core.Maybe Core.Bool),
    seriesFormatType :: (Core.Maybe Core.Text),
    seriesId :: (Core.Maybe Core.Text),
    seriesSubscriptionReleaseInfo :: (Core.Maybe Series_SeriesItem_SeriesSubscriptionReleaseInfo),
    seriesType :: (Core.Maybe Core.Text),
    subscriptionId :: (Core.Maybe Core.Text),
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Series_SeriesItem' with the minimum fields required to make a request.
newSeries_SeriesItem ::
  Series_SeriesItem
newSeries_SeriesItem =
  Series_SeriesItem
    { bannerImageUrl = Core.Nothing,
      eligibleForSubscription = Core.Nothing,
      imageUrl = Core.Nothing,
      isComplete = Core.Nothing,
      seriesFormatType = Core.Nothing,
      seriesId = Core.Nothing,
      seriesSubscriptionReleaseInfo = Core.Nothing,
      seriesType = Core.Nothing,
      subscriptionId = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Series_SeriesItem where
  parseJSON =
    Core.withObject
      "Series_SeriesItem"
      ( \o ->
          Series_SeriesItem
            Core.<$> (o Core..:? "bannerImageUrl")
            Core.<*> (o Core..:? "eligibleForSubscription")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "isComplete")
            Core.<*> (o Core..:? "seriesFormatType")
            Core.<*> (o Core..:? "seriesId")
            Core.<*> (o Core..:? "seriesSubscriptionReleaseInfo")
            Core.<*> (o Core..:? "seriesType")
            Core.<*> (o Core..:? "subscriptionId")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Series_SeriesItem where
  toJSON Series_SeriesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("bannerImageUrl" Core..=) Core.<$> bannerImageUrl,
            ("eligibleForSubscription" Core..=)
              Core.<$> eligibleForSubscription,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("isComplete" Core..=) Core.<$> isComplete,
            ("seriesFormatType" Core..=) Core.<$> seriesFormatType,
            ("seriesId" Core..=) Core.<$> seriesId,
            ("seriesSubscriptionReleaseInfo" Core..=)
              Core.<$> seriesSubscriptionReleaseInfo,
            ("seriesType" Core..=) Core.<$> seriesType,
            ("subscriptionId" Core..=) Core.<$> subscriptionId,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newSeries_SeriesItem_SeriesSubscriptionReleaseInfo' smart constructor.
data Series_SeriesItem_SeriesSubscriptionReleaseInfo = Series_SeriesItem_SeriesSubscriptionReleaseInfo
  { cancelTime :: (Core.Maybe Core.Text),
    currentReleaseInfo ::
      ( Core.Maybe
          Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
      ),
    nextReleaseInfo ::
      ( Core.Maybe
          Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
      ),
    seriesSubscriptionType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Series_SeriesItem_SeriesSubscriptionReleaseInfo' with the minimum fields required to make a request.
newSeries_SeriesItem_SeriesSubscriptionReleaseInfo ::
  Series_SeriesItem_SeriesSubscriptionReleaseInfo
newSeries_SeriesItem_SeriesSubscriptionReleaseInfo =
  Series_SeriesItem_SeriesSubscriptionReleaseInfo
    { cancelTime =
        Core.Nothing,
      currentReleaseInfo = Core.Nothing,
      nextReleaseInfo = Core.Nothing,
      seriesSubscriptionType = Core.Nothing
    }

instance
  Core.FromJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo
  where
  parseJSON =
    Core.withObject
      "Series_SeriesItem_SeriesSubscriptionReleaseInfo"
      ( \o ->
          Series_SeriesItem_SeriesSubscriptionReleaseInfo
            Core.<$> (o Core..:? "cancelTime")
            Core.<*> (o Core..:? "currentReleaseInfo")
            Core.<*> (o Core..:? "nextReleaseInfo")
            Core.<*> (o Core..:? "seriesSubscriptionType")
      )

instance
  Core.ToJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo
  where
  toJSON Series_SeriesItem_SeriesSubscriptionReleaseInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("cancelTime" Core..=) Core.<$> cancelTime,
            ("currentReleaseInfo" Core..=) Core.<$> currentReleaseInfo,
            ("nextReleaseInfo" Core..=) Core.<$> nextReleaseInfo,
            ("seriesSubscriptionType" Core..=)
              Core.<$> seriesSubscriptionType
          ]
      )

--
-- /See:/ 'newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo' smart constructor.
data Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo = Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
  { amountInMicros :: (Core.Maybe Core.Double),
    currencyCode :: (Core.Maybe Core.Text),
    releaseNumber :: (Core.Maybe Core.Text),
    releaseTime :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo' with the minimum fields required to make a request.
newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo ::
  Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo =
  Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
    { amountInMicros =
        Core.Nothing,
      currencyCode = Core.Nothing,
      releaseNumber = Core.Nothing,
      releaseTime = Core.Nothing
    }

instance
  Core.FromJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
  where
  parseJSON =
    Core.withObject
      "Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo"
      ( \o ->
          Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
            Core.<$> (o Core..:? "amountInMicros")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "releaseNumber")
            Core.<*> (o Core..:? "releaseTime")
      )

instance
  Core.ToJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo
  where
  toJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_CurrentReleaseInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("amountInMicros" Core..=) Core.<$> amountInMicros,
              ("currencyCode" Core..=) Core.<$> currencyCode,
              ("releaseNumber" Core..=) Core.<$> releaseNumber,
              ("releaseTime" Core..=) Core.<$> releaseTime
            ]
        )

--
-- /See:/ 'newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo' smart constructor.
data Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo = Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
  { amountInMicros :: (Core.Maybe Core.Double),
    currencyCode :: (Core.Maybe Core.Text),
    releaseNumber :: (Core.Maybe Core.Text),
    releaseTime :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo' with the minimum fields required to make a request.
newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo ::
  Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
newSeries_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo =
  Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
    { amountInMicros =
        Core.Nothing,
      currencyCode = Core.Nothing,
      releaseNumber = Core.Nothing,
      releaseTime = Core.Nothing
    }

instance
  Core.FromJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
  where
  parseJSON =
    Core.withObject
      "Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo"
      ( \o ->
          Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
            Core.<$> (o Core..:? "amountInMicros")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "releaseNumber")
            Core.<*> (o Core..:? "releaseTime")
      )

instance
  Core.ToJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo
  where
  toJSON
    Series_SeriesItem_SeriesSubscriptionReleaseInfo_NextReleaseInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("amountInMicros" Core..=) Core.<$> amountInMicros,
              ("currencyCode" Core..=) Core.<$> currencyCode,
              ("releaseNumber" Core..=) Core.<$> releaseNumber,
              ("releaseTime" Core..=) Core.<$> releaseTime
            ]
        )

--
-- /See:/ 'newSeriesmembership' smart constructor.
data Seriesmembership = Seriesmembership
  { -- | Resorce type.
    kind :: (Core.Maybe Core.Text),
    member :: (Core.Maybe [Volume]),
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Seriesmembership' with the minimum fields required to make a request.
newSeriesmembership ::
  Seriesmembership
newSeriesmembership =
  Seriesmembership
    { kind = Core.Nothing,
      member = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Seriesmembership where
  parseJSON =
    Core.withObject
      "Seriesmembership"
      ( \o ->
          Seriesmembership
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "member")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Seriesmembership where
  toJSON Seriesmembership {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("member" Core..=) Core.<$> member,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newUsersettings' smart constructor.
data Usersettings = Usersettings
  { -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | User settings in sub-objects, each for different purposes.
    notesExport :: (Core.Maybe Usersettings_NotesExport),
    notification :: (Core.Maybe Usersettings_Notification)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings' with the minimum fields required to make a request.
newUsersettings ::
  Usersettings
newUsersettings =
  Usersettings
    { kind = Core.Nothing,
      notesExport = Core.Nothing,
      notification = Core.Nothing
    }

instance Core.FromJSON Usersettings where
  parseJSON =
    Core.withObject
      "Usersettings"
      ( \o ->
          Usersettings
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "notesExport")
            Core.<*> (o Core..:? "notification")
      )

instance Core.ToJSON Usersettings where
  toJSON Usersettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("notesExport" Core..=) Core.<$> notesExport,
            ("notification" Core..=) Core.<$> notification
          ]
      )

-- | User settings in sub-objects, each for different purposes.
--
-- /See:/ 'newUsersettings_NotesExport' smart constructor.
data Usersettings_NotesExport = Usersettings_NotesExport
  { folderName :: (Core.Maybe Core.Text),
    isEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings_NotesExport' with the minimum fields required to make a request.
newUsersettings_NotesExport ::
  Usersettings_NotesExport
newUsersettings_NotesExport =
  Usersettings_NotesExport
    { folderName = Core.Nothing,
      isEnabled = Core.Nothing
    }

instance Core.FromJSON Usersettings_NotesExport where
  parseJSON =
    Core.withObject
      "Usersettings_NotesExport"
      ( \o ->
          Usersettings_NotesExport
            Core.<$> (o Core..:? "folderName")
            Core.<*> (o Core..:? "isEnabled")
      )

instance Core.ToJSON Usersettings_NotesExport where
  toJSON Usersettings_NotesExport {..} =
    Core.object
      ( Core.catMaybes
          [ ("folderName" Core..=) Core.<$> folderName,
            ("isEnabled" Core..=) Core.<$> isEnabled
          ]
      )

--
-- /See:/ 'newUsersettings_Notification' smart constructor.
data Usersettings_Notification = Usersettings_Notification
  { matchMyInterests :: (Core.Maybe Usersettings_Notification_MatchMyInterests),
    moreFromAuthors :: (Core.Maybe Usersettings_Notification_MoreFromAuthors),
    moreFromSeries :: (Core.Maybe Usersettings_Notification_MoreFromSeries),
    priceDrop :: (Core.Maybe Usersettings_Notification_PriceDrop),
    rewardExpirations :: (Core.Maybe Usersettings_Notification_RewardExpirations)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings_Notification' with the minimum fields required to make a request.
newUsersettings_Notification ::
  Usersettings_Notification
newUsersettings_Notification =
  Usersettings_Notification
    { matchMyInterests = Core.Nothing,
      moreFromAuthors = Core.Nothing,
      moreFromSeries = Core.Nothing,
      priceDrop = Core.Nothing,
      rewardExpirations = Core.Nothing
    }

instance Core.FromJSON Usersettings_Notification where
  parseJSON =
    Core.withObject
      "Usersettings_Notification"
      ( \o ->
          Usersettings_Notification
            Core.<$> (o Core..:? "matchMyInterests")
            Core.<*> (o Core..:? "moreFromAuthors")
            Core.<*> (o Core..:? "moreFromSeries")
            Core.<*> (o Core..:? "priceDrop")
            Core.<*> (o Core..:? "rewardExpirations")
      )

instance Core.ToJSON Usersettings_Notification where
  toJSON Usersettings_Notification {..} =
    Core.object
      ( Core.catMaybes
          [ ("matchMyInterests" Core..=) Core.<$> matchMyInterests,
            ("moreFromAuthors" Core..=) Core.<$> moreFromAuthors,
            ("moreFromSeries" Core..=) Core.<$> moreFromSeries,
            ("priceDrop" Core..=) Core.<$> priceDrop,
            ("rewardExpirations" Core..=) Core.<$> rewardExpirations
          ]
      )

--
-- /See:/ 'newUsersettings_Notification_MatchMyInterests' smart constructor.
newtype Usersettings_Notification_MatchMyInterests = Usersettings_Notification_MatchMyInterests
  { optedState :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings_Notification_MatchMyInterests' with the minimum fields required to make a request.
newUsersettings_Notification_MatchMyInterests ::
  Usersettings_Notification_MatchMyInterests
newUsersettings_Notification_MatchMyInterests =
  Usersettings_Notification_MatchMyInterests
    { optedState =
        Core.Nothing
    }

instance Core.FromJSON Usersettings_Notification_MatchMyInterests where
  parseJSON =
    Core.withObject
      "Usersettings_Notification_MatchMyInterests"
      ( \o ->
          Usersettings_Notification_MatchMyInterests
            Core.<$> (o Core..:? "opted_state")
      )

instance Core.ToJSON Usersettings_Notification_MatchMyInterests where
  toJSON Usersettings_Notification_MatchMyInterests {..} =
    Core.object
      (Core.catMaybes [("opted_state" Core..=) Core.<$> optedState])

--
-- /See:/ 'newUsersettings_Notification_MoreFromAuthors' smart constructor.
newtype Usersettings_Notification_MoreFromAuthors = Usersettings_Notification_MoreFromAuthors
  { optedState :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings_Notification_MoreFromAuthors' with the minimum fields required to make a request.
newUsersettings_Notification_MoreFromAuthors ::
  Usersettings_Notification_MoreFromAuthors
newUsersettings_Notification_MoreFromAuthors =
  Usersettings_Notification_MoreFromAuthors
    { optedState =
        Core.Nothing
    }

instance Core.FromJSON Usersettings_Notification_MoreFromAuthors where
  parseJSON =
    Core.withObject
      "Usersettings_Notification_MoreFromAuthors"
      ( \o ->
          Usersettings_Notification_MoreFromAuthors
            Core.<$> (o Core..:? "opted_state")
      )

instance Core.ToJSON Usersettings_Notification_MoreFromAuthors where
  toJSON Usersettings_Notification_MoreFromAuthors {..} =
    Core.object
      (Core.catMaybes [("opted_state" Core..=) Core.<$> optedState])

--
-- /See:/ 'newUsersettings_Notification_MoreFromSeries' smart constructor.
newtype Usersettings_Notification_MoreFromSeries = Usersettings_Notification_MoreFromSeries
  { optedState :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings_Notification_MoreFromSeries' with the minimum fields required to make a request.
newUsersettings_Notification_MoreFromSeries ::
  Usersettings_Notification_MoreFromSeries
newUsersettings_Notification_MoreFromSeries =
  Usersettings_Notification_MoreFromSeries
    { optedState =
        Core.Nothing
    }

instance Core.FromJSON Usersettings_Notification_MoreFromSeries where
  parseJSON =
    Core.withObject
      "Usersettings_Notification_MoreFromSeries"
      ( \o ->
          Usersettings_Notification_MoreFromSeries
            Core.<$> (o Core..:? "opted_state")
      )

instance Core.ToJSON Usersettings_Notification_MoreFromSeries where
  toJSON Usersettings_Notification_MoreFromSeries {..} =
    Core.object
      (Core.catMaybes [("opted_state" Core..=) Core.<$> optedState])

--
-- /See:/ 'newUsersettings_Notification_PriceDrop' smart constructor.
newtype Usersettings_Notification_PriceDrop = Usersettings_Notification_PriceDrop
  { optedState :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings_Notification_PriceDrop' with the minimum fields required to make a request.
newUsersettings_Notification_PriceDrop ::
  Usersettings_Notification_PriceDrop
newUsersettings_Notification_PriceDrop =
  Usersettings_Notification_PriceDrop {optedState = Core.Nothing}

instance Core.FromJSON Usersettings_Notification_PriceDrop where
  parseJSON =
    Core.withObject
      "Usersettings_Notification_PriceDrop"
      ( \o ->
          Usersettings_Notification_PriceDrop
            Core.<$> (o Core..:? "opted_state")
      )

instance Core.ToJSON Usersettings_Notification_PriceDrop where
  toJSON Usersettings_Notification_PriceDrop {..} =
    Core.object
      (Core.catMaybes [("opted_state" Core..=) Core.<$> optedState])

--
-- /See:/ 'newUsersettings_Notification_RewardExpirations' smart constructor.
newtype Usersettings_Notification_RewardExpirations = Usersettings_Notification_RewardExpirations
  { optedState :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usersettings_Notification_RewardExpirations' with the minimum fields required to make a request.
newUsersettings_Notification_RewardExpirations ::
  Usersettings_Notification_RewardExpirations
newUsersettings_Notification_RewardExpirations =
  Usersettings_Notification_RewardExpirations
    { optedState =
        Core.Nothing
    }

instance Core.FromJSON Usersettings_Notification_RewardExpirations where
  parseJSON =
    Core.withObject
      "Usersettings_Notification_RewardExpirations"
      ( \o ->
          Usersettings_Notification_RewardExpirations
            Core.<$> (o Core..:? "opted_state")
      )

instance Core.ToJSON Usersettings_Notification_RewardExpirations where
  toJSON Usersettings_Notification_RewardExpirations {..} =
    Core.object
      (Core.catMaybes [("opted_state" Core..=) Core.<$> optedState])

--
-- /See:/ 'newVolume' smart constructor.
data Volume = Volume
  { -- | Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.).
    accessInfo :: (Core.Maybe Volume_AccessInfo),
    -- | Opaque identifier for a specific version of a volume resource. (In LITE projection)
    etag :: (Core.Maybe Core.Text),
    -- | Unique identifier for a volume. (In LITE projection.)
    id :: (Core.Maybe Core.Text),
    -- | Resource type for a volume. (In LITE projection.)
    kind :: (Core.Maybe Core.Text),
    -- | What layers exist in this volume and high level information about them.
    layerInfo :: (Core.Maybe Volume_LayerInfo),
    -- | Recommendation related information for this volume.
    recommendedInfo :: (Core.Maybe Volume_RecommendedInfo),
    -- | Any information about a volume related to the eBookstore and\/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries).
    saleInfo :: (Core.Maybe Volume_SaleInfo),
    -- | Search result information related to this volume.
    searchInfo :: (Core.Maybe Volume_SearchInfo),
    -- | URL to this resource. (In LITE projection.)
    selfLink :: (Core.Maybe Core.Text),
    -- | User specific information related to this volume. (e.g. page this user last read or whether they purchased this book)
    userInfo :: (Core.Maybe Volume_UserInfo),
    -- | General volume information.
    volumeInfo :: (Core.Maybe Volume_VolumeInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
newVolume ::
  Volume
newVolume =
  Volume
    { accessInfo = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      layerInfo = Core.Nothing,
      recommendedInfo = Core.Nothing,
      saleInfo = Core.Nothing,
      searchInfo = Core.Nothing,
      selfLink = Core.Nothing,
      userInfo = Core.Nothing,
      volumeInfo = Core.Nothing
    }

instance Core.FromJSON Volume where
  parseJSON =
    Core.withObject
      "Volume"
      ( \o ->
          Volume
            Core.<$> (o Core..:? "accessInfo")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "layerInfo")
            Core.<*> (o Core..:? "recommendedInfo")
            Core.<*> (o Core..:? "saleInfo")
            Core.<*> (o Core..:? "searchInfo")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "userInfo")
            Core.<*> (o Core..:? "volumeInfo")
      )

instance Core.ToJSON Volume where
  toJSON Volume {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessInfo" Core..=) Core.<$> accessInfo,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("layerInfo" Core..=) Core.<$> layerInfo,
            ("recommendedInfo" Core..=) Core.<$> recommendedInfo,
            ("saleInfo" Core..=) Core.<$> saleInfo,
            ("searchInfo" Core..=) Core.<$> searchInfo,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("userInfo" Core..=) Core.<$> userInfo,
            ("volumeInfo" Core..=) Core.<$> volumeInfo
          ]
      )

-- | Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.).
--
-- /See:/ 'newVolume_AccessInfo' smart constructor.
data Volume_AccessInfo = Volume_AccessInfo
  { -- | Combines the access and viewability of this volume into a single status field for this user. Values can be FULL/PURCHASED, FULL/PUBLIC_DOMAIN, SAMPLE or NONE. (In LITE projection.)
    accessViewStatus :: (Core.Maybe Core.Text),
    -- | The two-letter ISO_3166-1 country code for which this access information is valid. (In LITE projection.)
    country :: (Core.Maybe Core.Text),
    -- | Information about a volume\'s download license access restrictions.
    downloadAccess :: (Core.Maybe DownloadAccessRestriction),
    -- | URL to the Google Drive viewer if this volume is uploaded by the user by selecting the file from Google Drive.
    driveImportedContentLink :: (Core.Maybe Core.Text),
    -- | Whether this volume can be embedded in a viewport using the Embedded Viewer API.
    embeddable :: (Core.Maybe Core.Bool),
    -- | Information about epub content. (In LITE projection.)
    epub :: (Core.Maybe Volume_AccessInfo_Epub),
    -- | Whether this volume requires that the client explicitly request offline download license rather than have it done automatically when loading the content, if the client supports it.
    explicitOfflineLicenseManagement :: (Core.Maybe Core.Bool),
    -- | Information about pdf content. (In LITE projection.)
    pdf :: (Core.Maybe Volume_AccessInfo_Pdf),
    -- | Whether or not this book is public domain in the country listed above.
    publicDomain :: (Core.Maybe Core.Bool),
    -- | Whether quote sharing is allowed for this volume.
    quoteSharingAllowed :: (Core.Maybe Core.Bool),
    -- | Whether text-to-speech is permitted for this volume. Values can be ALLOWED, ALLOWED/FOR/ACCESSIBILITY, or NOT_ALLOWED.
    textToSpeechPermission :: (Core.Maybe Core.Text),
    -- | For ordered but not yet processed orders, we give a URL that can be used to go to the appropriate Google Wallet page.
    viewOrderUrl :: (Core.Maybe Core.Text),
    -- | The read access of a volume. Possible values are PARTIAL, ALL/PAGES, NO/PAGES or UNKNOWN. This value depends on the country listed above. A value of PARTIAL means that the publisher has allowed some portion of the volume to be viewed publicly, without purchase. This can apply to eBooks as well as non-eBooks. Public domain books will always have a value of ALL_PAGES.
    viewability :: (Core.Maybe Core.Text),
    -- | URL to read this volume on the Google Books site. Link will not allow users to read non-viewable volumes.
    webReaderLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_AccessInfo' with the minimum fields required to make a request.
newVolume_AccessInfo ::
  Volume_AccessInfo
newVolume_AccessInfo =
  Volume_AccessInfo
    { accessViewStatus = Core.Nothing,
      country = Core.Nothing,
      downloadAccess = Core.Nothing,
      driveImportedContentLink = Core.Nothing,
      embeddable = Core.Nothing,
      epub = Core.Nothing,
      explicitOfflineLicenseManagement = Core.Nothing,
      pdf = Core.Nothing,
      publicDomain = Core.Nothing,
      quoteSharingAllowed = Core.Nothing,
      textToSpeechPermission = Core.Nothing,
      viewOrderUrl = Core.Nothing,
      viewability = Core.Nothing,
      webReaderLink = Core.Nothing
    }

instance Core.FromJSON Volume_AccessInfo where
  parseJSON =
    Core.withObject
      "Volume_AccessInfo"
      ( \o ->
          Volume_AccessInfo
            Core.<$> (o Core..:? "accessViewStatus")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "downloadAccess")
            Core.<*> (o Core..:? "driveImportedContentLink")
            Core.<*> (o Core..:? "embeddable")
            Core.<*> (o Core..:? "epub")
            Core.<*> (o Core..:? "explicitOfflineLicenseManagement")
            Core.<*> (o Core..:? "pdf")
            Core.<*> (o Core..:? "publicDomain")
            Core.<*> (o Core..:? "quoteSharingAllowed")
            Core.<*> (o Core..:? "textToSpeechPermission")
            Core.<*> (o Core..:? "viewOrderUrl")
            Core.<*> (o Core..:? "viewability")
            Core.<*> (o Core..:? "webReaderLink")
      )

instance Core.ToJSON Volume_AccessInfo where
  toJSON Volume_AccessInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessViewStatus" Core..=) Core.<$> accessViewStatus,
            ("country" Core..=) Core.<$> country,
            ("downloadAccess" Core..=) Core.<$> downloadAccess,
            ("driveImportedContentLink" Core..=)
              Core.<$> driveImportedContentLink,
            ("embeddable" Core..=) Core.<$> embeddable,
            ("epub" Core..=) Core.<$> epub,
            ("explicitOfflineLicenseManagement" Core..=)
              Core.<$> explicitOfflineLicenseManagement,
            ("pdf" Core..=) Core.<$> pdf,
            ("publicDomain" Core..=) Core.<$> publicDomain,
            ("quoteSharingAllowed" Core..=) Core.<$> quoteSharingAllowed,
            ("textToSpeechPermission" Core..=) Core.<$> textToSpeechPermission,
            ("viewOrderUrl" Core..=) Core.<$> viewOrderUrl,
            ("viewability" Core..=) Core.<$> viewability,
            ("webReaderLink" Core..=) Core.<$> webReaderLink
          ]
      )

-- | Information about epub content. (In LITE projection.)
--
-- /See:/ 'newVolume_AccessInfo_Epub' smart constructor.
data Volume_AccessInfo_Epub = Volume_AccessInfo_Epub
  { -- | URL to retrieve ACS token for epub download. (In LITE projection.)
    acsTokenLink :: (Core.Maybe Core.Text),
    -- | URL to download epub. (In LITE projection.)
    downloadLink :: (Core.Maybe Core.Text),
    -- | Is a flowing text epub available either as public domain or for purchase. (In LITE projection.)
    isAvailable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_AccessInfo_Epub' with the minimum fields required to make a request.
newVolume_AccessInfo_Epub ::
  Volume_AccessInfo_Epub
newVolume_AccessInfo_Epub =
  Volume_AccessInfo_Epub
    { acsTokenLink = Core.Nothing,
      downloadLink = Core.Nothing,
      isAvailable = Core.Nothing
    }

instance Core.FromJSON Volume_AccessInfo_Epub where
  parseJSON =
    Core.withObject
      "Volume_AccessInfo_Epub"
      ( \o ->
          Volume_AccessInfo_Epub
            Core.<$> (o Core..:? "acsTokenLink")
            Core.<*> (o Core..:? "downloadLink")
            Core.<*> (o Core..:? "isAvailable")
      )

instance Core.ToJSON Volume_AccessInfo_Epub where
  toJSON Volume_AccessInfo_Epub {..} =
    Core.object
      ( Core.catMaybes
          [ ("acsTokenLink" Core..=) Core.<$> acsTokenLink,
            ("downloadLink" Core..=) Core.<$> downloadLink,
            ("isAvailable" Core..=) Core.<$> isAvailable
          ]
      )

-- | Information about pdf content. (In LITE projection.)
--
-- /See:/ 'newVolume_AccessInfo_Pdf' smart constructor.
data Volume_AccessInfo_Pdf = Volume_AccessInfo_Pdf
  { -- | URL to retrieve ACS token for pdf download. (In LITE projection.)
    acsTokenLink :: (Core.Maybe Core.Text),
    -- | URL to download pdf. (In LITE projection.)
    downloadLink :: (Core.Maybe Core.Text),
    -- | Is a scanned image pdf available either as public domain or for purchase. (In LITE projection.)
    isAvailable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_AccessInfo_Pdf' with the minimum fields required to make a request.
newVolume_AccessInfo_Pdf ::
  Volume_AccessInfo_Pdf
newVolume_AccessInfo_Pdf =
  Volume_AccessInfo_Pdf
    { acsTokenLink = Core.Nothing,
      downloadLink = Core.Nothing,
      isAvailable = Core.Nothing
    }

instance Core.FromJSON Volume_AccessInfo_Pdf where
  parseJSON =
    Core.withObject
      "Volume_AccessInfo_Pdf"
      ( \o ->
          Volume_AccessInfo_Pdf
            Core.<$> (o Core..:? "acsTokenLink")
            Core.<*> (o Core..:? "downloadLink")
            Core.<*> (o Core..:? "isAvailable")
      )

instance Core.ToJSON Volume_AccessInfo_Pdf where
  toJSON Volume_AccessInfo_Pdf {..} =
    Core.object
      ( Core.catMaybes
          [ ("acsTokenLink" Core..=) Core.<$> acsTokenLink,
            ("downloadLink" Core..=) Core.<$> downloadLink,
            ("isAvailable" Core..=) Core.<$> isAvailable
          ]
      )

-- | What layers exist in this volume and high level information about them.
--
-- /See:/ 'newVolume_LayerInfo' smart constructor.
newtype Volume_LayerInfo = Volume_LayerInfo
  { -- | A layer should appear here if and only if the layer exists for this book.
    layers :: (Core.Maybe [Volume_LayerInfo_LayersItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_LayerInfo' with the minimum fields required to make a request.
newVolume_LayerInfo ::
  Volume_LayerInfo
newVolume_LayerInfo = Volume_LayerInfo {layers = Core.Nothing}

instance Core.FromJSON Volume_LayerInfo where
  parseJSON =
    Core.withObject
      "Volume_LayerInfo"
      (\o -> Volume_LayerInfo Core.<$> (o Core..:? "layers"))

instance Core.ToJSON Volume_LayerInfo where
  toJSON Volume_LayerInfo {..} =
    Core.object (Core.catMaybes [("layers" Core..=) Core.<$> layers])

--
-- /See:/ 'newVolume_LayerInfo_LayersItem' smart constructor.
data Volume_LayerInfo_LayersItem = Volume_LayerInfo_LayersItem
  { -- | The layer id of this layer (e.g. \"geo\").
    layerId :: (Core.Maybe Core.Text),
    -- | The current version of this layer\'s volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately.
    volumeAnnotationsVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_LayerInfo_LayersItem' with the minimum fields required to make a request.
newVolume_LayerInfo_LayersItem ::
  Volume_LayerInfo_LayersItem
newVolume_LayerInfo_LayersItem =
  Volume_LayerInfo_LayersItem
    { layerId = Core.Nothing,
      volumeAnnotationsVersion = Core.Nothing
    }

instance Core.FromJSON Volume_LayerInfo_LayersItem where
  parseJSON =
    Core.withObject
      "Volume_LayerInfo_LayersItem"
      ( \o ->
          Volume_LayerInfo_LayersItem
            Core.<$> (o Core..:? "layerId")
            Core.<*> (o Core..:? "volumeAnnotationsVersion")
      )

instance Core.ToJSON Volume_LayerInfo_LayersItem where
  toJSON Volume_LayerInfo_LayersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("layerId" Core..=) Core.<$> layerId,
            ("volumeAnnotationsVersion" Core..=)
              Core.<$> volumeAnnotationsVersion
          ]
      )

-- | Recommendation related information for this volume.
--
-- /See:/ 'newVolume_RecommendedInfo' smart constructor.
newtype Volume_RecommendedInfo = Volume_RecommendedInfo
  { -- | A text explaining why this volume is recommended.
    explanation :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_RecommendedInfo' with the minimum fields required to make a request.
newVolume_RecommendedInfo ::
  Volume_RecommendedInfo
newVolume_RecommendedInfo =
  Volume_RecommendedInfo {explanation = Core.Nothing}

instance Core.FromJSON Volume_RecommendedInfo where
  parseJSON =
    Core.withObject
      "Volume_RecommendedInfo"
      (\o -> Volume_RecommendedInfo Core.<$> (o Core..:? "explanation"))

instance Core.ToJSON Volume_RecommendedInfo where
  toJSON Volume_RecommendedInfo {..} =
    Core.object
      (Core.catMaybes [("explanation" Core..=) Core.<$> explanation])

-- | Any information about a volume related to the eBookstore and\/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries).
--
-- /See:/ 'newVolume_SaleInfo' smart constructor.
data Volume_SaleInfo = Volume_SaleInfo
  { -- | URL to purchase this volume on the Google Books site. (In LITE projection)
    buyLink :: (Core.Maybe Core.Text),
    -- | The two-letter ISO_3166-1 country code for which this sale information is valid. (In LITE projection.)
    country :: (Core.Maybe Core.Text),
    -- | Whether or not this volume is an eBook (can be added to the My eBooks shelf).
    isEbook :: (Core.Maybe Core.Bool),
    -- | Suggested retail price. (In LITE projection.)
    listPrice :: (Core.Maybe Volume_SaleInfo_ListPrice),
    -- | Offers available for this volume (sales and rentals).
    offers :: (Core.Maybe [Volume_SaleInfo_OffersItem]),
    -- | The date on which this book is available for sale.
    onSaleDate :: (Core.Maybe Core.Text),
    -- | The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.)
    retailPrice :: (Core.Maybe Volume_SaleInfo_RetailPrice),
    -- | Whether or not this book is available for sale or offered for free in the Google eBookstore for the country listed above. Possible values are FOR/SALE, FOR/RENTAL/ONLY, FOR/SALE/AND/RENTAL, FREE, NOT/FOR/SALE, or FOR_PREORDER.
    saleability :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SaleInfo' with the minimum fields required to make a request.
newVolume_SaleInfo ::
  Volume_SaleInfo
newVolume_SaleInfo =
  Volume_SaleInfo
    { buyLink = Core.Nothing,
      country = Core.Nothing,
      isEbook = Core.Nothing,
      listPrice = Core.Nothing,
      offers = Core.Nothing,
      onSaleDate = Core.Nothing,
      retailPrice = Core.Nothing,
      saleability = Core.Nothing
    }

instance Core.FromJSON Volume_SaleInfo where
  parseJSON =
    Core.withObject
      "Volume_SaleInfo"
      ( \o ->
          Volume_SaleInfo
            Core.<$> (o Core..:? "buyLink")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "isEbook")
            Core.<*> (o Core..:? "listPrice")
            Core.<*> (o Core..:? "offers")
            Core.<*> (o Core..:? "onSaleDate")
            Core.<*> (o Core..:? "retailPrice")
            Core.<*> (o Core..:? "saleability")
      )

instance Core.ToJSON Volume_SaleInfo where
  toJSON Volume_SaleInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("buyLink" Core..=) Core.<$> buyLink,
            ("country" Core..=) Core.<$> country,
            ("isEbook" Core..=) Core.<$> isEbook,
            ("listPrice" Core..=) Core.<$> listPrice,
            ("offers" Core..=) Core.<$> offers,
            ("onSaleDate" Core..=) Core.<$> onSaleDate,
            ("retailPrice" Core..=) Core.<$> retailPrice,
            ("saleability" Core..=) Core.<$> saleability
          ]
      )

-- | Suggested retail price. (In LITE projection.)
--
-- /See:/ 'newVolume_SaleInfo_ListPrice' smart constructor.
data Volume_SaleInfo_ListPrice = Volume_SaleInfo_ListPrice
  { -- | Amount in the currency listed below. (In LITE projection.)
    amount :: (Core.Maybe Core.Double),
    -- | An ISO 4217, three-letter currency code. (In LITE projection.)
    currencyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SaleInfo_ListPrice' with the minimum fields required to make a request.
newVolume_SaleInfo_ListPrice ::
  Volume_SaleInfo_ListPrice
newVolume_SaleInfo_ListPrice =
  Volume_SaleInfo_ListPrice
    { amount = Core.Nothing,
      currencyCode = Core.Nothing
    }

instance Core.FromJSON Volume_SaleInfo_ListPrice where
  parseJSON =
    Core.withObject
      "Volume_SaleInfo_ListPrice"
      ( \o ->
          Volume_SaleInfo_ListPrice
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "currencyCode")
      )

instance Core.ToJSON Volume_SaleInfo_ListPrice where
  toJSON Volume_SaleInfo_ListPrice {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("currencyCode" Core..=) Core.<$> currencyCode
          ]
      )

--
-- /See:/ 'newVolume_SaleInfo_OffersItem' smart constructor.
data Volume_SaleInfo_OffersItem = Volume_SaleInfo_OffersItem
  { -- | The finsky offer type (e.g., PURCHASE=0 RENTAL=3)
    finskyOfferType :: (Core.Maybe Core.Int32),
    -- | Indicates whether the offer is giftable.
    giftable :: (Core.Maybe Core.Bool),
    -- | Offer list (=undiscounted) price in Micros.
    listPrice :: (Core.Maybe Volume_SaleInfo_OffersItem_ListPrice),
    -- | The rental duration (for rental offers only).
    rentalDuration :: (Core.Maybe Volume_SaleInfo_OffersItem_RentalDuration),
    -- | Offer retail (=discounted) price in Micros
    retailPrice :: (Core.Maybe Volume_SaleInfo_OffersItem_RetailPrice)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SaleInfo_OffersItem' with the minimum fields required to make a request.
newVolume_SaleInfo_OffersItem ::
  Volume_SaleInfo_OffersItem
newVolume_SaleInfo_OffersItem =
  Volume_SaleInfo_OffersItem
    { finskyOfferType = Core.Nothing,
      giftable = Core.Nothing,
      listPrice = Core.Nothing,
      rentalDuration = Core.Nothing,
      retailPrice = Core.Nothing
    }

instance Core.FromJSON Volume_SaleInfo_OffersItem where
  parseJSON =
    Core.withObject
      "Volume_SaleInfo_OffersItem"
      ( \o ->
          Volume_SaleInfo_OffersItem
            Core.<$> (o Core..:? "finskyOfferType")
            Core.<*> (o Core..:? "giftable")
            Core.<*> (o Core..:? "listPrice")
            Core.<*> (o Core..:? "rentalDuration")
            Core.<*> (o Core..:? "retailPrice")
      )

instance Core.ToJSON Volume_SaleInfo_OffersItem where
  toJSON Volume_SaleInfo_OffersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("finskyOfferType" Core..=) Core.<$> finskyOfferType,
            ("giftable" Core..=) Core.<$> giftable,
            ("listPrice" Core..=) Core.<$> listPrice,
            ("rentalDuration" Core..=) Core.<$> rentalDuration,
            ("retailPrice" Core..=) Core.<$> retailPrice
          ]
      )

-- | Offer list (=undiscounted) price in Micros.
--
-- /See:/ 'newVolume_SaleInfo_OffersItem_ListPrice' smart constructor.
data Volume_SaleInfo_OffersItem_ListPrice = Volume_SaleInfo_OffersItem_ListPrice
  { amountInMicros :: (Core.Maybe Core.Double),
    currencyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SaleInfo_OffersItem_ListPrice' with the minimum fields required to make a request.
newVolume_SaleInfo_OffersItem_ListPrice ::
  Volume_SaleInfo_OffersItem_ListPrice
newVolume_SaleInfo_OffersItem_ListPrice =
  Volume_SaleInfo_OffersItem_ListPrice
    { amountInMicros =
        Core.Nothing,
      currencyCode = Core.Nothing
    }

instance Core.FromJSON Volume_SaleInfo_OffersItem_ListPrice where
  parseJSON =
    Core.withObject
      "Volume_SaleInfo_OffersItem_ListPrice"
      ( \o ->
          Volume_SaleInfo_OffersItem_ListPrice
            Core.<$> (o Core..:? "amountInMicros")
            Core.<*> (o Core..:? "currencyCode")
      )

instance Core.ToJSON Volume_SaleInfo_OffersItem_ListPrice where
  toJSON Volume_SaleInfo_OffersItem_ListPrice {..} =
    Core.object
      ( Core.catMaybes
          [ ("amountInMicros" Core..=) Core.<$> amountInMicros,
            ("currencyCode" Core..=) Core.<$> currencyCode
          ]
      )

-- | The rental duration (for rental offers only).
--
-- /See:/ 'newVolume_SaleInfo_OffersItem_RentalDuration' smart constructor.
data Volume_SaleInfo_OffersItem_RentalDuration = Volume_SaleInfo_OffersItem_RentalDuration
  { count :: (Core.Maybe Core.Double),
    unit :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SaleInfo_OffersItem_RentalDuration' with the minimum fields required to make a request.
newVolume_SaleInfo_OffersItem_RentalDuration ::
  Volume_SaleInfo_OffersItem_RentalDuration
newVolume_SaleInfo_OffersItem_RentalDuration =
  Volume_SaleInfo_OffersItem_RentalDuration
    { count = Core.Nothing,
      unit = Core.Nothing
    }

instance Core.FromJSON Volume_SaleInfo_OffersItem_RentalDuration where
  parseJSON =
    Core.withObject
      "Volume_SaleInfo_OffersItem_RentalDuration"
      ( \o ->
          Volume_SaleInfo_OffersItem_RentalDuration
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "unit")
      )

instance Core.ToJSON Volume_SaleInfo_OffersItem_RentalDuration where
  toJSON Volume_SaleInfo_OffersItem_RentalDuration {..} =
    Core.object
      ( Core.catMaybes
          [("count" Core..=) Core.<$> count, ("unit" Core..=) Core.<$> unit]
      )

-- | Offer retail (=discounted) price in Micros
--
-- /See:/ 'newVolume_SaleInfo_OffersItem_RetailPrice' smart constructor.
data Volume_SaleInfo_OffersItem_RetailPrice = Volume_SaleInfo_OffersItem_RetailPrice
  { amountInMicros :: (Core.Maybe Core.Double),
    currencyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SaleInfo_OffersItem_RetailPrice' with the minimum fields required to make a request.
newVolume_SaleInfo_OffersItem_RetailPrice ::
  Volume_SaleInfo_OffersItem_RetailPrice
newVolume_SaleInfo_OffersItem_RetailPrice =
  Volume_SaleInfo_OffersItem_RetailPrice
    { amountInMicros =
        Core.Nothing,
      currencyCode = Core.Nothing
    }

instance Core.FromJSON Volume_SaleInfo_OffersItem_RetailPrice where
  parseJSON =
    Core.withObject
      "Volume_SaleInfo_OffersItem_RetailPrice"
      ( \o ->
          Volume_SaleInfo_OffersItem_RetailPrice
            Core.<$> (o Core..:? "amountInMicros")
            Core.<*> (o Core..:? "currencyCode")
      )

instance Core.ToJSON Volume_SaleInfo_OffersItem_RetailPrice where
  toJSON Volume_SaleInfo_OffersItem_RetailPrice {..} =
    Core.object
      ( Core.catMaybes
          [ ("amountInMicros" Core..=) Core.<$> amountInMicros,
            ("currencyCode" Core..=) Core.<$> currencyCode
          ]
      )

-- | The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.)
--
-- /See:/ 'newVolume_SaleInfo_RetailPrice' smart constructor.
data Volume_SaleInfo_RetailPrice = Volume_SaleInfo_RetailPrice
  { -- | Amount in the currency listed below. (In LITE projection.)
    amount :: (Core.Maybe Core.Double),
    -- | An ISO 4217, three-letter currency code. (In LITE projection.)
    currencyCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SaleInfo_RetailPrice' with the minimum fields required to make a request.
newVolume_SaleInfo_RetailPrice ::
  Volume_SaleInfo_RetailPrice
newVolume_SaleInfo_RetailPrice =
  Volume_SaleInfo_RetailPrice
    { amount = Core.Nothing,
      currencyCode = Core.Nothing
    }

instance Core.FromJSON Volume_SaleInfo_RetailPrice where
  parseJSON =
    Core.withObject
      "Volume_SaleInfo_RetailPrice"
      ( \o ->
          Volume_SaleInfo_RetailPrice
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "currencyCode")
      )

instance Core.ToJSON Volume_SaleInfo_RetailPrice where
  toJSON Volume_SaleInfo_RetailPrice {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("currencyCode" Core..=) Core.<$> currencyCode
          ]
      )

-- | Search result information related to this volume.
--
-- /See:/ 'newVolume_SearchInfo' smart constructor.
newtype Volume_SearchInfo = Volume_SearchInfo
  { -- | A text snippet containing the search query.
    textSnippet :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_SearchInfo' with the minimum fields required to make a request.
newVolume_SearchInfo ::
  Volume_SearchInfo
newVolume_SearchInfo =
  Volume_SearchInfo {textSnippet = Core.Nothing}

instance Core.FromJSON Volume_SearchInfo where
  parseJSON =
    Core.withObject
      "Volume_SearchInfo"
      (\o -> Volume_SearchInfo Core.<$> (o Core..:? "textSnippet"))

instance Core.ToJSON Volume_SearchInfo where
  toJSON Volume_SearchInfo {..} =
    Core.object
      (Core.catMaybes [("textSnippet" Core..=) Core.<$> textSnippet])

-- | User specific information related to this volume. (e.g. page this user last read or whether they purchased this book)
--
-- /See:/ 'newVolume_UserInfo' smart constructor.
data Volume_UserInfo = Volume_UserInfo
  { -- | Timestamp when this volume was acquired by the user. (RFC 3339 UTC date-time format) Acquiring includes purchase, user upload, receiving family sharing, etc.
    acquiredTime :: (Core.Maybe Core.Text),
    -- | How this volume was acquired.
    acquisitionType :: (Core.Maybe Core.Int32),
    -- | Copy\/Paste accounting information.
    copy :: (Core.Maybe Volume_UserInfo_Copy),
    -- | Whether this volume is purchased, sample, pd download etc.
    entitlementType :: (Core.Maybe Core.Int32),
    -- | Information on the ability to share with the family.
    familySharing :: (Core.Maybe Volume_UserInfo_FamilySharing),
    -- | Whether or not the user shared this volume with the family.
    isFamilySharedFromUser :: (Core.Maybe Core.Bool),
    -- | Whether or not the user received this volume through family sharing.
    isFamilySharedToUser :: (Core.Maybe Core.Bool),
    -- | Deprecated: Replaced by familySharing.
    isFamilySharingAllowed :: (Core.Maybe Core.Bool),
    -- | Deprecated: Replaced by familySharing.
    isFamilySharingDisabledByFop :: (Core.Maybe Core.Bool),
    -- | Whether or not this volume is currently in \"my books.\"
    isInMyBooks :: (Core.Maybe Core.Bool),
    -- | Whether or not this volume was pre-ordered by the authenticated user making the request. (In LITE projection.)
    isPreordered :: (Core.Maybe Core.Bool),
    -- | Whether or not this volume was purchased by the authenticated user making the request. (In LITE projection.)
    isPurchased :: (Core.Maybe Core.Bool),
    -- | Whether or not this volume was user uploaded.
    isUploaded :: (Core.Maybe Core.Bool),
    -- | The user\'s current reading position in the volume, if one is available. (In LITE projection.)
    readingPosition :: (Core.Maybe ReadingPosition),
    -- | Period during this book is\/was a valid rental.
    rentalPeriod :: (Core.Maybe Volume_UserInfo_RentalPeriod),
    -- | Whether this book is an active or an expired rental.
    rentalState :: (Core.Maybe Core.Text),
    -- | This user\'s review of this volume, if one exists.
    review :: (Core.Maybe Review),
    -- | Timestamp when this volume was last modified by a user action, such as a reading position update, volume purchase or writing a review. (RFC 3339 UTC date-time format).
    updated :: (Core.Maybe Core.Text),
    userUploadedVolumeInfo :: (Core.Maybe Volume_UserInfo_UserUploadedVolumeInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_UserInfo' with the minimum fields required to make a request.
newVolume_UserInfo ::
  Volume_UserInfo
newVolume_UserInfo =
  Volume_UserInfo
    { acquiredTime = Core.Nothing,
      acquisitionType = Core.Nothing,
      copy = Core.Nothing,
      entitlementType = Core.Nothing,
      familySharing = Core.Nothing,
      isFamilySharedFromUser = Core.Nothing,
      isFamilySharedToUser = Core.Nothing,
      isFamilySharingAllowed = Core.Nothing,
      isFamilySharingDisabledByFop = Core.Nothing,
      isInMyBooks = Core.Nothing,
      isPreordered = Core.Nothing,
      isPurchased = Core.Nothing,
      isUploaded = Core.Nothing,
      readingPosition = Core.Nothing,
      rentalPeriod = Core.Nothing,
      rentalState = Core.Nothing,
      review = Core.Nothing,
      updated = Core.Nothing,
      userUploadedVolumeInfo = Core.Nothing
    }

instance Core.FromJSON Volume_UserInfo where
  parseJSON =
    Core.withObject
      "Volume_UserInfo"
      ( \o ->
          Volume_UserInfo
            Core.<$> (o Core..:? "acquiredTime")
            Core.<*> (o Core..:? "acquisitionType")
            Core.<*> (o Core..:? "copy")
            Core.<*> (o Core..:? "entitlementType")
            Core.<*> (o Core..:? "familySharing")
            Core.<*> (o Core..:? "isFamilySharedFromUser")
            Core.<*> (o Core..:? "isFamilySharedToUser")
            Core.<*> (o Core..:? "isFamilySharingAllowed")
            Core.<*> (o Core..:? "isFamilySharingDisabledByFop")
            Core.<*> (o Core..:? "isInMyBooks")
            Core.<*> (o Core..:? "isPreordered")
            Core.<*> (o Core..:? "isPurchased")
            Core.<*> (o Core..:? "isUploaded")
            Core.<*> (o Core..:? "readingPosition")
            Core.<*> (o Core..:? "rentalPeriod")
            Core.<*> (o Core..:? "rentalState")
            Core.<*> (o Core..:? "review")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "userUploadedVolumeInfo")
      )

instance Core.ToJSON Volume_UserInfo where
  toJSON Volume_UserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("acquiredTime" Core..=) Core.<$> acquiredTime,
            ("acquisitionType" Core..=) Core.<$> acquisitionType,
            ("copy" Core..=) Core.<$> copy,
            ("entitlementType" Core..=) Core.<$> entitlementType,
            ("familySharing" Core..=) Core.<$> familySharing,
            ("isFamilySharedFromUser" Core..=) Core.<$> isFamilySharedFromUser,
            ("isFamilySharedToUser" Core..=) Core.<$> isFamilySharedToUser,
            ("isFamilySharingAllowed" Core..=) Core.<$> isFamilySharingAllowed,
            ("isFamilySharingDisabledByFop" Core..=)
              Core.<$> isFamilySharingDisabledByFop,
            ("isInMyBooks" Core..=) Core.<$> isInMyBooks,
            ("isPreordered" Core..=) Core.<$> isPreordered,
            ("isPurchased" Core..=) Core.<$> isPurchased,
            ("isUploaded" Core..=) Core.<$> isUploaded,
            ("readingPosition" Core..=) Core.<$> readingPosition,
            ("rentalPeriod" Core..=) Core.<$> rentalPeriod,
            ("rentalState" Core..=) Core.<$> rentalState,
            ("review" Core..=) Core.<$> review,
            ("updated" Core..=) Core.<$> updated,
            ("userUploadedVolumeInfo" Core..=)
              Core.<$> userUploadedVolumeInfo
          ]
      )

-- | Copy\/Paste accounting information.
--
-- /See:/ 'newVolume_UserInfo_Copy' smart constructor.
data Volume_UserInfo_Copy = Volume_UserInfo_Copy
  { allowedCharacterCount :: (Core.Maybe Core.Int32),
    limitType :: (Core.Maybe Core.Text),
    remainingCharacterCount :: (Core.Maybe Core.Int32),
    updated :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_UserInfo_Copy' with the minimum fields required to make a request.
newVolume_UserInfo_Copy ::
  Volume_UserInfo_Copy
newVolume_UserInfo_Copy =
  Volume_UserInfo_Copy
    { allowedCharacterCount = Core.Nothing,
      limitType = Core.Nothing,
      remainingCharacterCount = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON Volume_UserInfo_Copy where
  parseJSON =
    Core.withObject
      "Volume_UserInfo_Copy"
      ( \o ->
          Volume_UserInfo_Copy
            Core.<$> (o Core..:? "allowedCharacterCount")
            Core.<*> (o Core..:? "limitType")
            Core.<*> (o Core..:? "remainingCharacterCount")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON Volume_UserInfo_Copy where
  toJSON Volume_UserInfo_Copy {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedCharacterCount" Core..=) Core.<$> allowedCharacterCount,
            ("limitType" Core..=) Core.<$> limitType,
            ("remainingCharacterCount" Core..=)
              Core.<$> remainingCharacterCount,
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | Information on the ability to share with the family.
--
-- /See:/ 'newVolume_UserInfo_FamilySharing' smart constructor.
data Volume_UserInfo_FamilySharing = Volume_UserInfo_FamilySharing
  { -- | The role of the user in the family.
    familyRole :: (Core.Maybe Core.Text),
    -- | Whether or not this volume can be shared with the family by the user. This includes sharing eligibility of both the volume and the user. If the value is true, the user can initiate a family sharing action.
    isSharingAllowed :: (Core.Maybe Core.Bool),
    -- | Whether or not sharing this volume is temporarily disabled due to issues with the Family Wallet.
    isSharingDisabledByFop :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_UserInfo_FamilySharing' with the minimum fields required to make a request.
newVolume_UserInfo_FamilySharing ::
  Volume_UserInfo_FamilySharing
newVolume_UserInfo_FamilySharing =
  Volume_UserInfo_FamilySharing
    { familyRole = Core.Nothing,
      isSharingAllowed = Core.Nothing,
      isSharingDisabledByFop = Core.Nothing
    }

instance Core.FromJSON Volume_UserInfo_FamilySharing where
  parseJSON =
    Core.withObject
      "Volume_UserInfo_FamilySharing"
      ( \o ->
          Volume_UserInfo_FamilySharing
            Core.<$> (o Core..:? "familyRole")
            Core.<*> (o Core..:? "isSharingAllowed")
            Core.<*> (o Core..:? "isSharingDisabledByFop")
      )

instance Core.ToJSON Volume_UserInfo_FamilySharing where
  toJSON Volume_UserInfo_FamilySharing {..} =
    Core.object
      ( Core.catMaybes
          [ ("familyRole" Core..=) Core.<$> familyRole,
            ("isSharingAllowed" Core..=) Core.<$> isSharingAllowed,
            ("isSharingDisabledByFop" Core..=)
              Core.<$> isSharingDisabledByFop
          ]
      )

-- | Period during this book is\/was a valid rental.
--
-- /See:/ 'newVolume_UserInfo_RentalPeriod' smart constructor.
data Volume_UserInfo_RentalPeriod = Volume_UserInfo_RentalPeriod
  { endUtcSec :: (Core.Maybe Core.Int64),
    startUtcSec :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_UserInfo_RentalPeriod' with the minimum fields required to make a request.
newVolume_UserInfo_RentalPeriod ::
  Volume_UserInfo_RentalPeriod
newVolume_UserInfo_RentalPeriod =
  Volume_UserInfo_RentalPeriod
    { endUtcSec = Core.Nothing,
      startUtcSec = Core.Nothing
    }

instance Core.FromJSON Volume_UserInfo_RentalPeriod where
  parseJSON =
    Core.withObject
      "Volume_UserInfo_RentalPeriod"
      ( \o ->
          Volume_UserInfo_RentalPeriod
            Core.<$> (o Core..:? "endUtcSec" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "startUtcSec" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Volume_UserInfo_RentalPeriod where
  toJSON Volume_UserInfo_RentalPeriod {..} =
    Core.object
      ( Core.catMaybes
          [ ("endUtcSec" Core..=) Core.. Core.AsText Core.<$> endUtcSec,
            ("startUtcSec" Core..=) Core.. Core.AsText Core.<$> startUtcSec
          ]
      )

--
-- /See:/ 'newVolume_UserInfo_UserUploadedVolumeInfo' smart constructor.
newtype Volume_UserInfo_UserUploadedVolumeInfo = Volume_UserInfo_UserUploadedVolumeInfo
  { processingState :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_UserInfo_UserUploadedVolumeInfo' with the minimum fields required to make a request.
newVolume_UserInfo_UserUploadedVolumeInfo ::
  Volume_UserInfo_UserUploadedVolumeInfo
newVolume_UserInfo_UserUploadedVolumeInfo =
  Volume_UserInfo_UserUploadedVolumeInfo
    { processingState =
        Core.Nothing
    }

instance Core.FromJSON Volume_UserInfo_UserUploadedVolumeInfo where
  parseJSON =
    Core.withObject
      "Volume_UserInfo_UserUploadedVolumeInfo"
      ( \o ->
          Volume_UserInfo_UserUploadedVolumeInfo
            Core.<$> (o Core..:? "processingState")
      )

instance Core.ToJSON Volume_UserInfo_UserUploadedVolumeInfo where
  toJSON Volume_UserInfo_UserUploadedVolumeInfo {..} =
    Core.object
      ( Core.catMaybes
          [("processingState" Core..=) Core.<$> processingState]
      )

-- | General volume information.
--
-- /See:/ 'newVolume_VolumeInfo' smart constructor.
data Volume_VolumeInfo = Volume_VolumeInfo
  { -- | Whether anonymous logging should be allowed.
    allowAnonLogging :: (Core.Maybe Core.Bool),
    -- | The names of the authors and\/or editors for this volume. (In LITE projection)
    authors :: (Core.Maybe [Core.Text]),
    -- | The mean review rating for this volume. (min = 1.0, max = 5.0)
    averageRating :: (Core.Maybe Core.Double),
    -- | Canonical URL for a volume. (In LITE projection.)
    canonicalVolumeLink :: (Core.Maybe Core.Text),
    -- | A list of subject categories, such as \"Fiction\", \"Suspense\", etc.
    categories :: (Core.Maybe [Core.Text]),
    -- | Whether the volume has comics content.
    comicsContent :: (Core.Maybe Core.Bool),
    -- | An identifier for the version of the volume content (text & images). (In LITE projection)
    contentVersion :: (Core.Maybe Core.Text),
    -- | A synopsis of the volume. The text of the description is formatted in HTML and includes simple formatting elements, such as b, i, and br tags. (In LITE projection.)
    description :: (Core.Maybe Core.Text),
    -- | Physical dimensions of this volume.
    dimensions :: (Core.Maybe Volume_VolumeInfo_Dimensions),
    -- | A list of image links for all the sizes that are available. (In LITE projection.)
    imageLinks :: (Core.Maybe Volume_VolumeInfo_ImageLinks),
    -- | Industry standard identifiers for this volume.
    industryIdentifiers :: (Core.Maybe [Volume_VolumeInfo_IndustryIdentifiersItem]),
    -- | URL to view information about this volume on the Google Books site. (In LITE projection)
    infoLink :: (Core.Maybe Core.Text),
    -- | Best language for this volume (based on content). It is the two-letter ISO 639-1 code such as \'fr\', \'en\', etc.
    language :: (Core.Maybe Core.Text),
    -- | The main category to which this volume belongs. It will be the category from the categories list returned below that has the highest weight.
    mainCategory :: (Core.Maybe Core.Text),
    maturityRating :: (Core.Maybe Core.Text),
    -- | Total number of pages as per publisher metadata.
    pageCount :: (Core.Maybe Core.Int32),
    -- | A top-level summary of the panelization info in this volume.
    panelizationSummary :: (Core.Maybe Volume_VolumeInfo_PanelizationSummary),
    -- | URL to preview this volume on the Google Books site.
    previewLink :: (Core.Maybe Core.Text),
    -- | Type of publication of this volume. Possible values are BOOK or MAGAZINE.
    printType :: (Core.Maybe Core.Text),
    -- | Total number of printed pages in generated pdf representation.
    printedPageCount :: (Core.Maybe Core.Int32),
    -- | Date of publication. (In LITE projection.)
    publishedDate :: (Core.Maybe Core.Text),
    -- | Publisher of this volume. (In LITE projection.)
    publisher :: (Core.Maybe Core.Text),
    -- | The number of review ratings for this volume.
    ratingsCount :: (Core.Maybe Core.Int32),
    -- | The reading modes available for this volume.
    readingModes :: (Core.Maybe Volume_VolumeInfo_ReadingModes),
    -- | Total number of sample pages as per publisher metadata.
    samplePageCount :: (Core.Maybe Core.Int32),
    seriesInfo :: (Core.Maybe Volumeseriesinfo),
    -- | Volume subtitle. (In LITE projection.)
    subtitle :: (Core.Maybe Core.Text),
    -- | Volume title. (In LITE projection.)
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_VolumeInfo' with the minimum fields required to make a request.
newVolume_VolumeInfo ::
  Volume_VolumeInfo
newVolume_VolumeInfo =
  Volume_VolumeInfo
    { allowAnonLogging = Core.Nothing,
      authors = Core.Nothing,
      averageRating = Core.Nothing,
      canonicalVolumeLink = Core.Nothing,
      categories = Core.Nothing,
      comicsContent = Core.Nothing,
      contentVersion = Core.Nothing,
      description = Core.Nothing,
      dimensions = Core.Nothing,
      imageLinks = Core.Nothing,
      industryIdentifiers = Core.Nothing,
      infoLink = Core.Nothing,
      language = Core.Nothing,
      mainCategory = Core.Nothing,
      maturityRating = Core.Nothing,
      pageCount = Core.Nothing,
      panelizationSummary = Core.Nothing,
      previewLink = Core.Nothing,
      printType = Core.Nothing,
      printedPageCount = Core.Nothing,
      publishedDate = Core.Nothing,
      publisher = Core.Nothing,
      ratingsCount = Core.Nothing,
      readingModes = Core.Nothing,
      samplePageCount = Core.Nothing,
      seriesInfo = Core.Nothing,
      subtitle = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Volume_VolumeInfo where
  parseJSON =
    Core.withObject
      "Volume_VolumeInfo"
      ( \o ->
          Volume_VolumeInfo
            Core.<$> (o Core..:? "allowAnonLogging")
            Core.<*> (o Core..:? "authors")
            Core.<*> (o Core..:? "averageRating")
            Core.<*> (o Core..:? "canonicalVolumeLink")
            Core.<*> (o Core..:? "categories")
            Core.<*> (o Core..:? "comicsContent")
            Core.<*> (o Core..:? "contentVersion")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "imageLinks")
            Core.<*> (o Core..:? "industryIdentifiers")
            Core.<*> (o Core..:? "infoLink")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "mainCategory")
            Core.<*> (o Core..:? "maturityRating")
            Core.<*> (o Core..:? "pageCount")
            Core.<*> (o Core..:? "panelizationSummary")
            Core.<*> (o Core..:? "previewLink")
            Core.<*> (o Core..:? "printType")
            Core.<*> (o Core..:? "printedPageCount")
            Core.<*> (o Core..:? "publishedDate")
            Core.<*> (o Core..:? "publisher")
            Core.<*> (o Core..:? "ratingsCount")
            Core.<*> (o Core..:? "readingModes")
            Core.<*> (o Core..:? "samplePageCount")
            Core.<*> (o Core..:? "seriesInfo")
            Core.<*> (o Core..:? "subtitle")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Volume_VolumeInfo where
  toJSON Volume_VolumeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowAnonLogging" Core..=) Core.<$> allowAnonLogging,
            ("authors" Core..=) Core.<$> authors,
            ("averageRating" Core..=) Core.<$> averageRating,
            ("canonicalVolumeLink" Core..=) Core.<$> canonicalVolumeLink,
            ("categories" Core..=) Core.<$> categories,
            ("comicsContent" Core..=) Core.<$> comicsContent,
            ("contentVersion" Core..=) Core.<$> contentVersion,
            ("description" Core..=) Core.<$> description,
            ("dimensions" Core..=) Core.<$> dimensions,
            ("imageLinks" Core..=) Core.<$> imageLinks,
            ("industryIdentifiers" Core..=) Core.<$> industryIdentifiers,
            ("infoLink" Core..=) Core.<$> infoLink,
            ("language" Core..=) Core.<$> language,
            ("mainCategory" Core..=) Core.<$> mainCategory,
            ("maturityRating" Core..=) Core.<$> maturityRating,
            ("pageCount" Core..=) Core.<$> pageCount,
            ("panelizationSummary" Core..=) Core.<$> panelizationSummary,
            ("previewLink" Core..=) Core.<$> previewLink,
            ("printType" Core..=) Core.<$> printType,
            ("printedPageCount" Core..=) Core.<$> printedPageCount,
            ("publishedDate" Core..=) Core.<$> publishedDate,
            ("publisher" Core..=) Core.<$> publisher,
            ("ratingsCount" Core..=) Core.<$> ratingsCount,
            ("readingModes" Core..=) Core.<$> readingModes,
            ("samplePageCount" Core..=) Core.<$> samplePageCount,
            ("seriesInfo" Core..=) Core.<$> seriesInfo,
            ("subtitle" Core..=) Core.<$> subtitle,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Physical dimensions of this volume.
--
-- /See:/ 'newVolume_VolumeInfo_Dimensions' smart constructor.
data Volume_VolumeInfo_Dimensions = Volume_VolumeInfo_Dimensions
  { -- | Height or length of this volume (in cm).
    height :: (Core.Maybe Core.Text),
    -- | Thickness of this volume (in cm).
    thickness :: (Core.Maybe Core.Text),
    -- | Width of this volume (in cm).
    width :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_VolumeInfo_Dimensions' with the minimum fields required to make a request.
newVolume_VolumeInfo_Dimensions ::
  Volume_VolumeInfo_Dimensions
newVolume_VolumeInfo_Dimensions =
  Volume_VolumeInfo_Dimensions
    { height = Core.Nothing,
      thickness = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Volume_VolumeInfo_Dimensions where
  parseJSON =
    Core.withObject
      "Volume_VolumeInfo_Dimensions"
      ( \o ->
          Volume_VolumeInfo_Dimensions
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "thickness")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Volume_VolumeInfo_Dimensions where
  toJSON Volume_VolumeInfo_Dimensions {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("thickness" Core..=) Core.<$> thickness,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A list of image links for all the sizes that are available. (In LITE projection.)
--
-- /See:/ 'newVolume_VolumeInfo_ImageLinks' smart constructor.
data Volume_VolumeInfo_ImageLinks = Volume_VolumeInfo_ImageLinks
  { -- | Image link for extra large size (width of ~1280 pixels). (In LITE projection)
    extraLarge :: (Core.Maybe Core.Text),
    -- | Image link for large size (width of ~800 pixels). (In LITE projection)
    large :: (Core.Maybe Core.Text),
    -- | Image link for medium size (width of ~575 pixels). (In LITE projection)
    medium :: (Core.Maybe Core.Text),
    -- | Image link for small size (width of ~300 pixels). (In LITE projection)
    small :: (Core.Maybe Core.Text),
    -- | Image link for small thumbnail size (width of ~80 pixels). (In LITE projection)
    smallThumbnail :: (Core.Maybe Core.Text),
    -- | Image link for thumbnail size (width of ~128 pixels). (In LITE projection)
    thumbnail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_VolumeInfo_ImageLinks' with the minimum fields required to make a request.
newVolume_VolumeInfo_ImageLinks ::
  Volume_VolumeInfo_ImageLinks
newVolume_VolumeInfo_ImageLinks =
  Volume_VolumeInfo_ImageLinks
    { extraLarge = Core.Nothing,
      large = Core.Nothing,
      medium = Core.Nothing,
      small = Core.Nothing,
      smallThumbnail = Core.Nothing,
      thumbnail = Core.Nothing
    }

instance Core.FromJSON Volume_VolumeInfo_ImageLinks where
  parseJSON =
    Core.withObject
      "Volume_VolumeInfo_ImageLinks"
      ( \o ->
          Volume_VolumeInfo_ImageLinks
            Core.<$> (o Core..:? "extraLarge")
            Core.<*> (o Core..:? "large")
            Core.<*> (o Core..:? "medium")
            Core.<*> (o Core..:? "small")
            Core.<*> (o Core..:? "smallThumbnail")
            Core.<*> (o Core..:? "thumbnail")
      )

instance Core.ToJSON Volume_VolumeInfo_ImageLinks where
  toJSON Volume_VolumeInfo_ImageLinks {..} =
    Core.object
      ( Core.catMaybes
          [ ("extraLarge" Core..=) Core.<$> extraLarge,
            ("large" Core..=) Core.<$> large,
            ("medium" Core..=) Core.<$> medium,
            ("small" Core..=) Core.<$> small,
            ("smallThumbnail" Core..=) Core.<$> smallThumbnail,
            ("thumbnail" Core..=) Core.<$> thumbnail
          ]
      )

--
-- /See:/ 'newVolume_VolumeInfo_IndustryIdentifiersItem' smart constructor.
data Volume_VolumeInfo_IndustryIdentifiersItem = Volume_VolumeInfo_IndustryIdentifiersItem
  { -- | Industry specific volume identifier.
    identifier :: (Core.Maybe Core.Text),
    -- | Identifier type. Possible values are ISBN/10, ISBN/13, ISSN and OTHER.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_VolumeInfo_IndustryIdentifiersItem' with the minimum fields required to make a request.
newVolume_VolumeInfo_IndustryIdentifiersItem ::
  Volume_VolumeInfo_IndustryIdentifiersItem
newVolume_VolumeInfo_IndustryIdentifiersItem =
  Volume_VolumeInfo_IndustryIdentifiersItem
    { identifier =
        Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Volume_VolumeInfo_IndustryIdentifiersItem where
  parseJSON =
    Core.withObject
      "Volume_VolumeInfo_IndustryIdentifiersItem"
      ( \o ->
          Volume_VolumeInfo_IndustryIdentifiersItem
            Core.<$> (o Core..:? "identifier")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Volume_VolumeInfo_IndustryIdentifiersItem where
  toJSON Volume_VolumeInfo_IndustryIdentifiersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("identifier" Core..=) Core.<$> identifier,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A top-level summary of the panelization info in this volume.
--
-- /See:/ 'newVolume_VolumeInfo_PanelizationSummary' smart constructor.
data Volume_VolumeInfo_PanelizationSummary = Volume_VolumeInfo_PanelizationSummary
  { containsEpubBubbles :: (Core.Maybe Core.Bool),
    containsImageBubbles :: (Core.Maybe Core.Bool),
    epubBubbleVersion :: (Core.Maybe Core.Text),
    imageBubbleVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_VolumeInfo_PanelizationSummary' with the minimum fields required to make a request.
newVolume_VolumeInfo_PanelizationSummary ::
  Volume_VolumeInfo_PanelizationSummary
newVolume_VolumeInfo_PanelizationSummary =
  Volume_VolumeInfo_PanelizationSummary
    { containsEpubBubbles =
        Core.Nothing,
      containsImageBubbles = Core.Nothing,
      epubBubbleVersion = Core.Nothing,
      imageBubbleVersion = Core.Nothing
    }

instance Core.FromJSON Volume_VolumeInfo_PanelizationSummary where
  parseJSON =
    Core.withObject
      "Volume_VolumeInfo_PanelizationSummary"
      ( \o ->
          Volume_VolumeInfo_PanelizationSummary
            Core.<$> (o Core..:? "containsEpubBubbles")
            Core.<*> (o Core..:? "containsImageBubbles")
            Core.<*> (o Core..:? "epubBubbleVersion")
            Core.<*> (o Core..:? "imageBubbleVersion")
      )

instance Core.ToJSON Volume_VolumeInfo_PanelizationSummary where
  toJSON Volume_VolumeInfo_PanelizationSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("containsEpubBubbles" Core..=) Core.<$> containsEpubBubbles,
            ("containsImageBubbles" Core..=) Core.<$> containsImageBubbles,
            ("epubBubbleVersion" Core..=) Core.<$> epubBubbleVersion,
            ("imageBubbleVersion" Core..=) Core.<$> imageBubbleVersion
          ]
      )

-- | The reading modes available for this volume.
--
-- /See:/ 'newVolume_VolumeInfo_ReadingModes' smart constructor.
data Volume_VolumeInfo_ReadingModes = Volume_VolumeInfo_ReadingModes
  { image :: (Core.Maybe Core.Bool),
    text :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume_VolumeInfo_ReadingModes' with the minimum fields required to make a request.
newVolume_VolumeInfo_ReadingModes ::
  Volume_VolumeInfo_ReadingModes
newVolume_VolumeInfo_ReadingModes =
  Volume_VolumeInfo_ReadingModes
    { image = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON Volume_VolumeInfo_ReadingModes where
  parseJSON =
    Core.withObject
      "Volume_VolumeInfo_ReadingModes"
      ( \o ->
          Volume_VolumeInfo_ReadingModes
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Volume_VolumeInfo_ReadingModes where
  toJSON Volume_VolumeInfo_ReadingModes {..} =
    Core.object
      ( Core.catMaybes
          [("image" Core..=) Core.<$> image, ("text" Core..=) Core.<$> text]
      )

--
-- /See:/ 'newVolume2' smart constructor.
data Volume2 = Volume2
  { -- | A list of volumes.
    items :: (Core.Maybe [Volume]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume2' with the minimum fields required to make a request.
newVolume2 ::
  Volume2
newVolume2 =
  Volume2
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Volume2 where
  parseJSON =
    Core.withObject
      "Volume2"
      ( \o ->
          Volume2
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Volume2 where
  toJSON Volume2 {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newVolumeannotation' smart constructor.
data Volumeannotation = Volumeannotation
  { -- | The annotation data id for this volume annotation.
    annotationDataId :: (Core.Maybe Core.Text),
    -- | Link to get data for this annotation.
    annotationDataLink :: (Core.Maybe Core.Text),
    -- | The type of annotation this is.
    annotationType :: (Core.Maybe Core.Text),
    -- | The content ranges to identify the selected text.
    contentRanges :: (Core.Maybe Volumeannotation_ContentRanges),
    -- | Data for this annotation.
    data' :: (Core.Maybe Core.Text),
    -- | Indicates that this annotation is deleted.
    deleted :: (Core.Maybe Core.Bool),
    -- | Unique id of this volume annotation.
    id :: (Core.Maybe Core.Text),
    -- | Resource Type
    kind :: (Core.Maybe Core.Text),
    -- | The Layer this annotation is for.
    layerId :: (Core.Maybe Core.Text),
    -- | Pages the annotation spans.
    pageIds :: (Core.Maybe [Core.Text]),
    -- | Excerpt from the volume.
    selectedText :: (Core.Maybe Core.Text),
    -- | URL to this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | Timestamp for the last time this anntoation was updated. (RFC 3339 UTC date-time format).
    updated :: (Core.Maybe Core.Text),
    -- | The Volume this annotation is for.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volumeannotation' with the minimum fields required to make a request.
newVolumeannotation ::
  Volumeannotation
newVolumeannotation =
  Volumeannotation
    { annotationDataId = Core.Nothing,
      annotationDataLink = Core.Nothing,
      annotationType = Core.Nothing,
      contentRanges = Core.Nothing,
      data' = Core.Nothing,
      deleted = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      layerId = Core.Nothing,
      pageIds = Core.Nothing,
      selectedText = Core.Nothing,
      selfLink = Core.Nothing,
      updated = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.FromJSON Volumeannotation where
  parseJSON =
    Core.withObject
      "Volumeannotation"
      ( \o ->
          Volumeannotation
            Core.<$> (o Core..:? "annotationDataId")
            Core.<*> (o Core..:? "annotationDataLink")
            Core.<*> (o Core..:? "annotationType")
            Core.<*> (o Core..:? "contentRanges")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "deleted")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "layerId")
            Core.<*> (o Core..:? "pageIds")
            Core.<*> (o Core..:? "selectedText")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "volumeId")
      )

instance Core.ToJSON Volumeannotation where
  toJSON Volumeannotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotationDataId" Core..=) Core.<$> annotationDataId,
            ("annotationDataLink" Core..=) Core.<$> annotationDataLink,
            ("annotationType" Core..=) Core.<$> annotationType,
            ("contentRanges" Core..=) Core.<$> contentRanges,
            ("data" Core..=) Core.<$> data',
            ("deleted" Core..=) Core.<$> deleted,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("layerId" Core..=) Core.<$> layerId,
            ("pageIds" Core..=) Core.<$> pageIds,
            ("selectedText" Core..=) Core.<$> selectedText,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("updated" Core..=) Core.<$> updated,
            ("volumeId" Core..=) Core.<$> volumeId
          ]
      )

-- | The content ranges to identify the selected text.
--
-- /See:/ 'newVolumeannotation_ContentRanges' smart constructor.
data Volumeannotation_ContentRanges = Volumeannotation_ContentRanges
  { -- | Range in CFI format for this annotation for version above.
    cfiRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Content version applicable to ranges below.
    contentVersion :: (Core.Maybe Core.Text),
    -- | Range in GB image format for this annotation for version above.
    gbImageRange :: (Core.Maybe BooksAnnotationsRange),
    -- | Range in GB text format for this annotation for version above.
    gbTextRange :: (Core.Maybe BooksAnnotationsRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volumeannotation_ContentRanges' with the minimum fields required to make a request.
newVolumeannotation_ContentRanges ::
  Volumeannotation_ContentRanges
newVolumeannotation_ContentRanges =
  Volumeannotation_ContentRanges
    { cfiRange = Core.Nothing,
      contentVersion = Core.Nothing,
      gbImageRange = Core.Nothing,
      gbTextRange = Core.Nothing
    }

instance Core.FromJSON Volumeannotation_ContentRanges where
  parseJSON =
    Core.withObject
      "Volumeannotation_ContentRanges"
      ( \o ->
          Volumeannotation_ContentRanges
            Core.<$> (o Core..:? "cfiRange")
            Core.<*> (o Core..:? "contentVersion")
            Core.<*> (o Core..:? "gbImageRange")
            Core.<*> (o Core..:? "gbTextRange")
      )

instance Core.ToJSON Volumeannotation_ContentRanges where
  toJSON Volumeannotation_ContentRanges {..} =
    Core.object
      ( Core.catMaybes
          [ ("cfiRange" Core..=) Core.<$> cfiRange,
            ("contentVersion" Core..=) Core.<$> contentVersion,
            ("gbImageRange" Core..=) Core.<$> gbImageRange,
            ("gbTextRange" Core..=) Core.<$> gbTextRange
          ]
      )

--
-- /See:/ 'newVolumeannotations' smart constructor.
data Volumeannotations = Volumeannotations
  { -- | A list of volume annotations.
    items :: (Core.Maybe [Volumeannotation]),
    -- | Resource type
    kind :: (Core.Maybe Core.Text),
    -- | Token to pass in for pagination for the next page. This will not be present if this request does not have more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of volume annotations found.
    totalItems :: (Core.Maybe Core.Int32),
    -- | The version string for all of the volume annotations in this layer (not just the ones in this response). Note: the version string doesn\'t apply to the annotation data, just the information in this response (e.g. the location of annotations in the book).
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volumeannotations' with the minimum fields required to make a request.
newVolumeannotations ::
  Volumeannotations
newVolumeannotations =
  Volumeannotations
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalItems = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Volumeannotations where
  parseJSON =
    Core.withObject
      "Volumeannotations"
      ( \o ->
          Volumeannotations
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalItems")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Volumeannotations where
  toJSON Volumeannotations {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalItems" Core..=) Core.<$> totalItems,
            ("version" Core..=) Core.<$> version
          ]
      )

--
-- /See:/ 'newVolumes' smart constructor.
data Volumes = Volumes
  { -- | A list of volumes.
    items :: (Core.Maybe [Volume]),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | Total number of volumes found. This might be greater than the number of volumes returned in this response if results have been paginated.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volumes' with the minimum fields required to make a request.
newVolumes ::
  Volumes
newVolumes =
  Volumes
    { items = Core.Nothing,
      kind = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON Volumes where
  parseJSON =
    Core.withObject
      "Volumes"
      ( \o ->
          Volumes
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON Volumes where
  toJSON Volumes {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newVolumeseriesinfo' smart constructor.
data Volumeseriesinfo = Volumeseriesinfo
  { -- | The display number string. This should be used only for display purposes and the actual sequence should be inferred from the below orderNumber.
    bookDisplayNumber :: (Core.Maybe Core.Text),
    -- | Resource type.
    kind :: (Core.Maybe Core.Text),
    -- | Short book title in the context of the series.
    shortSeriesBookTitle :: (Core.Maybe Core.Text),
    volumeSeries :: (Core.Maybe [Volumeseriesinfo_VolumeSeriesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volumeseriesinfo' with the minimum fields required to make a request.
newVolumeseriesinfo ::
  Volumeseriesinfo
newVolumeseriesinfo =
  Volumeseriesinfo
    { bookDisplayNumber = Core.Nothing,
      kind = Core.Nothing,
      shortSeriesBookTitle = Core.Nothing,
      volumeSeries = Core.Nothing
    }

instance Core.FromJSON Volumeseriesinfo where
  parseJSON =
    Core.withObject
      "Volumeseriesinfo"
      ( \o ->
          Volumeseriesinfo
            Core.<$> (o Core..:? "bookDisplayNumber")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "shortSeriesBookTitle")
            Core.<*> (o Core..:? "volumeSeries")
      )

instance Core.ToJSON Volumeseriesinfo where
  toJSON Volumeseriesinfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("bookDisplayNumber" Core..=) Core.<$> bookDisplayNumber,
            ("kind" Core..=) Core.<$> kind,
            ("shortSeriesBookTitle" Core..=) Core.<$> shortSeriesBookTitle,
            ("volumeSeries" Core..=) Core.<$> volumeSeries
          ]
      )

--
-- /See:/ 'newVolumeseriesinfo_VolumeSeriesItem' smart constructor.
data Volumeseriesinfo_VolumeSeriesItem = Volumeseriesinfo_VolumeSeriesItem
  { -- | List of issues. Applicable only for Collection Edition and Omnibus.
    issue :: (Core.Maybe [Volumeseriesinfo_VolumeSeriesItem_IssueItem]),
    -- | The book order number in the series.
    orderNumber :: (Core.Maybe Core.Int32),
    -- | The book type in the context of series. Examples - Single Issue, Collection Edition, etc.
    seriesBookType :: (Core.Maybe Core.Text),
    -- | The series id.
    seriesId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volumeseriesinfo_VolumeSeriesItem' with the minimum fields required to make a request.
newVolumeseriesinfo_VolumeSeriesItem ::
  Volumeseriesinfo_VolumeSeriesItem
newVolumeseriesinfo_VolumeSeriesItem =
  Volumeseriesinfo_VolumeSeriesItem
    { issue = Core.Nothing,
      orderNumber = Core.Nothing,
      seriesBookType = Core.Nothing,
      seriesId = Core.Nothing
    }

instance Core.FromJSON Volumeseriesinfo_VolumeSeriesItem where
  parseJSON =
    Core.withObject
      "Volumeseriesinfo_VolumeSeriesItem"
      ( \o ->
          Volumeseriesinfo_VolumeSeriesItem
            Core.<$> (o Core..:? "issue")
            Core.<*> (o Core..:? "orderNumber")
            Core.<*> (o Core..:? "seriesBookType")
            Core.<*> (o Core..:? "seriesId")
      )

instance Core.ToJSON Volumeseriesinfo_VolumeSeriesItem where
  toJSON Volumeseriesinfo_VolumeSeriesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("issue" Core..=) Core.<$> issue,
            ("orderNumber" Core..=) Core.<$> orderNumber,
            ("seriesBookType" Core..=) Core.<$> seriesBookType,
            ("seriesId" Core..=) Core.<$> seriesId
          ]
      )

--
-- /See:/ 'newVolumeseriesinfo_VolumeSeriesItem_IssueItem' smart constructor.
data Volumeseriesinfo_VolumeSeriesItem_IssueItem = Volumeseriesinfo_VolumeSeriesItem_IssueItem
  { issueDisplayNumber :: (Core.Maybe Core.Text),
    issueOrderNumber :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volumeseriesinfo_VolumeSeriesItem_IssueItem' with the minimum fields required to make a request.
newVolumeseriesinfo_VolumeSeriesItem_IssueItem ::
  Volumeseriesinfo_VolumeSeriesItem_IssueItem
newVolumeseriesinfo_VolumeSeriesItem_IssueItem =
  Volumeseriesinfo_VolumeSeriesItem_IssueItem
    { issueDisplayNumber =
        Core.Nothing,
      issueOrderNumber = Core.Nothing
    }

instance Core.FromJSON Volumeseriesinfo_VolumeSeriesItem_IssueItem where
  parseJSON =
    Core.withObject
      "Volumeseriesinfo_VolumeSeriesItem_IssueItem"
      ( \o ->
          Volumeseriesinfo_VolumeSeriesItem_IssueItem
            Core.<$> (o Core..:? "issueDisplayNumber")
            Core.<*> (o Core..:? "issueOrderNumber")
      )

instance Core.ToJSON Volumeseriesinfo_VolumeSeriesItem_IssueItem where
  toJSON Volumeseriesinfo_VolumeSeriesItem_IssueItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("issueDisplayNumber" Core..=) Core.<$> issueDisplayNumber,
            ("issueOrderNumber" Core..=) Core.<$> issueOrderNumber
          ]
      )
