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
    -- * REST Resources

    -- ** Books API
      Books
    , books
    , booksURL

    -- ** books.bookshelves.volumes.list
    , module Network.Google.API.Books.Bookshelves.Volumes.List

    -- ** books.cloudloading.addBook
    , module Network.Google.API.Books.Cloudloading.AddBook

    -- ** books.cloudloading.deleteBook
    , module Network.Google.API.Books.Cloudloading.DeleteBook

    -- ** books.cloudloading.updateBook
    , module Network.Google.API.Books.Cloudloading.UpdateBook

    -- ** books.dictionary.listOfflineMetadata
    , module Network.Google.API.Books.Dictionary.ListOfflineMetadata

    -- ** books.layers.annotationData.get
    , module Network.Google.API.Books.Layers.AnnotationData.Get

    -- ** books.layers.annotationData.list
    , module Network.Google.API.Books.Layers.AnnotationData.List

    -- ** books.layers.volumeAnnotations.get
    , module Network.Google.API.Books.Layers.VolumeAnnotations.Get

    -- ** books.layers.volumeAnnotations.list
    , module Network.Google.API.Books.Layers.VolumeAnnotations.List

    -- ** books.myconfig.getUserSettings
    , module Network.Google.API.Books.Myconfig.GetUserSettings

    -- ** books.myconfig.releaseDownloadAccess
    , module Network.Google.API.Books.Myconfig.ReleaseDownloadAccess

    -- ** books.myconfig.requestAccess
    , module Network.Google.API.Books.Myconfig.RequestAccess

    -- ** books.myconfig.syncVolumeLicenses
    , module Network.Google.API.Books.Myconfig.SyncVolumeLicenses

    -- ** books.myconfig.updateUserSettings
    , module Network.Google.API.Books.Myconfig.UpdateUserSettings

    -- ** books.mylibrary.annotations.delete
    , module Network.Google.API.Books.Mylibrary.Annotations.Delete

    -- ** books.mylibrary.annotations.insert
    , module Network.Google.API.Books.Mylibrary.Annotations.Insert

    -- ** books.mylibrary.annotations.list
    , module Network.Google.API.Books.Mylibrary.Annotations.List

    -- ** books.mylibrary.annotations.summary
    , module Network.Google.API.Books.Mylibrary.Annotations.Summary

    -- ** books.mylibrary.annotations.update
    , module Network.Google.API.Books.Mylibrary.Annotations.Update

    -- ** books.mylibrary.bookshelves.volumes.list
    , module Network.Google.API.Books.Mylibrary.Bookshelves.Volumes.List

    -- ** books.mylibrary.readingpositions.get
    , module Network.Google.API.Books.Mylibrary.Readingpositions.Get

    -- ** books.mylibrary.readingpositions.setPosition
    , module Network.Google.API.Books.Mylibrary.Readingpositions.SetPosition

    -- ** books.onboarding.listCategories
    , module Network.Google.API.Books.Onboarding.ListCategories

    -- ** books.onboarding.listCategoryVolumes
    , module Network.Google.API.Books.Onboarding.ListCategoryVolumes

    -- ** books.promooffer.accept
    , module Network.Google.API.Books.Promooffer.Accept

    -- ** books.promooffer.dismiss
    , module Network.Google.API.Books.Promooffer.Dismiss

    -- ** books.promooffer.get
    , module Network.Google.API.Books.Promooffer.Get

    -- ** books.volumes.associated.list
    , module Network.Google.API.Books.Volumes.Associated.List

    -- ** books.volumes.mybooks.list
    , module Network.Google.API.Books.Volumes.Mybooks.List

    -- ** books.volumes.recommended.list
    , module Network.Google.API.Books.Volumes.Recommended.List

    -- ** books.volumes.recommended.rate
    , module Network.Google.API.Books.Volumes.Recommended.Rate

    -- ** books.volumes.useruploaded.list
    , module Network.Google.API.Books.Volumes.Useruploaded.List

    -- * Types

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

    -- ** GeolayerdataViewportGeo
    , GeolayerdataViewportGeo
    , geolayerdataViewportGeo
    , gvgHi
    , gvgLo

    -- ** VolumesMybooksList'AcquireMethod
    , VolumesMybooksList'AcquireMethod (..)

    -- ** VolumesAssociatedList'Association
    , VolumesAssociatedList'Association (..)

    -- ** VolumeRetailPriceSaleInfo
    , VolumeRetailPriceSaleInfo
    , volumeRetailPriceSaleInfo
    , vrpsiAmount
    , vrpsiCurrencyCode

    -- ** VolumesMybooksList'ProcessingState
    , VolumesMybooksList'ProcessingState (..)

    -- ** GeolayerdataLoViewportGeo
    , GeolayerdataLoViewportGeo
    , geolayerdataLoViewportGeo
    , glvgLatitude
    , glvgLongitude

    -- ** VolumesRecommendedRate'Rating
    , VolumesRecommendedRate'Rating (..)

    -- ** DictlayerdataItemSynonymsItemSensesItemWordsDict
    , DictlayerdataItemSynonymsItemSensesItemWordsDict
    , dictlayerdataItemSynonymsItemSensesItemWordsDict
    , disisiwdText
    , disisiwdSource

    -- ** VolumeListPriceItemOffersSaleInfo
    , VolumeListPriceItemOffersSaleInfo
    , volumeListPriceItemOffersSaleInfo
    , vlpiosiCurrencyCode
    , vlpiosiAmountInMicros

    -- ** Alt
    , Alt (..)

    -- ** DictlayerdataSourceDict
    , DictlayerdataSourceDict
    , dictlayerdataSourceDict
    , dsdUrl
    , dsdAttribution

    -- ** VolumesAssociatedList'MaxAllowedMaturityRating
    , VolumesAssociatedList'MaxAllowedMaturityRating (..)

    -- ** DictlayerdataSourceItemWordsDict
    , DictlayerdataSourceItemWordsDict
    , dictlayerdataSourceItemWordsDict
    , dsiwdUrl
    , dsiwdAttribution

    -- ** RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- ** DictlayerdataItemDerivativesItemWordsDict
    , DictlayerdataItemDerivativesItemWordsDict
    , dictlayerdataItemDerivativesItemWordsDict
    , didiwdText
    , didiwdSource

    -- ** DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dieidisiwdText
    , dieidisiwdSource

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** MylibraryBookshelvesVolumesList'Projection
    , MylibraryBookshelvesVolumesList'Projection (..)

    -- ** GeolayerdataGeo
    , GeolayerdataGeo
    , geolayerdataGeo
    , ggMapType
    , ggCachePolicy
    , ggViewport
    , ggBoundary
    , ggLatitude
    , ggZoom
    , ggCountryCode
    , ggLongitude

    -- ** GeolayerdataItemItemBoundaryGeo
    , GeolayerdataItemItemBoundaryGeo
    , geolayerdataItemItemBoundaryGeo
    , giibgLatitude
    , giibgLongitude

    -- ** DictlayerdataItemWordsDict
    , DictlayerdataItemWordsDict
    , dictlayerdataItemWordsDict
    , diwdSenses
    , diwdSource
    , diwdDerivatives
    , diwdExamples

    -- ** VolumeItemOffersSaleInfo
    , VolumeItemOffersSaleInfo
    , volumeItemOffersSaleInfo
    , viosiFinskyOfferType
    , viosiRentalDuration
    , viosiListPrice
    , viosiRetailPrice

    -- ** Bookshelves
    , Bookshelves
    , bookshelves
    , bKind
    , bItems

    -- ** VolumeItemLayersLayerInfo
    , VolumeItemLayersLayerInfo
    , volumeItemLayersLayerInfo
    , villiVolumeAnnotationsVersion
    , villiLayerId

    -- ** DictlayerdataSourceItemExamplesItemWordsDict
    , DictlayerdataSourceItemExamplesItemWordsDict
    , dictlayerdataSourceItemExamplesItemWordsDict
    , dsieiwdUrl
    , dsieiwdAttribution

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

    -- ** AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- ** VolumeEpubAccessInfo
    , VolumeEpubAccessInfo
    , volumeEpubAccessInfo
    , veaiAcsTokenLink
    , veaiIsAvailable
    , veaiDownloadLink

    -- ** Volumes
    , Volumes
    , volumes
    , vTotalItems
    , vKind
    , vItems

    -- ** DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataItemDefinitionsItemSensesItemWordsDict
    , didisiwdDefinition
    , didisiwdExamples

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

    -- ** DictlayerdataItemExamplesItemWordsDict
    , DictlayerdataItemExamplesItemWordsDict
    , dictlayerdataItemExamplesItemWordsDict
    , dieiwdText
    , dieiwdSource

    -- ** Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- ** VolumeDimensionsVolumeInfo
    , VolumeDimensionsVolumeInfo
    , volumeDimensionsVolumeInfo
    , vdviHeight
    , vdviWidth
    , vdviThickness

    -- ** BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- ** VolumeListPriceSaleInfo
    , VolumeListPriceSaleInfo
    , volumeListPriceSaleInfo
    , vlpsiAmount
    , vlpsiCurrencyCode

    -- ** VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- ** DictlayerdataItemConjugationsItemSensesItemWordsDict
    , DictlayerdataItemConjugationsItemSensesItemWordsDict
    , dictlayerdataItemConjugationsItemSensesItemWordsDict
    , dicisiwdValue
    , dicisiwdType

    -- ** VolumeRentalPeriodUserInfo
    , VolumeRentalPeriodUserInfo
    , volumeRentalPeriodUserInfo
    , vrpuiEndUtcSec
    , vrpuiStartUtcSec

    -- ** Layersummaries
    , Layersummaries
    , layersummaries
    , lTotalItems
    , lKind
    , lItems

    -- ** VolumeUserInfo
    , VolumeUserInfo
    , volumeUserInfo
    , vuiCopy
    , vuiUserUploadedVolumeInfo
    , vuiIsPurchased
    , vuiRentalState
    , vuiIsPreordered
    , vuiReview
    , vuiRentalPeriod
    , vuiUpdated
    , vuiIsUploaded
    , vuiIsInMyBooks
    , vuiReadingPosition

    -- ** Annotationsdata
    , Annotationsdata
    , annotationsdata
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- ** Annotations
    , Annotations
    , annotations
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- ** ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsUrl
    , rsDescription

    -- ** ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- ** Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- ** Volumeannotations
    , Volumeannotations
    , volumeannotations
    , volTotalItems
    , volNextPageToken
    , volKind
    , volItems
    , volVersion

    -- ** DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- ** BooksCloudloadingResource
    , BooksCloudloadingResource
    , booksCloudloadingResource
    , bcrProcessingState
    , bcrVolumeId
    , bcrAuthor
    , bcrTitle

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

    -- ** MyconfigRequestAccess'LicenseTypes
    , MyconfigRequestAccess'LicenseTypes (..)

    -- ** Volumeannotation
    , Volumeannotation
    , volumeannotation
    , vvSelectedText
    , vvAnnotationDataLink
    , vvPageIds
    , vvKind
    , vvData
    , vvSelfLink
    , vvAnnotationType
    , vvAnnotationDataId
    , vvContentRanges
    , vvVolumeId
    , vvId
    , vvDeleted
    , vvUpdated
    , vvLayerId

    -- ** Layersummary
    , Layersummary
    , layersummary
    , layAnnotationsDataLink
    , layAnnotationsLink
    , layKind
    , layDataCount
    , layContentVersion
    , layVolumeAnnotationsVersion
    , layAnnotationCount
    , layAnnotationTypes
    , laySelfLink
    , layVolumeId
    , layId
    , layUpdated
    , layLayerId

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

    -- ** Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- ** DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dsisisiwdUrl
    , dsisisiwdAttribution

    -- ** VolumeItemIndustryIdentifiersVolumeInfo
    , VolumeItemIndustryIdentifiersVolumeInfo
    , volumeItemIndustryIdentifiersVolumeInfo
    , viiiviIdentifier
    , viiiviType

    -- ** MyconfigSyncVolumeLicenses'Features
    , MyconfigSyncVolumeLicenses'Features (..)

    -- ** VolumeRetailPriceItemOffersSaleInfo
    , VolumeRetailPriceItemOffersSaleInfo
    , volumeRetailPriceItemOffersSaleInfo
    , vrpiosiCurrencyCode
    , vrpiosiAmountInMicros

    -- ** MylibraryReadingpositionsSetPosition'Action
    , MylibraryReadingpositionsSetPosition'Action (..)

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

    -- ** VolumesUseruploadedList'ProcessingState
    , VolumesUseruploadedList'ProcessingState (..)

    -- ** MetadataItemItems
    , MetadataItemItems
    , metadataItemItems
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadUrl
    , miiEncryptedKey

    -- ** Bookshelf
    , Bookshelf
    , bookshelf
    , booAccess
    , booVolumesLastUpdated
    , booKind
    , booCreated
    , booVolumeCount
    , booSelfLink
    , booId
    , booUpdated
    , booTitle
    , booDescription

    -- ** VolumeVolumeInfo
    , VolumeVolumeInfo
    , volumeVolumeInfo
    , vviImageLinks
    , vviAverageRating
    , vviRatingsCount
    , vviCanonicalVolumeLink
    , vviReadingModes
    , vviIndustryIdentifiers
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

    -- ** GeolayerdataHiViewportGeo
    , GeolayerdataHiViewportGeo
    , geolayerdataHiViewportGeo
    , ghvgLatitude
    , ghvgLongitude

    -- ** DictlayerdataSourceItemSensesItemWordsDict
    , DictlayerdataSourceItemSensesItemWordsDict
    , dictlayerdataSourceItemSensesItemWordsDict
    , dsisiwdUrl
    , dsisiwdAttribution

    -- ** BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- ** CategoryItemItems
    , CategoryItemItems
    , categoryItemItems
    , ciiName
    , ciiCategoryId
    , ciiBadgeUrl

    -- ** DictlayerdataSourceItemDerivativesItemWordsDict
    , DictlayerdataSourceItemDerivativesItemWordsDict
    , dictlayerdataSourceItemDerivativesItemWordsDict
    , dsidiwdUrl
    , dsidiwdAttribution

    -- ** AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- ** OffersItemItemsItemItems
    , OffersItemItemsItemItems
    , offersItemItemsItemItems
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverUrl
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

    -- ** UsersettingsNotesExport
    , UsersettingsNotesExport
    , usersettingsNotesExport
    , uneFolderName
    , uneIsEnabled

    -- ** GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetUrl
    , gcLang
    , gcTitle
    , gcPreviewImageUrl

    -- ** VolumesRecommendedList'MaxAllowedMaturityRating
    , VolumesRecommendedList'MaxAllowedMaturityRating (..)

    -- ** VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- ** Category
    , Category
    , category
    , cKind
    , cItems

    -- ** DictlayerdataItemSensesItemWordsDict
    , DictlayerdataItemSensesItemWordsDict
    , dictlayerdataItemSensesItemWordsDict
    , disiwdPronunciationUrl
    , disiwdConjugations
    , disiwdPronunciation
    , disiwdSynonyms
    , disiwdSource
    , disiwdPartOfSpeech
    , disiwdDefinitions
    , disiwdSyllabification

    -- ** Volume
    , Volume
    , volume
    , v1UserInfo
    , v1Etag
    , v1AccessInfo
    , v1Kind
    , v1SearchInfo
    , v1SelfLink
    , v1LayerInfo
    , v1SaleInfo
    , v1Id
    , v1RecommendedInfo
    , v1VolumeInfo

    -- ** DictlayerdataDict
    , DictlayerdataDict
    , dictlayerdataDict
    , ddSource
    , ddWords

    -- ** DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dsieidisiwdUrl
    , dsieidisiwdAttribution

    -- ** VolumePdfAccessInfo
    , VolumePdfAccessInfo
    , volumePdfAccessInfo
    , vpaiAcsTokenLink
    , vpaiIsAvailable
    , vpaiDownloadLink

    -- ** AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

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

    -- ** OffersItemItems
    , OffersItemItems
    , offersItemItems
    , oiiItems
    , oiiArtUrl
    , oiiId
    , oiiGservicesKey

    -- ** VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

    -- ** AnnotationsSummaryItemLayers
    , AnnotationsSummaryItemLayers
    , annotationsSummaryItemLayers
    , asilLimitType
    , asilAllowedCharacterCount
    , asilUpdated
    , asilLayerId
    , asilRemainingCharacterCount

    -- ** DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- ** VolumeRentalDurationItemOffersSaleInfo
    , VolumeRentalDurationItemOffersSaleInfo
    , volumeRentalDurationItemOffersSaleInfo
    , vrdiosiCount
    , vrdiosiUnit

    -- ** OnboardingListCategoryVolumes'MaxAllowedMaturityRating
    , OnboardingListCategoryVolumes'MaxAllowedMaturityRating (..)

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
    , vaiViewOrderUrl
    , vaiPublicDomain

    -- ** VolumeCopyUserInfo
    , VolumeCopyUserInfo
    , volumeCopyUserInfo
    , vcuiLimitType
    , vcuiAllowedCharacterCount
    , vcuiUpdated
    , vcuiRemainingCharacterCount

    -- ** VolumeImageLinksVolumeInfo
    , VolumeImageLinksVolumeInfo
    , volumeImageLinksVolumeInfo
    , vilviThumbnail
    , vilviSmall
    , vilviExtraLarge
    , vilviLarge
    , vilviMedium
    , vilviSmallThumbnail

    -- ** VolumeUserUploadedVolumeInfoUserInfo
    , VolumeUserUploadedVolumeInfoUserInfo
    , volumeUserUploadedVolumeInfoUserInfo
    , vuuviuiProcessingState

    -- ** Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon
    ) where

import           Network.Google.API.Books.Bookshelves.Volumes.List
import           Network.Google.API.Books.Cloudloading.AddBook
import           Network.Google.API.Books.Cloudloading.DeleteBook
import           Network.Google.API.Books.Cloudloading.UpdateBook
import           Network.Google.API.Books.Dictionary.ListOfflineMetadata
import           Network.Google.API.Books.Layers.AnnotationData.Get
import           Network.Google.API.Books.Layers.AnnotationData.List
import           Network.Google.API.Books.Layers.VolumeAnnotations.Get
import           Network.Google.API.Books.Layers.VolumeAnnotations.List
import           Network.Google.API.Books.Myconfig.GetUserSettings
import           Network.Google.API.Books.Myconfig.ReleaseDownloadAccess
import           Network.Google.API.Books.Myconfig.RequestAccess
import           Network.Google.API.Books.Myconfig.SyncVolumeLicenses
import           Network.Google.API.Books.Myconfig.UpdateUserSettings
import           Network.Google.API.Books.Mylibrary.Annotations.Delete
import           Network.Google.API.Books.Mylibrary.Annotations.Insert
import           Network.Google.API.Books.Mylibrary.Annotations.List
import           Network.Google.API.Books.Mylibrary.Annotations.Summary
import           Network.Google.API.Books.Mylibrary.Annotations.Update
import           Network.Google.API.Books.Mylibrary.Bookshelves.Volumes.List
import           Network.Google.API.Books.Mylibrary.Readingpositions.Get
import           Network.Google.API.Books.Mylibrary.Readingpositions.SetPosition
import           Network.Google.API.Books.Onboarding.ListCategories
import           Network.Google.API.Books.Onboarding.ListCategoryVolumes
import           Network.Google.API.Books.Promooffer.Accept
import           Network.Google.API.Books.Promooffer.Dismiss
import           Network.Google.API.Books.Promooffer.Get
import           Network.Google.API.Books.Volumes.Associated.List
import           Network.Google.API.Books.Volumes.Mybooks.List
import           Network.Google.API.Books.Volumes.Recommended.List
import           Network.Google.API.Books.Volumes.Recommended.Rate
import           Network.Google.API.Books.Volumes.Useruploaded.List
import           Network.Google.Books.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Books =
     MylibraryReadingpositionsSetPositionAPI :<|>
       VolumesRecommendedRateAPI
       :<|> CloudloadingDeleteBookAPI
       :<|> MylibraryAnnotationsListAPI
       :<|> OnboardingListCategoriesAPI
       :<|> MyconfigGetUserSettingsAPI
       :<|> MylibraryAnnotationsDeleteAPI
       :<|> CloudloadingUpdateBookAPI
       :<|> PromoofferAcceptAPI
       :<|> MylibraryAnnotationsSummaryAPI
       :<|> MyconfigUpdateUserSettingsAPI
       :<|> MylibraryAnnotationsUpdateAPI
       :<|> MyconfigSyncVolumeLicensesAPI
       :<|> VolumesRecommendedListAPI
       :<|> MyconfigRequestAccessAPI
       :<|> MylibraryAnnotationsInsertAPI
       :<|> PromoofferGetAPI
       :<|> VolumesAssociatedListAPI
       :<|> LayersAnnotationDataGetAPI
       :<|> DictionaryListOfflineMetadataAPI
       :<|> BookshelvesVolumesListAPI
       :<|> OnboardingListCategoryVolumesAPI
       :<|> VolumesUseruploadedListAPI
       :<|> PromoofferDismissAPI
       :<|> VolumesMybooksListAPI
       :<|> LayersVolumeAnnotationsListAPI
       :<|> LayersVolumeAnnotationsGetAPI
       :<|> CloudloadingAddBookAPI
       :<|> LayersAnnotationDataListAPI
       :<|> MylibraryBookshelvesVolumesListAPI
       :<|> MyconfigReleaseDownloadAccessAPI
       :<|> MylibraryReadingpositionsGetAPI

books :: Proxy Books
books = Proxy
