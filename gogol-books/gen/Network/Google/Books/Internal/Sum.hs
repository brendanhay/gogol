{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Books.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Books.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * MyconfigRequestAccessLicenseTypes
    MyconfigRequestAccessLicenseTypes
      ( MyconfigRequestAccessLicenseTypes_LICENSETYPESUNDEFINED,
        MyconfigRequestAccessLicenseTypes_Both,
        MyconfigRequestAccessLicenseTypes_Concurrent,
        MyconfigRequestAccessLicenseTypes_Download,
        ..
      ),

    -- * MyconfigSyncVolumeLicensesFeatures
    MyconfigSyncVolumeLicensesFeatures
      ( MyconfigSyncVolumeLicensesFeatures_FEATURESUNDEFINED,
        MyconfigSyncVolumeLicensesFeatures_Rentals,
        ..
      ),

    -- * MylibraryBookshelvesAddVolumeReason
    MylibraryBookshelvesAddVolumeReason
      ( MylibraryBookshelvesAddVolumeReason_REASONUNDEFINED,
        MylibraryBookshelvesAddVolumeReason_IOSPREX,
        MylibraryBookshelvesAddVolumeReason_IOSSEARCH,
        MylibraryBookshelvesAddVolumeReason_Onboarding,
        ..
      ),

    -- * MylibraryBookshelvesRemoveVolumeReason
    MylibraryBookshelvesRemoveVolumeReason
      ( MylibraryBookshelvesRemoveVolumeReason_REASONUNDEFINED,
        MylibraryBookshelvesRemoveVolumeReason_Onboarding,
        ..
      ),

    -- * MylibraryBookshelvesVolumesListProjection
    MylibraryBookshelvesVolumesListProjection
      ( MylibraryBookshelvesVolumesListProjection_PROJECTIONUNDEFINED,
        MylibraryBookshelvesVolumesListProjection_Full,
        MylibraryBookshelvesVolumesListProjection_Lite,
        ..
      ),

    -- * MylibraryReadingpositionsSetPositionAction
    MylibraryReadingpositionsSetPositionAction
      ( MylibraryReadingpositionsSetPositionAction_ACTIONUNDEFINED,
        MylibraryReadingpositionsSetPositionAction_Bookmark,
        MylibraryReadingpositionsSetPositionAction_Chapter,
        MylibraryReadingpositionsSetPositionAction_NextPage,
        MylibraryReadingpositionsSetPositionAction_PrevPage,
        MylibraryReadingpositionsSetPositionAction_Scroll,
        MylibraryReadingpositionsSetPositionAction_Search,
        ..
      ),

    -- * OnboardingListCategoryVolumesMaxAllowedMaturityRating
    OnboardingListCategoryVolumesMaxAllowedMaturityRating
      ( OnboardingListCategoryVolumesMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
        OnboardingListCategoryVolumesMaxAllowedMaturityRating_Mature,
        OnboardingListCategoryVolumesMaxAllowedMaturityRating_NotMature,
        ..
      ),

    -- * PersonalizedstreamGetMaxAllowedMaturityRating
    PersonalizedstreamGetMaxAllowedMaturityRating
      ( PersonalizedstreamGetMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
        PersonalizedstreamGetMaxAllowedMaturityRating_Mature,
        PersonalizedstreamGetMaxAllowedMaturityRating_NotMature,
        ..
      ),

    -- * VolumesAssociatedListAssociation
    VolumesAssociatedListAssociation
      ( VolumesAssociatedListAssociation_ASSOCIATIONUNDEFINED,
        VolumesAssociatedListAssociation_EndOfSample,
        VolumesAssociatedListAssociation_EndOfVolume,
        VolumesAssociatedListAssociation_RelatedForPlay,
        ..
      ),

    -- * VolumesAssociatedListMaxAllowedMaturityRating
    VolumesAssociatedListMaxAllowedMaturityRating
      ( VolumesAssociatedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
        VolumesAssociatedListMaxAllowedMaturityRating_Mature,
        VolumesAssociatedListMaxAllowedMaturityRating_NotMature,
        ..
      ),

    -- * VolumesGetProjection
    VolumesGetProjection
      ( VolumesGetProjection_PROJECTIONUNDEFINED,
        VolumesGetProjection_Full,
        VolumesGetProjection_Lite,
        ..
      ),

    -- * VolumesListDownload
    VolumesListDownload
      ( VolumesListDownload_DOWNLOADUNDEFINED,
        VolumesListDownload_Epub,
        ..
      ),

    -- * VolumesListFilter
    VolumesListFilter
      ( VolumesListFilter_FILTERUNDEFINED,
        VolumesListFilter_Ebooks,
        VolumesListFilter_FreeEbooks,
        VolumesListFilter_Full,
        VolumesListFilter_PaidEbooks,
        VolumesListFilter_Partial,
        ..
      ),

    -- * VolumesListLibraryRestrict
    VolumesListLibraryRestrict
      ( VolumesListLibraryRestrict_LIBRARYRESTRICTUNDEFINED,
        VolumesListLibraryRestrict_MyLibrary,
        VolumesListLibraryRestrict_NoRestrict,
        ..
      ),

    -- * VolumesListMaxAllowedMaturityRating
    VolumesListMaxAllowedMaturityRating
      ( VolumesListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
        VolumesListMaxAllowedMaturityRating_Mature,
        VolumesListMaxAllowedMaturityRating_NotMature,
        ..
      ),

    -- * VolumesListOrderBy
    VolumesListOrderBy
      ( VolumesListOrderBy_ORDERBYUNDEFINED,
        VolumesListOrderBy_Newest,
        VolumesListOrderBy_Relevance,
        ..
      ),

    -- * VolumesListPrintType
    VolumesListPrintType
      ( VolumesListPrintType_PRINTTYPEUNDEFINED,
        VolumesListPrintType_All,
        VolumesListPrintType_Books,
        VolumesListPrintType_Magazines,
        ..
      ),

    -- * VolumesListProjection
    VolumesListProjection
      ( VolumesListProjection_PROJECTIONUNDEFINED,
        VolumesListProjection_Full,
        VolumesListProjection_Lite,
        ..
      ),

    -- * VolumesMybooksListAcquireMethod
    VolumesMybooksListAcquireMethod
      ( VolumesMybooksListAcquireMethod_ACQUIREMETHODUNDEFINED,
        VolumesMybooksListAcquireMethod_FAMILYSHARED,
        VolumesMybooksListAcquireMethod_Preordered,
        VolumesMybooksListAcquireMethod_PREVIOUSLYRENTED,
        VolumesMybooksListAcquireMethod_PUBLICDOMAIN,
        VolumesMybooksListAcquireMethod_Purchased,
        VolumesMybooksListAcquireMethod_Rented,
        VolumesMybooksListAcquireMethod_Sample,
        VolumesMybooksListAcquireMethod_Uploaded,
        ..
      ),

    -- * VolumesMybooksListProcessingState
    VolumesMybooksListProcessingState
      ( VolumesMybooksListProcessingState_PROCESSINGSTATEUNDEFINED,
        VolumesMybooksListProcessingState_COMPLETEDFAILED,
        VolumesMybooksListProcessingState_COMPLETEDSUCCESS,
        VolumesMybooksListProcessingState_Running,
        ..
      ),

    -- * VolumesRecommendedListMaxAllowedMaturityRating
    VolumesRecommendedListMaxAllowedMaturityRating
      ( VolumesRecommendedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
        VolumesRecommendedListMaxAllowedMaturityRating_Mature,
        VolumesRecommendedListMaxAllowedMaturityRating_NotMature,
        ..
      ),

    -- * VolumesRecommendedRateRating
    VolumesRecommendedRateRating
      ( VolumesRecommendedRateRating_RATINGUNDEFINED,
        VolumesRecommendedRateRating_HAVEIT,
        VolumesRecommendedRateRating_NOTINTERESTED,
        ..
      ),

    -- * VolumesUseruploadedListProcessingState
    VolumesUseruploadedListProcessingState
      ( VolumesUseruploadedListProcessingState_PROCESSINGSTATEUNDEFINED,
        VolumesUseruploadedListProcessingState_COMPLETEDFAILED,
        VolumesUseruploadedListProcessingState_COMPLETEDSUCCESS,
        VolumesUseruploadedListProcessingState_Running,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The type of access license to request. If not specified, the default is BOTH.
newtype MyconfigRequestAccessLicenseTypes = MyconfigRequestAccessLicenseTypes {fromMyconfigRequestAccessLicenseTypes :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern MyconfigRequestAccessLicenseTypes_LICENSETYPESUNDEFINED :: MyconfigRequestAccessLicenseTypes
pattern MyconfigRequestAccessLicenseTypes_LICENSETYPESUNDEFINED = MyconfigRequestAccessLicenseTypes "LICENSE_TYPES_UNDEFINED"

-- | Both concurrent and download licenses.
pattern MyconfigRequestAccessLicenseTypes_Both :: MyconfigRequestAccessLicenseTypes
pattern MyconfigRequestAccessLicenseTypes_Both = MyconfigRequestAccessLicenseTypes "BOTH"

-- | Concurrent access license.
pattern MyconfigRequestAccessLicenseTypes_Concurrent :: MyconfigRequestAccessLicenseTypes
pattern MyconfigRequestAccessLicenseTypes_Concurrent = MyconfigRequestAccessLicenseTypes "CONCURRENT"

-- | Offline download access license.
pattern MyconfigRequestAccessLicenseTypes_Download :: MyconfigRequestAccessLicenseTypes
pattern MyconfigRequestAccessLicenseTypes_Download = MyconfigRequestAccessLicenseTypes "DOWNLOAD"

{-# COMPLETE
  MyconfigRequestAccessLicenseTypes_LICENSETYPESUNDEFINED,
  MyconfigRequestAccessLicenseTypes_Both,
  MyconfigRequestAccessLicenseTypes_Concurrent,
  MyconfigRequestAccessLicenseTypes_Download,
  MyconfigRequestAccessLicenseTypes
  #-}

-- | List of features supported by the client, i.e., \'RENTALS\'
newtype MyconfigSyncVolumeLicensesFeatures = MyconfigSyncVolumeLicensesFeatures {fromMyconfigSyncVolumeLicensesFeatures :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern MyconfigSyncVolumeLicensesFeatures_FEATURESUNDEFINED :: MyconfigSyncVolumeLicensesFeatures
pattern MyconfigSyncVolumeLicensesFeatures_FEATURESUNDEFINED = MyconfigSyncVolumeLicensesFeatures "FEATURES_UNDEFINED"

-- | Client supports rentals.
pattern MyconfigSyncVolumeLicensesFeatures_Rentals :: MyconfigSyncVolumeLicensesFeatures
pattern MyconfigSyncVolumeLicensesFeatures_Rentals = MyconfigSyncVolumeLicensesFeatures "RENTALS"

{-# COMPLETE
  MyconfigSyncVolumeLicensesFeatures_FEATURESUNDEFINED,
  MyconfigSyncVolumeLicensesFeatures_Rentals,
  MyconfigSyncVolumeLicensesFeatures
  #-}

-- | The reason for which the book is added to the library.
newtype MylibraryBookshelvesAddVolumeReason = MylibraryBookshelvesAddVolumeReason {fromMylibraryBookshelvesAddVolumeReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern MylibraryBookshelvesAddVolumeReason_REASONUNDEFINED :: MylibraryBookshelvesAddVolumeReason
pattern MylibraryBookshelvesAddVolumeReason_REASONUNDEFINED = MylibraryBookshelvesAddVolumeReason "REASON_UNDEFINED"

-- | Volumes added from the PREX flow on iOS.
pattern MylibraryBookshelvesAddVolumeReason_IOSPREX :: MylibraryBookshelvesAddVolumeReason
pattern MylibraryBookshelvesAddVolumeReason_IOSPREX = MylibraryBookshelvesAddVolumeReason "IOS_PREX"

-- | Volumes added from the Search flow on iOS.
pattern MylibraryBookshelvesAddVolumeReason_IOSSEARCH :: MylibraryBookshelvesAddVolumeReason
pattern MylibraryBookshelvesAddVolumeReason_IOSSEARCH = MylibraryBookshelvesAddVolumeReason "IOS_SEARCH"

-- | Volumes added from the Onboarding flow.
pattern MylibraryBookshelvesAddVolumeReason_Onboarding :: MylibraryBookshelvesAddVolumeReason
pattern MylibraryBookshelvesAddVolumeReason_Onboarding = MylibraryBookshelvesAddVolumeReason "ONBOARDING"

{-# COMPLETE
  MylibraryBookshelvesAddVolumeReason_REASONUNDEFINED,
  MylibraryBookshelvesAddVolumeReason_IOSPREX,
  MylibraryBookshelvesAddVolumeReason_IOSSEARCH,
  MylibraryBookshelvesAddVolumeReason_Onboarding,
  MylibraryBookshelvesAddVolumeReason
  #-}

-- | The reason for which the book is removed from the library.
newtype MylibraryBookshelvesRemoveVolumeReason = MylibraryBookshelvesRemoveVolumeReason {fromMylibraryBookshelvesRemoveVolumeReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern MylibraryBookshelvesRemoveVolumeReason_REASONUNDEFINED :: MylibraryBookshelvesRemoveVolumeReason
pattern MylibraryBookshelvesRemoveVolumeReason_REASONUNDEFINED = MylibraryBookshelvesRemoveVolumeReason "REASON_UNDEFINED"

-- | Samples removed from the Onboarding flow.
pattern MylibraryBookshelvesRemoveVolumeReason_Onboarding :: MylibraryBookshelvesRemoveVolumeReason
pattern MylibraryBookshelvesRemoveVolumeReason_Onboarding = MylibraryBookshelvesRemoveVolumeReason "ONBOARDING"

{-# COMPLETE
  MylibraryBookshelvesRemoveVolumeReason_REASONUNDEFINED,
  MylibraryBookshelvesRemoveVolumeReason_Onboarding,
  MylibraryBookshelvesRemoveVolumeReason
  #-}

-- | Restrict information returned to a set of selected fields.
newtype MylibraryBookshelvesVolumesListProjection = MylibraryBookshelvesVolumesListProjection {fromMylibraryBookshelvesVolumesListProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern MylibraryBookshelvesVolumesListProjection_PROJECTIONUNDEFINED :: MylibraryBookshelvesVolumesListProjection
pattern MylibraryBookshelvesVolumesListProjection_PROJECTIONUNDEFINED = MylibraryBookshelvesVolumesListProjection "PROJECTION_UNDEFINED"

-- | Includes all volume data.
pattern MylibraryBookshelvesVolumesListProjection_Full :: MylibraryBookshelvesVolumesListProjection
pattern MylibraryBookshelvesVolumesListProjection_Full = MylibraryBookshelvesVolumesListProjection "FULL"

-- | Includes a subset of fields in volumeInfo and accessInfo.
pattern MylibraryBookshelvesVolumesListProjection_Lite :: MylibraryBookshelvesVolumesListProjection
pattern MylibraryBookshelvesVolumesListProjection_Lite = MylibraryBookshelvesVolumesListProjection "LITE"

{-# COMPLETE
  MylibraryBookshelvesVolumesListProjection_PROJECTIONUNDEFINED,
  MylibraryBookshelvesVolumesListProjection_Full,
  MylibraryBookshelvesVolumesListProjection_Lite,
  MylibraryBookshelvesVolumesListProjection
  #-}

-- | Action that caused this reading position to be set.
newtype MylibraryReadingpositionsSetPositionAction = MylibraryReadingpositionsSetPositionAction {fromMylibraryReadingpositionsSetPositionAction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern MylibraryReadingpositionsSetPositionAction_ACTIONUNDEFINED :: MylibraryReadingpositionsSetPositionAction
pattern MylibraryReadingpositionsSetPositionAction_ACTIONUNDEFINED = MylibraryReadingpositionsSetPositionAction "ACTION_UNDEFINED"

-- | User chose bookmark within volume.
pattern MylibraryReadingpositionsSetPositionAction_Bookmark :: MylibraryReadingpositionsSetPositionAction
pattern MylibraryReadingpositionsSetPositionAction_Bookmark = MylibraryReadingpositionsSetPositionAction "bookmark"

-- | User selected chapter from list.
pattern MylibraryReadingpositionsSetPositionAction_Chapter :: MylibraryReadingpositionsSetPositionAction
pattern MylibraryReadingpositionsSetPositionAction_Chapter = MylibraryReadingpositionsSetPositionAction "chapter"

-- | Next page event.
pattern MylibraryReadingpositionsSetPositionAction_NextPage :: MylibraryReadingpositionsSetPositionAction
pattern MylibraryReadingpositionsSetPositionAction_NextPage = MylibraryReadingpositionsSetPositionAction "next-page"

-- | Previous page event.
pattern MylibraryReadingpositionsSetPositionAction_PrevPage :: MylibraryReadingpositionsSetPositionAction
pattern MylibraryReadingpositionsSetPositionAction_PrevPage = MylibraryReadingpositionsSetPositionAction "prev-page"

-- | User navigated to page.
pattern MylibraryReadingpositionsSetPositionAction_Scroll :: MylibraryReadingpositionsSetPositionAction
pattern MylibraryReadingpositionsSetPositionAction_Scroll = MylibraryReadingpositionsSetPositionAction "scroll"

-- | User chose search results within volume.
pattern MylibraryReadingpositionsSetPositionAction_Search :: MylibraryReadingpositionsSetPositionAction
pattern MylibraryReadingpositionsSetPositionAction_Search = MylibraryReadingpositionsSetPositionAction "search"

{-# COMPLETE
  MylibraryReadingpositionsSetPositionAction_ACTIONUNDEFINED,
  MylibraryReadingpositionsSetPositionAction_Bookmark,
  MylibraryReadingpositionsSetPositionAction_Chapter,
  MylibraryReadingpositionsSetPositionAction_NextPage,
  MylibraryReadingpositionsSetPositionAction_PrevPage,
  MylibraryReadingpositionsSetPositionAction_Scroll,
  MylibraryReadingpositionsSetPositionAction_Search,
  MylibraryReadingpositionsSetPositionAction
  #-}

-- | The maximum allowed maturity rating of returned volumes. Books with a higher maturity rating are filtered out.
newtype OnboardingListCategoryVolumesMaxAllowedMaturityRating = OnboardingListCategoryVolumesMaxAllowedMaturityRating {fromOnboardingListCategoryVolumesMaxAllowedMaturityRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern OnboardingListCategoryVolumesMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED :: OnboardingListCategoryVolumesMaxAllowedMaturityRating
pattern OnboardingListCategoryVolumesMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED = OnboardingListCategoryVolumesMaxAllowedMaturityRating "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"

-- | Show books which are rated mature or lower.
pattern OnboardingListCategoryVolumesMaxAllowedMaturityRating_Mature :: OnboardingListCategoryVolumesMaxAllowedMaturityRating
pattern OnboardingListCategoryVolumesMaxAllowedMaturityRating_Mature = OnboardingListCategoryVolumesMaxAllowedMaturityRating "MATURE"

-- | Show books which are rated not mature.
pattern OnboardingListCategoryVolumesMaxAllowedMaturityRating_NotMature :: OnboardingListCategoryVolumesMaxAllowedMaturityRating
pattern OnboardingListCategoryVolumesMaxAllowedMaturityRating_NotMature = OnboardingListCategoryVolumesMaxAllowedMaturityRating "not-mature"

{-# COMPLETE
  OnboardingListCategoryVolumesMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
  OnboardingListCategoryVolumesMaxAllowedMaturityRating_Mature,
  OnboardingListCategoryVolumesMaxAllowedMaturityRating_NotMature,
  OnboardingListCategoryVolumesMaxAllowedMaturityRating
  #-}

-- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
newtype PersonalizedstreamGetMaxAllowedMaturityRating = PersonalizedstreamGetMaxAllowedMaturityRating {fromPersonalizedstreamGetMaxAllowedMaturityRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PersonalizedstreamGetMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED :: PersonalizedstreamGetMaxAllowedMaturityRating
pattern PersonalizedstreamGetMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED = PersonalizedstreamGetMaxAllowedMaturityRating "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"

-- | Show books which are rated mature or lower.
pattern PersonalizedstreamGetMaxAllowedMaturityRating_Mature :: PersonalizedstreamGetMaxAllowedMaturityRating
pattern PersonalizedstreamGetMaxAllowedMaturityRating_Mature = PersonalizedstreamGetMaxAllowedMaturityRating "MATURE"

-- | Show books which are rated not mature.
pattern PersonalizedstreamGetMaxAllowedMaturityRating_NotMature :: PersonalizedstreamGetMaxAllowedMaturityRating
pattern PersonalizedstreamGetMaxAllowedMaturityRating_NotMature = PersonalizedstreamGetMaxAllowedMaturityRating "not-mature"

{-# COMPLETE
  PersonalizedstreamGetMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
  PersonalizedstreamGetMaxAllowedMaturityRating_Mature,
  PersonalizedstreamGetMaxAllowedMaturityRating_NotMature,
  PersonalizedstreamGetMaxAllowedMaturityRating
  #-}

-- | Association type.
newtype VolumesAssociatedListAssociation = VolumesAssociatedListAssociation {fromVolumesAssociatedListAssociation :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesAssociatedListAssociation_ASSOCIATIONUNDEFINED :: VolumesAssociatedListAssociation
pattern VolumesAssociatedListAssociation_ASSOCIATIONUNDEFINED = VolumesAssociatedListAssociation "ASSOCIATION_UNDEFINED"

-- | Recommendations for display end-of-sample.
pattern VolumesAssociatedListAssociation_EndOfSample :: VolumesAssociatedListAssociation
pattern VolumesAssociatedListAssociation_EndOfSample = VolumesAssociatedListAssociation "end-of-sample"

-- | Recommendations for display end-of-volume.
pattern VolumesAssociatedListAssociation_EndOfVolume :: VolumesAssociatedListAssociation
pattern VolumesAssociatedListAssociation_EndOfVolume = VolumesAssociatedListAssociation "end-of-volume"

-- | Related volumes for Play Store.
pattern VolumesAssociatedListAssociation_RelatedForPlay :: VolumesAssociatedListAssociation
pattern VolumesAssociatedListAssociation_RelatedForPlay = VolumesAssociatedListAssociation "related-for-play"

{-# COMPLETE
  VolumesAssociatedListAssociation_ASSOCIATIONUNDEFINED,
  VolumesAssociatedListAssociation_EndOfSample,
  VolumesAssociatedListAssociation_EndOfVolume,
  VolumesAssociatedListAssociation_RelatedForPlay,
  VolumesAssociatedListAssociation
  #-}

-- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
newtype VolumesAssociatedListMaxAllowedMaturityRating = VolumesAssociatedListMaxAllowedMaturityRating {fromVolumesAssociatedListMaxAllowedMaturityRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesAssociatedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED :: VolumesAssociatedListMaxAllowedMaturityRating
pattern VolumesAssociatedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED = VolumesAssociatedListMaxAllowedMaturityRating "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"

-- | Show books which are rated mature or lower.
pattern VolumesAssociatedListMaxAllowedMaturityRating_Mature :: VolumesAssociatedListMaxAllowedMaturityRating
pattern VolumesAssociatedListMaxAllowedMaturityRating_Mature = VolumesAssociatedListMaxAllowedMaturityRating "MATURE"

-- | Show books which are rated not mature.
pattern VolumesAssociatedListMaxAllowedMaturityRating_NotMature :: VolumesAssociatedListMaxAllowedMaturityRating
pattern VolumesAssociatedListMaxAllowedMaturityRating_NotMature = VolumesAssociatedListMaxAllowedMaturityRating "not-mature"

{-# COMPLETE
  VolumesAssociatedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
  VolumesAssociatedListMaxAllowedMaturityRating_Mature,
  VolumesAssociatedListMaxAllowedMaturityRating_NotMature,
  VolumesAssociatedListMaxAllowedMaturityRating
  #-}

-- | Restrict information returned to a set of selected fields.
newtype VolumesGetProjection = VolumesGetProjection {fromVolumesGetProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesGetProjection_PROJECTIONUNDEFINED :: VolumesGetProjection
pattern VolumesGetProjection_PROJECTIONUNDEFINED = VolumesGetProjection "PROJECTION_UNDEFINED"

-- | Includes all volume data.
pattern VolumesGetProjection_Full :: VolumesGetProjection
pattern VolumesGetProjection_Full = VolumesGetProjection "FULL"

-- | Includes a subset of fields in volumeInfo and accessInfo.
pattern VolumesGetProjection_Lite :: VolumesGetProjection
pattern VolumesGetProjection_Lite = VolumesGetProjection "LITE"

{-# COMPLETE
  VolumesGetProjection_PROJECTIONUNDEFINED,
  VolumesGetProjection_Full,
  VolumesGetProjection_Lite,
  VolumesGetProjection
  #-}

-- | Restrict to volumes by download availability.
newtype VolumesListDownload = VolumesListDownload {fromVolumesListDownload :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesListDownload_DOWNLOADUNDEFINED :: VolumesListDownload
pattern VolumesListDownload_DOWNLOADUNDEFINED = VolumesListDownload "DOWNLOAD_UNDEFINED"

-- | All volumes with epub.
pattern VolumesListDownload_Epub :: VolumesListDownload
pattern VolumesListDownload_Epub = VolumesListDownload "EPUB"

{-# COMPLETE
  VolumesListDownload_DOWNLOADUNDEFINED,
  VolumesListDownload_Epub,
  VolumesListDownload
  #-}

-- | Filter search results.
newtype VolumesListFilter = VolumesListFilter {fromVolumesListFilter :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesListFilter_FILTERUNDEFINED :: VolumesListFilter
pattern VolumesListFilter_FILTERUNDEFINED = VolumesListFilter "FILTER_UNDEFINED"

-- | All Google eBooks.
pattern VolumesListFilter_Ebooks :: VolumesListFilter
pattern VolumesListFilter_Ebooks = VolumesListFilter "ebooks"

-- | Google eBook with full volume text viewability.
pattern VolumesListFilter_FreeEbooks :: VolumesListFilter
pattern VolumesListFilter_FreeEbooks = VolumesListFilter "free-ebooks"

-- | Public can view entire volume text.
pattern VolumesListFilter_Full :: VolumesListFilter
pattern VolumesListFilter_Full = VolumesListFilter "full"

-- | Google eBook with a price.
pattern VolumesListFilter_PaidEbooks :: VolumesListFilter
pattern VolumesListFilter_PaidEbooks = VolumesListFilter "paid-ebooks"

-- | Public able to see parts of text.
pattern VolumesListFilter_Partial :: VolumesListFilter
pattern VolumesListFilter_Partial = VolumesListFilter "partial"

{-# COMPLETE
  VolumesListFilter_FILTERUNDEFINED,
  VolumesListFilter_Ebooks,
  VolumesListFilter_FreeEbooks,
  VolumesListFilter_Full,
  VolumesListFilter_PaidEbooks,
  VolumesListFilter_Partial,
  VolumesListFilter
  #-}

-- | Restrict search to this user\'s library.
newtype VolumesListLibraryRestrict = VolumesListLibraryRestrict {fromVolumesListLibraryRestrict :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesListLibraryRestrict_LIBRARYRESTRICTUNDEFINED :: VolumesListLibraryRestrict
pattern VolumesListLibraryRestrict_LIBRARYRESTRICTUNDEFINED = VolumesListLibraryRestrict "LIBRARY_RESTRICT_UNDEFINED"

-- | Restrict to the user\'s library, any shelf.
pattern VolumesListLibraryRestrict_MyLibrary :: VolumesListLibraryRestrict
pattern VolumesListLibraryRestrict_MyLibrary = VolumesListLibraryRestrict "my-library"

-- | Do not restrict based on user\'s library.
pattern VolumesListLibraryRestrict_NoRestrict :: VolumesListLibraryRestrict
pattern VolumesListLibraryRestrict_NoRestrict = VolumesListLibraryRestrict "no-restrict"

{-# COMPLETE
  VolumesListLibraryRestrict_LIBRARYRESTRICTUNDEFINED,
  VolumesListLibraryRestrict_MyLibrary,
  VolumesListLibraryRestrict_NoRestrict,
  VolumesListLibraryRestrict
  #-}

-- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
newtype VolumesListMaxAllowedMaturityRating = VolumesListMaxAllowedMaturityRating {fromVolumesListMaxAllowedMaturityRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED :: VolumesListMaxAllowedMaturityRating
pattern VolumesListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED = VolumesListMaxAllowedMaturityRating "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"

-- | Show books which are rated mature or lower.
pattern VolumesListMaxAllowedMaturityRating_Mature :: VolumesListMaxAllowedMaturityRating
pattern VolumesListMaxAllowedMaturityRating_Mature = VolumesListMaxAllowedMaturityRating "MATURE"

-- | Show books which are rated not mature.
pattern VolumesListMaxAllowedMaturityRating_NotMature :: VolumesListMaxAllowedMaturityRating
pattern VolumesListMaxAllowedMaturityRating_NotMature = VolumesListMaxAllowedMaturityRating "not-mature"

{-# COMPLETE
  VolumesListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
  VolumesListMaxAllowedMaturityRating_Mature,
  VolumesListMaxAllowedMaturityRating_NotMature,
  VolumesListMaxAllowedMaturityRating
  #-}

-- | Sort search results.
newtype VolumesListOrderBy = VolumesListOrderBy {fromVolumesListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesListOrderBy_ORDERBYUNDEFINED :: VolumesListOrderBy
pattern VolumesListOrderBy_ORDERBYUNDEFINED = VolumesListOrderBy "ORDER_BY_UNDEFINED"

-- | Most recently published.
pattern VolumesListOrderBy_Newest :: VolumesListOrderBy
pattern VolumesListOrderBy_Newest = VolumesListOrderBy "newest"

-- | Relevance to search terms.
pattern VolumesListOrderBy_Relevance :: VolumesListOrderBy
pattern VolumesListOrderBy_Relevance = VolumesListOrderBy "relevance"

{-# COMPLETE
  VolumesListOrderBy_ORDERBYUNDEFINED,
  VolumesListOrderBy_Newest,
  VolumesListOrderBy_Relevance,
  VolumesListOrderBy
  #-}

-- | Restrict to books or magazines.
newtype VolumesListPrintType = VolumesListPrintType {fromVolumesListPrintType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesListPrintType_PRINTTYPEUNDEFINED :: VolumesListPrintType
pattern VolumesListPrintType_PRINTTYPEUNDEFINED = VolumesListPrintType "PRINT_TYPE_UNDEFINED"

-- | All volume content types.
pattern VolumesListPrintType_All :: VolumesListPrintType
pattern VolumesListPrintType_All = VolumesListPrintType "ALL"

-- | Just books.
pattern VolumesListPrintType_Books :: VolumesListPrintType
pattern VolumesListPrintType_Books = VolumesListPrintType "BOOKS"

-- | Just magazines.
pattern VolumesListPrintType_Magazines :: VolumesListPrintType
pattern VolumesListPrintType_Magazines = VolumesListPrintType "MAGAZINES"

{-# COMPLETE
  VolumesListPrintType_PRINTTYPEUNDEFINED,
  VolumesListPrintType_All,
  VolumesListPrintType_Books,
  VolumesListPrintType_Magazines,
  VolumesListPrintType
  #-}

-- | Restrict information returned to a set of selected fields.
newtype VolumesListProjection = VolumesListProjection {fromVolumesListProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesListProjection_PROJECTIONUNDEFINED :: VolumesListProjection
pattern VolumesListProjection_PROJECTIONUNDEFINED = VolumesListProjection "PROJECTION_UNDEFINED"

-- | Includes all volume data.
pattern VolumesListProjection_Full :: VolumesListProjection
pattern VolumesListProjection_Full = VolumesListProjection "FULL"

-- | Includes a subset of fields in volumeInfo and accessInfo.
pattern VolumesListProjection_Lite :: VolumesListProjection
pattern VolumesListProjection_Lite = VolumesListProjection "LITE"

{-# COMPLETE
  VolumesListProjection_PROJECTIONUNDEFINED,
  VolumesListProjection_Full,
  VolumesListProjection_Lite,
  VolumesListProjection
  #-}

-- | How the book was acquired
newtype VolumesMybooksListAcquireMethod = VolumesMybooksListAcquireMethod {fromVolumesMybooksListAcquireMethod :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesMybooksListAcquireMethod_ACQUIREMETHODUNDEFINED :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_ACQUIREMETHODUNDEFINED = VolumesMybooksListAcquireMethod "ACQUIRE_METHOD_UNDEFINED"

-- | Books acquired via Family Sharing
pattern VolumesMybooksListAcquireMethod_FAMILYSHARED :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_FAMILYSHARED = VolumesMybooksListAcquireMethod "FAMILY_SHARED"

-- | Preordered books (not yet available)
pattern VolumesMybooksListAcquireMethod_Preordered :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_Preordered = VolumesMybooksListAcquireMethod "PREORDERED"

-- | User-rented books past their expiration time
pattern VolumesMybooksListAcquireMethod_PREVIOUSLYRENTED :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_PREVIOUSLYRENTED = VolumesMybooksListAcquireMethod "PREVIOUSLY_RENTED"

-- | Public domain books
pattern VolumesMybooksListAcquireMethod_PUBLICDOMAIN :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_PUBLICDOMAIN = VolumesMybooksListAcquireMethod "PUBLIC_DOMAIN"

-- | Purchased books
pattern VolumesMybooksListAcquireMethod_Purchased :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_Purchased = VolumesMybooksListAcquireMethod "PURCHASED"

-- | User-rented books
pattern VolumesMybooksListAcquireMethod_Rented :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_Rented = VolumesMybooksListAcquireMethod "RENTED"

-- | Sample books
pattern VolumesMybooksListAcquireMethod_Sample :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_Sample = VolumesMybooksListAcquireMethod "SAMPLE"

-- | User uploaded books
pattern VolumesMybooksListAcquireMethod_Uploaded :: VolumesMybooksListAcquireMethod
pattern VolumesMybooksListAcquireMethod_Uploaded = VolumesMybooksListAcquireMethod "UPLOADED"

{-# COMPLETE
  VolumesMybooksListAcquireMethod_ACQUIREMETHODUNDEFINED,
  VolumesMybooksListAcquireMethod_FAMILYSHARED,
  VolumesMybooksListAcquireMethod_Preordered,
  VolumesMybooksListAcquireMethod_PREVIOUSLYRENTED,
  VolumesMybooksListAcquireMethod_PUBLICDOMAIN,
  VolumesMybooksListAcquireMethod_Purchased,
  VolumesMybooksListAcquireMethod_Rented,
  VolumesMybooksListAcquireMethod_Sample,
  VolumesMybooksListAcquireMethod_Uploaded,
  VolumesMybooksListAcquireMethod
  #-}

-- | The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the acquireMethod.
newtype VolumesMybooksListProcessingState = VolumesMybooksListProcessingState {fromVolumesMybooksListProcessingState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesMybooksListProcessingState_PROCESSINGSTATEUNDEFINED :: VolumesMybooksListProcessingState
pattern VolumesMybooksListProcessingState_PROCESSINGSTATEUNDEFINED = VolumesMybooksListProcessingState "PROCESSING_STATE_UNDEFINED"

-- | The volume processing hase failed.
pattern VolumesMybooksListProcessingState_COMPLETEDFAILED :: VolumesMybooksListProcessingState
pattern VolumesMybooksListProcessingState_COMPLETEDFAILED = VolumesMybooksListProcessingState "COMPLETED_FAILED"

-- | The volume processing was completed.
pattern VolumesMybooksListProcessingState_COMPLETEDSUCCESS :: VolumesMybooksListProcessingState
pattern VolumesMybooksListProcessingState_COMPLETEDSUCCESS = VolumesMybooksListProcessingState "COMPLETED_SUCCESS"

-- | The volume processing is not completed.
pattern VolumesMybooksListProcessingState_Running :: VolumesMybooksListProcessingState
pattern VolumesMybooksListProcessingState_Running = VolumesMybooksListProcessingState "RUNNING"

{-# COMPLETE
  VolumesMybooksListProcessingState_PROCESSINGSTATEUNDEFINED,
  VolumesMybooksListProcessingState_COMPLETEDFAILED,
  VolumesMybooksListProcessingState_COMPLETEDSUCCESS,
  VolumesMybooksListProcessingState_Running,
  VolumesMybooksListProcessingState
  #-}

-- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
newtype VolumesRecommendedListMaxAllowedMaturityRating = VolumesRecommendedListMaxAllowedMaturityRating {fromVolumesRecommendedListMaxAllowedMaturityRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesRecommendedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED :: VolumesRecommendedListMaxAllowedMaturityRating
pattern VolumesRecommendedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED = VolumesRecommendedListMaxAllowedMaturityRating "MAX_ALLOWED_MATURITY_RATING_UNDEFINED"

-- | Show books which are rated mature or lower.
pattern VolumesRecommendedListMaxAllowedMaturityRating_Mature :: VolumesRecommendedListMaxAllowedMaturityRating
pattern VolumesRecommendedListMaxAllowedMaturityRating_Mature = VolumesRecommendedListMaxAllowedMaturityRating "MATURE"

-- | Show books which are rated not mature.
pattern VolumesRecommendedListMaxAllowedMaturityRating_NotMature :: VolumesRecommendedListMaxAllowedMaturityRating
pattern VolumesRecommendedListMaxAllowedMaturityRating_NotMature = VolumesRecommendedListMaxAllowedMaturityRating "not-mature"

{-# COMPLETE
  VolumesRecommendedListMaxAllowedMaturityRating_MAXALLOWEDMATURITYRATINGUNDEFINED,
  VolumesRecommendedListMaxAllowedMaturityRating_Mature,
  VolumesRecommendedListMaxAllowedMaturityRating_NotMature,
  VolumesRecommendedListMaxAllowedMaturityRating
  #-}

-- | Rating to be given to the volume.
newtype VolumesRecommendedRateRating = VolumesRecommendedRateRating {fromVolumesRecommendedRateRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesRecommendedRateRating_RATINGUNDEFINED :: VolumesRecommendedRateRating
pattern VolumesRecommendedRateRating_RATINGUNDEFINED = VolumesRecommendedRateRating "RATING_UNDEFINED"

-- | Rating indicating a dismissal due to ownership.
pattern VolumesRecommendedRateRating_HAVEIT :: VolumesRecommendedRateRating
pattern VolumesRecommendedRateRating_HAVEIT = VolumesRecommendedRateRating "HAVE_IT"

-- | Rating indicating a negative dismissal of a volume.
pattern VolumesRecommendedRateRating_NOTINTERESTED :: VolumesRecommendedRateRating
pattern VolumesRecommendedRateRating_NOTINTERESTED = VolumesRecommendedRateRating "NOT_INTERESTED"

{-# COMPLETE
  VolumesRecommendedRateRating_RATINGUNDEFINED,
  VolumesRecommendedRateRating_HAVEIT,
  VolumesRecommendedRateRating_NOTINTERESTED,
  VolumesRecommendedRateRating
  #-}

-- | The processing state of the user uploaded volumes to be returned.
newtype VolumesUseruploadedListProcessingState = VolumesUseruploadedListProcessingState {fromVolumesUseruploadedListProcessingState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern VolumesUseruploadedListProcessingState_PROCESSINGSTATEUNDEFINED :: VolumesUseruploadedListProcessingState
pattern VolumesUseruploadedListProcessingState_PROCESSINGSTATEUNDEFINED = VolumesUseruploadedListProcessingState "PROCESSING_STATE_UNDEFINED"

-- | The volume processing hase failed.
pattern VolumesUseruploadedListProcessingState_COMPLETEDFAILED :: VolumesUseruploadedListProcessingState
pattern VolumesUseruploadedListProcessingState_COMPLETEDFAILED = VolumesUseruploadedListProcessingState "COMPLETED_FAILED"

-- | The volume processing was completed.
pattern VolumesUseruploadedListProcessingState_COMPLETEDSUCCESS :: VolumesUseruploadedListProcessingState
pattern VolumesUseruploadedListProcessingState_COMPLETEDSUCCESS = VolumesUseruploadedListProcessingState "COMPLETED_SUCCESS"

-- | The volume processing is not completed.
pattern VolumesUseruploadedListProcessingState_Running :: VolumesUseruploadedListProcessingState
pattern VolumesUseruploadedListProcessingState_Running = VolumesUseruploadedListProcessingState "RUNNING"

{-# COMPLETE
  VolumesUseruploadedListProcessingState_PROCESSINGSTATEUNDEFINED,
  VolumesUseruploadedListProcessingState_COMPLETEDFAILED,
  VolumesUseruploadedListProcessingState_COMPLETEDSUCCESS,
  VolumesUseruploadedListProcessingState_Running,
  VolumesUseruploadedListProcessingState
  #-}
