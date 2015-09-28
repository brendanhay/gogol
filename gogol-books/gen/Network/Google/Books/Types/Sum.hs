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

-- | How the book was aquired
data VolumesMybooksList'AcquireMethod
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

instance Hashable VolumesMybooksList'AcquireMethod

instance FromText VolumesMybooksList'AcquireMethod where
    fromText = \case
        "PREORDERED" -> Just Preordered
        "PREVIOUSLY_RENTED" -> Just PreviouslyRented
        "PUBLIC_DOMAIN" -> Just PublicDomain
        "PURCHASED" -> Just Purchased
        "RENTED" -> Just Rented
        "SAMPLE" -> Just Sample
        "UPLOADED" -> Just Uploaded
        _ -> Nothing

instance ToText VolumesMybooksList'AcquireMethod where
    toText = \case
        Preordered -> "PREORDERED"
        PreviouslyRented -> "PREVIOUSLY_RENTED"
        PublicDomain -> "PUBLIC_DOMAIN"
        Purchased -> "PURCHASED"
        Rented -> "RENTED"
        Sample -> "SAMPLE"
        Uploaded -> "UPLOADED"

instance FromJSON VolumesMybooksList'AcquireMethod where
    parseJSON = parseJSONText "VolumesMybooksList'AcquireMethod"

instance ToJSON VolumesMybooksList'AcquireMethod where
    toJSON = toJSONText

-- | Association type.
data VolumesAssociatedList'Association
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

instance Hashable VolumesAssociatedList'Association

instance FromText VolumesAssociatedList'Association where
    fromText = \case
        "end-of-sample" -> Just EndOfSample
        "end-of-volume" -> Just EndOfVolume
        "related-for-play" -> Just RelatedForPlay
        _ -> Nothing

instance ToText VolumesAssociatedList'Association where
    toText = \case
        EndOfSample -> "end-of-sample"
        EndOfVolume -> "end-of-volume"
        RelatedForPlay -> "related-for-play"

instance FromJSON VolumesAssociatedList'Association where
    parseJSON = parseJSONText "VolumesAssociatedList'Association"

instance ToJSON VolumesAssociatedList'Association where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
-- Applicable only if the UPLOADED is specified in the acquireMethod.
data VolumesMybooksList'ProcessingState
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

instance Hashable VolumesMybooksList'ProcessingState

instance FromText VolumesMybooksList'ProcessingState where
    fromText = \case
        "COMPLETED_FAILED" -> Just CompletedFailed
        "COMPLETED_SUCCESS" -> Just CompletedSuccess
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText VolumesMybooksList'ProcessingState where
    toText = \case
        CompletedFailed -> "COMPLETED_FAILED"
        CompletedSuccess -> "COMPLETED_SUCCESS"
        Running -> "RUNNING"

instance FromJSON VolumesMybooksList'ProcessingState where
    parseJSON = parseJSONText "VolumesMybooksList'ProcessingState"

instance ToJSON VolumesMybooksList'ProcessingState where
    toJSON = toJSONText

-- | Rating to be given to the volume.
data VolumesRecommendedRate'Rating
    = HaveIt
      -- ^ @HAVE_IT@
      -- Rating indicating a dismissal due to ownership.
    | NotInterested
      -- ^ @NOT_INTERESTED@
      -- Rating indicating a negative dismissal of a volume.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesRecommendedRate'Rating

instance FromText VolumesRecommendedRate'Rating where
    fromText = \case
        "HAVE_IT" -> Just HaveIt
        "NOT_INTERESTED" -> Just NotInterested
        _ -> Nothing

instance ToText VolumesRecommendedRate'Rating where
    toText = \case
        HaveIt -> "HAVE_IT"
        NotInterested -> "NOT_INTERESTED"

instance FromJSON VolumesRecommendedRate'Rating where
    parseJSON = parseJSONText "VolumesRecommendedRate'Rating"

instance ToJSON VolumesRecommendedRate'Rating where
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

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data VolumesAssociatedList'MaxAllowedMaturityRating
    = Mature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | NotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesAssociatedList'MaxAllowedMaturityRating

instance FromText VolumesAssociatedList'MaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just Mature
        "not-mature" -> Just NotMature
        _ -> Nothing

instance ToText VolumesAssociatedList'MaxAllowedMaturityRating where
    toText = \case
        Mature -> "mature"
        NotMature -> "not-mature"

instance FromJSON VolumesAssociatedList'MaxAllowedMaturityRating where
    parseJSON = parseJSONText "VolumesAssociatedList'MaxAllowedMaturityRating"

instance ToJSON VolumesAssociatedList'MaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data MylibraryBookshelvesVolumesList'Projection
    = Full
      -- ^ @full@
      -- Includes all volume data.
    | Lite
      -- ^ @lite@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MylibraryBookshelvesVolumesList'Projection

instance FromText MylibraryBookshelvesVolumesList'Projection where
    fromText = \case
        "full" -> Just Full
        "lite" -> Just Lite
        _ -> Nothing

instance ToText MylibraryBookshelvesVolumesList'Projection where
    toText = \case
        Full -> "full"
        Lite -> "lite"

instance FromJSON MylibraryBookshelvesVolumesList'Projection where
    parseJSON = parseJSONText "MylibraryBookshelvesVolumesList'Projection"

instance ToJSON MylibraryBookshelvesVolumesList'Projection where
    toJSON = toJSONText

-- | The type of access license to request. If not specified, the default is
-- BOTH.
data MyconfigRequestAccess'LicenseTypes
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

instance Hashable MyconfigRequestAccess'LicenseTypes

instance FromText MyconfigRequestAccess'LicenseTypes where
    fromText = \case
        "BOTH" -> Just Both
        "CONCURRENT" -> Just Concurrent
        "DOWNLOAD" -> Just Download
        _ -> Nothing

instance ToText MyconfigRequestAccess'LicenseTypes where
    toText = \case
        Both -> "BOTH"
        Concurrent -> "CONCURRENT"
        Download -> "DOWNLOAD"

instance FromJSON MyconfigRequestAccess'LicenseTypes where
    parseJSON = parseJSONText "MyconfigRequestAccess'LicenseTypes"

instance ToJSON MyconfigRequestAccess'LicenseTypes where
    toJSON = toJSONText

-- | List of features supported by the client, i.e., \'RENTALS\'
data MyconfigSyncVolumeLicenses'Features
    = Rentals
      -- ^ @RENTALS@
      -- Client supports rentals.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MyconfigSyncVolumeLicenses'Features

instance FromText MyconfigSyncVolumeLicenses'Features where
    fromText = \case
        "RENTALS" -> Just Rentals
        _ -> Nothing

instance ToText MyconfigSyncVolumeLicenses'Features where
    toText = \case
        Rentals -> "RENTALS"

instance FromJSON MyconfigSyncVolumeLicenses'Features where
    parseJSON = parseJSONText "MyconfigSyncVolumeLicenses'Features"

instance ToJSON MyconfigSyncVolumeLicenses'Features where
    toJSON = toJSONText

-- | Action that caused this reading position to be set.
data MylibraryReadingpositionsSetPosition'Action
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

instance Hashable MylibraryReadingpositionsSetPosition'Action

instance FromText MylibraryReadingpositionsSetPosition'Action where
    fromText = \case
        "bookmark" -> Just Bookmark
        "chapter" -> Just Chapter
        "next-page" -> Just NextPage
        "prev-page" -> Just PrevPage
        "scroll" -> Just Scroll
        "search" -> Just Search
        _ -> Nothing

instance ToText MylibraryReadingpositionsSetPosition'Action where
    toText = \case
        Bookmark -> "bookmark"
        Chapter -> "chapter"
        NextPage -> "next-page"
        PrevPage -> "prev-page"
        Scroll -> "scroll"
        Search -> "search"

instance FromJSON MylibraryReadingpositionsSetPosition'Action where
    parseJSON = parseJSONText "MylibraryReadingpositionsSetPosition'Action"

instance ToJSON MylibraryReadingpositionsSetPosition'Action where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
data VolumesUseruploadedList'ProcessingState
    = VULPSCompletedFailed
      -- ^ @COMPLETED_FAILED@
      -- The volume processing hase failed.
    | VULPSCompletedSuccess
      -- ^ @COMPLETED_SUCCESS@
      -- The volume processing was completed.
    | VULPSRunning
      -- ^ @RUNNING@
      -- The volume processing is not completed.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesUseruploadedList'ProcessingState

instance FromText VolumesUseruploadedList'ProcessingState where
    fromText = \case
        "COMPLETED_FAILED" -> Just VULPSCompletedFailed
        "COMPLETED_SUCCESS" -> Just VULPSCompletedSuccess
        "RUNNING" -> Just VULPSRunning
        _ -> Nothing

instance ToText VolumesUseruploadedList'ProcessingState where
    toText = \case
        VULPSCompletedFailed -> "COMPLETED_FAILED"
        VULPSCompletedSuccess -> "COMPLETED_SUCCESS"
        VULPSRunning -> "RUNNING"

instance FromJSON VolumesUseruploadedList'ProcessingState where
    parseJSON = parseJSONText "VolumesUseruploadedList'ProcessingState"

instance ToJSON VolumesUseruploadedList'ProcessingState where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data VolumesRecommendedList'MaxAllowedMaturityRating
    = VRLMAMRMature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | VRLMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VolumesRecommendedList'MaxAllowedMaturityRating

instance FromText VolumesRecommendedList'MaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just VRLMAMRMature
        "not-mature" -> Just VRLMAMRNotMature
        _ -> Nothing

instance ToText VolumesRecommendedList'MaxAllowedMaturityRating where
    toText = \case
        VRLMAMRMature -> "mature"
        VRLMAMRNotMature -> "not-mature"

instance FromJSON VolumesRecommendedList'MaxAllowedMaturityRating where
    parseJSON = parseJSONText "VolumesRecommendedList'MaxAllowedMaturityRating"

instance ToJSON VolumesRecommendedList'MaxAllowedMaturityRating where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
data OnboardingListCategoryVolumes'MaxAllowedMaturityRating
    = OLCVMAMRMature
      -- ^ @mature@
      -- Show books which are rated mature or lower.
    | OLCVMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OnboardingListCategoryVolumes'MaxAllowedMaturityRating

instance FromText OnboardingListCategoryVolumes'MaxAllowedMaturityRating where
    fromText = \case
        "mature" -> Just OLCVMAMRMature
        "not-mature" -> Just OLCVMAMRNotMature
        _ -> Nothing

instance ToText OnboardingListCategoryVolumes'MaxAllowedMaturityRating where
    toText = \case
        OLCVMAMRMature -> "mature"
        OLCVMAMRNotMature -> "not-mature"

instance FromJSON OnboardingListCategoryVolumes'MaxAllowedMaturityRating where
    parseJSON = parseJSONText "OnboardingListCategoryVolumes'MaxAllowedMaturityRating"

instance ToJSON OnboardingListCategoryVolumes'MaxAllowedMaturityRating where
    toJSON = toJSONText
