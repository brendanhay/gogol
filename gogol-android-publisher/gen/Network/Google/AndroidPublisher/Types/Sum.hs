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

data AndroidPublisherEditsExpansionfilesPatchExpansionFileType
    = Main
      -- ^ @main@
    | Patch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsExpansionfilesPatchExpansionFileType

instance FromText AndroidPublisherEditsExpansionfilesPatchExpansionFileType where
    fromText = \case
        "main" -> Just Main
        "patch" -> Just Patch
        _ -> Nothing

instance ToText AndroidPublisherEditsExpansionfilesPatchExpansionFileType where
    toText = \case
        Main -> "main"
        Patch -> "patch"

instance FromJSON AndroidPublisherEditsExpansionfilesPatchExpansionFileType where
    parseJSON = parseJSONText "AndroidPublisherEditsExpansionfilesPatchExpansionFileType"

instance ToJSON AndroidPublisherEditsExpansionfilesPatchExpansionFileType where
    toJSON = toJSONText

data AndroidPublisherEditsExpansionfilesGetExpansionFileType
    = APEEGEFTMain
      -- ^ @main@
    | APEEGEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsExpansionfilesGetExpansionFileType

instance FromText AndroidPublisherEditsExpansionfilesGetExpansionFileType where
    fromText = \case
        "main" -> Just APEEGEFTMain
        "patch" -> Just APEEGEFTPatch
        _ -> Nothing

instance ToText AndroidPublisherEditsExpansionfilesGetExpansionFileType where
    toText = \case
        APEEGEFTMain -> "main"
        APEEGEFTPatch -> "patch"

instance FromJSON AndroidPublisherEditsExpansionfilesGetExpansionFileType where
    parseJSON = parseJSONText "AndroidPublisherEditsExpansionfilesGetExpansionFileType"

instance ToJSON AndroidPublisherEditsExpansionfilesGetExpansionFileType where
    toJSON = toJSONText

-- | The track type to read or modify.
data AndroidPublisherEditsTracksUpdateTrack
    = Alpha
      -- ^ @alpha@
    | Beta
      -- ^ @beta@
    | Production
      -- ^ @production@
    | Rollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsTracksUpdateTrack

instance FromText AndroidPublisherEditsTracksUpdateTrack where
    fromText = \case
        "alpha" -> Just Alpha
        "beta" -> Just Beta
        "production" -> Just Production
        "rollout" -> Just Rollout
        _ -> Nothing

instance ToText AndroidPublisherEditsTracksUpdateTrack where
    toText = \case
        Alpha -> "alpha"
        Beta -> "beta"
        Production -> "production"
        Rollout -> "rollout"

instance FromJSON AndroidPublisherEditsTracksUpdateTrack where
    parseJSON = parseJSONText "AndroidPublisherEditsTracksUpdateTrack"

instance ToJSON AndroidPublisherEditsTracksUpdateTrack where
    toJSON = toJSONText

-- | The track type to read or modify.
data AndroidPublisherEditsTracksGetTrack
    = APETGTAlpha
      -- ^ @alpha@
    | APETGTBeta
      -- ^ @beta@
    | APETGTProduction
      -- ^ @production@
    | APETGTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsTracksGetTrack

instance FromText AndroidPublisherEditsTracksGetTrack where
    fromText = \case
        "alpha" -> Just APETGTAlpha
        "beta" -> Just APETGTBeta
        "production" -> Just APETGTProduction
        "rollout" -> Just APETGTRollout
        _ -> Nothing

instance ToText AndroidPublisherEditsTracksGetTrack where
    toText = \case
        APETGTAlpha -> "alpha"
        APETGTBeta -> "beta"
        APETGTProduction -> "production"
        APETGTRollout -> "rollout"

instance FromJSON AndroidPublisherEditsTracksGetTrack where
    parseJSON = parseJSONText "AndroidPublisherEditsTracksGetTrack"

instance ToJSON AndroidPublisherEditsTracksGetTrack where
    toJSON = toJSONText

-- | The track type to read or modify.
data AndroidPublisherEditsTracksPatchTrack
    = APETPTAlpha
      -- ^ @alpha@
    | APETPTBeta
      -- ^ @beta@
    | APETPTProduction
      -- ^ @production@
    | APETPTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsTracksPatchTrack

instance FromText AndroidPublisherEditsTracksPatchTrack where
    fromText = \case
        "alpha" -> Just APETPTAlpha
        "beta" -> Just APETPTBeta
        "production" -> Just APETPTProduction
        "rollout" -> Just APETPTRollout
        _ -> Nothing

instance ToText AndroidPublisherEditsTracksPatchTrack where
    toText = \case
        APETPTAlpha -> "alpha"
        APETPTBeta -> "beta"
        APETPTProduction -> "production"
        APETPTRollout -> "rollout"

instance FromJSON AndroidPublisherEditsTracksPatchTrack where
    parseJSON = parseJSONText "AndroidPublisherEditsTracksPatchTrack"

instance ToJSON AndroidPublisherEditsTracksPatchTrack where
    toJSON = toJSONText

data AndroidPublisherEditsExpansionfilesUploadExpansionFileType
    = APEEUEFTMain
      -- ^ @main@
    | APEEUEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsExpansionfilesUploadExpansionFileType

instance FromText AndroidPublisherEditsExpansionfilesUploadExpansionFileType where
    fromText = \case
        "main" -> Just APEEUEFTMain
        "patch" -> Just APEEUEFTPatch
        _ -> Nothing

instance ToText AndroidPublisherEditsExpansionfilesUploadExpansionFileType where
    toText = \case
        APEEUEFTMain -> "main"
        APEEUEFTPatch -> "patch"

instance FromJSON AndroidPublisherEditsExpansionfilesUploadExpansionFileType where
    parseJSON = parseJSONText "AndroidPublisherEditsExpansionfilesUploadExpansionFileType"

instance ToJSON AndroidPublisherEditsExpansionfilesUploadExpansionFileType where
    toJSON = toJSONText

data AndroidPublisherEditsImagesUploadImageType
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

instance Hashable AndroidPublisherEditsImagesUploadImageType

instance FromText AndroidPublisherEditsImagesUploadImageType where
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

instance ToText AndroidPublisherEditsImagesUploadImageType where
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

instance FromJSON AndroidPublisherEditsImagesUploadImageType where
    parseJSON = parseJSONText "AndroidPublisherEditsImagesUploadImageType"

instance ToJSON AndroidPublisherEditsImagesUploadImageType where
    toJSON = toJSONText

data AndroidPublisherEditsImagesDeleteImageType
    = APEIDITFeatureGraphic
      -- ^ @featureGraphic@
    | APEIDITIcon
      -- ^ @icon@
    | APEIDITPhoneScreenshots
      -- ^ @phoneScreenshots@
    | APEIDITPromoGraphic
      -- ^ @promoGraphic@
    | APEIDITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | APEIDITTenInchScreenshots
      -- ^ @tenInchScreenshots@
    | APEIDITTvBanner
      -- ^ @tvBanner@
    | APEIDITTvScreenshots
      -- ^ @tvScreenshots@
    | APEIDITWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsImagesDeleteImageType

instance FromText AndroidPublisherEditsImagesDeleteImageType where
    fromText = \case
        "featureGraphic" -> Just APEIDITFeatureGraphic
        "icon" -> Just APEIDITIcon
        "phoneScreenshots" -> Just APEIDITPhoneScreenshots
        "promoGraphic" -> Just APEIDITPromoGraphic
        "sevenInchScreenshots" -> Just APEIDITSevenInchScreenshots
        "tenInchScreenshots" -> Just APEIDITTenInchScreenshots
        "tvBanner" -> Just APEIDITTvBanner
        "tvScreenshots" -> Just APEIDITTvScreenshots
        "wearScreenshots" -> Just APEIDITWearScreenshots
        _ -> Nothing

instance ToText AndroidPublisherEditsImagesDeleteImageType where
    toText = \case
        APEIDITFeatureGraphic -> "featureGraphic"
        APEIDITIcon -> "icon"
        APEIDITPhoneScreenshots -> "phoneScreenshots"
        APEIDITPromoGraphic -> "promoGraphic"
        APEIDITSevenInchScreenshots -> "sevenInchScreenshots"
        APEIDITTenInchScreenshots -> "tenInchScreenshots"
        APEIDITTvBanner -> "tvBanner"
        APEIDITTvScreenshots -> "tvScreenshots"
        APEIDITWearScreenshots -> "wearScreenshots"

instance FromJSON AndroidPublisherEditsImagesDeleteImageType where
    parseJSON = parseJSONText "AndroidPublisherEditsImagesDeleteImageType"

instance ToJSON AndroidPublisherEditsImagesDeleteImageType where
    toJSON = toJSONText

data AndroidPublisherEditsExpansionfilesUpdateExpansionFileType
    = AMain
      -- ^ @main@
    | APatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsExpansionfilesUpdateExpansionFileType

instance FromText AndroidPublisherEditsExpansionfilesUpdateExpansionFileType where
    fromText = \case
        "main" -> Just AMain
        "patch" -> Just APatch
        _ -> Nothing

instance ToText AndroidPublisherEditsExpansionfilesUpdateExpansionFileType where
    toText = \case
        AMain -> "main"
        APatch -> "patch"

instance FromJSON AndroidPublisherEditsExpansionfilesUpdateExpansionFileType where
    parseJSON = parseJSONText "AndroidPublisherEditsExpansionfilesUpdateExpansionFileType"

instance ToJSON AndroidPublisherEditsExpansionfilesUpdateExpansionFileType where
    toJSON = toJSONText

data AndroidPublisherEditsImagesListImageType
    = APEILITFeatureGraphic
      -- ^ @featureGraphic@
    | APEILITIcon
      -- ^ @icon@
    | APEILITPhoneScreenshots
      -- ^ @phoneScreenshots@
    | APEILITPromoGraphic
      -- ^ @promoGraphic@
    | APEILITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | APEILITTenInchScreenshots
      -- ^ @tenInchScreenshots@
    | APEILITTvBanner
      -- ^ @tvBanner@
    | APEILITTvScreenshots
      -- ^ @tvScreenshots@
    | APEILITWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsImagesListImageType

instance FromText AndroidPublisherEditsImagesListImageType where
    fromText = \case
        "featureGraphic" -> Just APEILITFeatureGraphic
        "icon" -> Just APEILITIcon
        "phoneScreenshots" -> Just APEILITPhoneScreenshots
        "promoGraphic" -> Just APEILITPromoGraphic
        "sevenInchScreenshots" -> Just APEILITSevenInchScreenshots
        "tenInchScreenshots" -> Just APEILITTenInchScreenshots
        "tvBanner" -> Just APEILITTvBanner
        "tvScreenshots" -> Just APEILITTvScreenshots
        "wearScreenshots" -> Just APEILITWearScreenshots
        _ -> Nothing

instance ToText AndroidPublisherEditsImagesListImageType where
    toText = \case
        APEILITFeatureGraphic -> "featureGraphic"
        APEILITIcon -> "icon"
        APEILITPhoneScreenshots -> "phoneScreenshots"
        APEILITPromoGraphic -> "promoGraphic"
        APEILITSevenInchScreenshots -> "sevenInchScreenshots"
        APEILITTenInchScreenshots -> "tenInchScreenshots"
        APEILITTvBanner -> "tvBanner"
        APEILITTvScreenshots -> "tvScreenshots"
        APEILITWearScreenshots -> "wearScreenshots"

instance FromJSON AndroidPublisherEditsImagesListImageType where
    parseJSON = parseJSONText "AndroidPublisherEditsImagesListImageType"

instance ToJSON AndroidPublisherEditsImagesListImageType where
    toJSON = toJSONText

data AndroidPublisherEditsTestersUpdateTrack
    = APETUTAlpha
      -- ^ @alpha@
    | APETUTBeta
      -- ^ @beta@
    | APETUTProduction
      -- ^ @production@
    | APETUTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsTestersUpdateTrack

instance FromText AndroidPublisherEditsTestersUpdateTrack where
    fromText = \case
        "alpha" -> Just APETUTAlpha
        "beta" -> Just APETUTBeta
        "production" -> Just APETUTProduction
        "rollout" -> Just APETUTRollout
        _ -> Nothing

instance ToText AndroidPublisherEditsTestersUpdateTrack where
    toText = \case
        APETUTAlpha -> "alpha"
        APETUTBeta -> "beta"
        APETUTProduction -> "production"
        APETUTRollout -> "rollout"

instance FromJSON AndroidPublisherEditsTestersUpdateTrack where
    parseJSON = parseJSONText "AndroidPublisherEditsTestersUpdateTrack"

instance ToJSON AndroidPublisherEditsTestersUpdateTrack where
    toJSON = toJSONText

data AndroidPublisherEditsImagesDeleteallImageType
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

instance Hashable AndroidPublisherEditsImagesDeleteallImageType

instance FromText AndroidPublisherEditsImagesDeleteallImageType where
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

instance ToText AndroidPublisherEditsImagesDeleteallImageType where
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

instance FromJSON AndroidPublisherEditsImagesDeleteallImageType where
    parseJSON = parseJSONText "AndroidPublisherEditsImagesDeleteallImageType"

instance ToJSON AndroidPublisherEditsImagesDeleteallImageType where
    toJSON = toJSONText

data AndroidPublisherEditsTestersGetTrack
    = AAlpha
      -- ^ @alpha@
    | ABeta
      -- ^ @beta@
    | AProduction
      -- ^ @production@
    | ARollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsTestersGetTrack

instance FromText AndroidPublisherEditsTestersGetTrack where
    fromText = \case
        "alpha" -> Just AAlpha
        "beta" -> Just ABeta
        "production" -> Just AProduction
        "rollout" -> Just ARollout
        _ -> Nothing

instance ToText AndroidPublisherEditsTestersGetTrack where
    toText = \case
        AAlpha -> "alpha"
        ABeta -> "beta"
        AProduction -> "production"
        ARollout -> "rollout"

instance FromJSON AndroidPublisherEditsTestersGetTrack where
    parseJSON = parseJSONText "AndroidPublisherEditsTestersGetTrack"

instance ToJSON AndroidPublisherEditsTestersGetTrack where
    toJSON = toJSONText

data AndroidPublisherEditsTestersPatchTrack
    = ANDAlpha
      -- ^ @alpha@
    | ANDBeta
      -- ^ @beta@
    | ANDProduction
      -- ^ @production@
    | ANDRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AndroidPublisherEditsTestersPatchTrack

instance FromText AndroidPublisherEditsTestersPatchTrack where
    fromText = \case
        "alpha" -> Just ANDAlpha
        "beta" -> Just ANDBeta
        "production" -> Just ANDProduction
        "rollout" -> Just ANDRollout
        _ -> Nothing

instance ToText AndroidPublisherEditsTestersPatchTrack where
    toText = \case
        ANDAlpha -> "alpha"
        ANDBeta -> "beta"
        ANDProduction -> "production"
        ANDRollout -> "rollout"

instance FromJSON AndroidPublisherEditsTestersPatchTrack where
    parseJSON = parseJSONText "AndroidPublisherEditsTestersPatchTrack"

instance ToJSON AndroidPublisherEditsTestersPatchTrack where
    toJSON = toJSONText
