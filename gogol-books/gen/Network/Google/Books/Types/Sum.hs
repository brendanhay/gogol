{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

-- | Restrict information returned to a set of selected fields.
data VolumesListProjection
    = Full
      -- ^ @full@
      -- Includes all volume data.
    | Lite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesListProjection

instance FromText VolumesListProjection where
    fromText = \case
        "full" -> Just Full
        "lite" -> Just Lite
        _ -> Nothing

instance ToText VolumesListProjection where
    toText = \case
        Full -> "full"
        Lite -> "lite"

instance FromJSON VolumesListProjection where
    parseJSON = parseJSONText "VolumesListProjection"

instance ToJSON VolumesListProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data MyLibraryBookshelvesVolumesListProjection
    = MLBVLPFull
      -- ^ @full@
      -- Includes all volume data.
    | MLBVLPLite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MyLibraryBookshelvesVolumesListProjection

instance FromText MyLibraryBookshelvesVolumesListProjection where
    fromText = \case
        "full" -> Just MLBVLPFull
        "lite" -> Just MLBVLPLite
        _ -> Nothing

instance ToText MyLibraryBookshelvesVolumesListProjection where
    toText = \case
        MLBVLPFull -> "full"
        MLBVLPLite -> "lite"

instance FromJSON MyLibraryBookshelvesVolumesListProjection where
    parseJSON = parseJSONText "MyLibraryBookshelvesVolumesListProjection"

instance ToJSON MyLibraryBookshelvesVolumesListProjection where
    toJSON = toJSONText

-- | Sort search results.
data VolumesListOrderBy
    = Newest
      -- ^ @newest@
      -- Most recently published.
    | Relevance
      -- ^ @relevance@
      -- Relevance to search terms.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesListOrderBy

instance FromText VolumesListOrderBy where
    fromText = \case
        "newest" -> Just Newest
        "relevance" -> Just Relevance
        _ -> Nothing

instance ToText VolumesListOrderBy where
    toText = \case
        Newest -> "newest"
        Relevance -> "relevance"

instance FromJSON VolumesListOrderBy where
    parseJSON = parseJSONText "VolumesListOrderBy"

instance ToJSON VolumesListOrderBy where
    toJSON = toJSONText

-- | Restrict search to this user\'s library.
data VolumesListLibraryRestrict
    = MyLibrary
      -- ^ @my-library@
      -- Restrict to the user\'s library, any shelf.
    | NoRestrict
      -- ^ @no-restrict@
      -- Do not restrict based on user\'s library.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesListLibraryRestrict

instance FromText VolumesListLibraryRestrict where
    fromText = \case
        "my-library" -> Just MyLibrary
        "no-restrict" -> Just NoRestrict
        _ -> Nothing

instance ToText VolumesListLibraryRestrict where
    toText = \case
        MyLibrary -> "my-library"
        NoRestrict -> "no-restrict"

instance FromJSON VolumesListLibraryRestrict where
    parseJSON = parseJSONText "VolumesListLibraryRestrict"

instance ToJSON VolumesListLibraryRestrict where
    toJSON = toJSONText

-- | The reason for which the book is removed from the library.
data MyLibraryBookshelvesRemoveVolumeReason
    = Onboarding
      -- ^ @ONBOARDING@
      -- Samples removed from the Onboarding flow.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MyLibraryBookshelvesRemoveVolumeReason

instance FromText MyLibraryBookshelvesRemoveVolumeReason where
    fromText = \case
        "ONBOARDING" -> Just Onboarding
        _ -> Nothing

instance ToText MyLibraryBookshelvesRemoveVolumeReason where
    toText = \case
        Onboarding -> "ONBOARDING"

instance FromJSON MyLibraryBookshelvesRemoveVolumeReason where
    parseJSON = parseJSONText "MyLibraryBookshelvesRemoveVolumeReason"

instance ToJSON MyLibraryBookshelvesRemoveVolumeReason where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
data OnboardingListCategoryVolumesMaxAllowedMaturityRating
    = Mature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | NotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OnboardingListCategoryVolumesMaxAllowedMaturityRating

instance FromText OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just Mature
        "not-mature" -> Just NotMature
        _ -> Nothing

instance ToText OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    toText = \case
        Mature -> "mature"
        NotMature -> "not-mature"

instance FromJSON OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    parseJSON = parseJSONText "OnboardingListCategoryVolumesMaxAllowedMaturityRating"

instance ToJSON OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Restrict to volumes by download availability.
data VolumesListDownload
    = Epub
      -- ^ @epub@
      -- All volumes with epub.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesListDownload

instance FromText VolumesListDownload where
    fromText = \case
        "epub" -> Just Epub
        _ -> Nothing

instance ToText VolumesListDownload where
    toText = \case
        Epub -> "epub"

instance FromJSON VolumesListDownload where
    parseJSON = parseJSONText "VolumesListDownload"

instance ToJSON VolumesListDownload where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data VolumesGetProjection
    = VGPFull
      -- ^ @full@
      -- Includes all volume data.
    | VGPLite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesGetProjection

instance FromText VolumesGetProjection where
    fromText = \case
        "full" -> Just VGPFull
        "lite" -> Just VGPLite
        _ -> Nothing

instance ToText VolumesGetProjection where
    toText = \case
        VGPFull -> "full"
        VGPLite -> "lite"

instance FromJSON VolumesGetProjection where
    parseJSON = parseJSONText "VolumesGetProjection"

instance ToJSON VolumesGetProjection where
    toJSON = toJSONText

-- | Association type.
data VolumesAssociatedListAssociation
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

instance Hashable VolumesAssociatedListAssociation

instance FromText VolumesAssociatedListAssociation where
    fromText = \case
        "end-of-sample" -> Just EndOfSample
        "end-of-volume" -> Just EndOfVolume
        "related-for-play" -> Just RelatedForPlay
        _ -> Nothing

instance ToText VolumesAssociatedListAssociation where
    toText = \case
        EndOfSample -> "end-of-sample"
        EndOfVolume -> "end-of-volume"
        RelatedForPlay -> "related-for-play"

instance FromJSON VolumesAssociatedListAssociation where
    parseJSON = parseJSONText "VolumesAssociatedListAssociation"

instance ToJSON VolumesAssociatedListAssociation where
    toJSON = toJSONText

-- | Rating to be given to the volume.
data VolumesRecommendedRateRating
    = HaveIt
      -- ^ @HAVE_IT@
      -- Rating indicating a dismissal due to ownership.
    | NotInterested
      -- ^ @NOT_INTERESTED@
      -- Rating indicating a negative dismissal of a volume.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesRecommendedRateRating

instance FromText VolumesRecommendedRateRating where
    fromText = \case
        "HAVE_IT" -> Just HaveIt
        "NOT_INTERESTED" -> Just NotInterested
        _ -> Nothing

instance ToText VolumesRecommendedRateRating where
    toText = \case
        HaveIt -> "HAVE_IT"
        NotInterested -> "NOT_INTERESTED"

instance FromJSON VolumesRecommendedRateRating where
    parseJSON = parseJSONText "VolumesRecommendedRateRating"

instance ToJSON VolumesRecommendedRateRating where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
data VolumesUserUploadedListProcessingState
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

instance Hashable VolumesUserUploadedListProcessingState

instance FromText VolumesUserUploadedListProcessingState where
    fromText = \case
        "COMPLETED_FAILED" -> Just CompletedFailed
        "COMPLETED_SUCCESS" -> Just CompletedSuccess
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText VolumesUserUploadedListProcessingState where
    toText = \case
        CompletedFailed -> "COMPLETED_FAILED"
        CompletedSuccess -> "COMPLETED_SUCCESS"
        Running -> "RUNNING"

instance FromJSON VolumesUserUploadedListProcessingState where
    parseJSON = parseJSONText "VolumesUserUploadedListProcessingState"

instance ToJSON VolumesUserUploadedListProcessingState where
    toJSON = toJSONText

-- | List of features supported by the client, i.e., \'RENTALS\'
data MyConfigSyncVolumeLicensesFeatures
    = Rentals
      -- ^ @RENTALS@
      -- Client supports rentals.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MyConfigSyncVolumeLicensesFeatures

instance FromText MyConfigSyncVolumeLicensesFeatures where
    fromText = \case
        "RENTALS" -> Just Rentals
        _ -> Nothing

instance ToText MyConfigSyncVolumeLicensesFeatures where
    toText = \case
        Rentals -> "RENTALS"

instance FromJSON MyConfigSyncVolumeLicensesFeatures where
    parseJSON = parseJSONText "MyConfigSyncVolumeLicensesFeatures"

instance ToJSON MyConfigSyncVolumeLicensesFeatures where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data VolumesAssociatedListMaxAllowedMaturityRating
    = VALMAMRMature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | VALMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesAssociatedListMaxAllowedMaturityRating

instance FromText VolumesAssociatedListMaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just VALMAMRMature
        "not-mature" -> Just VALMAMRNotMature
        _ -> Nothing

instance ToText VolumesAssociatedListMaxAllowedMaturityRating where
    toText = \case
        VALMAMRMature -> "mature"
        VALMAMRNotMature -> "not-mature"

instance FromJSON VolumesAssociatedListMaxAllowedMaturityRating where
    parseJSON = parseJSONText "VolumesAssociatedListMaxAllowedMaturityRating"

instance ToJSON VolumesAssociatedListMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Filter search results.
data VolumesListFilter
    = VLFEbooks
      -- ^ @ebooks@
      -- All Google eBooks.
    | VLFFreeEbooks
      -- ^ @free-ebooks@
      -- Google eBook with full volume text viewability.
    | VLFFull
      -- ^ @full@
      -- Public can view entire volume text.
    | VLFPaidEbooks
      -- ^ @paid-ebooks@
      -- Google eBook with a price.
    | VLFPartial
      -- ^ @partial@
      -- Public able to see parts of text.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesListFilter

instance FromText VolumesListFilter where
    fromText = \case
        "ebooks" -> Just VLFEbooks
        "free-ebooks" -> Just VLFFreeEbooks
        "full" -> Just VLFFull
        "paid-ebooks" -> Just VLFPaidEbooks
        "partial" -> Just VLFPartial
        _ -> Nothing

instance ToText VolumesListFilter where
    toText = \case
        VLFEbooks -> "ebooks"
        VLFFreeEbooks -> "free-ebooks"
        VLFFull -> "full"
        VLFPaidEbooks -> "paid-ebooks"
        VLFPartial -> "partial"

instance FromJSON VolumesListFilter where
    parseJSON = parseJSONText "VolumesListFilter"

instance ToJSON VolumesListFilter where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data VolumesRecommendedListMaxAllowedMaturityRating
    = VRLMAMRMature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | VRLMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesRecommendedListMaxAllowedMaturityRating

instance FromText VolumesRecommendedListMaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just VRLMAMRMature
        "not-mature" -> Just VRLMAMRNotMature
        _ -> Nothing

instance ToText VolumesRecommendedListMaxAllowedMaturityRating where
    toText = \case
        VRLMAMRMature -> "mature"
        VRLMAMRNotMature -> "not-mature"

instance FromJSON VolumesRecommendedListMaxAllowedMaturityRating where
    parseJSON = parseJSONText "VolumesRecommendedListMaxAllowedMaturityRating"

instance ToJSON VolumesRecommendedListMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | The reason for which the book is added to the library.
data MyLibraryBookshelvesAddVolumeReason
    = MLBAVRIosPrex
      -- ^ @IOS_PREX@
      -- Volumes added from the PREX flow on iOS.
    | MLBAVRIosSearch
      -- ^ @IOS_SEARCH@
      -- Volumes added from the Search flow on iOS.
    | MLBAVROnboarding
      -- ^ @ONBOARDING@
      -- Volumes added from the Onboarding flow.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MyLibraryBookshelvesAddVolumeReason

instance FromText MyLibraryBookshelvesAddVolumeReason where
    fromText = \case
        "IOS_PREX" -> Just MLBAVRIosPrex
        "IOS_SEARCH" -> Just MLBAVRIosSearch
        "ONBOARDING" -> Just MLBAVROnboarding
        _ -> Nothing

instance ToText MyLibraryBookshelvesAddVolumeReason where
    toText = \case
        MLBAVRIosPrex -> "IOS_PREX"
        MLBAVRIosSearch -> "IOS_SEARCH"
        MLBAVROnboarding -> "ONBOARDING"

instance FromJSON MyLibraryBookshelvesAddVolumeReason where
    parseJSON = parseJSONText "MyLibraryBookshelvesAddVolumeReason"

instance ToJSON MyLibraryBookshelvesAddVolumeReason where
    toJSON = toJSONText

-- | How the book was aquired
data VolumesMybooksListAcquireMethod
    = PreOrdered
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

instance Hashable VolumesMybooksListAcquireMethod

instance FromText VolumesMybooksListAcquireMethod where
    fromText = \case
        "PREORDERED" -> Just PreOrdered
        "PREVIOUSLY_RENTED" -> Just PreviouslyRented
        "PUBLIC_DOMAIN" -> Just PublicDomain
        "PURCHASED" -> Just Purchased
        "RENTED" -> Just Rented
        "SAMPLE" -> Just Sample
        "UPLOADED" -> Just Uploaded
        _ -> Nothing

instance ToText VolumesMybooksListAcquireMethod where
    toText = \case
        PreOrdered -> "PREORDERED"
        PreviouslyRented -> "PREVIOUSLY_RENTED"
        PublicDomain -> "PUBLIC_DOMAIN"
        Purchased -> "PURCHASED"
        Rented -> "RENTED"
        Sample -> "SAMPLE"
        Uploaded -> "UPLOADED"

instance FromJSON VolumesMybooksListAcquireMethod where
    parseJSON = parseJSONText "VolumesMybooksListAcquireMethod"

instance ToJSON VolumesMybooksListAcquireMethod where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data PersonalizedstreamGetMaxAllowedMaturityRating
    = PGMAMRMature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | PGMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PersonalizedstreamGetMaxAllowedMaturityRating

instance FromText PersonalizedstreamGetMaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just PGMAMRMature
        "not-mature" -> Just PGMAMRNotMature
        _ -> Nothing

instance ToText PersonalizedstreamGetMaxAllowedMaturityRating where
    toText = \case
        PGMAMRMature -> "mature"
        PGMAMRNotMature -> "not-mature"

instance FromJSON PersonalizedstreamGetMaxAllowedMaturityRating where
    parseJSON = parseJSONText "PersonalizedstreamGetMaxAllowedMaturityRating"

instance ToJSON PersonalizedstreamGetMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Restrict to books or magazines.
data VolumesListPrintType
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

instance Hashable VolumesListPrintType

instance FromText VolumesListPrintType where
    fromText = \case
        "all" -> Just All
        "books" -> Just Books
        "magazines" -> Just Magazines
        _ -> Nothing

instance ToText VolumesListPrintType where
    toText = \case
        All -> "all"
        Books -> "books"
        Magazines -> "magazines"

instance FromJSON VolumesListPrintType where
    parseJSON = parseJSONText "VolumesListPrintType"

instance ToJSON VolumesListPrintType where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
-- Applicable only if the UPLOADED is specified in the acquireMethod.
data VolumesMybooksListProcessingState
    = VMLPSCompletedFailed
      -- ^ @COMPLETED_FAILED@
      -- The volume processing hase failed.
    | VMLPSCompletedSuccess
      -- ^ @COMPLETED_SUCCESS@
      -- The volume processing was completed.
    | VMLPSRunning
      -- ^ @RUNNING@
      -- The volume processing is not completed.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesMybooksListProcessingState

instance FromText VolumesMybooksListProcessingState where
    fromText = \case
        "COMPLETED_FAILED" -> Just VMLPSCompletedFailed
        "COMPLETED_SUCCESS" -> Just VMLPSCompletedSuccess
        "RUNNING" -> Just VMLPSRunning
        _ -> Nothing

instance ToText VolumesMybooksListProcessingState where
    toText = \case
        VMLPSCompletedFailed -> "COMPLETED_FAILED"
        VMLPSCompletedSuccess -> "COMPLETED_SUCCESS"
        VMLPSRunning -> "RUNNING"

instance FromJSON VolumesMybooksListProcessingState where
    parseJSON = parseJSONText "VolumesMybooksListProcessingState"

instance ToJSON VolumesMybooksListProcessingState where
    toJSON = toJSONText

-- | The type of access license to request. If not specified, the default is
-- BOTH.
data MyConfigRequestAccessLicenseTypes
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

instance Hashable MyConfigRequestAccessLicenseTypes

instance FromText MyConfigRequestAccessLicenseTypes where
    fromText = \case
        "BOTH" -> Just Both
        "CONCURRENT" -> Just Concurrent
        "DOWNLOAD" -> Just Download
        _ -> Nothing

instance ToText MyConfigRequestAccessLicenseTypes where
    toText = \case
        Both -> "BOTH"
        Concurrent -> "CONCURRENT"
        Download -> "DOWNLOAD"

instance FromJSON MyConfigRequestAccessLicenseTypes where
    parseJSON = parseJSONText "MyConfigRequestAccessLicenseTypes"

instance ToJSON MyConfigRequestAccessLicenseTypes where
    toJSON = toJSONText

-- | Action that caused this reading position to be set.
data MyLibraryReadingPositionsSetPositionAction
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

instance Hashable MyLibraryReadingPositionsSetPositionAction

instance FromText MyLibraryReadingPositionsSetPositionAction where
    fromText = \case
        "bookmark" -> Just Bookmark
        "chapter" -> Just Chapter
        "next-page" -> Just NextPage
        "prev-page" -> Just PrevPage
        "scroll" -> Just Scroll
        "search" -> Just Search
        _ -> Nothing

instance ToText MyLibraryReadingPositionsSetPositionAction where
    toText = \case
        Bookmark -> "bookmark"
        Chapter -> "chapter"
        NextPage -> "next-page"
        PrevPage -> "prev-page"
        Scroll -> "scroll"
        Search -> "search"

instance FromJSON MyLibraryReadingPositionsSetPositionAction where
    parseJSON = parseJSONText "MyLibraryReadingPositionsSetPositionAction"

instance ToJSON MyLibraryReadingPositionsSetPositionAction where
    toJSON = toJSONText
