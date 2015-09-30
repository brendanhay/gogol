{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Books.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Books.Types.Sum where

import           Network.Google.Prelude

-- | Action that caused this reading position to be set.
data BooksMylibraryReadingpositionsSetPositionAction
    = Bookmark
      -- ^ @bookmark@
      -- User chose bookmark within volume.
    | Chapter
      -- ^ @chapter@
      -- User selected chapter from list.
    | NextPage
      -- ^ @next-page@
      -- Next page event.
    | PrevPage
      -- ^ @prev-page@
      -- Previous page event.
    | Scroll
      -- ^ @scroll@
      -- User navigated to page.
    | Search
      -- ^ @search@
      -- User chose search results within volume.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksMylibraryReadingpositionsSetPositionAction

instance FromText BooksMylibraryReadingpositionsSetPositionAction where
    fromText = \case
        "bookmark" -> Just Bookmark
        "chapter" -> Just Chapter
        "next-page" -> Just NextPage
        "prev-page" -> Just PrevPage
        "scroll" -> Just Scroll
        "search" -> Just Search
        _ -> Nothing

instance ToText BooksMylibraryReadingpositionsSetPositionAction where
    toText = \case
        Bookmark -> "bookmark"
        Chapter -> "chapter"
        NextPage -> "next-page"
        PrevPage -> "prev-page"
        Scroll -> "scroll"
        Search -> "search"

instance FromJSON BooksMylibraryReadingpositionsSetPositionAction where
    parseJSON = parseJSONText "BooksMylibraryReadingpositionsSetPositionAction"

instance ToJSON BooksMylibraryReadingpositionsSetPositionAction where
    toJSON = toJSONText

-- | Restrict to volumes by download availability.
data BooksVolumesListDownload
    = Epub
      -- ^ @epub@
      -- All volumes with epub.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesListDownload

instance FromText BooksVolumesListDownload where
    fromText = \case
        "epub" -> Just Epub
        _ -> Nothing

instance ToText BooksVolumesListDownload where
    toText = \case
        Epub -> "epub"

instance FromJSON BooksVolumesListDownload where
    parseJSON = parseJSONText "BooksVolumesListDownload"

instance ToJSON BooksVolumesListDownload where
    toJSON = toJSONText

-- | Association type.
data BooksVolumesAssociatedListAssociation
    = EndOfSample
      -- ^ @end-of-sample@
      -- Recommendations for display end-of-sample.
    | EndOfVolume
      -- ^ @end-of-volume@
      -- Recommendations for display end-of-volume.
    | RelatedForPlay
      -- ^ @related-for-play@
      -- Related volumes for Play Store.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesAssociatedListAssociation

instance FromText BooksVolumesAssociatedListAssociation where
    fromText = \case
        "end-of-sample" -> Just EndOfSample
        "end-of-volume" -> Just EndOfVolume
        "related-for-play" -> Just RelatedForPlay
        _ -> Nothing

instance ToText BooksVolumesAssociatedListAssociation where
    toText = \case
        EndOfSample -> "end-of-sample"
        EndOfVolume -> "end-of-volume"
        RelatedForPlay -> "related-for-play"

instance FromJSON BooksVolumesAssociatedListAssociation where
    parseJSON = parseJSONText "BooksVolumesAssociatedListAssociation"

instance ToJSON BooksVolumesAssociatedListAssociation where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data BooksVolumesGetProjection
    = Full
      -- ^ @full@
      -- Includes all volume data.
    | Lite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesGetProjection

instance FromText BooksVolumesGetProjection where
    fromText = \case
        "full" -> Just Full
        "lite" -> Just Lite
        _ -> Nothing

instance ToText BooksVolumesGetProjection where
    toText = \case
        Full -> "full"
        Lite -> "lite"

instance FromJSON BooksVolumesGetProjection where
    parseJSON = parseJSONText "BooksVolumesGetProjection"

instance ToJSON BooksVolumesGetProjection where
    toJSON = toJSONText

-- | The reason for which the book is removed from the library.
data BooksMylibraryBookshelvesRemoveVolumeReason
    = Onboarding
      -- ^ @ONBOARDING@
      -- Samples removed from the Onboarding flow.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksMylibraryBookshelvesRemoveVolumeReason

instance FromText BooksMylibraryBookshelvesRemoveVolumeReason where
    fromText = \case
        "ONBOARDING" -> Just Onboarding
        _ -> Nothing

instance ToText BooksMylibraryBookshelvesRemoveVolumeReason where
    toText = \case
        Onboarding -> "ONBOARDING"

instance FromJSON BooksMylibraryBookshelvesRemoveVolumeReason where
    parseJSON = parseJSONText "BooksMylibraryBookshelvesRemoveVolumeReason"

instance ToJSON BooksMylibraryBookshelvesRemoveVolumeReason where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
data BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating
    = Mature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | NotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating

instance FromText BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just Mature
        "not-mature" -> Just NotMature
        _ -> Nothing

instance ToText BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating where
    toText = \case
        Mature -> "mature"
        NotMature -> "not-mature"

instance FromJSON BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating where
    parseJSON = parseJSONText "BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating"

instance ToJSON BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Restrict search to this user\'s library.
data BooksVolumesListLibraryRestrict
    = MyLibrary
      -- ^ @my-library@
      -- Restrict to the user\'s library, any shelf.
    | NoRestrict
      -- ^ @no-restrict@
      -- Do not restrict based on user\'s library.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesListLibraryRestrict

instance FromText BooksVolumesListLibraryRestrict where
    fromText = \case
        "my-library" -> Just MyLibrary
        "no-restrict" -> Just NoRestrict
        _ -> Nothing

instance ToText BooksVolumesListLibraryRestrict where
    toText = \case
        MyLibrary -> "my-library"
        NoRestrict -> "no-restrict"

instance FromJSON BooksVolumesListLibraryRestrict where
    parseJSON = parseJSONText "BooksVolumesListLibraryRestrict"

instance ToJSON BooksVolumesListLibraryRestrict where
    toJSON = toJSONText

-- | Filter search results.
data BooksVolumesListFilter
    = BVLFEbooks
      -- ^ @ebooks@
      -- All Google eBooks.
    | BVLFFreeEbooks
      -- ^ @free-ebooks@
      -- Google eBook with full volume text viewability.
    | BVLFFull
      -- ^ @full@
      -- Public can view entire volume text.
    | BVLFPaidEbooks
      -- ^ @paid-ebooks@
      -- Google eBook with a price.
    | BVLFPartial
      -- ^ @partial@
      -- Public able to see parts of text.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesListFilter

instance FromText BooksVolumesListFilter where
    fromText = \case
        "ebooks" -> Just BVLFEbooks
        "free-ebooks" -> Just BVLFFreeEbooks
        "full" -> Just BVLFFull
        "paid-ebooks" -> Just BVLFPaidEbooks
        "partial" -> Just BVLFPartial
        _ -> Nothing

instance ToText BooksVolumesListFilter where
    toText = \case
        BVLFEbooks -> "ebooks"
        BVLFFreeEbooks -> "free-ebooks"
        BVLFFull -> "full"
        BVLFPaidEbooks -> "paid-ebooks"
        BVLFPartial -> "partial"

instance FromJSON BooksVolumesListFilter where
    parseJSON = parseJSONText "BooksVolumesListFilter"

instance ToJSON BooksVolumesListFilter where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data BooksVolumesAssociatedListMaxAllowedMaturityRating
    = BVALMAMRMature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | BVALMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesAssociatedListMaxAllowedMaturityRating

instance FromText BooksVolumesAssociatedListMaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just BVALMAMRMature
        "not-mature" -> Just BVALMAMRNotMature
        _ -> Nothing

instance ToText BooksVolumesAssociatedListMaxAllowedMaturityRating where
    toText = \case
        BVALMAMRMature -> "mature"
        BVALMAMRNotMature -> "not-mature"

instance FromJSON BooksVolumesAssociatedListMaxAllowedMaturityRating where
    parseJSON = parseJSONText "BooksVolumesAssociatedListMaxAllowedMaturityRating"

instance ToJSON BooksVolumesAssociatedListMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data BooksVolumesRecommendedListMaxAllowedMaturityRating
    = BVRLMAMRMature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | BVRLMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesRecommendedListMaxAllowedMaturityRating

instance FromText BooksVolumesRecommendedListMaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just BVRLMAMRMature
        "not-mature" -> Just BVRLMAMRNotMature
        _ -> Nothing

instance ToText BooksVolumesRecommendedListMaxAllowedMaturityRating where
    toText = \case
        BVRLMAMRMature -> "mature"
        BVRLMAMRNotMature -> "not-mature"

instance FromJSON BooksVolumesRecommendedListMaxAllowedMaturityRating where
    parseJSON = parseJSONText "BooksVolumesRecommendedListMaxAllowedMaturityRating"

instance ToJSON BooksVolumesRecommendedListMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Rating to be given to the volume.
data BooksVolumesRecommendedRateRating
    = HaveIt
      -- ^ @HAVE_IT@
      -- Rating indicating a dismissal due to ownership.
    | NotInterested
      -- ^ @NOT_INTERESTED@
      -- Rating indicating a negative dismissal of a volume.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesRecommendedRateRating

instance FromText BooksVolumesRecommendedRateRating where
    fromText = \case
        "HAVE_IT" -> Just HaveIt
        "NOT_INTERESTED" -> Just NotInterested
        _ -> Nothing

instance ToText BooksVolumesRecommendedRateRating where
    toText = \case
        HaveIt -> "HAVE_IT"
        NotInterested -> "NOT_INTERESTED"

instance FromJSON BooksVolumesRecommendedRateRating where
    parseJSON = parseJSONText "BooksVolumesRecommendedRateRating"

instance ToJSON BooksVolumesRecommendedRateRating where
    toJSON = toJSONText

-- | List of features supported by the client, i.e., \'RENTALS\'
data BooksMyconfigSyncVolumeLicensesFeatures
    = Rentals
      -- ^ @RENTALS@
      -- Client supports rentals.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksMyconfigSyncVolumeLicensesFeatures

instance FromText BooksMyconfigSyncVolumeLicensesFeatures where
    fromText = \case
        "RENTALS" -> Just Rentals
        _ -> Nothing

instance ToText BooksMyconfigSyncVolumeLicensesFeatures where
    toText = \case
        Rentals -> "RENTALS"

instance FromJSON BooksMyconfigSyncVolumeLicensesFeatures where
    parseJSON = parseJSONText "BooksMyconfigSyncVolumeLicensesFeatures"

instance ToJSON BooksMyconfigSyncVolumeLicensesFeatures where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
data BooksVolumesUseruploadedListProcessingState
    = CompletedFailed
      -- ^ @COMPLETED_FAILED@
      -- The volume processing hase failed.
    | CompletedSuccess
      -- ^ @COMPLETED_SUCCESS@
      -- The volume processing was completed.
    | Running
      -- ^ @RUNNING@
      -- The volume processing is not completed.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesUseruploadedListProcessingState

instance FromText BooksVolumesUseruploadedListProcessingState where
    fromText = \case
        "COMPLETED_FAILED" -> Just CompletedFailed
        "COMPLETED_SUCCESS" -> Just CompletedSuccess
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText BooksVolumesUseruploadedListProcessingState where
    toText = \case
        CompletedFailed -> "COMPLETED_FAILED"
        CompletedSuccess -> "COMPLETED_SUCCESS"
        Running -> "RUNNING"

instance FromJSON BooksVolumesUseruploadedListProcessingState where
    parseJSON = parseJSONText "BooksVolumesUseruploadedListProcessingState"

instance ToJSON BooksVolumesUseruploadedListProcessingState where
    toJSON = toJSONText

-- | The reason for which the book is added to the library.
data BooksMylibraryBookshelvesAddVolumeReason
    = BMBAVRIosPrex
      -- ^ @IOS_PREX@
      -- Volumes added from the PREX flow on iOS.
    | BMBAVRIosSearch
      -- ^ @IOS_SEARCH@
      -- Volumes added from the Search flow on iOS.
    | BMBAVROnboarding
      -- ^ @ONBOARDING@
      -- Volumes added from the Onboarding flow.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksMylibraryBookshelvesAddVolumeReason

instance FromText BooksMylibraryBookshelvesAddVolumeReason where
    fromText = \case
        "IOS_PREX" -> Just BMBAVRIosPrex
        "IOS_SEARCH" -> Just BMBAVRIosSearch
        "ONBOARDING" -> Just BMBAVROnboarding
        _ -> Nothing

instance ToText BooksMylibraryBookshelvesAddVolumeReason where
    toText = \case
        BMBAVRIosPrex -> "IOS_PREX"
        BMBAVRIosSearch -> "IOS_SEARCH"
        BMBAVROnboarding -> "ONBOARDING"

instance FromJSON BooksMylibraryBookshelvesAddVolumeReason where
    parseJSON = parseJSONText "BooksMylibraryBookshelvesAddVolumeReason"

instance ToJSON BooksMylibraryBookshelvesAddVolumeReason where
    toJSON = toJSONText

-- | Restrict to books or magazines.
data BooksVolumesListPrintType
    = All
      -- ^ @all@
      -- All volume content types.
    | Books
      -- ^ @books@
      -- Just books.
    | Magazines
      -- ^ @magazines@
      -- Just magazines.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesListPrintType

instance FromText BooksVolumesListPrintType where
    fromText = \case
        "all" -> Just All
        "books" -> Just Books
        "magazines" -> Just Magazines
        _ -> Nothing

instance ToText BooksVolumesListPrintType where
    toText = \case
        All -> "all"
        Books -> "books"
        Magazines -> "magazines"

instance FromJSON BooksVolumesListPrintType where
    parseJSON = parseJSONText "BooksVolumesListPrintType"

instance ToJSON BooksVolumesListPrintType where
    toJSON = toJSONText

-- | How the book was aquired
data BooksVolumesMybooksListAcquireMethod
    = Preordered
      -- ^ @PREORDERED@
      -- Preordered books (not yet available)
    | PreviouslyRented
      -- ^ @PREVIOUSLY_RENTED@
      -- User-rented books past their expiration time
    | PublicDomain
      -- ^ @PUBLIC_DOMAIN@
      -- Public domain books
    | Purchased
      -- ^ @PURCHASED@
      -- Purchased books
    | Rented
      -- ^ @RENTED@
      -- User-rented books
    | Sample
      -- ^ @SAMPLE@
      -- Sample books
    | Uploaded
      -- ^ @UPLOADED@
      -- User uploaded books
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesMybooksListAcquireMethod

instance FromText BooksVolumesMybooksListAcquireMethod where
    fromText = \case
        "PREORDERED" -> Just Preordered
        "PREVIOUSLY_RENTED" -> Just PreviouslyRented
        "PUBLIC_DOMAIN" -> Just PublicDomain
        "PURCHASED" -> Just Purchased
        "RENTED" -> Just Rented
        "SAMPLE" -> Just Sample
        "UPLOADED" -> Just Uploaded
        _ -> Nothing

instance ToText BooksVolumesMybooksListAcquireMethod where
    toText = \case
        Preordered -> "PREORDERED"
        PreviouslyRented -> "PREVIOUSLY_RENTED"
        PublicDomain -> "PUBLIC_DOMAIN"
        Purchased -> "PURCHASED"
        Rented -> "RENTED"
        Sample -> "SAMPLE"
        Uploaded -> "UPLOADED"

instance FromJSON BooksVolumesMybooksListAcquireMethod where
    parseJSON = parseJSONText "BooksVolumesMybooksListAcquireMethod"

instance ToJSON BooksVolumesMybooksListAcquireMethod where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data BooksMylibraryBookshelvesVolumesListProjection
    = BMBVLPFull
      -- ^ @full@
      -- Includes all volume data.
    | BMBVLPLite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksMylibraryBookshelvesVolumesListProjection

instance FromText BooksMylibraryBookshelvesVolumesListProjection where
    fromText = \case
        "full" -> Just BMBVLPFull
        "lite" -> Just BMBVLPLite
        _ -> Nothing

instance ToText BooksMylibraryBookshelvesVolumesListProjection where
    toText = \case
        BMBVLPFull -> "full"
        BMBVLPLite -> "lite"

instance FromJSON BooksMylibraryBookshelvesVolumesListProjection where
    parseJSON = parseJSONText "BooksMylibraryBookshelvesVolumesListProjection"

instance ToJSON BooksMylibraryBookshelvesVolumesListProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data BooksVolumesListProjection
    = BVLPFull
      -- ^ @full@
      -- Includes all volume data.
    | BVLPLite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesListProjection

instance FromText BooksVolumesListProjection where
    fromText = \case
        "full" -> Just BVLPFull
        "lite" -> Just BVLPLite
        _ -> Nothing

instance ToText BooksVolumesListProjection where
    toText = \case
        BVLPFull -> "full"
        BVLPLite -> "lite"

instance FromJSON BooksVolumesListProjection where
    parseJSON = parseJSONText "BooksVolumesListProjection"

instance ToJSON BooksVolumesListProjection where
    toJSON = toJSONText

-- | Sort search results.
data BooksVolumesListOrderBy
    = Newest
      -- ^ @newest@
      -- Most recently published.
    | Relevance
      -- ^ @relevance@
      -- Relevance to search terms.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesListOrderBy

instance FromText BooksVolumesListOrderBy where
    fromText = \case
        "newest" -> Just Newest
        "relevance" -> Just Relevance
        _ -> Nothing

instance ToText BooksVolumesListOrderBy where
    toText = \case
        Newest -> "newest"
        Relevance -> "relevance"

instance FromJSON BooksVolumesListOrderBy where
    parseJSON = parseJSONText "BooksVolumesListOrderBy"

instance ToJSON BooksVolumesListOrderBy where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
-- Applicable only if the UPLOADED is specified in the acquireMethod.
data BooksVolumesMybooksListProcessingState
    = BVMLPSCompletedFailed
      -- ^ @COMPLETED_FAILED@
      -- The volume processing hase failed.
    | BVMLPSCompletedSuccess
      -- ^ @COMPLETED_SUCCESS@
      -- The volume processing was completed.
    | BVMLPSRunning
      -- ^ @RUNNING@
      -- The volume processing is not completed.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksVolumesMybooksListProcessingState

instance FromText BooksVolumesMybooksListProcessingState where
    fromText = \case
        "COMPLETED_FAILED" -> Just BVMLPSCompletedFailed
        "COMPLETED_SUCCESS" -> Just BVMLPSCompletedSuccess
        "RUNNING" -> Just BVMLPSRunning
        _ -> Nothing

instance ToText BooksVolumesMybooksListProcessingState where
    toText = \case
        BVMLPSCompletedFailed -> "COMPLETED_FAILED"
        BVMLPSCompletedSuccess -> "COMPLETED_SUCCESS"
        BVMLPSRunning -> "RUNNING"

instance FromJSON BooksVolumesMybooksListProcessingState where
    parseJSON = parseJSONText "BooksVolumesMybooksListProcessingState"

instance ToJSON BooksVolumesMybooksListProcessingState where
    toJSON = toJSONText

-- | The type of access license to request. If not specified, the default is
-- BOTH.
data BooksMyconfigRequestAccessLicenseTypes
    = Both
      -- ^ @BOTH@
      -- Both concurrent and download licenses.
    | Concurrent
      -- ^ @CONCURRENT@
      -- Concurrent access license.
    | Download
      -- ^ @DOWNLOAD@
      -- Offline download access license.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksMyconfigRequestAccessLicenseTypes

instance FromText BooksMyconfigRequestAccessLicenseTypes where
    fromText = \case
        "BOTH" -> Just Both
        "CONCURRENT" -> Just Concurrent
        "DOWNLOAD" -> Just Download
        _ -> Nothing

instance ToText BooksMyconfigRequestAccessLicenseTypes where
    toText = \case
        Both -> "BOTH"
        Concurrent -> "CONCURRENT"
        Download -> "DOWNLOAD"

instance FromJSON BooksMyconfigRequestAccessLicenseTypes where
    parseJSON = parseJSONText "BooksMyconfigRequestAccessLicenseTypes"

instance ToJSON BooksMyconfigRequestAccessLicenseTypes where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
