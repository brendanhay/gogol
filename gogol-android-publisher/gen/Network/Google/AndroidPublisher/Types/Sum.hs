{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
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

instance FromText EditsImagesDeleteallImageType where
    fromText = \case
        "featureGraphic" -> Just FeatureGraphic
        "icon" -> Just Icon
        "phoneScreenshots" -> Just PhoneScreenshots
        "promoGraphic" -> Just PromoGraphic
        "sevenInchScreenshots" -> Just SevenInchScreenshots
        "tenInchScreenshots" -> Just TenInchScreenshots
        "tvBanner" -> Just TvBanner
        "tvScreenshots" -> Just TvScreenshots
        "wearScreenshots" -> Just WearScreenshots
        _ -> Nothing

instance ToText EditsImagesDeleteallImageType where
    toText = \case
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

instance FromText EditsTracksPatchTrack where
    fromText = \case
        "alpha" -> Just Alpha
        "beta" -> Just Beta
        "production" -> Just Production
        "rollout" -> Just Rollout
        _ -> Nothing

instance ToText EditsTracksPatchTrack where
    toText = \case
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

instance FromText EditsTracksGetTrack where
    fromText = \case
        "alpha" -> Just ETGTAlpha
        "beta" -> Just ETGTBeta
        "production" -> Just ETGTProduction
        "rollout" -> Just ETGTRollout
        _ -> Nothing

instance ToText EditsTracksGetTrack where
    toText = \case
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

instance FromText EditsTracksUpdateTrack where
    fromText = \case
        "alpha" -> Just ETUTAlpha
        "beta" -> Just ETUTBeta
        "production" -> Just ETUTProduction
        "rollout" -> Just ETUTRollout
        _ -> Nothing

instance ToText EditsTracksUpdateTrack where
    toText = \case
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

instance FromText EditsImagesListImageType where
    fromText = \case
        "featureGraphic" -> Just EILITFeatureGraphic
        "icon" -> Just EILITIcon
        "phoneScreenshots" -> Just EILITPhoneScreenshots
        "promoGraphic" -> Just EILITPromoGraphic
        "sevenInchScreenshots" -> Just EILITSevenInchScreenshots
        "tenInchScreenshots" -> Just EILITTenInchScreenshots
        "tvBanner" -> Just EILITTvBanner
        "tvScreenshots" -> Just EILITTvScreenshots
        "wearScreenshots" -> Just EILITWearScreenshots
        _ -> Nothing

instance ToText EditsImagesListImageType where
    toText = \case
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

instance FromText EditsTestersPatchTrack where
    fromText = \case
        "alpha" -> Just ETPTAlpha
        "beta" -> Just ETPTBeta
        "production" -> Just ETPTProduction
        "rollout" -> Just ETPTRollout
        _ -> Nothing

instance ToText EditsTestersPatchTrack where
    toText = \case
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

instance FromText EditsTestersGetTrack where
    fromText = \case
        "alpha" -> Just EAlpha
        "beta" -> Just EBeta
        "production" -> Just EProduction
        "rollout" -> Just ERollout
        _ -> Nothing

instance ToText EditsTestersGetTrack where
    toText = \case
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

instance FromText EditsImagesUploadImageType where
    fromText = \case
        "featureGraphic" -> Just EIUITFeatureGraphic
        "icon" -> Just EIUITIcon
        "phoneScreenshots" -> Just EIUITPhoneScreenshots
        "promoGraphic" -> Just EIUITPromoGraphic
        "sevenInchScreenshots" -> Just EIUITSevenInchScreenshots
        "tenInchScreenshots" -> Just EIUITTenInchScreenshots
        "tvBanner" -> Just EIUITTvBanner
        "tvScreenshots" -> Just EIUITTvScreenshots
        "wearScreenshots" -> Just EIUITWearScreenshots
        _ -> Nothing

instance ToText EditsImagesUploadImageType where
    toText = \case
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
    | Patch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesUploadExpansionFileType

instance FromText EditsExpansionFilesUploadExpansionFileType where
    fromText = \case
        "main" -> Just Main
        "patch" -> Just Patch
        _ -> Nothing

instance ToText EditsExpansionFilesUploadExpansionFileType where
    toText = \case
        Main -> "main"
        Patch -> "patch"

instance FromJSON EditsExpansionFilesUploadExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesUploadExpansionFileType"

instance ToJSON EditsExpansionFilesUploadExpansionFileType where
    toJSON = toJSONText

data EditsExpansionFilesGetExpansionFileType
    = EEFGEFTMain
      -- ^ @main@
    | EEFGEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesGetExpansionFileType

instance FromText EditsExpansionFilesGetExpansionFileType where
    fromText = \case
        "main" -> Just EEFGEFTMain
        "patch" -> Just EEFGEFTPatch
        _ -> Nothing

instance ToText EditsExpansionFilesGetExpansionFileType where
    toText = \case
        EEFGEFTMain -> "main"
        EEFGEFTPatch -> "patch"

instance FromJSON EditsExpansionFilesGetExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesGetExpansionFileType"

instance ToJSON EditsExpansionFilesGetExpansionFileType where
    toJSON = toJSONText

data EditsExpansionFilesPatchExpansionFileType
    = EEFPEFTMain
      -- ^ @main@
    | EEFPEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesPatchExpansionFileType

instance FromText EditsExpansionFilesPatchExpansionFileType where
    fromText = \case
        "main" -> Just EEFPEFTMain
        "patch" -> Just EEFPEFTPatch
        _ -> Nothing

instance ToText EditsExpansionFilesPatchExpansionFileType where
    toText = \case
        EEFPEFTMain -> "main"
        EEFPEFTPatch -> "patch"

instance FromJSON EditsExpansionFilesPatchExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesPatchExpansionFileType"

instance ToJSON EditsExpansionFilesPatchExpansionFileType where
    toJSON = toJSONText

data EditsExpansionFilesUpdateExpansionFileType
    = EEFUEFTMain
      -- ^ @main@
    | EEFUEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionFilesUpdateExpansionFileType

instance FromText EditsExpansionFilesUpdateExpansionFileType where
    fromText = \case
        "main" -> Just EEFUEFTMain
        "patch" -> Just EEFUEFTPatch
        _ -> Nothing

instance ToText EditsExpansionFilesUpdateExpansionFileType where
    toText = \case
        EEFUEFTMain -> "main"
        EEFUEFTPatch -> "patch"

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

instance FromText EditsImagesDeleteImageType where
    fromText = \case
        "featureGraphic" -> Just EIDITFeatureGraphic
        "icon" -> Just EIDITIcon
        "phoneScreenshots" -> Just EIDITPhoneScreenshots
        "promoGraphic" -> Just EIDITPromoGraphic
        "sevenInchScreenshots" -> Just EIDITSevenInchScreenshots
        "tenInchScreenshots" -> Just EIDITTenInchScreenshots
        "tvBanner" -> Just EIDITTvBanner
        "tvScreenshots" -> Just EIDITTvScreenshots
        "wearScreenshots" -> Just EIDITWearScreenshots
        _ -> Nothing

instance ToText EditsImagesDeleteImageType where
    toText = \case
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

instance FromText EditsTestersUpdateTrack where
    fromText = \case
        "alpha" -> Just EDIAlpha
        "beta" -> Just EDIBeta
        "production" -> Just EDIProduction
        "rollout" -> Just EDIRollout
        _ -> Nothing

instance ToText EditsTestersUpdateTrack where
    toText = \case
        EDIAlpha -> "alpha"
        EDIBeta -> "beta"
        EDIProduction -> "production"
        EDIRollout -> "rollout"

instance FromJSON EditsTestersUpdateTrack where
    parseJSON = parseJSONText "EditsTestersUpdateTrack"

instance ToJSON EditsTestersUpdateTrack where
    toJSON = toJSONText
