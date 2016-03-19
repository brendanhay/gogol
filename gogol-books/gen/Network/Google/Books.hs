{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- Lets you search for books and manage your Google Books library.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference>
module Network.Google.Books
    (
    -- * Service Configuration
      booksService

    -- * OAuth Scopes
    , authBooksScope

    -- * API Declaration
    , BooksAPI

    -- * Resources

    -- ** books.bookshelves.get
    , module Network.Google.Resource.Books.Bookshelves.Get

    -- ** books.bookshelves.list
    , module Network.Google.Resource.Books.Bookshelves.List

    -- ** books.bookshelves.volumes.list
    , module Network.Google.Resource.Books.Bookshelves.Volumes.List

    -- ** books.cloudloading.addBook
    , module Network.Google.Resource.Books.CloudLoading.AddBook

    -- ** books.cloudloading.deleteBook
    , module Network.Google.Resource.Books.CloudLoading.DeleteBook

    -- ** books.cloudloading.updateBook
    , module Network.Google.Resource.Books.CloudLoading.UpdateBook

    -- ** books.dictionary.listOfflineMetadata
    , module Network.Google.Resource.Books.Dictionary.ListOfflineMetadata

    -- ** books.layers.annotationData.get
    , module Network.Google.Resource.Books.Layers.AnnotationData.Get

    -- ** books.layers.annotationData.list
    , module Network.Google.Resource.Books.Layers.AnnotationData.List

    -- ** books.layers.get
    , module Network.Google.Resource.Books.Layers.Get

    -- ** books.layers.list
    , module Network.Google.Resource.Books.Layers.List

    -- ** books.layers.volumeAnnotations.get
    , module Network.Google.Resource.Books.Layers.VolumeAnnotations.Get

    -- ** books.layers.volumeAnnotations.list
    , module Network.Google.Resource.Books.Layers.VolumeAnnotations.List

    -- ** books.myconfig.getUserSettings
    , module Network.Google.Resource.Books.MyConfig.GetUserSettings

    -- ** books.myconfig.releaseDownloadAccess
    , module Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess

    -- ** books.myconfig.requestAccess
    , module Network.Google.Resource.Books.MyConfig.RequestAccess

    -- ** books.myconfig.syncVolumeLicenses
    , module Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses

    -- ** books.myconfig.updateUserSettings
    , module Network.Google.Resource.Books.MyConfig.UpdateUserSettings

    -- ** books.mylibrary.annotations.delete
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Delete

    -- ** books.mylibrary.annotations.insert
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Insert

    -- ** books.mylibrary.annotations.list
    , module Network.Google.Resource.Books.MyLibrary.Annotations.List

    -- ** books.mylibrary.annotations.summary
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Summary

    -- ** books.mylibrary.annotations.update
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Update

    -- ** books.mylibrary.bookshelves.addVolume
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume

    -- ** books.mylibrary.bookshelves.clearVolumes
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes

    -- ** books.mylibrary.bookshelves.get
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.Get

    -- ** books.mylibrary.bookshelves.list
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.List

    -- ** books.mylibrary.bookshelves.moveVolume
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume

    -- ** books.mylibrary.bookshelves.removeVolume
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume

    -- ** books.mylibrary.bookshelves.volumes.list
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List

    -- ** books.mylibrary.readingpositions.get
    , module Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get

    -- ** books.mylibrary.readingpositions.setPosition
    , module Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition

    -- ** books.notification.get
    , module Network.Google.Resource.Books.Notification.Get

    -- ** books.onboarding.listCategories
    , module Network.Google.Resource.Books.Onboarding.ListCategories

    -- ** books.onboarding.listCategoryVolumes
    , module Network.Google.Resource.Books.Onboarding.ListCategoryVolumes

    -- ** books.personalizedstream.get
    , module Network.Google.Resource.Books.Personalizedstream.Get

    -- ** books.promooffer.accept
    , module Network.Google.Resource.Books.PromoOffer.Accept

    -- ** books.promooffer.dismiss
    , module Network.Google.Resource.Books.PromoOffer.Dismiss

    -- ** books.promooffer.get
    , module Network.Google.Resource.Books.PromoOffer.Get

    -- ** books.series.get
    , module Network.Google.Resource.Books.Series.Get

    -- ** books.series.membership.get
    , module Network.Google.Resource.Books.Series.Membership.Get

    -- ** books.volumes.associated.list
    , module Network.Google.Resource.Books.Volumes.Associated.List

    -- ** books.volumes.get
    , module Network.Google.Resource.Books.Volumes.Get

    -- ** books.volumes.list
    , module Network.Google.Resource.Books.Volumes.List

    -- ** books.volumes.mybooks.list
    , module Network.Google.Resource.Books.Volumes.Mybooks.List

    -- ** books.volumes.recommended.list
    , module Network.Google.Resource.Books.Volumes.Recommended.List

    -- ** books.volumes.recommended.rate
    , module Network.Google.Resource.Books.Volumes.Recommended.Rate

    -- ** books.volumes.useruploaded.list
    , module Network.Google.Resource.Books.Volumes.UserUploaded.List

    -- * Types

    -- ** UserSettings
    , UserSettings
    , userSettings
    , usNotification
    , usKind
    , usNotesExport

    -- ** Annotations
    , Annotations
    , annotations
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- ** VolumesListProjection
    , VolumesListProjection (..)

    -- ** MyLibraryBookshelvesVolumesListProjection
    , MyLibraryBookshelvesVolumesListProjection (..)

    -- ** VolumesListOrderBy
    , VolumesListOrderBy (..)

    -- ** AnnotationsData
    , AnnotationsData
    , annotationsData
    , adTotalItems
    , adNextPageToken
    , adKind
    , adItems

    -- ** UserSettingsNotificationMoreFromAuthors
    , UserSettingsNotificationMoreFromAuthors
    , userSettingsNotificationMoreFromAuthors
    , usnmfaOptedState

    -- ** Volumeannotations
    , Volumeannotations
    , volumeannotations
    , vTotalItems
    , vNextPageToken
    , vKind
    , vItems
    , vVersion

    -- ** ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsURL
    , rsDescription

    -- ** AnnotationData
    , AnnotationData
    , annotationData
    , annEncodedData
    , annKind
    , annData
    , annSelfLink
    , annAnnotationType
    , annVolumeId
    , annId
    , annUpdated
    , annLayerId

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

    -- ** BooksCloudLoadingResource
    , BooksCloudLoadingResource
    , booksCloudLoadingResource
    , bclrProcessingState
    , bclrVolumeId
    , bclrAuthor
    , bclrTitle

    -- ** VolumeseriesInfoVolumeSeriesItemIssueItem
    , VolumeseriesInfoVolumeSeriesItemIssueItem
    , volumeseriesInfoVolumeSeriesItemIssueItem
    , vivsiiiIssueOrderNumber
    , vivsiiiIssueDisplayNumber

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

    -- ** ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- ** GeolayerDataGeoViewport
    , GeolayerDataGeoViewport
    , geolayerDataGeoViewport
    , gdgvHi
    , gdgvLo

    -- ** VolumeUserInfo
    , VolumeUserInfo
    , volumeUserInfo
    , vuiIsFamilySharingAllowed
    , vuiIsFamilySharedToUser
    , vuiCopy
    , vuiUserUploadedVolumeInfo
    , vuiIsPurchased
    , vuiEntitlementType
    , vuiAcquisitionType
    , vuiAcquiredTime
    , vuiRentalState
    , vuiIsPreOrdered
    , vuiReview
    , vuiIsFamilySharedFromUser
    , vuiRentalPeriod
    , vuiUpdated
    , vuiIsUploaded
    , vuiIsInMyBooks
    , vuiReadingPosition

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

    -- ** VolumesListLibraryRestrict
    , VolumesListLibraryRestrict (..)

    -- ** VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- ** VolumeAccessInfo
    , VolumeAccessInfo
    , volumeAccessInfo
    , vaiWebReaderLink
    , vaiCountry
    , vaiDriveImportedContentLink
    , vaiExplicitOfflineLicenseManagement
    , vaiViewability
    , vaiQuoteSharingAllowed
    , vaiEpub
    , vaiPdf
    , vaiTextToSpeechPermission
    , vaiEmbeddable
    , vaiAccessViewStatus
    , vaiDownloadAccess
    , vaiViewOrderURL
    , vaiPublicDomain

    -- ** MyLibraryBookshelvesRemoveVolumeReason
    , MyLibraryBookshelvesRemoveVolumeReason (..)

    -- ** VolumeVolumeInfoImageLinks
    , VolumeVolumeInfoImageLinks
    , volumeVolumeInfoImageLinks
    , vviilThumbnail
    , vviilSmall
    , vviilExtraLarge
    , vviilLarge
    , vviilMedium
    , vviilSmallThumbnail

    -- ** OnboardingListCategoryVolumesMaxAllowedMaturityRating
    , OnboardingListCategoryVolumesMaxAllowedMaturityRating (..)

    -- ** VolumeUserInfoUserUploadedVolumeInfo
    , VolumeUserInfoUserUploadedVolumeInfo
    , volumeUserInfoUserUploadedVolumeInfo
    , vuiuuviProcessingState

    -- ** VolumeUserInfoCopy
    , VolumeUserInfoCopy
    , volumeUserInfoCopy
    , vuicLimitType
    , vuicAllowedCharacterCount
    , vuicUpdated
    , vuicRemainingCharacterCount

    -- ** BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- ** VolumeseriesInfo
    , VolumeseriesInfo
    , volumeseriesInfo
    , viBookDisplayNumber
    , viKind
    , viShortSeriesBookTitle
    , viVolumeSeries

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

    -- ** Notification
    , Notification
    , notification
    , nTargetURL
    , nShowNotificationSettingsAction
    , nKind
    , nBody
    , nPcampaignId
    , nReason
    , nDontShowNotification
    , nNotificationType
    , nIconURL
    , nTitle

    -- ** VolumesListDownload
    , VolumesListDownload (..)

    -- ** AnnotationsSummaryLayersItem
    , AnnotationsSummaryLayersItem
    , annotationsSummaryLayersItem
    , asliLimitType
    , asliAllowedCharacterCount
    , asliUpdated
    , asliLayerId
    , asliRemainingCharacterCount

    -- ** VolumeSaleInfoOffersItemRentalDuration
    , VolumeSaleInfoOffersItemRentalDuration
    , volumeSaleInfoOffersItemRentalDuration
    , vsioirdCount
    , vsioirdUnit

    -- ** DictlayerDataDictWordsItemExamplesItem
    , DictlayerDataDictWordsItemExamplesItem
    , dictlayerDataDictWordsItemExamplesItem
    , dddwieiText
    , dddwieiSource

    -- ** OffersItemsItem
    , OffersItemsItem
    , offersItemsItem
    , oiiItems
    , oiiArtURL
    , oiiId
    , oiiGServicesKey

    -- ** AnnotationLayerSummary
    , AnnotationLayerSummary
    , annotationLayerSummary
    , alsLimitType
    , alsAllowedCharacterCount
    , alsRemainingCharacterCount

    -- ** VolumeSearchInfo
    , VolumeSearchInfo
    , volumeSearchInfo
    , vsiTextSnippet

    -- ** AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- ** VolumesGetProjection
    , VolumesGetProjection (..)

    -- ** Category
    , Category
    , category
    , cKind
    , cItems

    -- ** VolumesAssociatedListAssociation
    , VolumesAssociatedListAssociation (..)

    -- ** DiscoveryclustersClustersItemBanner_with_content_container
    , DiscoveryclustersClustersItemBanner_with_content_container
    , discoveryclustersClustersItemBanner_with_content_container
    , dcibFillColorArgb
    , dcibMoreButtonURL
    , dcibTextColorArgb
    , dcibMoreButtonText
    , dcibImageURL
    , dcibMaskColorArgb

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

    -- ** GeolayerDataGeoBoundaryItemItem
    , GeolayerDataGeoBoundaryItemItem
    , geolayerDataGeoBoundaryItemItem
    , gdgbiiLatitude
    , gdgbiiLongitude

    -- ** Series
    , Series
    , series
    , sKind
    , sSeries

    -- ** OffersItemsItemItemsItem
    , OffersItemsItemItemsItem
    , offersItemsItemItemsItem
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverURL
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

    -- ** DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , dddwisidieisURL
    , dddwisidieisAttribution

    -- ** GeolayerDataCommon
    , GeolayerDataCommon
    , geolayerDataCommon
    , gdcSnippet
    , gdcSnippetURL
    , gdcLang
    , gdcTitle
    , gdcPreviewImageURL

    -- ** GeolayerDataGeo
    , GeolayerDataGeo
    , geolayerDataGeo
    , gdgMapType
    , gdgCachePolicy
    , gdgViewport
    , gdgBoundary
    , gdgLatitude
    , gdgZoom
    , gdgCountryCode
    , gdgLongitude

    -- ** DictlayerDataDictWordsItem
    , DictlayerDataDictWordsItem
    , dictlayerDataDictWordsItem
    , dddwiSenses
    , dddwiSource
    , dddwiDerivatives
    , dddwiExamples

    -- ** CategoryItemsItem
    , CategoryItemsItem
    , categoryItemsItem
    , ciiName
    , ciiCategoryId
    , ciiBadgeURL

    -- ** DictlayerDataDictWordsItemDerivativesItemSource
    , DictlayerDataDictWordsItemDerivativesItemSource
    , dictlayerDataDictWordsItemDerivativesItemSource
    , dddwidisURL
    , dddwidisAttribution

    -- ** VolumesRecommendedRateRating
    , VolumesRecommendedRateRating (..)

    -- ** GeolayerData
    , GeolayerData
    , geolayerData
    , gdKind
    , gdGeo
    , gdCommon

    -- ** DictlayerDataDictWordsItemSource
    , DictlayerDataDictWordsItemSource
    , dictlayerDataDictWordsItemSource
    , dddwisURL
    , dddwisAttribution

    -- ** DictlayerDataDictWordsItemDerivativesItem
    , DictlayerDataDictWordsItemDerivativesItem
    , dictlayerDataDictWordsItemDerivativesItem
    , dddwidiText
    , dddwidiSource

    -- ** VolumesUserUploadedListProcessingState
    , VolumesUserUploadedListProcessingState (..)

    -- ** MyConfigSyncVolumeLicensesFeatures
    , MyConfigSyncVolumeLicensesFeatures (..)

    -- ** DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , dddwisidieiText
    , dddwisidieiSource

    -- ** DictlayerData
    , DictlayerData
    , dictlayerData
    , ddKind
    , ddDict
    , ddCommon

    -- ** VolumesAssociatedListMaxAllowedMaturityRating
    , VolumesAssociatedListMaxAllowedMaturityRating (..)

    -- ** DictlayerDataDictWordsItemSensesItemSynonymsItemSource
    , DictlayerDataDictWordsItemSensesItemSynonymsItemSource
    , dictlayerDataDictWordsItemSensesItemSynonymsItemSource
    , dddwisisisURL
    , dddwisisisAttribution

    -- ** Seriesmembership
    , Seriesmembership
    , seriesmembership
    , serNextPageToken
    , serKind
    , serMember

    -- ** VolumesListFilter
    , VolumesListFilter (..)

    -- ** UserSettingsNotification
    , UserSettingsNotification
    , userSettingsNotification
    , usnMoreFromAuthors

    -- ** DictlayerDataDictWordsItemSensesItemSynonymsItem
    , DictlayerDataDictWordsItemSensesItemSynonymsItem
    , dictlayerDataDictWordsItemSensesItemSynonymsItem
    , dddwisisiText
    , dddwisisiSource

    -- ** GeolayerDataGeoViewportLo
    , GeolayerDataGeoViewportLo
    , geolayerDataGeoViewportLo
    , gdgvlLatitude
    , gdgvlLongitude

    -- ** VolumesRecommendedListMaxAllowedMaturityRating
    , VolumesRecommendedListMaxAllowedMaturityRating (..)

    -- ** VolumeSaleInfoOffersItemListPrice
    , VolumeSaleInfoOffersItemListPrice
    , volumeSaleInfoOffersItemListPrice
    , vsioilpCurrencyCode
    , vsioilpAmountInMicros

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

    -- ** DictlayerDataCommon
    , DictlayerDataCommon
    , dictlayerDataCommon
    , ddcTitle

    -- ** DiscoveryclustersClustersItem
    , DiscoveryclustersClustersItem
    , discoveryclustersClustersItem
    , dciBannerWithContentContainer
    , dciUid
    , dciTotalVolumes
    , dciSubTitle
    , dciTitle
    , dciVolumes

    -- ** VolumeSaleInfoRetailPrice
    , VolumeSaleInfoRetailPrice
    , volumeSaleInfoRetailPrice
    , vsirpAmount
    , vsirpCurrencyCode

    -- ** VolumeSaleInfoListPrice
    , VolumeSaleInfoListPrice
    , volumeSaleInfoListPrice
    , vsilpAmount
    , vsilpCurrencyCode

    -- ** DictlayerDataDictWordsItemSensesItemConjugationsItem
    , DictlayerDataDictWordsItemSensesItemConjugationsItem
    , dictlayerDataDictWordsItemSensesItemConjugationsItem
    , dddwisiciValue
    , dddwisiciType

    -- ** Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

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
    , rFullTextURL
    , rTitle
    , rType

    -- ** VolumeUserInfoRentalPeriod
    , VolumeUserInfoRentalPeriod
    , volumeUserInfoRentalPeriod
    , vuirpEndUtcSec
    , vuirpStartUtcSec

    -- ** VolumeSaleInfo
    , VolumeSaleInfo
    , volumeSaleInfo
    , vsiCountry
    , vsiOnSaleDate
    , vsiListPrice
    , vsiRetailPrice
    , vsiOffers
    , vsiBuyLink
    , vsiIsEbook
    , vsiSaleability

    -- ** MyLibraryBookshelvesAddVolumeReason
    , MyLibraryBookshelvesAddVolumeReason (..)

    -- ** SeriesSeriesItem
    , SeriesSeriesItem
    , seriesSeriesItem
    , ssiSeriesId
    , ssiImageURL
    , ssiBannerImageURL
    , ssiTitle
    , ssiSeriesType

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

    -- ** VolumeVolumeInfoDimensions
    , VolumeVolumeInfoDimensions
    , volumeVolumeInfoDimensions
    , vvidHeight
    , vvidWidth
    , vvidThickness

    -- ** RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- ** AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- ** VolumesMybooksListAcquireMethod
    , VolumesMybooksListAcquireMethod (..)

    -- ** DictlayerDataDictWordsItemSensesItemDefinitionsItem
    , DictlayerDataDictWordsItemSensesItemDefinitionsItem
    , dictlayerDataDictWordsItemSensesItemDefinitionsItem
    , dddwisidiDefinition
    , dddwisidiExamples

    -- ** VolumeLayerInfoLayersItem
    , VolumeLayerInfoLayersItem
    , volumeLayerInfoLayersItem
    , vliliVolumeAnnotationsVersion
    , vliliLayerId

    -- ** AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

    -- ** PersonalizedstreamGetMaxAllowedMaturityRating
    , PersonalizedstreamGetMaxAllowedMaturityRating (..)

    -- ** VolumesListPrintType
    , VolumesListPrintType (..)

    -- ** VolumeAccessInfoPdf
    , VolumeAccessInfoPdf
    , volumeAccessInfoPdf
    , vaipAcsTokenLink
    , vaipIsAvailable
    , vaipDownloadLink

    -- ** DictlayerDataDictWordsItemExamplesItemSource
    , DictlayerDataDictWordsItemExamplesItemSource
    , dictlayerDataDictWordsItemExamplesItemSource
    , dddwieisURL
    , dddwieisAttribution

    -- ** VolumeAccessInfoEpub
    , VolumeAccessInfoEpub
    , volumeAccessInfoEpub
    , vaieAcsTokenLink
    , vaieIsAvailable
    , vaieDownloadLink

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

    -- ** VolumeSaleInfoOffersItem
    , VolumeSaleInfoOffersItem
    , volumeSaleInfoOffersItem
    , vsioiFinskyOfferType
    , vsioiRentalDuration
    , vsioiListPrice
    , vsioiRetailPrice

    -- ** DictlayerDataDict
    , DictlayerDataDict
    , dictlayerDataDict
    , dddSource
    , dddWords

    -- ** DictlayerDataDictWordsItemSensesItem
    , DictlayerDataDictWordsItemSensesItem
    , dictlayerDataDictWordsItemSensesItem
    , dddwisiPronunciationURL
    , dddwisiConjugations
    , dddwisiPronunciation
    , dddwisiSynonyms
    , dddwisiSource
    , dddwisiPartOfSpeech
    , dddwisiDefinitions
    , dddwisiSyllabification

    -- ** VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- ** Offers
    , Offers
    , offers
    , oKind
    , oItems

    -- ** VolumesMybooksListProcessingState
    , VolumesMybooksListProcessingState (..)

    -- ** Discoveryclusters
    , Discoveryclusters
    , discoveryclusters
    , dKind
    , dTotalClusters
    , dClusters

    -- ** VolumeseriesInfoVolumeSeriesItem
    , VolumeseriesInfoVolumeSeriesItem
    , volumeseriesInfoVolumeSeriesItem
    , vivsiSeriesId
    , vivsiSeriesBookType
    , vivsiOrderNumber
    , vivsiIssue

    -- ** UserSettingsNotesExport
    , UserSettingsNotesExport
    , userSettingsNotesExport
    , usneFolderName
    , usneIsEnabled

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

    -- ** MyConfigRequestAccessLicenseTypes
    , MyConfigRequestAccessLicenseTypes (..)

    -- ** DictlayerDataDictSource
    , DictlayerDataDictSource
    , dictlayerDataDictSource
    , dddsURL
    , dddsAttribution

    -- ** DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- ** GeolayerDataGeoViewportHi
    , GeolayerDataGeoViewportHi
    , geolayerDataGeoViewportHi
    , gdgvhLatitude
    , gdgvhLongitude

    -- ** MyLibraryReadingPositionsSetPositionAction
    , MyLibraryReadingPositionsSetPositionAction (..)

    -- ** VolumeVolumeInfo
    , VolumeVolumeInfo
    , volumeVolumeInfo
    , vviImageLinks
    , vviAverageRating
    , vviRatingsCount
    , vviCanonicalVolumeLink
    , vviReadingModes
    , vviIndustryIdentifiers
    , vviSeriesInfo
    , vviPrintedPageCount
    , vviMainCategory
    , vviContentVersion
    , vviSamplePageCount
    , vviCategories
    , vviAuthors
    , vviAllowAnonLogging
    , vviSubtitle
    , vviPublishedDate
    , vviMaturityRating
    , vviPreviewLink
    , vviLanguage
    , vviTitle
    , vviPageCount
    , vviDimensions
    , vviInfoLink
    , vviPublisher
    , vviDescription
    , vviPrintType

    -- ** MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadURL
    , miiEncryptedKey

    -- ** DictlayerDataDictWordsItemSensesItemSource
    , DictlayerDataDictWordsItemSensesItemSource
    , dictlayerDataDictWordsItemSensesItemSource
    , dddwisisURL
    , dddwisisAttribution

    -- ** VolumeSaleInfoOffersItemRetailPrice
    , VolumeSaleInfoOffersItemRetailPrice
    , volumeSaleInfoOffersItemRetailPrice
    , vsioirpCurrencyCode
    , vsioirpAmountInMicros

    -- ** VolumeVolumeInfoIndustryIdentifiersItem
    , VolumeVolumeInfoIndustryIdentifiersItem
    , volumeVolumeInfoIndustryIdentifiersItem
    , vviiiiIdentifier
    , vviiiiType

    -- ** BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffSet
    , barEndOffSet
    , barEndPosition
    , barStartPosition

    -- ** Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Books.Bookshelves.Get
import           Network.Google.Resource.Books.Bookshelves.List
import           Network.Google.Resource.Books.Bookshelves.Volumes.List
import           Network.Google.Resource.Books.CloudLoading.AddBook
import           Network.Google.Resource.Books.CloudLoading.DeleteBook
import           Network.Google.Resource.Books.CloudLoading.UpdateBook
import           Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
import           Network.Google.Resource.Books.Layers.AnnotationData.Get
import           Network.Google.Resource.Books.Layers.AnnotationData.List
import           Network.Google.Resource.Books.Layers.Get
import           Network.Google.Resource.Books.Layers.List
import           Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
import           Network.Google.Resource.Books.Layers.VolumeAnnotations.List
import           Network.Google.Resource.Books.MyConfig.GetUserSettings
import           Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess
import           Network.Google.Resource.Books.MyConfig.RequestAccess
import           Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses
import           Network.Google.Resource.Books.MyConfig.UpdateUserSettings
import           Network.Google.Resource.Books.MyLibrary.Annotations.Delete
import           Network.Google.Resource.Books.MyLibrary.Annotations.Insert
import           Network.Google.Resource.Books.MyLibrary.Annotations.List
import           Network.Google.Resource.Books.MyLibrary.Annotations.Summary
import           Network.Google.Resource.Books.MyLibrary.Annotations.Update
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.List
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
import           Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get
import           Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition
import           Network.Google.Resource.Books.Notification.Get
import           Network.Google.Resource.Books.Onboarding.ListCategories
import           Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
import           Network.Google.Resource.Books.Personalizedstream.Get
import           Network.Google.Resource.Books.PromoOffer.Accept
import           Network.Google.Resource.Books.PromoOffer.Dismiss
import           Network.Google.Resource.Books.PromoOffer.Get
import           Network.Google.Resource.Books.Series.Get
import           Network.Google.Resource.Books.Series.Membership.Get
import           Network.Google.Resource.Books.Volumes.Associated.List
import           Network.Google.Resource.Books.Volumes.Get
import           Network.Google.Resource.Books.Volumes.List
import           Network.Google.Resource.Books.Volumes.Mybooks.List
import           Network.Google.Resource.Books.Volumes.Recommended.List
import           Network.Google.Resource.Books.Volumes.Recommended.Rate
import           Network.Google.Resource.Books.Volumes.UserUploaded.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Books API service.
type BooksAPI =
     NotificationGetResource :<|>
       SeriesMembershipGetResource
       :<|> SeriesGetResource
       :<|> OnboardingListCategoriesResource
       :<|> OnboardingListCategoryVolumesResource
       :<|> MyLibraryAnnotationsSummaryResource
       :<|> MyLibraryAnnotationsInsertResource
       :<|> MyLibraryAnnotationsListResource
       :<|> MyLibraryAnnotationsDeleteResource
       :<|> MyLibraryAnnotationsUpdateResource
       :<|> MyLibraryReadingPositionsGetResource
       :<|> MyLibraryReadingPositionsSetPositionResource
       :<|> MyLibraryBookshelvesVolumesListResource
       :<|> MyLibraryBookshelvesClearVolumesResource
       :<|> MyLibraryBookshelvesListResource
       :<|> MyLibraryBookshelvesGetResource
       :<|> MyLibraryBookshelvesRemoveVolumeResource
       :<|> MyLibraryBookshelvesAddVolumeResource
       :<|> MyLibraryBookshelvesMoveVolumeResource
       :<|> PromoOfferAcceptResource
       :<|> PromoOfferGetResource
       :<|> PromoOfferDismissResource
       :<|> CloudLoadingAddBookResource
       :<|> CloudLoadingUpdateBookResource
       :<|> CloudLoadingDeleteBookResource
       :<|> LayersVolumeAnnotationsListResource
       :<|> LayersVolumeAnnotationsGetResource
       :<|> LayersAnnotationDataListResource
       :<|> LayersAnnotationDataGetResource
       :<|> LayersListResource
       :<|> LayersGetResource
       :<|> DictionaryListOfflineMetadataResource
       :<|> VolumesUserUploadedListResource
       :<|> VolumesRecommendedListResource
       :<|> VolumesRecommendedRateResource
       :<|> VolumesAssociatedListResource
       :<|> VolumesMybooksListResource
       :<|> VolumesListResource
       :<|> VolumesGetResource
       :<|> BookshelvesVolumesListResource
       :<|> BookshelvesListResource
       :<|> BookshelvesGetResource
       :<|> PersonalizedstreamGetResource
       :<|> MyConfigSyncVolumeLicensesResource
       :<|> MyConfigGetUserSettingsResource
       :<|> MyConfigRequestAccessResource
       :<|> MyConfigUpdateUserSettingsResource
       :<|> MyConfigReleaseDownloadAccessResource
