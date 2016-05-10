{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidPublisher.Types.Sum where

import           Network.Google.Prelude

data EditsImagesDeleteallImageType
    = FeatureGraphic
      -- ^ @featureGraphic@
    | Icon
      -- ^ @icon@
    | PhoneScreenshots
      -- ^ @phoneScreenshots@
    | PromoGraphic
      -- ^ @promoGraphic@
    | SevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | TenInchScreenshots
      -- ^ @tenInchScreenshots@
    | TvBanner
      -- ^ @tvBanner@
    | TvScreenshots
      -- ^ @tvScreenshots@
    | WearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsImagesDeleteallImageType

instance FromHttpApiData EditsImagesDeleteallImageType where
    parseQueryParam = \case
        "featureGraphic" -> Right FeatureGraphic
        "icon" -> Right Icon
        "phoneScreenshots" -> Right PhoneScreenshots
        "promoGraphic" -> Right PromoGraphic
        "sevenInchScreenshots" -> Right SevenInchScreenshots
        "tenInchScreenshots" -> Right TenInchScreenshots
        "tvBanner" -> Right TvBanner
        "tvScreenshots" -> Right TvScreenshots
        "wearScreenshots" -> Right WearScreenshots
        x -> Left ("Unable to parse EditsImagesDeleteallImageType from: " <> x)

instance ToHttpApiData EditsImagesDeleteallImageType where
    toQueryParam = \case
        FeatureGraphic -> "featureGraphic"
        Icon -> "icon"
        PhoneScreenshots -> "phoneScreenshots"
        PromoGraphic -> "promoGraphic"
        SevenInchScreenshots -> "sevenInchScreenshots"
        TenInchScreenshots -> "tenInchScreenshots"
        TvBanner -> "tvBanner"
        TvScreenshots -> "tvScreenshots"
        WearScreenshots -> "wearScreenshots"

instance FromJSON EditsImagesDeleteallImageType where
    parseJSON = parseJSONText "EditsImagesDeleteallImageType"

instance ToJSON EditsImagesDeleteallImageType where
    toJSON = toJSONText

-- | The track type to read or modify.
data EditsTracksPatchTrack
    = Alpha
      -- ^ @alpha@
    | Beta
      -- ^ @beta@
    | Production
      -- ^ @production@
    | Rollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTracksPatchTrack

instance FromHttpApiData EditsTracksPatchTrack where
    parseQueryParam = \case
        "alpha" -> Right Alpha
        "beta" -> Right Beta
        "production" -> Right Production
        "rollout" -> Right Rollout
        x -> Left ("Unable to parse EditsTracksPatchTrack from: " <> x)

instance ToHttpApiData EditsTracksPatchTrack where
    toQueryParam = \case
        Alpha -> "alpha"
        Beta -> "beta"
        Production -> "production"
        Rollout -> "rollout"

instance FromJSON EditsTracksPatchTrack where
    parseJSON = parseJSONText "EditsTracksPatchTrack"

instance ToJSON EditsTracksPatchTrack where
    toJSON = toJSONText

-- | The track type to read or modify.
data EditsTracksGetTrack
    = ETGTAlpha
      -- ^ @alpha@
    | ETGTBeta
      -- ^ @beta@
    | ETGTProduction
      -- ^ @production@
    | ETGTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTracksGetTrack

instance FromHttpApiData EditsTracksGetTrack where
    parseQueryParam = \case
        "alpha" -> Right ETGTAlpha
        "beta" -> Right ETGTBeta
        "production" -> Right ETGTProduction
        "rollout" -> Right ETGTRollout
        x -> Left ("Unable to parse EditsTracksGetTrack from: " <> x)

instance ToHttpApiData EditsTracksGetTrack where
    toQueryParam = \case
        ETGTAlpha -> "alpha"
        ETGTBeta -> "beta"
        ETGTProduction -> "production"
        ETGTRollout -> "rollout"

instance FromJSON EditsTracksGetTrack where
    parseJSON = parseJSONText "EditsTracksGetTrack"

instance ToJSON EditsTracksGetTrack where
    toJSON = toJSONText

-- | The track type to read or modify.
data EditsTracksUpdateTrack
    = ETUTAlpha
      -- ^ @alpha@
    | ETUTBeta
      -- ^ @beta@
    | ETUTProduction
      -- ^ @production@
    | ETUTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTracksUpdateTrack

instance FromHttpApiData EditsTracksUpdateTrack where
    parseQueryParam = \case
        "alpha" -> Right ETUTAlpha
        "beta" -> Right ETUTBeta
        "production" -> Right ETUTProduction
        "rollout" -> Right ETUTRollout
        x -> Left ("Unable to parse EditsTracksUpdateTrack from: " <> x)

instance ToHttpApiData EditsTracksUpdateTrack where
    toQueryParam = \case
        ETUTAlpha -> "alpha"
        ETUTBeta -> "beta"
        ETUTProduction -> "production"
        ETUTRollout -> "rollout"

instance FromJSON EditsTracksUpdateTrack where
    parseJSON = parseJSONText "EditsTracksUpdateTrack"

instance ToJSON EditsTracksUpdateTrack where
    toJSON = toJSONText

data EditsImagesListImageType
    = EILITFeatureGraphic
      -- ^ @featureGraphic@
    | EILITIcon
      -- ^ @icon@
    | EILITPhoneScreenshots
      -- ^ @phoneScreenshots@
    | EILITPromoGraphic
      -- ^ @promoGraphic@
    | EILITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | EILITTenInchScreenshots
      -- ^ @tenInchScreenshots@
    | EILITTvBanner
      -- ^ @tvBanner@
    | EILITTvScreenshots
      -- ^ @tvScreenshots@
    | EILITWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsImagesListImageType

instance FromHttpApiData EditsImagesListImageType where
    parseQueryParam = \case
        "featureGraphic" -> Right EILITFeatureGraphic
        "icon" -> Right EILITIcon
        "phoneScreenshots" -> Right EILITPhoneScreenshots
        "promoGraphic" -> Right EILITPromoGraphic
        "sevenInchScreenshots" -> Right EILITSevenInchScreenshots
        "tenInchScreenshots" -> Right EILITTenInchScreenshots
        "tvBanner" -> Right EILITTvBanner
        "tvScreenshots" -> Right EILITTvScreenshots
        "wearScreenshots" -> Right EILITWearScreenshots
        x -> Left ("Unable to parse EditsImagesListImageType from: " <> x)

instance ToHttpApiData EditsImagesListImageType where
    toQueryParam = \case
        EILITFeatureGraphic -> "featureGraphic"
        EILITIcon -> "icon"
        EILITPhoneScreenshots -> "phoneScreenshots"
        EILITPromoGraphic -> "promoGraphic"
        EILITSevenInchScreenshots -> "sevenInchScreenshots"
        EILITTenInchScreenshots -> "tenInchScreenshots"
        EILITTvBanner -> "tvBanner"
        EILITTvScreenshots -> "tvScreenshots"
        EILITWearScreenshots -> "wearScreenshots"

instance FromJSON EditsImagesListImageType where
    parseJSON = parseJSONText "EditsImagesListImageType"

instance ToJSON EditsImagesListImageType where
    toJSON = toJSONText

data EditsTestersPatchTrack
    = ETPTAlpha
      -- ^ @alpha@
    | ETPTBeta
      -- ^ @beta@
    | ETPTProduction
      -- ^ @production@
    | ETPTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTestersPatchTrack

instance FromHttpApiData EditsTestersPatchTrack where
    parseQueryParam = \case
        "alpha" -> Right ETPTAlpha
        "beta" -> Right ETPTBeta
        "production" -> Right ETPTProduction
        "rollout" -> Right ETPTRollout
        x -> Left ("Unable to parse EditsTestersPatchTrack from: " <> x)

instance ToHttpApiData EditsTestersPatchTrack where
    toQueryParam = \case
        ETPTAlpha -> "alpha"
        ETPTBeta -> "beta"
        ETPTProduction -> "production"
        ETPTRollout -> "rollout"

instance FromJSON EditsTestersPatchTrack where
    parseJSON = parseJSONText "EditsTestersPatchTrack"

instance ToJSON EditsTestersPatchTrack where
    toJSON = toJSONText

data EditsTestersGetTrack
    = EAlpha
      -- ^ @alpha@
    | EBeta
      -- ^ @beta@
    | EProduction
      -- ^ @production@
    | ERollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTestersGetTrack

instance FromHttpApiData EditsTestersGetTrack where
    parseQueryParam = \case
        "alpha" -> Right EAlpha
        "beta" -> Right EBeta
        "production" -> Right EProduction
        "rollout" -> Right ERollout
        x -> Left ("Unable to parse EditsTestersGetTrack from: " <> x)

instance ToHttpApiData EditsTestersGetTrack where
    toQueryParam = \case
        EAlpha -> "alpha"
        EBeta -> "beta"
        EProduction -> "production"
        ERollout -> "rollout"

instance FromJSON EditsTestersGetTrack where
    parseJSON = parseJSONText "EditsTestersGetTrack"

instance ToJSON EditsTestersGetTrack where
    toJSON = toJSONText

data EditsImagesUploadImageType
    = EIUITFeatureGraphic
      -- ^ @featureGraphic@
    | EIUITIcon
      -- ^ @icon@
    | EIUITPhoneScreenshots
      -- ^ @phoneScreenshots@
    | EIUITPromoGraphic
      -- ^ @promoGraphic@
    | EIUITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | EIUITTenInchScreenshots
      -- ^ @tenInchScreenshots@
    | EIUITTvBanner
      -- ^ @tvBanner@
    | EIUITTvScreenshots
      -- ^ @tvScreenshots@
    | EIUITWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsImagesUploadImageType

instance FromHttpApiData EditsImagesUploadImageType where
    parseQueryParam = \case
        "featureGraphic" -> Right EIUITFeatureGraphic
        "icon" -> Right EIUITIcon
        "phoneScreenshots" -> Right EIUITPhoneScreenshots
        "promoGraphic" -> Right EIUITPromoGraphic
        "sevenInchScreenshots" -> Right EIUITSevenInchScreenshots
        "tenInchScreenshots" -> Right EIUITTenInchScreenshots
        "tvBanner" -> Right EIUITTvBanner
        "tvScreenshots" -> Right EIUITTvScreenshots
        "wearScreenshots" -> Right EIUITWearScreenshots
        x -> Left ("Unable to parse EditsImagesUploadImageType from: " <> x)

instance ToHttpApiData EditsImagesUploadImageType where
    toQueryParam = \case
        EIUITFeatureGraphic -> "featureGraphic"
        EIUITIcon -> "icon"
        EIUITPhoneScreenshots -> "phoneScreenshots"
        EIUITPromoGraphic -> "promoGraphic"
        EIUITSevenInchScreenshots -> "sevenInchScreenshots"
        EIUITTenInchScreenshots -> "tenInchScreenshots"
        EIUITTvBanner -> "tvBanner"
        EIUITTvScreenshots -> "tvScreenshots"
        EIUITWearScreenshots -> "wearScreenshots"

instance FromJSON EditsImagesUploadImageType where
    parseJSON = parseJSONText "EditsImagesUploadImageType"

instance ToJSON EditsImagesUploadImageType where
    toJSON = toJSONText

data EditsExpansionFilesUploadExpansionFileType
    = Main
      -- ^ @main@
    | Patch'
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesUploadExpansionFileType

instance FromHttpApiData EditsExpansionFilesUploadExpansionFileType where
    parseQueryParam = \case
        "main" -> Right Main
        "patch" -> Right Patch'
        x -> Left ("Unable to parse EditsExpansionFilesUploadExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesUploadExpansionFileType where
    toQueryParam = \case
        Main -> "main"
        Patch' -> "patch"

instance FromJSON EditsExpansionFilesUploadExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesUploadExpansionFileType"

instance ToJSON EditsExpansionFilesUploadExpansionFileType where
    toJSON = toJSONText

data EditsExpansionFilesGetExpansionFileType
    = EEFGEFTMain
      -- ^ @main@
    | EEFGEFTPatch'
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesGetExpansionFileType

instance FromHttpApiData EditsExpansionFilesGetExpansionFileType where
    parseQueryParam = \case
        "main" -> Right EEFGEFTMain
        "patch" -> Right EEFGEFTPatch'
        x -> Left ("Unable to parse EditsExpansionFilesGetExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesGetExpansionFileType where
    toQueryParam = \case
        EEFGEFTMain -> "main"
        EEFGEFTPatch' -> "patch"

instance FromJSON EditsExpansionFilesGetExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesGetExpansionFileType"

instance ToJSON EditsExpansionFilesGetExpansionFileType where
    toJSON = toJSONText

data EditsExpansionFilesPatchExpansionFileType
    = EEFPEFTMain
      -- ^ @main@
    | EEFPEFTPatch'
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesPatchExpansionFileType

instance FromHttpApiData EditsExpansionFilesPatchExpansionFileType where
    parseQueryParam = \case
        "main" -> Right EEFPEFTMain
        "patch" -> Right EEFPEFTPatch'
        x -> Left ("Unable to parse EditsExpansionFilesPatchExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesPatchExpansionFileType where
    toQueryParam = \case
        EEFPEFTMain -> "main"
        EEFPEFTPatch' -> "patch"

instance FromJSON EditsExpansionFilesPatchExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesPatchExpansionFileType"

instance ToJSON EditsExpansionFilesPatchExpansionFileType where
    toJSON = toJSONText

data EditsExpansionFilesUpdateExpansionFileType
    = EEFUEFTMain
      -- ^ @main@
    | EEFUEFTPatch'
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesUpdateExpansionFileType

instance FromHttpApiData EditsExpansionFilesUpdateExpansionFileType where
    parseQueryParam = \case
        "main" -> Right EEFUEFTMain
        "patch" -> Right EEFUEFTPatch'
        x -> Left ("Unable to parse EditsExpansionFilesUpdateExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesUpdateExpansionFileType where
    toQueryParam = \case
        EEFUEFTMain -> "main"
        EEFUEFTPatch' -> "patch"

instance FromJSON EditsExpansionFilesUpdateExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesUpdateExpansionFileType"

instance ToJSON EditsExpansionFilesUpdateExpansionFileType where
    toJSON = toJSONText

data EditsImagesDeleteImageType
    = EIDITFeatureGraphic
      -- ^ @featureGraphic@
    | EIDITIcon
      -- ^ @icon@
    | EIDITPhoneScreenshots
      -- ^ @phoneScreenshots@
    | EIDITPromoGraphic
      -- ^ @promoGraphic@
    | EIDITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | EIDITTenInchScreenshots
      -- ^ @tenInchScreenshots@
    | EIDITTvBanner
      -- ^ @tvBanner@
    | EIDITTvScreenshots
      -- ^ @tvScreenshots@
    | EIDITWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsImagesDeleteImageType

instance FromHttpApiData EditsImagesDeleteImageType where
    parseQueryParam = \case
        "featureGraphic" -> Right EIDITFeatureGraphic
        "icon" -> Right EIDITIcon
        "phoneScreenshots" -> Right EIDITPhoneScreenshots
        "promoGraphic" -> Right EIDITPromoGraphic
        "sevenInchScreenshots" -> Right EIDITSevenInchScreenshots
        "tenInchScreenshots" -> Right EIDITTenInchScreenshots
        "tvBanner" -> Right EIDITTvBanner
        "tvScreenshots" -> Right EIDITTvScreenshots
        "wearScreenshots" -> Right EIDITWearScreenshots
        x -> Left ("Unable to parse EditsImagesDeleteImageType from: " <> x)

instance ToHttpApiData EditsImagesDeleteImageType where
    toQueryParam = \case
        EIDITFeatureGraphic -> "featureGraphic"
        EIDITIcon -> "icon"
        EIDITPhoneScreenshots -> "phoneScreenshots"
        EIDITPromoGraphic -> "promoGraphic"
        EIDITSevenInchScreenshots -> "sevenInchScreenshots"
        EIDITTenInchScreenshots -> "tenInchScreenshots"
        EIDITTvBanner -> "tvBanner"
        EIDITTvScreenshots -> "tvScreenshots"
        EIDITWearScreenshots -> "wearScreenshots"

instance FromJSON EditsImagesDeleteImageType where
    parseJSON = parseJSONText "EditsImagesDeleteImageType"

instance ToJSON EditsImagesDeleteImageType where
    toJSON = toJSONText

data EditsTestersUpdateTrack
    = EDIAlpha
      -- ^ @alpha@
    | EDIBeta
      -- ^ @beta@
    | EDIProduction
      -- ^ @production@
    | EDIRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTestersUpdateTrack

instance FromHttpApiData EditsTestersUpdateTrack where
    parseQueryParam = \case
        "alpha" -> Right EDIAlpha
        "beta" -> Right EDIBeta
        "production" -> Right EDIProduction
        "rollout" -> Right EDIRollout
        x -> Left ("Unable to parse EditsTestersUpdateTrack from: " <> x)

instance ToHttpApiData EditsTestersUpdateTrack where
    toQueryParam = \case
        EDIAlpha -> "alpha"
        EDIBeta -> "beta"
        EDIProduction -> "production"
        EDIRollout -> "rollout"

instance FromJSON EditsTestersUpdateTrack where
    parseJSON = parseJSONText "EditsTestersUpdateTrack"

instance ToJSON EditsTestersUpdateTrack where
    toJSON = toJSONText
