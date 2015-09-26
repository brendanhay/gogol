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
    -- * Resources
      Books
    , OnboardingAPI
    , OnboardingListCategories
    , OnboardingListCategoryVolumes
    , MylibraryAPI
    , AnnotationsAPI
    , AnnotationsSummary
    , AnnotationsInsert
    , AnnotationsList
    , AnnotationsDelete
    , AnnotationsUpdate
    , ReadingpositionsAPI
    , ReadingpositionsGet
    , ReadingpositionsSetPosition
    , BookshelvesAPI
    , VolumesAPI
    , VolumesList
    , PromoofferAPI
    , PromoofferAccept
    , PromoofferGet
    , PromoofferDismiss
    , CloudloadingAPI
    , CloudloadingAddBook
    , CloudloadingUpdateBook
    , CloudloadingDeleteBook
    , LayersAPI
    , VolumeAnnotationsAPI
    , VolumeAnnotationsList
    , VolumeAnnotationsGet
    , AnnotationDataAPI
    , AnnotationDataList
    , AnnotationDataGet
    , DictionaryAPI
    , DictionaryListOfflineMetadata
    , VolumesAPI
    , UseruploadedAPI
    , UseruploadedList
    , RecommendedAPI
    , RecommendedList
    , RecommendedRate
    , AssociatedAPI
    , AssociatedList
    , MybooksAPI
    , MybooksList
    , BookshelvesAPI
    , VolumesAPI
    , VolumesList
    , MyconfigAPI
    , MyconfigSyncVolumeLicenses
    , MyconfigGetUserSettings
    , MyconfigRequestAccess
    , MyconfigUpdateUserSettings
    , MyconfigReleaseDownloadAccess

    -- * Types

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

    -- ** AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

    -- ** AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- ** AnnotationLayerSummary
    , AnnotationLayerSummary
    , annotationLayerSummary
    , alsLimitType
    , alsAllowedCharacterCount
    , alsRemainingCharacterCount

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

    -- ** Annotations
    , Annotations
    , annotations
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- ** AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- ** AnnotationsSummaryItemLayers
    , AnnotationsSummaryItemLayers
    , annotationsSummaryItemLayers
    , asilLimitType
    , asilAllowedCharacterCount
    , asilUpdated
    , asilLayerId
    , asilRemainingCharacterCount

    -- ** Annotationsdata
    , Annotationsdata
    , annotationsdata
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- ** BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- ** BooksCloudloadingResource
    , BooksCloudloadingResource
    , booksCloudloadingResource
    , bcrProcessingState
    , bcrVolumeId
    , bcrAuthor
    , bcrTitle

    -- ** BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

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

    -- ** Bookshelves
    , Bookshelves
    , bookshelves
    , bKind
    , bItems

    -- ** Category
    , Category
    , category
    , cKind
    , cItems

    -- ** CategoryItemItems
    , CategoryItemItems
    , categoryItemItems
    , ciiName
    , ciiCategoryId
    , ciiBadgeUrl

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

    -- ** Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- ** DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- ** DictlayerdataDict
    , DictlayerdataDict
    , dictlayerdataDict
    , ddSource
    , ddWords

    -- ** DictlayerdataItemConjugationsItemSensesItemWordsDict
    , DictlayerdataItemConjugationsItemSensesItemWordsDict
    , dictlayerdataItemConjugationsItemSensesItemWordsDict
    , dicisiwdValue
    , dicisiwdType

    -- ** DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataItemDefinitionsItemSensesItemWordsDict
    , didisiwdDefinition
    , didisiwdExamples

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

    -- ** DictlayerdataItemExamplesItemWordsDict
    , DictlayerdataItemExamplesItemWordsDict
    , dictlayerdataItemExamplesItemWordsDict
    , dieiwdText
    , dieiwdSource

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

    -- ** DictlayerdataItemSynonymsItemSensesItemWordsDict
    , DictlayerdataItemSynonymsItemSensesItemWordsDict
    , dictlayerdataItemSynonymsItemSensesItemWordsDict
    , disisiwdText
    , disisiwdSource

    -- ** DictlayerdataItemWordsDict
    , DictlayerdataItemWordsDict
    , dictlayerdataItemWordsDict
    , diwdSenses
    , diwdSource
    , diwdDerivatives
    , diwdExamples

    -- ** DictlayerdataSourceDict
    , DictlayerdataSourceDict
    , dictlayerdataSourceDict
    , dsdUrl
    , dsdAttribution

    -- ** DictlayerdataSourceItemDerivativesItemWordsDict
    , DictlayerdataSourceItemDerivativesItemWordsDict
    , dictlayerdataSourceItemDerivativesItemWordsDict
    , dsidiwdUrl
    , dsidiwdAttribution

    -- ** DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dsieidisiwdUrl
    , dsieidisiwdAttribution

    -- ** DictlayerdataSourceItemExamplesItemWordsDict
    , DictlayerdataSourceItemExamplesItemWordsDict
    , dictlayerdataSourceItemExamplesItemWordsDict
    , dsieiwdUrl
    , dsieiwdAttribution

    -- ** DictlayerdataSourceItemSensesItemWordsDict
    , DictlayerdataSourceItemSensesItemWordsDict
    , dictlayerdataSourceItemSensesItemWordsDict
    , dsisiwdUrl
    , dsisiwdAttribution

    -- ** DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dsisisiwdUrl
    , dsisisiwdAttribution

    -- ** DictlayerdataSourceItemWordsDict
    , DictlayerdataSourceItemWordsDict
    , dictlayerdataSourceItemWordsDict
    , dsiwdUrl
    , dsiwdAttribution

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

    -- ** DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- ** Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- ** GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetUrl
    , gcLang
    , gcTitle
    , gcPreviewImageUrl

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

    -- ** GeolayerdataHiViewportGeo
    , GeolayerdataHiViewportGeo
    , geolayerdataHiViewportGeo
    , ghvgLatitude
    , ghvgLongitude

    -- ** GeolayerdataItemItemBoundaryGeo
    , GeolayerdataItemItemBoundaryGeo
    , geolayerdataItemItemBoundaryGeo
    , giibgLatitude
    , giibgLongitude

    -- ** GeolayerdataLoViewportGeo
    , GeolayerdataLoViewportGeo
    , geolayerdataLoViewportGeo
    , glvgLatitude
    , glvgLongitude

    -- ** GeolayerdataViewportGeo
    , GeolayerdataViewportGeo
    , geolayerdataViewportGeo
    , gvgHi
    , gvgLo

    -- ** Layersummaries
    , Layersummaries
    , layersummaries
    , lTotalItems
    , lKind
    , lItems

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

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** MetadataItemItems
    , MetadataItemItems
    , metadataItemItems
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadUrl
    , miiEncryptedKey

    -- ** Offers
    , Offers
    , offers
    , oKind
    , oItems

    -- ** OffersItemItems
    , OffersItemItems
    , offersItemItems
    , oiiItems
    , oiiArtUrl
    , oiiId
    , oiiGservicesKey

    -- ** OffersItemItemsItemItems
    , OffersItemItemsItemItems
    , offersItemItemsItemItems
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverUrl
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

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

    -- ** RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

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

    -- ** ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- ** ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsUrl
    , rsDescription

    -- ** Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- ** UsersettingsNotesExport
    , UsersettingsNotesExport
    , usersettingsNotesExport
    , uneFolderName
    , uneIsEnabled

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

    -- ** Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

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

    -- ** VolumeDimensionsVolumeInfo
    , VolumeDimensionsVolumeInfo
    , volumeDimensionsVolumeInfo
    , vdviHeight
    , vdviWidth
    , vdviThickness

    -- ** VolumeEpubAccessInfo
    , VolumeEpubAccessInfo
    , volumeEpubAccessInfo
    , veaiAcsTokenLink
    , veaiIsAvailable
    , veaiDownloadLink

    -- ** VolumeImageLinksVolumeInfo
    , VolumeImageLinksVolumeInfo
    , volumeImageLinksVolumeInfo
    , vilviThumbnail
    , vilviSmall
    , vilviExtraLarge
    , vilviLarge
    , vilviMedium
    , vilviSmallThumbnail

    -- ** VolumeItemIndustryIdentifiersVolumeInfo
    , VolumeItemIndustryIdentifiersVolumeInfo
    , volumeItemIndustryIdentifiersVolumeInfo
    , viiiviIdentifier
    , viiiviType

    -- ** VolumeItemLayersLayerInfo
    , VolumeItemLayersLayerInfo
    , volumeItemLayersLayerInfo
    , villiVolumeAnnotationsVersion
    , villiLayerId

    -- ** VolumeItemOffersSaleInfo
    , VolumeItemOffersSaleInfo
    , volumeItemOffersSaleInfo
    , viosiFinskyOfferType
    , viosiRentalDuration
    , viosiListPrice
    , viosiRetailPrice

    -- ** VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

    -- ** VolumeListPriceItemOffersSaleInfo
    , VolumeListPriceItemOffersSaleInfo
    , volumeListPriceItemOffersSaleInfo
    , vlpiosiCurrencyCode
    , vlpiosiAmountInMicros

    -- ** VolumeListPriceSaleInfo
    , VolumeListPriceSaleInfo
    , volumeListPriceSaleInfo
    , vlpsiAmount
    , vlpsiCurrencyCode

    -- ** VolumePdfAccessInfo
    , VolumePdfAccessInfo
    , volumePdfAccessInfo
    , vpaiAcsTokenLink
    , vpaiIsAvailable
    , vpaiDownloadLink

    -- ** VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- ** VolumeRentalDurationItemOffersSaleInfo
    , VolumeRentalDurationItemOffersSaleInfo
    , volumeRentalDurationItemOffersSaleInfo
    , vrdiosiCount
    , vrdiosiUnit

    -- ** VolumeRentalPeriodUserInfo
    , VolumeRentalPeriodUserInfo
    , volumeRentalPeriodUserInfo
    , vrpuiEndUtcSec
    , vrpuiStartUtcSec

    -- ** VolumeRetailPriceItemOffersSaleInfo
    , VolumeRetailPriceItemOffersSaleInfo
    , volumeRetailPriceItemOffersSaleInfo
    , vrpiosiCurrencyCode
    , vrpiosiAmountInMicros

    -- ** VolumeRetailPriceSaleInfo
    , VolumeRetailPriceSaleInfo
    , volumeRetailPriceSaleInfo
    , vrpsiAmount
    , vrpsiCurrencyCode

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

    -- ** VolumeSearchInfo
    , VolumeSearchInfo
    , volumeSearchInfo
    , vsiTextSnippet

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

    -- ** VolumeUserUploadedVolumeInfoUserInfo
    , VolumeUserUploadedVolumeInfoUserInfo
    , volumeUserUploadedVolumeInfoUserInfo
    , vuuviuiProcessingState

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

    -- ** VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- ** Volumeannotations
    , Volumeannotations
    , volumeannotations
    , volTotalItems
    , volNextPageToken
    , volKind
    , volItems
    , volVersion

    -- ** Volumes
    , Volumes
    , volumes
    , vTotalItems
    , vKind
    , vItems
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Books =
     OnboardingAPI :<|> MylibraryAPI :<|> PromoofferAPI
       :<|> CloudloadingAPI
       :<|> LayersAPI
       :<|> DictionaryAPI
       :<|> VolumesAPI
       :<|> BookshelvesAPI
       :<|> MyconfigAPI

type OnboardingAPI =
     OnboardingListCategories :<|>
       OnboardingListCategoryVolumes

-- | List categories for onboarding experience.
type OnboardingListCategories =
     "books" :> "v1" :> "onboarding" :> "listCategories"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List available volumes under categories for onboarding experience.
type OnboardingListCategoryVolumes =
     "books" :> "v1" :> "onboarding" :>
       "listCategoryVolumes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "maxAllowedMaturityRating" Text
       :> QueryParam "key" Text
       :> QueryParam "categoryId" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MylibraryAPI =
     AnnotationsAPI :<|> ReadingpositionsAPI :<|>
       BookshelvesAPI

type AnnotationsAPI =
     AnnotationsSummary :<|> AnnotationsInsert :<|>
       AnnotationsList
       :<|> AnnotationsDelete
       :<|> AnnotationsUpdate

-- | Gets the summary of specified layers.
type AnnotationsSummary =
     "books" :> "v1" :> "mylibrary" :> "annotations" :>
       "summary"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "layerIds" Text
       :> QueryParam "volumeId" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Inserts a new annotation.
type AnnotationsInsert =
     "books" :> "v1" :> "mylibrary" :> "annotations" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "country" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "showOnlySummaryInResponse" Bool
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of annotations, possibly filtered.
type AnnotationsList =
     "books" :> "v1" :> "mylibrary" :> "annotations" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "contentVersion" Text
       :> QueryParam "showDeleted" Bool
       :> QueryParam "updatedMax" Text
       :> QueryParam "key" Text
       :> QueryParam "updatedMin" Text
       :> QueryParam "layerIds" Text
       :> QueryParam "volumeId" Text
       :> QueryParam "source" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "layerId" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an annotation.
type AnnotationsDelete =
     "books" :> "v1" :> "mylibrary" :> "annotations" :>
       Capture "annotationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing annotation.
type AnnotationsUpdate =
     "books" :> "v1" :> "mylibrary" :> "annotations" :>
       Capture "annotationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReadingpositionsAPI =
     ReadingpositionsGet :<|> ReadingpositionsSetPosition

-- | Retrieves my reading position information for a volume.
type ReadingpositionsGet =
     "books" :> "v1" :> "mylibrary" :> "readingpositions"
       :> Capture "volumeId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "contentVersion" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Sets my reading position information for a volume.
type ReadingpositionsSetPosition =
     "books" :> "v1" :> "mylibrary" :> "readingpositions"
       :> Capture "volumeId" Text
       :> "setPosition"
       :> QueryParam "deviceCookie" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "contentVersion" Text
       :> QueryParam "action" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "timestamp" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
       :> QueryParam "position" Text

type BookshelvesAPI = VolumesAPI

type VolumesAPI = VolumesList

-- | Gets volume information for volumes on a bookshelf.
type VolumesList =
     "books" :> "v1" :> "mylibrary" :> "bookshelves" :>
       Capture "shelf" Text
       :> "volumes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "country" Text
       :> QueryParam "userIp" Text
       :> QueryParam "q" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "showPreorders" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PromoofferAPI =
     PromoofferAccept :<|> PromoofferGet :<|>
       PromoofferDismiss

-- |
type PromoofferAccept =
     "books" :> "v1" :> "promooffer" :> "accept" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "manufacturer" Text
       :> QueryParam "userIp" Text
       :> QueryParam "serial" Text
       :> QueryParam "device" Text
       :> QueryParam "key" Text
       :> QueryParam "model" Text
       :> QueryParam "volumeId" Text
       :> QueryParam "offerId" Text
       :> QueryParam "product" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "androidId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of promo offers available to the user
type PromoofferGet =
     "books" :> "v1" :> "promooffer" :> "get" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "manufacturer" Text
       :> QueryParam "userIp" Text
       :> QueryParam "serial" Text
       :> QueryParam "device" Text
       :> QueryParam "key" Text
       :> QueryParam "model" Text
       :> QueryParam "product" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "androidId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- |
type PromoofferDismiss =
     "books" :> "v1" :> "promooffer" :> "dismiss" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "manufacturer" Text
       :> QueryParam "userIp" Text
       :> QueryParam "serial" Text
       :> QueryParam "device" Text
       :> QueryParam "key" Text
       :> QueryParam "model" Text
       :> QueryParam "offerId" Text
       :> QueryParam "product" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "androidId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CloudloadingAPI =
     CloudloadingAddBook :<|> CloudloadingUpdateBook :<|>
       CloudloadingDeleteBook

-- |
type CloudloadingAddBook =
     "books" :> "v1" :> "cloudloading" :> "addBook" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "mime_type" Text
       :> QueryParam "upload_client_token" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "drive_document_id" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- |
type CloudloadingUpdateBook =
     "books" :> "v1" :> "cloudloading" :> "updateBook" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove the book and its contents
type CloudloadingDeleteBook =
     "books" :> "v1" :> "cloudloading" :> "deleteBook" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "volumeId" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LayersAPI =
     VolumeAnnotationsAPI :<|> AnnotationDataAPI

type VolumeAnnotationsAPI =
     VolumeAnnotationsList :<|> VolumeAnnotationsGet

-- | Gets the volume annotations for a volume and layer.
type VolumeAnnotationsList =
     "books" :> "v1" :> "volumes" :>
       Capture "volumeId" Text
       :> "layers"
       :> Capture "layerId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "startOffset" Text
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "contentVersion" Text
       :> QueryParam "showDeleted" Bool
       :> QueryParam "volumeAnnotationsVersion" Text
       :> QueryParam "updatedMax" Text
       :> QueryParam "key" Text
       :> QueryParam "updatedMin" Text
       :> QueryParam "endOffset" Text
       :> QueryParam "source" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "endPosition" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "startPosition" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets the volume annotation.
type VolumeAnnotationsGet =
     "books" :> "v1" :> "volumes" :>
       Capture "volumeId" Text
       :> "layers"
       :> Capture "layerId" Text
       :> "annotations"
       :> Capture "annotationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AnnotationDataAPI =
     AnnotationDataList :<|> AnnotationDataGet

-- | Gets the annotation data for a volume and layer.
type AnnotationDataList =
     "books" :> "v1" :> "volumes" :>
       Capture "volumeId" Text
       :> "layers"
       :> Capture "layerId" Text
       :> "data"
       :> QueryParam "quotaUser" Text
       :> QueryParam "w" Int32
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "scale" Int32
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "contentVersion" Text
       :> QueryParam "updatedMax" Text
       :> QueryParam "key" Text
       :> QueryParam "updatedMin" Text
       :> QueryParam "annotationDataId" Text
       :> QueryParam "source" Text
       :> QueryParam "h" Int32
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets the annotation data.
type AnnotationDataGet =
     "books" :> "v1" :> "volumes" :>
       Capture "volumeId" Text
       :> "layers"
       :> Capture "layerId" Text
       :> "data"
       :> Capture "annotationDataId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "w" Int32
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "scale" Int32
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "contentVersion" Text
       :> QueryParam "key" Text
       :> QueryParam "allowWebDefinitions" Bool
       :> QueryParam "source" Text
       :> QueryParam "h" Int32
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DictionaryAPI = DictionaryListOfflineMetadata

-- | Returns a list of offline dictionary meatadata available
type DictionaryListOfflineMetadata =
     "books" :> "v1" :> "dictionary" :>
       "listOfflineMetadata"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "cpksver" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type VolumesAPI =
     UseruploadedAPI :<|> RecommendedAPI :<|>
       AssociatedAPI
       :<|> MybooksAPI

type UseruploadedAPI = UseruploadedList

-- | Return a list of books uploaded by the current user.
type UseruploadedList =
     "books" :> "v1" :> "volumes" :> "useruploaded" :>
       QueryParam "processingState" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "volumeId" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RecommendedAPI =
     RecommendedList :<|> RecommendedRate

-- | Return a list of recommended books for the current user.
type RecommendedList =
     "books" :> "v1" :> "volumes" :> "recommended" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "maxAllowedMaturityRating" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Rate a recommended book for the current user.
type RecommendedRate =
     "books" :> "v1" :> "volumes" :> "recommended" :>
       "rate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "rating" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "volumeId" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AssociatedAPI = AssociatedList

-- | Return a list of associated books.
type AssociatedList =
     "books" :> "v1" :> "volumes" :>
       Capture "volumeId" Text
       :> "associated"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "maxAllowedMaturityRating" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
       :> QueryParam "association" Text

type MybooksAPI = MybooksList

-- | Return a list of books in My Library.
type MybooksList =
     "books" :> "v1" :> "volumes" :> "mybooks" :>
       QueryParam "processingState" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "acquireMethod" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type BookshelvesAPI = VolumesAPI

type VolumesAPI = VolumesList

-- | Retrieves volumes in a specific bookshelf for the specified user.
type VolumesList =
     "books" :> "v1" :> "users" :> Capture "userId" Text
       :> "bookshelves"
       :> Capture "shelf" Text
       :> "volumes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "showPreorders" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MyconfigAPI =
     MyconfigSyncVolumeLicenses :<|>
       MyconfigGetUserSettings
       :<|> MyconfigRequestAccess
       :<|> MyconfigUpdateUserSettings
       :<|> MyconfigReleaseDownloadAccess

-- | Request downloaded content access for specified volumes on the My eBooks
-- shelf.
type MyconfigSyncVolumeLicenses =
     "books" :> "v1" :> "myconfig" :> "syncVolumeLicenses"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "cpksver" Text
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "volumeIds" Text
       :> QueryParam "key" Text
       :> QueryParam "features" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "showPreorders" Bool
       :> QueryParam "fields" Text
       :> QueryParam "nonce" Text
       :> QueryParam "alt" Text

-- | Gets the current settings for the user.
type MyconfigGetUserSettings =
     "books" :> "v1" :> "myconfig" :> "getUserSettings" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Request concurrent and download access restrictions.
type MyconfigRequestAccess =
     "books" :> "v1" :> "myconfig" :> "requestAccess" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "cpksver" Text
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "licenseTypes" Text
       :> QueryParam "key" Text
       :> QueryParam "volumeId" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "nonce" Text
       :> QueryParam "alt" Text

-- | Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
type MyconfigUpdateUserSettings =
     "books" :> "v1" :> "myconfig" :> "updateUserSettings"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Release downloaded content access restriction.
type MyconfigReleaseDownloadAccess =
     "books" :> "v1" :> "myconfig" :>
       "releaseDownloadAccess"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "cpksver" Text
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "volumeIds" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
