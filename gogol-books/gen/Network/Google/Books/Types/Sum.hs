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

-- | The processing state of the user uploaded volumes to be returned.
data ProcessingState
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

instance Hashable ProcessingState

instance FromText ProcessingState where
    fromText = \case
        "COMPLETED_FAILED" -> Just CompletedFailed
        "COMPLETED_SUCCESS" -> Just CompletedSuccess
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText ProcessingState where
    toText = \case
        CompletedFailed -> "COMPLETED_FAILED"
        CompletedSuccess -> "COMPLETED_SUCCESS"
        Running -> "RUNNING"

instance FromJSON ProcessingState where
    parseJSON = parseJSONText "ProcessingState"

instance ToJSON ProcessingState where
    toJSON = toJSONText

-- | How the book was aquired
data AcquireMethod
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

instance Hashable AcquireMethod

instance FromText AcquireMethod where
    fromText = \case
        "PREORDERED" -> Just PreOrdered
        "PREVIOUSLY_RENTED" -> Just PreviouslyRented
        "PUBLIC_DOMAIN" -> Just PublicDomain
        "PURCHASED" -> Just Purchased
        "RENTED" -> Just Rented
        "SAMPLE" -> Just Sample
        "UPLOADED" -> Just Uploaded
        _ -> Nothing

instance ToText AcquireMethod where
    toText = \case
        PreOrdered -> "PREORDERED"
        PreviouslyRented -> "PREVIOUSLY_RENTED"
        PublicDomain -> "PUBLIC_DOMAIN"
        Purchased -> "PURCHASED"
        Rented -> "RENTED"
        Sample -> "SAMPLE"
        Uploaded -> "UPLOADED"

instance FromJSON AcquireMethod where
    parseJSON = parseJSONText "AcquireMethod"

instance ToJSON AcquireMethod where
    toJSON = toJSONText

-- | Rating to be given to the volume.
data Rating
    = HaveIt
      -- ^ @HAVE_IT@
      -- Rating indicating a dismissal due to ownership.
    | NotInterested
      -- ^ @NOT_INTERESTED@
      -- Rating indicating a negative dismissal of a volume.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Rating

instance FromText Rating where
    fromText = \case
        "HAVE_IT" -> Just HaveIt
        "NOT_INTERESTED" -> Just NotInterested
        _ -> Nothing

instance ToText Rating where
    toText = \case
        HaveIt -> "HAVE_IT"
        NotInterested -> "NOT_INTERESTED"

instance FromJSON Rating where
    parseJSON = parseJSONText "Rating"

instance ToJSON Rating where
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

-- | Sort search results.
data OrderBy
    = Newest
      -- ^ @newest@
      -- Most recently published.
    | Relevance
      -- ^ @relevance@
      -- Relevance to search terms.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderBy

instance FromText OrderBy where
    fromText = \case
        "newest" -> Just Newest
        "relevance" -> Just Relevance
        _ -> Nothing

instance ToText OrderBy where
    toText = \case
        Newest -> "newest"
        Relevance -> "relevance"

instance FromJSON OrderBy where
    parseJSON = parseJSONText "OrderBy"

instance ToJSON OrderBy where
    toJSON = toJSONText

-- | The type of access license to request. If not specified, the default is
-- BOTH.
data LicenseTypes
    = LTBoth
      -- ^ @BOTH@
      -- Both concurrent and download licenses.
    | LTConcurrent
      -- ^ @CONCURRENT@
      -- Concurrent access license.
    | LTDownload
      -- ^ @DOWNLOAD@
      -- Offline download access license.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LicenseTypes

instance FromText LicenseTypes where
    fromText = \case
        "BOTH" -> Just LTBoth
        "CONCURRENT" -> Just LTConcurrent
        "DOWNLOAD" -> Just LTDownload
        _ -> Nothing

instance ToText LicenseTypes where
    toText = \case
        LTBoth -> "BOTH"
        LTConcurrent -> "CONCURRENT"
        LTDownload -> "DOWNLOAD"

instance FromJSON LicenseTypes where
    parseJSON = parseJSONText "LicenseTypes"

instance ToJSON LicenseTypes where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
data MaxAllowedMaturityRating
    = Mature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | NotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MaxAllowedMaturityRating

instance FromText MaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just Mature
        "not-mature" -> Just NotMature
        _ -> Nothing

instance ToText MaxAllowedMaturityRating where
    toText = \case
        Mature -> "mature"
        NotMature -> "not-mature"

instance FromJSON MaxAllowedMaturityRating where
    parseJSON = parseJSONText "MaxAllowedMaturityRating"

instance ToJSON MaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Restrict search to this user\'s library.
data LibraryRestrict
    = MyLibrary
      -- ^ @my-library@
      -- Restrict to the user\'s library, any shelf.
    | NoRestrict
      -- ^ @no-restrict@
      -- Do not restrict based on user\'s library.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LibraryRestrict

instance FromText LibraryRestrict where
    fromText = \case
        "my-library" -> Just MyLibrary
        "no-restrict" -> Just NoRestrict
        _ -> Nothing

instance ToText LibraryRestrict where
    toText = \case
        MyLibrary -> "my-library"
        NoRestrict -> "no-restrict"

instance FromJSON LibraryRestrict where
    parseJSON = parseJSONText "LibraryRestrict"

instance ToJSON LibraryRestrict where
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

-- | Action that caused this reading position to be set.
data Action
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

instance Hashable Action

instance FromText Action where
    fromText = \case
        "bookmark" -> Just Bookmark
        "chapter" -> Just Chapter
        "next-page" -> Just NextPage
        "prev-page" -> Just PrevPage
        "scroll" -> Just Scroll
        "search" -> Just Search
        _ -> Nothing

instance ToText Action where
    toText = \case
        Bookmark -> "bookmark"
        Chapter -> "chapter"
        NextPage -> "next-page"
        PrevPage -> "prev-page"
        Scroll -> "scroll"
        Search -> "search"

instance FromJSON Action where
    parseJSON = parseJSONText "Action"

instance ToJSON Action where
    toJSON = toJSONText

-- | Restrict to volumes by download availability.
data Download
    = DEpub
      -- ^ @epub@
      -- All volumes with epub.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Download

instance FromText Download where
    fromText = \case
        "epub" -> Just DEpub
        _ -> Nothing

instance ToText Download where
    toText = \case
        DEpub -> "epub"

instance FromJSON Download where
    parseJSON = parseJSONText "Download"

instance ToJSON Download where
    toJSON = toJSONText

-- | The reason for which the book is removed from the library.
data Reason
    = Onboarding
      -- ^ @ONBOARDING@
      -- Samples removed from the Onboarding flow.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Reason

instance FromText Reason where
    fromText = \case
        "ONBOARDING" -> Just Onboarding
        _ -> Nothing

instance ToText Reason where
    toText = \case
        Onboarding -> "ONBOARDING"

instance FromJSON Reason where
    parseJSON = parseJSONText "Reason"

instance ToJSON Reason where
    toJSON = toJSONText

-- | The reason for which the book is added to the library.
data BooksMyLibraryBookshelvesAddVolumeReason
    = BMLBAVRIosPrex
      -- ^ @IOS_PREX@
      -- Volumes added from the PREX flow on iOS.
    | BMLBAVRIosSearch
      -- ^ @IOS_SEARCH@
      -- Volumes added from the Search flow on iOS.
    | BMLBAVROnboarding
      -- ^ @ONBOARDING@
      -- Volumes added from the Onboarding flow.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BooksMyLibraryBookshelvesAddVolumeReason

instance FromText BooksMyLibraryBookshelvesAddVolumeReason where
    fromText = \case
        "IOS_PREX" -> Just BMLBAVRIosPrex
        "IOS_SEARCH" -> Just BMLBAVRIosSearch
        "ONBOARDING" -> Just BMLBAVROnboarding
        _ -> Nothing

instance ToText BooksMyLibraryBookshelvesAddVolumeReason where
    toText = \case
        BMLBAVRIosPrex -> "IOS_PREX"
        BMLBAVRIosSearch -> "IOS_SEARCH"
        BMLBAVROnboarding -> "ONBOARDING"

instance FromJSON BooksMyLibraryBookshelvesAddVolumeReason where
    parseJSON = parseJSONText "BooksMyLibraryBookshelvesAddVolumeReason"

instance ToJSON BooksMyLibraryBookshelvesAddVolumeReason where
    toJSON = toJSONText

-- | List of features supported by the client, i.e., \'RENTALS\'
data Features
    = Rentals
      -- ^ @RENTALS@
      -- Client supports rentals.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Features

instance FromText Features where
    fromText = \case
        "RENTALS" -> Just Rentals
        _ -> Nothing

instance ToText Features where
    toText = \case
        Rentals -> "RENTALS"

instance FromJSON Features where
    parseJSON = parseJSONText "Features"

instance ToJSON Features where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data Projection
    = PFull
      -- ^ @full@
      -- Includes all volume data.
    | PLite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Projection

instance FromText Projection where
    fromText = \case
        "full" -> Just PFull
        "lite" -> Just PLite
        _ -> Nothing

instance ToText Projection where
    toText = \case
        PFull -> "full"
        PLite -> "lite"

instance FromJSON Projection where
    parseJSON = parseJSONText "Projection"

instance ToJSON Projection where
    toJSON = toJSONText

-- | Filter search results.
data Filter
    = FEbooks
      -- ^ @ebooks@
      -- All Google eBooks.
    | FFreeEbooks
      -- ^ @free-ebooks@
      -- Google eBook with full volume text viewability.
    | FFull
      -- ^ @full@
      -- Public can view entire volume text.
    | FPaidEbooks
      -- ^ @paid-ebooks@
      -- Google eBook with a price.
    | FPartial
      -- ^ @partial@
      -- Public able to see parts of text.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Filter

instance FromText Filter where
    fromText = \case
        "ebooks" -> Just FEbooks
        "free-ebooks" -> Just FFreeEbooks
        "full" -> Just FFull
        "paid-ebooks" -> Just FPaidEbooks
        "partial" -> Just FPartial
        _ -> Nothing

instance ToText Filter where
    toText = \case
        FEbooks -> "ebooks"
        FFreeEbooks -> "free-ebooks"
        FFull -> "full"
        FPaidEbooks -> "paid-ebooks"
        FPartial -> "partial"

instance FromJSON Filter where
    parseJSON = parseJSONText "Filter"

instance ToJSON Filter where
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

-- | Restrict to books or magazines.
data PrintType
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

instance Hashable PrintType

instance FromText PrintType where
    fromText = \case
        "all" -> Just All
        "books" -> Just Books
        "magazines" -> Just Magazines
        _ -> Nothing

instance ToText PrintType where
    toText = \case
        All -> "all"
        Books -> "books"
        Magazines -> "magazines"

instance FromJSON PrintType where
    parseJSON = parseJSONText "PrintType"

instance ToJSON PrintType where
    toJSON = toJSONText

-- | Association type.
data Association
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

instance Hashable Association

instance FromText Association where
    fromText = \case
        "end-of-sample" -> Just EndOfSample
        "end-of-volume" -> Just EndOfVolume
        "related-for-play" -> Just RelatedForPlay
        _ -> Nothing

instance ToText Association where
    toText = \case
        EndOfSample -> "end-of-sample"
        EndOfVolume -> "end-of-volume"
        RelatedForPlay -> "related-for-play"

instance FromJSON Association where
    parseJSON = parseJSONText "Association"

instance ToJSON Association where
    toJSON = toJSONText
