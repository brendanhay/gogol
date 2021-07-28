{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Books.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Books.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Restrict information returned to a set of selected fields.
data VolumesListProjection
    = ProjectionUndefined
      -- ^ @PROJECTION_UNDEFINED@
    | Full
      -- ^ @FULL@
      -- Includes all volume data.
    | Lite
      -- ^ @LITE@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesListProjection

instance FromHttpApiData VolumesListProjection where
    parseQueryParam = \case
        "PROJECTION_UNDEFINED" -> Right ProjectionUndefined
        "FULL" -> Right Full
        "LITE" -> Right Lite
        x -> Left ("Unable to parse VolumesListProjection from: " <> x)

instance ToHttpApiData VolumesListProjection where
    toQueryParam = \case
        ProjectionUndefined -> "PROJECTION_UNDEFINED"
        Full -> "FULL"
        Lite -> "LITE"

instance FromJSON VolumesListProjection where
    parseJSON = parseJSONText "VolumesListProjection"

instance ToJSON VolumesListProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data MyLibraryBookshelvesVolumesListProjection
    = MLBVLPProjectionUndefined
      -- ^ @PROJECTION_UNDEFINED@
    | MLBVLPFull
      -- ^ @FULL@
      -- Includes all volume data.
    | MLBVLPLite
      -- ^ @LITE@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MyLibraryBookshelvesVolumesListProjection

instance FromHttpApiData MyLibraryBookshelvesVolumesListProjection where
    parseQueryParam = \case
        "PROJECTION_UNDEFINED" -> Right MLBVLPProjectionUndefined
        "FULL" -> Right MLBVLPFull
        "LITE" -> Right MLBVLPLite
        x -> Left ("Unable to parse MyLibraryBookshelvesVolumesListProjection from: " <> x)

instance ToHttpApiData MyLibraryBookshelvesVolumesListProjection where
    toQueryParam = \case
        MLBVLPProjectionUndefined -> "PROJECTION_UNDEFINED"
        MLBVLPFull -> "FULL"
        MLBVLPLite -> "LITE"

instance FromJSON MyLibraryBookshelvesVolumesListProjection where
    parseJSON = parseJSONText "MyLibraryBookshelvesVolumesListProjection"

instance ToJSON MyLibraryBookshelvesVolumesListProjection where
    toJSON = toJSONText

-- | Sort search results.
data VolumesListOrderBy
    = OrderByUndefined
      -- ^ @ORDER_BY_UNDEFINED@
    | Newest
      -- ^ @newest@
      -- Most recently published.
    | Relevance
      -- ^ @relevance@
      -- Relevance to search terms.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesListOrderBy

instance FromHttpApiData VolumesListOrderBy where
    parseQueryParam = \case
        "ORDER_BY_UNDEFINED" -> Right OrderByUndefined
        "newest" -> Right Newest
        "relevance" -> Right Relevance
        x -> Left ("Unable to parse VolumesListOrderBy from: " <> x)

instance ToHttpApiData VolumesListOrderBy where
    toQueryParam = \case
        OrderByUndefined -> "ORDER_BY_UNDEFINED"
        Newest -> "newest"
        Relevance -> "relevance"

instance FromJSON VolumesListOrderBy where
    parseJSON = parseJSONText "VolumesListOrderBy"

instance ToJSON VolumesListOrderBy where
    toJSON = toJSONText

-- | Restrict search to this user\'s library.
data VolumesListLibraryRestrict
    = LibraryRestrictUndefined
      -- ^ @LIBRARY_RESTRICT_UNDEFINED@
    | MyLibrary
      -- ^ @my-library@
      -- Restrict to the user\'s library, any shelf.
    | NoRestrict
      -- ^ @no-restrict@
      -- Do not restrict based on user\'s library.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesListLibraryRestrict

instance FromHttpApiData VolumesListLibraryRestrict where
    parseQueryParam = \case
        "LIBRARY_RESTRICT_UNDEFINED" -> Right LibraryRestrictUndefined
        "my-library" -> Right MyLibrary
        "no-restrict" -> Right NoRestrict
        x -> Left ("Unable to parse VolumesListLibraryRestrict from: " <> x)

instance ToHttpApiData VolumesListLibraryRestrict where
    toQueryParam = \case
        LibraryRestrictUndefined -> "LIBRARY_RESTRICT_UNDEFINED"
        MyLibrary -> "my-library"
        NoRestrict -> "no-restrict"

instance FromJSON VolumesListLibraryRestrict where
    parseJSON = parseJSONText "VolumesListLibraryRestrict"

instance ToJSON VolumesListLibraryRestrict where
    toJSON = toJSONText

-- | The reason for which the book is removed from the library.
data MyLibraryBookshelvesRemoveVolumeReason
    = ReasonUndefined
      -- ^ @REASON_UNDEFINED@
    | Onboarding
      -- ^ @ONBOARDING@
      -- Samples removed from the Onboarding flow.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MyLibraryBookshelvesRemoveVolumeReason

instance FromHttpApiData MyLibraryBookshelvesRemoveVolumeReason where
    parseQueryParam = \case
        "REASON_UNDEFINED" -> Right ReasonUndefined
        "ONBOARDING" -> Right Onboarding
        x -> Left ("Unable to parse MyLibraryBookshelvesRemoveVolumeReason from: " <> x)

instance ToHttpApiData MyLibraryBookshelvesRemoveVolumeReason where
    toQueryParam = \case
        ReasonUndefined -> "REASON_UNDEFINED"
        Onboarding -> "ONBOARDING"

instance FromJSON MyLibraryBookshelvesRemoveVolumeReason where
    parseJSON = parseJSONText "MyLibraryBookshelvesRemoveVolumeReason"

instance ToJSON MyLibraryBookshelvesRemoveVolumeReason where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
data OnboardingListCategoryVolumesMaxAllowedMaturityRating
    = MaxAllowedMaturityRatingUndefined
      -- ^ @MAX_ALLOWED_MATURITY_RATING_UNDEFINED@
    | Mature
      -- ^ @MATURE@
      -- Show books which are rated mature or lower.
    | NotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OnboardingListCategoryVolumesMaxAllowedMaturityRating

instance FromHttpApiData OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    parseQueryParam = \case
        "MAX_ALLOWED_MATURITY_RATING_UNDEFINED" -> Right MaxAllowedMaturityRatingUndefined
        "MATURE" -> Right Mature
        "not-mature" -> Right NotMature
        x -> Left ("Unable to parse OnboardingListCategoryVolumesMaxAllowedMaturityRating from: " <> x)

instance ToHttpApiData OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    toQueryParam = \case
        MaxAllowedMaturityRatingUndefined -> "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"
        Mature -> "MATURE"
        NotMature -> "not-mature"

instance FromJSON OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    parseJSON = parseJSONText "OnboardingListCategoryVolumesMaxAllowedMaturityRating"

instance ToJSON OnboardingListCategoryVolumesMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Restrict to volumes by download availability.
data VolumesListDownload
    = DownloadUndefined
      -- ^ @DOWNLOAD_UNDEFINED@
    | Epub
      -- ^ @EPUB@
      -- All volumes with epub.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesListDownload

instance FromHttpApiData VolumesListDownload where
    parseQueryParam = \case
        "DOWNLOAD_UNDEFINED" -> Right DownloadUndefined
        "EPUB" -> Right Epub
        x -> Left ("Unable to parse VolumesListDownload from: " <> x)

instance ToHttpApiData VolumesListDownload where
    toQueryParam = \case
        DownloadUndefined -> "DOWNLOAD_UNDEFINED"
        Epub -> "EPUB"

instance FromJSON VolumesListDownload where
    parseJSON = parseJSONText "VolumesListDownload"

instance ToJSON VolumesListDownload where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data VolumesGetProjection
    = VGPProjectionUndefined
      -- ^ @PROJECTION_UNDEFINED@
    | VGPFull
      -- ^ @FULL@
      -- Includes all volume data.
    | VGPLite
      -- ^ @LITE@
      -- Includes a subset of fields in volumeInfo and accessInfo.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesGetProjection

instance FromHttpApiData VolumesGetProjection where
    parseQueryParam = \case
        "PROJECTION_UNDEFINED" -> Right VGPProjectionUndefined
        "FULL" -> Right VGPFull
        "LITE" -> Right VGPLite
        x -> Left ("Unable to parse VolumesGetProjection from: " <> x)

instance ToHttpApiData VolumesGetProjection where
    toQueryParam = \case
        VGPProjectionUndefined -> "PROJECTION_UNDEFINED"
        VGPFull -> "FULL"
        VGPLite -> "LITE"

instance FromJSON VolumesGetProjection where
    parseJSON = parseJSONText "VolumesGetProjection"

instance ToJSON VolumesGetProjection where
    toJSON = toJSONText

-- | Association type.
data VolumesAssociatedListAssociation
    = AssociationUndefined
      -- ^ @ASSOCIATION_UNDEFINED@
    | EndOfSample
      -- ^ @end-of-sample@
      -- Recommendations for display end-of-sample.
    | EndOfVolume
      -- ^ @end-of-volume@
      -- Recommendations for display end-of-volume.
    | RelatedForPlay
      -- ^ @related-for-play@
      -- Related volumes for Play Store.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesAssociatedListAssociation

instance FromHttpApiData VolumesAssociatedListAssociation where
    parseQueryParam = \case
        "ASSOCIATION_UNDEFINED" -> Right AssociationUndefined
        "end-of-sample" -> Right EndOfSample
        "end-of-volume" -> Right EndOfVolume
        "related-for-play" -> Right RelatedForPlay
        x -> Left ("Unable to parse VolumesAssociatedListAssociation from: " <> x)

instance ToHttpApiData VolumesAssociatedListAssociation where
    toQueryParam = \case
        AssociationUndefined -> "ASSOCIATION_UNDEFINED"
        EndOfSample -> "end-of-sample"
        EndOfVolume -> "end-of-volume"
        RelatedForPlay -> "related-for-play"

instance FromJSON VolumesAssociatedListAssociation where
    parseJSON = parseJSONText "VolumesAssociatedListAssociation"

instance ToJSON VolumesAssociatedListAssociation where
    toJSON = toJSONText

-- | Rating to be given to the volume.
data VolumesRecommendedRateRating
    = RatingUndefined
      -- ^ @RATING_UNDEFINED@
    | HaveIt
      -- ^ @HAVE_IT@
      -- Rating indicating a dismissal due to ownership.
    | NotInterested
      -- ^ @NOT_INTERESTED@
      -- Rating indicating a negative dismissal of a volume.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesRecommendedRateRating

instance FromHttpApiData VolumesRecommendedRateRating where
    parseQueryParam = \case
        "RATING_UNDEFINED" -> Right RatingUndefined
        "HAVE_IT" -> Right HaveIt
        "NOT_INTERESTED" -> Right NotInterested
        x -> Left ("Unable to parse VolumesRecommendedRateRating from: " <> x)

instance ToHttpApiData VolumesRecommendedRateRating where
    toQueryParam = \case
        RatingUndefined -> "RATING_UNDEFINED"
        HaveIt -> "HAVE_IT"
        NotInterested -> "NOT_INTERESTED"

instance FromJSON VolumesRecommendedRateRating where
    parseJSON = parseJSONText "VolumesRecommendedRateRating"

instance ToJSON VolumesRecommendedRateRating where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
data VolumesUserUploadedListProcessingState
    = ProcessingStateUndefined
      -- ^ @PROCESSING_STATE_UNDEFINED@
    | CompletedFailed
      -- ^ @COMPLETED_FAILED@
      -- The volume processing hase failed.
    | CompletedSuccess
      -- ^ @COMPLETED_SUCCESS@
      -- The volume processing was completed.
    | Running
      -- ^ @RUNNING@
      -- The volume processing is not completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesUserUploadedListProcessingState

instance FromHttpApiData VolumesUserUploadedListProcessingState where
    parseQueryParam = \case
        "PROCESSING_STATE_UNDEFINED" -> Right ProcessingStateUndefined
        "COMPLETED_FAILED" -> Right CompletedFailed
        "COMPLETED_SUCCESS" -> Right CompletedSuccess
        "RUNNING" -> Right Running
        x -> Left ("Unable to parse VolumesUserUploadedListProcessingState from: " <> x)

instance ToHttpApiData VolumesUserUploadedListProcessingState where
    toQueryParam = \case
        ProcessingStateUndefined -> "PROCESSING_STATE_UNDEFINED"
        CompletedFailed -> "COMPLETED_FAILED"
        CompletedSuccess -> "COMPLETED_SUCCESS"
        Running -> "RUNNING"

instance FromJSON VolumesUserUploadedListProcessingState where
    parseJSON = parseJSONText "VolumesUserUploadedListProcessingState"

instance ToJSON VolumesUserUploadedListProcessingState where
    toJSON = toJSONText

-- | List of features supported by the client, i.e., \'RENTALS\'
data MyConfigSyncVolumeLicensesFeatures
    = FeaturesUndefined
      -- ^ @FEATURES_UNDEFINED@
    | Rentals
      -- ^ @RENTALS@
      -- Client supports rentals.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MyConfigSyncVolumeLicensesFeatures

instance FromHttpApiData MyConfigSyncVolumeLicensesFeatures where
    parseQueryParam = \case
        "FEATURES_UNDEFINED" -> Right FeaturesUndefined
        "RENTALS" -> Right Rentals
        x -> Left ("Unable to parse MyConfigSyncVolumeLicensesFeatures from: " <> x)

instance ToHttpApiData MyConfigSyncVolumeLicensesFeatures where
    toQueryParam = \case
        FeaturesUndefined -> "FEATURES_UNDEFINED"
        Rentals -> "RENTALS"

instance FromJSON MyConfigSyncVolumeLicensesFeatures where
    parseJSON = parseJSONText "MyConfigSyncVolumeLicensesFeatures"

instance ToJSON MyConfigSyncVolumeLicensesFeatures where
    toJSON = toJSONText

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data VolumesAssociatedListMaxAllowedMaturityRating
    = VALMAMRMaxAllowedMaturityRatingUndefined
      -- ^ @MAX_ALLOWED_MATURITY_RATING_UNDEFINED@
    | VALMAMRMature
      -- ^ @MATURE@
      -- Show books which are rated mature or lower.
    | VALMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesAssociatedListMaxAllowedMaturityRating

instance FromHttpApiData VolumesAssociatedListMaxAllowedMaturityRating where
    parseQueryParam = \case
        "MAX_ALLOWED_MATURITY_RATING_UNDEFINED" -> Right VALMAMRMaxAllowedMaturityRatingUndefined
        "MATURE" -> Right VALMAMRMature
        "not-mature" -> Right VALMAMRNotMature
        x -> Left ("Unable to parse VolumesAssociatedListMaxAllowedMaturityRating from: " <> x)

instance ToHttpApiData VolumesAssociatedListMaxAllowedMaturityRating where
    toQueryParam = \case
        VALMAMRMaxAllowedMaturityRatingUndefined -> "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"
        VALMAMRMature -> "MATURE"
        VALMAMRNotMature -> "not-mature"

instance FromJSON VolumesAssociatedListMaxAllowedMaturityRating where
    parseJSON = parseJSONText "VolumesAssociatedListMaxAllowedMaturityRating"

instance ToJSON VolumesAssociatedListMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Filter search results.
data VolumesListFilter
    = VLFFilterUndefined
      -- ^ @FILTER_UNDEFINED@
    | VLFEbooks
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesListFilter

instance FromHttpApiData VolumesListFilter where
    parseQueryParam = \case
        "FILTER_UNDEFINED" -> Right VLFFilterUndefined
        "ebooks" -> Right VLFEbooks
        "free-ebooks" -> Right VLFFreeEbooks
        "full" -> Right VLFFull
        "paid-ebooks" -> Right VLFPaidEbooks
        "partial" -> Right VLFPartial
        x -> Left ("Unable to parse VolumesListFilter from: " <> x)

instance ToHttpApiData VolumesListFilter where
    toQueryParam = \case
        VLFFilterUndefined -> "FILTER_UNDEFINED"
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
    = VRLMAMRMaxAllowedMaturityRatingUndefined
      -- ^ @MAX_ALLOWED_MATURITY_RATING_UNDEFINED@
    | VRLMAMRMature
      -- ^ @MATURE@
      -- Show books which are rated mature or lower.
    | VRLMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesRecommendedListMaxAllowedMaturityRating

instance FromHttpApiData VolumesRecommendedListMaxAllowedMaturityRating where
    parseQueryParam = \case
        "MAX_ALLOWED_MATURITY_RATING_UNDEFINED" -> Right VRLMAMRMaxAllowedMaturityRatingUndefined
        "MATURE" -> Right VRLMAMRMature
        "not-mature" -> Right VRLMAMRNotMature
        x -> Left ("Unable to parse VolumesRecommendedListMaxAllowedMaturityRating from: " <> x)

instance ToHttpApiData VolumesRecommendedListMaxAllowedMaturityRating where
    toQueryParam = \case
        VRLMAMRMaxAllowedMaturityRatingUndefined -> "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"
        VRLMAMRMature -> "MATURE"
        VRLMAMRNotMature -> "not-mature"

instance FromJSON VolumesRecommendedListMaxAllowedMaturityRating where
    parseJSON = parseJSONText "VolumesRecommendedListMaxAllowedMaturityRating"

instance ToJSON VolumesRecommendedListMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The reason for which the book is added to the library.
data MyLibraryBookshelvesAddVolumeReason
    = MLBAVRReasonUndefined
      -- ^ @REASON_UNDEFINED@
    | MLBAVRIosPrex
      -- ^ @IOS_PREX@
      -- Volumes added from the PREX flow on iOS.
    | MLBAVRIosSearch
      -- ^ @IOS_SEARCH@
      -- Volumes added from the Search flow on iOS.
    | MLBAVROnboarding
      -- ^ @ONBOARDING@
      -- Volumes added from the Onboarding flow.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MyLibraryBookshelvesAddVolumeReason

instance FromHttpApiData MyLibraryBookshelvesAddVolumeReason where
    parseQueryParam = \case
        "REASON_UNDEFINED" -> Right MLBAVRReasonUndefined
        "IOS_PREX" -> Right MLBAVRIosPrex
        "IOS_SEARCH" -> Right MLBAVRIosSearch
        "ONBOARDING" -> Right MLBAVROnboarding
        x -> Left ("Unable to parse MyLibraryBookshelvesAddVolumeReason from: " <> x)

instance ToHttpApiData MyLibraryBookshelvesAddVolumeReason where
    toQueryParam = \case
        MLBAVRReasonUndefined -> "REASON_UNDEFINED"
        MLBAVRIosPrex -> "IOS_PREX"
        MLBAVRIosSearch -> "IOS_SEARCH"
        MLBAVROnboarding -> "ONBOARDING"

instance FromJSON MyLibraryBookshelvesAddVolumeReason where
    parseJSON = parseJSONText "MyLibraryBookshelvesAddVolumeReason"

instance ToJSON MyLibraryBookshelvesAddVolumeReason where
    toJSON = toJSONText

-- | How the book was acquired
data VolumesMybooksListAcquireMethod
    = AcquireMethodUndefined
      -- ^ @ACQUIRE_METHOD_UNDEFINED@
    | FamilyShared
      -- ^ @FAMILY_SHARED@
      -- Books acquired via Family Sharing
    | PreOrdered
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesMybooksListAcquireMethod

instance FromHttpApiData VolumesMybooksListAcquireMethod where
    parseQueryParam = \case
        "ACQUIRE_METHOD_UNDEFINED" -> Right AcquireMethodUndefined
        "FAMILY_SHARED" -> Right FamilyShared
        "PREORDERED" -> Right PreOrdered
        "PREVIOUSLY_RENTED" -> Right PreviouslyRented
        "PUBLIC_DOMAIN" -> Right PublicDomain
        "PURCHASED" -> Right Purchased
        "RENTED" -> Right Rented
        "SAMPLE" -> Right Sample
        "UPLOADED" -> Right Uploaded
        x -> Left ("Unable to parse VolumesMybooksListAcquireMethod from: " <> x)

instance ToHttpApiData VolumesMybooksListAcquireMethod where
    toQueryParam = \case
        AcquireMethodUndefined -> "ACQUIRE_METHOD_UNDEFINED"
        FamilyShared -> "FAMILY_SHARED"
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
    = PGMAMRMaxAllowedMaturityRatingUndefined
      -- ^ @MAX_ALLOWED_MATURITY_RATING_UNDEFINED@
    | PGMAMRMature
      -- ^ @MATURE@
      -- Show books which are rated mature or lower.
    | PGMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PersonalizedstreamGetMaxAllowedMaturityRating

instance FromHttpApiData PersonalizedstreamGetMaxAllowedMaturityRating where
    parseQueryParam = \case
        "MAX_ALLOWED_MATURITY_RATING_UNDEFINED" -> Right PGMAMRMaxAllowedMaturityRatingUndefined
        "MATURE" -> Right PGMAMRMature
        "not-mature" -> Right PGMAMRNotMature
        x -> Left ("Unable to parse PersonalizedstreamGetMaxAllowedMaturityRating from: " <> x)

instance ToHttpApiData PersonalizedstreamGetMaxAllowedMaturityRating where
    toQueryParam = \case
        PGMAMRMaxAllowedMaturityRatingUndefined -> "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"
        PGMAMRMature -> "MATURE"
        PGMAMRNotMature -> "not-mature"

instance FromJSON PersonalizedstreamGetMaxAllowedMaturityRating where
    parseJSON = parseJSONText "PersonalizedstreamGetMaxAllowedMaturityRating"

instance ToJSON PersonalizedstreamGetMaxAllowedMaturityRating where
    toJSON = toJSONText

-- | Restrict to books or magazines.
data VolumesListPrintType
    = PrintTypeUndefined
      -- ^ @PRINT_TYPE_UNDEFINED@
    | All
      -- ^ @ALL@
      -- All volume content types.
    | Books
      -- ^ @BOOKS@
      -- Just books.
    | Magazines
      -- ^ @MAGAZINES@
      -- Just magazines.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesListPrintType

instance FromHttpApiData VolumesListPrintType where
    parseQueryParam = \case
        "PRINT_TYPE_UNDEFINED" -> Right PrintTypeUndefined
        "ALL" -> Right All
        "BOOKS" -> Right Books
        "MAGAZINES" -> Right Magazines
        x -> Left ("Unable to parse VolumesListPrintType from: " <> x)

instance ToHttpApiData VolumesListPrintType where
    toQueryParam = \case
        PrintTypeUndefined -> "PRINT_TYPE_UNDEFINED"
        All -> "ALL"
        Books -> "BOOKS"
        Magazines -> "MAGAZINES"

instance FromJSON VolumesListPrintType where
    parseJSON = parseJSONText "VolumesListPrintType"

instance ToJSON VolumesListPrintType where
    toJSON = toJSONText

-- | The processing state of the user uploaded volumes to be returned.
-- Applicable only if the UPLOADED is specified in the acquireMethod.
data VolumesMybooksListProcessingState
    = VMLPSProcessingStateUndefined
      -- ^ @PROCESSING_STATE_UNDEFINED@
    | VMLPSCompletedFailed
      -- ^ @COMPLETED_FAILED@
      -- The volume processing hase failed.
    | VMLPSCompletedSuccess
      -- ^ @COMPLETED_SUCCESS@
      -- The volume processing was completed.
    | VMLPSRunning
      -- ^ @RUNNING@
      -- The volume processing is not completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesMybooksListProcessingState

instance FromHttpApiData VolumesMybooksListProcessingState where
    parseQueryParam = \case
        "PROCESSING_STATE_UNDEFINED" -> Right VMLPSProcessingStateUndefined
        "COMPLETED_FAILED" -> Right VMLPSCompletedFailed
        "COMPLETED_SUCCESS" -> Right VMLPSCompletedSuccess
        "RUNNING" -> Right VMLPSRunning
        x -> Left ("Unable to parse VolumesMybooksListProcessingState from: " <> x)

instance ToHttpApiData VolumesMybooksListProcessingState where
    toQueryParam = \case
        VMLPSProcessingStateUndefined -> "PROCESSING_STATE_UNDEFINED"
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
    = LicenseTypesUndefined
      -- ^ @LICENSE_TYPES_UNDEFINED@
    | Both
      -- ^ @BOTH@
      -- Both concurrent and download licenses.
    | Concurrent
      -- ^ @CONCURRENT@
      -- Concurrent access license.
    | Download
      -- ^ @DOWNLOAD@
      -- Offline download access license.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MyConfigRequestAccessLicenseTypes

instance FromHttpApiData MyConfigRequestAccessLicenseTypes where
    parseQueryParam = \case
        "LICENSE_TYPES_UNDEFINED" -> Right LicenseTypesUndefined
        "BOTH" -> Right Both
        "CONCURRENT" -> Right Concurrent
        "DOWNLOAD" -> Right Download
        x -> Left ("Unable to parse MyConfigRequestAccessLicenseTypes from: " <> x)

instance ToHttpApiData MyConfigRequestAccessLicenseTypes where
    toQueryParam = \case
        LicenseTypesUndefined -> "LICENSE_TYPES_UNDEFINED"
        Both -> "BOTH"
        Concurrent -> "CONCURRENT"
        Download -> "DOWNLOAD"

instance FromJSON MyConfigRequestAccessLicenseTypes where
    parseJSON = parseJSONText "MyConfigRequestAccessLicenseTypes"

instance ToJSON MyConfigRequestAccessLicenseTypes where
    toJSON = toJSONText

-- | Action that caused this reading position to be set.
data MyLibraryReadingPositionsSetPositionAction
    = ActionUndefined
      -- ^ @ACTION_UNDEFINED@
    | Bookmark
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MyLibraryReadingPositionsSetPositionAction

instance FromHttpApiData MyLibraryReadingPositionsSetPositionAction where
    parseQueryParam = \case
        "ACTION_UNDEFINED" -> Right ActionUndefined
        "bookmark" -> Right Bookmark
        "chapter" -> Right Chapter
        "next-page" -> Right NextPage
        "prev-page" -> Right PrevPage
        "scroll" -> Right Scroll
        "search" -> Right Search
        x -> Left ("Unable to parse MyLibraryReadingPositionsSetPositionAction from: " <> x)

instance ToHttpApiData MyLibraryReadingPositionsSetPositionAction where
    toQueryParam = \case
        ActionUndefined -> "ACTION_UNDEFINED"
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

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
data VolumesListMaxAllowedMaturityRating
    = VLMAMRMaxAllowedMaturityRatingUndefined
      -- ^ @MAX_ALLOWED_MATURITY_RATING_UNDEFINED@
    | VLMAMRMature
      -- ^ @MATURE@
      -- Show books which are rated mature or lower.
    | VLMAMRNotMature
      -- ^ @not-mature@
      -- Show books which are rated not mature.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VolumesListMaxAllowedMaturityRating

instance FromHttpApiData VolumesListMaxAllowedMaturityRating where
    parseQueryParam = \case
        "MAX_ALLOWED_MATURITY_RATING_UNDEFINED" -> Right VLMAMRMaxAllowedMaturityRatingUndefined
        "MATURE" -> Right VLMAMRMature
        "not-mature" -> Right VLMAMRNotMature
        x -> Left ("Unable to parse VolumesListMaxAllowedMaturityRating from: " <> x)

instance ToHttpApiData VolumesListMaxAllowedMaturityRating where
    toQueryParam = \case
        VLMAMRMaxAllowedMaturityRatingUndefined -> "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"
        VLMAMRMature -> "MATURE"
        VLMAMRNotMature -> "not-mature"

instance FromJSON VolumesListMaxAllowedMaturityRating where
    parseJSON = parseJSONText "VolumesListMaxAllowedMaturityRating"

instance ToJSON VolumesListMaxAllowedMaturityRating where
    toJSON = toJSONText
