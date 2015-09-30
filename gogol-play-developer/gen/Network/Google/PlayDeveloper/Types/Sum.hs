{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlayDeveloper.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlayDeveloper.Types.Sum where

import           Network.Google.Prelude

data AndroidpublisherEditsExpansionfilesPatchExpansionFileType
    = Main
      -- ^ @main@
    | Patch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsExpansionfilesPatchExpansionFileType

instance FromText AndroidpublisherEditsExpansionfilesPatchExpansionFileType where
    fromText = \case
        "main" -> Just Main
        "patch" -> Just Patch
        _ -> Nothing

instance ToText AndroidpublisherEditsExpansionfilesPatchExpansionFileType where
    toText = \case
        Main -> "main"
        Patch -> "patch"

instance FromJSON AndroidpublisherEditsExpansionfilesPatchExpansionFileType where
    parseJSON = parseJSONText "AndroidpublisherEditsExpansionfilesPatchExpansionFileType"

instance ToJSON AndroidpublisherEditsExpansionfilesPatchExpansionFileType where
    toJSON = toJSONText

data AndroidpublisherEditsExpansionfilesGetExpansionFileType
    = AEEGEFTMain
      -- ^ @main@
    | AEEGEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsExpansionfilesGetExpansionFileType

instance FromText AndroidpublisherEditsExpansionfilesGetExpansionFileType where
    fromText = \case
        "main" -> Just AEEGEFTMain
        "patch" -> Just AEEGEFTPatch
        _ -> Nothing

instance ToText AndroidpublisherEditsExpansionfilesGetExpansionFileType where
    toText = \case
        AEEGEFTMain -> "main"
        AEEGEFTPatch -> "patch"

instance FromJSON AndroidpublisherEditsExpansionfilesGetExpansionFileType where
    parseJSON = parseJSONText "AndroidpublisherEditsExpansionfilesGetExpansionFileType"

instance ToJSON AndroidpublisherEditsExpansionfilesGetExpansionFileType where
    toJSON = toJSONText

-- | The track type to read or modify.
data AndroidpublisherEditsTracksUpdateTrack
    = Alpha
      -- ^ @alpha@
    | Beta
      -- ^ @beta@
    | Production
      -- ^ @production@
    | Rollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsTracksUpdateTrack

instance FromText AndroidpublisherEditsTracksUpdateTrack where
    fromText = \case
        "alpha" -> Just Alpha
        "beta" -> Just Beta
        "production" -> Just Production
        "rollout" -> Just Rollout
        _ -> Nothing

instance ToText AndroidpublisherEditsTracksUpdateTrack where
    toText = \case
        Alpha -> "alpha"
        Beta -> "beta"
        Production -> "production"
        Rollout -> "rollout"

instance FromJSON AndroidpublisherEditsTracksUpdateTrack where
    parseJSON = parseJSONText "AndroidpublisherEditsTracksUpdateTrack"

instance ToJSON AndroidpublisherEditsTracksUpdateTrack where
    toJSON = toJSONText

-- | The track type to read or modify.
data AndroidpublisherEditsTracksGetTrack
    = AETGTAlpha
      -- ^ @alpha@
    | AETGTBeta
      -- ^ @beta@
    | AETGTProduction
      -- ^ @production@
    | AETGTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsTracksGetTrack

instance FromText AndroidpublisherEditsTracksGetTrack where
    fromText = \case
        "alpha" -> Just AETGTAlpha
        "beta" -> Just AETGTBeta
        "production" -> Just AETGTProduction
        "rollout" -> Just AETGTRollout
        _ -> Nothing

instance ToText AndroidpublisherEditsTracksGetTrack where
    toText = \case
        AETGTAlpha -> "alpha"
        AETGTBeta -> "beta"
        AETGTProduction -> "production"
        AETGTRollout -> "rollout"

instance FromJSON AndroidpublisherEditsTracksGetTrack where
    parseJSON = parseJSONText "AndroidpublisherEditsTracksGetTrack"

instance ToJSON AndroidpublisherEditsTracksGetTrack where
    toJSON = toJSONText

-- | The track type to read or modify.
data AndroidpublisherEditsTracksPatchTrack
    = AETPTAlpha
      -- ^ @alpha@
    | AETPTBeta
      -- ^ @beta@
    | AETPTProduction
      -- ^ @production@
    | AETPTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsTracksPatchTrack

instance FromText AndroidpublisherEditsTracksPatchTrack where
    fromText = \case
        "alpha" -> Just AETPTAlpha
        "beta" -> Just AETPTBeta
        "production" -> Just AETPTProduction
        "rollout" -> Just AETPTRollout
        _ -> Nothing

instance ToText AndroidpublisherEditsTracksPatchTrack where
    toText = \case
        AETPTAlpha -> "alpha"
        AETPTBeta -> "beta"
        AETPTProduction -> "production"
        AETPTRollout -> "rollout"

instance FromJSON AndroidpublisherEditsTracksPatchTrack where
    parseJSON = parseJSONText "AndroidpublisherEditsTracksPatchTrack"

instance ToJSON AndroidpublisherEditsTracksPatchTrack where
    toJSON = toJSONText

data AndroidpublisherEditsExpansionfilesUploadExpansionFileType
    = AEEUEFTMain
      -- ^ @main@
    | AEEUEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsExpansionfilesUploadExpansionFileType

instance FromText AndroidpublisherEditsExpansionfilesUploadExpansionFileType where
    fromText = \case
        "main" -> Just AEEUEFTMain
        "patch" -> Just AEEUEFTPatch
        _ -> Nothing

instance ToText AndroidpublisherEditsExpansionfilesUploadExpansionFileType where
    toText = \case
        AEEUEFTMain -> "main"
        AEEUEFTPatch -> "patch"

instance FromJSON AndroidpublisherEditsExpansionfilesUploadExpansionFileType where
    parseJSON = parseJSONText "AndroidpublisherEditsExpansionfilesUploadExpansionFileType"

instance ToJSON AndroidpublisherEditsExpansionfilesUploadExpansionFileType where
    toJSON = toJSONText

data AndroidpublisherEditsImagesUploadImageType
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

instance Hashable AndroidpublisherEditsImagesUploadImageType

instance FromText AndroidpublisherEditsImagesUploadImageType where
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

instance ToText AndroidpublisherEditsImagesUploadImageType where
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

instance FromJSON AndroidpublisherEditsImagesUploadImageType where
    parseJSON = parseJSONText "AndroidpublisherEditsImagesUploadImageType"

instance ToJSON AndroidpublisherEditsImagesUploadImageType where
    toJSON = toJSONText

data AndroidpublisherEditsImagesDeleteImageType
    = AEIDITFeatureGraphic
      -- ^ @featureGraphic@
    | AEIDITIcon
      -- ^ @icon@
    | AEIDITPhoneScreenshots
      -- ^ @phoneScreenshots@
    | AEIDITPromoGraphic
      -- ^ @promoGraphic@
    | AEIDITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | AEIDITTenInchScreenshots
      -- ^ @tenInchScreenshots@
    | AEIDITTvBanner
      -- ^ @tvBanner@
    | AEIDITTvScreenshots
      -- ^ @tvScreenshots@
    | AEIDITWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsImagesDeleteImageType

instance FromText AndroidpublisherEditsImagesDeleteImageType where
    fromText = \case
        "featureGraphic" -> Just AEIDITFeatureGraphic
        "icon" -> Just AEIDITIcon
        "phoneScreenshots" -> Just AEIDITPhoneScreenshots
        "promoGraphic" -> Just AEIDITPromoGraphic
        "sevenInchScreenshots" -> Just AEIDITSevenInchScreenshots
        "tenInchScreenshots" -> Just AEIDITTenInchScreenshots
        "tvBanner" -> Just AEIDITTvBanner
        "tvScreenshots" -> Just AEIDITTvScreenshots
        "wearScreenshots" -> Just AEIDITWearScreenshots
        _ -> Nothing

instance ToText AndroidpublisherEditsImagesDeleteImageType where
    toText = \case
        AEIDITFeatureGraphic -> "featureGraphic"
        AEIDITIcon -> "icon"
        AEIDITPhoneScreenshots -> "phoneScreenshots"
        AEIDITPromoGraphic -> "promoGraphic"
        AEIDITSevenInchScreenshots -> "sevenInchScreenshots"
        AEIDITTenInchScreenshots -> "tenInchScreenshots"
        AEIDITTvBanner -> "tvBanner"
        AEIDITTvScreenshots -> "tvScreenshots"
        AEIDITWearScreenshots -> "wearScreenshots"

instance FromJSON AndroidpublisherEditsImagesDeleteImageType where
    parseJSON = parseJSONText "AndroidpublisherEditsImagesDeleteImageType"

instance ToJSON AndroidpublisherEditsImagesDeleteImageType where
    toJSON = toJSONText

data AndroidpublisherEditsExpansionfilesUpdateExpansionFileType
    = AMain
      -- ^ @main@
    | APatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsExpansionfilesUpdateExpansionFileType

instance FromText AndroidpublisherEditsExpansionfilesUpdateExpansionFileType where
    fromText = \case
        "main" -> Just AMain
        "patch" -> Just APatch
        _ -> Nothing

instance ToText AndroidpublisherEditsExpansionfilesUpdateExpansionFileType where
    toText = \case
        AMain -> "main"
        APatch -> "patch"

instance FromJSON AndroidpublisherEditsExpansionfilesUpdateExpansionFileType where
    parseJSON = parseJSONText "AndroidpublisherEditsExpansionfilesUpdateExpansionFileType"

instance ToJSON AndroidpublisherEditsExpansionfilesUpdateExpansionFileType where
    toJSON = toJSONText

data AndroidpublisherEditsImagesListImageType
    = AEILITFeatureGraphic
      -- ^ @featureGraphic@
    | AEILITIcon
      -- ^ @icon@
    | AEILITPhoneScreenshots
      -- ^ @phoneScreenshots@
    | AEILITPromoGraphic
      -- ^ @promoGraphic@
    | AEILITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | AEILITTenInchScreenshots
      -- ^ @tenInchScreenshots@
    | AEILITTvBanner
      -- ^ @tvBanner@
    | AEILITTvScreenshots
      -- ^ @tvScreenshots@
    | AEILITWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsImagesListImageType

instance FromText AndroidpublisherEditsImagesListImageType where
    fromText = \case
        "featureGraphic" -> Just AEILITFeatureGraphic
        "icon" -> Just AEILITIcon
        "phoneScreenshots" -> Just AEILITPhoneScreenshots
        "promoGraphic" -> Just AEILITPromoGraphic
        "sevenInchScreenshots" -> Just AEILITSevenInchScreenshots
        "tenInchScreenshots" -> Just AEILITTenInchScreenshots
        "tvBanner" -> Just AEILITTvBanner
        "tvScreenshots" -> Just AEILITTvScreenshots
        "wearScreenshots" -> Just AEILITWearScreenshots
        _ -> Nothing

instance ToText AndroidpublisherEditsImagesListImageType where
    toText = \case
        AEILITFeatureGraphic -> "featureGraphic"
        AEILITIcon -> "icon"
        AEILITPhoneScreenshots -> "phoneScreenshots"
        AEILITPromoGraphic -> "promoGraphic"
        AEILITSevenInchScreenshots -> "sevenInchScreenshots"
        AEILITTenInchScreenshots -> "tenInchScreenshots"
        AEILITTvBanner -> "tvBanner"
        AEILITTvScreenshots -> "tvScreenshots"
        AEILITWearScreenshots -> "wearScreenshots"

instance FromJSON AndroidpublisherEditsImagesListImageType where
    parseJSON = parseJSONText "AndroidpublisherEditsImagesListImageType"

instance ToJSON AndroidpublisherEditsImagesListImageType where
    toJSON = toJSONText

data AndroidpublisherEditsTestersUpdateTrack
    = AETUTAlpha
      -- ^ @alpha@
    | AETUTBeta
      -- ^ @beta@
    | AETUTProduction
      -- ^ @production@
    | AETUTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsTestersUpdateTrack

instance FromText AndroidpublisherEditsTestersUpdateTrack where
    fromText = \case
        "alpha" -> Just AETUTAlpha
        "beta" -> Just AETUTBeta
        "production" -> Just AETUTProduction
        "rollout" -> Just AETUTRollout
        _ -> Nothing

instance ToText AndroidpublisherEditsTestersUpdateTrack where
    toText = \case
        AETUTAlpha -> "alpha"
        AETUTBeta -> "beta"
        AETUTProduction -> "production"
        AETUTRollout -> "rollout"

instance FromJSON AndroidpublisherEditsTestersUpdateTrack where
    parseJSON = parseJSONText "AndroidpublisherEditsTestersUpdateTrack"

instance ToJSON AndroidpublisherEditsTestersUpdateTrack where
    toJSON = toJSONText

data AndroidpublisherEditsImagesDeleteallImageType
    = AFeatureGraphic
      -- ^ @featureGraphic@
    | AIcon
      -- ^ @icon@
    | APhoneScreenshots
      -- ^ @phoneScreenshots@
    | APromoGraphic
      -- ^ @promoGraphic@
    | ASevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | ATenInchScreenshots
      -- ^ @tenInchScreenshots@
    | ATvBanner
      -- ^ @tvBanner@
    | ATvScreenshots
      -- ^ @tvScreenshots@
    | AWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsImagesDeleteallImageType

instance FromText AndroidpublisherEditsImagesDeleteallImageType where
    fromText = \case
        "featureGraphic" -> Just AFeatureGraphic
        "icon" -> Just AIcon
        "phoneScreenshots" -> Just APhoneScreenshots
        "promoGraphic" -> Just APromoGraphic
        "sevenInchScreenshots" -> Just ASevenInchScreenshots
        "tenInchScreenshots" -> Just ATenInchScreenshots
        "tvBanner" -> Just ATvBanner
        "tvScreenshots" -> Just ATvScreenshots
        "wearScreenshots" -> Just AWearScreenshots
        _ -> Nothing

instance ToText AndroidpublisherEditsImagesDeleteallImageType where
    toText = \case
        AFeatureGraphic -> "featureGraphic"
        AIcon -> "icon"
        APhoneScreenshots -> "phoneScreenshots"
        APromoGraphic -> "promoGraphic"
        ASevenInchScreenshots -> "sevenInchScreenshots"
        ATenInchScreenshots -> "tenInchScreenshots"
        ATvBanner -> "tvBanner"
        ATvScreenshots -> "tvScreenshots"
        AWearScreenshots -> "wearScreenshots"

instance FromJSON AndroidpublisherEditsImagesDeleteallImageType where
    parseJSON = parseJSONText "AndroidpublisherEditsImagesDeleteallImageType"

instance ToJSON AndroidpublisherEditsImagesDeleteallImageType where
    toJSON = toJSONText

data AndroidpublisherEditsTestersGetTrack
    = AAlpha
      -- ^ @alpha@
    | ABeta
      -- ^ @beta@
    | AProduction
      -- ^ @production@
    | ARollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsTestersGetTrack

instance FromText AndroidpublisherEditsTestersGetTrack where
    fromText = \case
        "alpha" -> Just AAlpha
        "beta" -> Just ABeta
        "production" -> Just AProduction
        "rollout" -> Just ARollout
        _ -> Nothing

instance ToText AndroidpublisherEditsTestersGetTrack where
    toText = \case
        AAlpha -> "alpha"
        ABeta -> "beta"
        AProduction -> "production"
        ARollout -> "rollout"

instance FromJSON AndroidpublisherEditsTestersGetTrack where
    parseJSON = parseJSONText "AndroidpublisherEditsTestersGetTrack"

instance ToJSON AndroidpublisherEditsTestersGetTrack where
    toJSON = toJSONText

data AndroidpublisherEditsTestersPatchTrack
    = ANDAlpha
      -- ^ @alpha@
    | ANDBeta
      -- ^ @beta@
    | ANDProduction
      -- ^ @production@
    | ANDRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidpublisherEditsTestersPatchTrack

instance FromText AndroidpublisherEditsTestersPatchTrack where
    fromText = \case
        "alpha" -> Just ANDAlpha
        "beta" -> Just ANDBeta
        "production" -> Just ANDProduction
        "rollout" -> Just ANDRollout
        _ -> Nothing

instance ToText AndroidpublisherEditsTestersPatchTrack where
    toText = \case
        ANDAlpha -> "alpha"
        ANDBeta -> "beta"
        ANDProduction -> "production"
        ANDRollout -> "rollout"

instance FromJSON AndroidpublisherEditsTestersPatchTrack where
    parseJSON = parseJSONText "AndroidpublisherEditsTestersPatchTrack"

instance ToJSON AndroidpublisherEditsTestersPatchTrack where
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
