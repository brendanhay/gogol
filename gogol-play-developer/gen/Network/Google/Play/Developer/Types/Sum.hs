{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Play.Developer.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Play.Developer.Types.Sum where

import           Network.Google.Prelude

data EditsImagesList'ImageType
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

instance Hashable EditsImagesList'ImageType

instance FromText EditsImagesList'ImageType where
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

instance ToText EditsImagesList'ImageType where
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

instance FromJSON EditsImagesList'ImageType where
    parseJSON = parseJSONText "EditsImagesList'ImageType"

instance ToJSON EditsImagesList'ImageType where
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

data EditsImagesUpload'ImageType
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

instance Hashable EditsImagesUpload'ImageType

instance FromText EditsImagesUpload'ImageType where
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

instance ToText EditsImagesUpload'ImageType where
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

instance FromJSON EditsImagesUpload'ImageType where
    parseJSON = parseJSONText "EditsImagesUpload'ImageType"

instance ToJSON EditsImagesUpload'ImageType where
    toJSON = toJSONText

data EditsExpansionfilesUpload'ExpansionFileType
    = Main
      -- ^ @main@
    | Patch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionfilesUpload'ExpansionFileType

instance FromText EditsExpansionfilesUpload'ExpansionFileType where
    fromText = \case
        "main" -> Just Main
        "patch" -> Just Patch
        _ -> Nothing

instance ToText EditsExpansionfilesUpload'ExpansionFileType where
    toText = \case
        Main -> "main"
        Patch -> "patch"

instance FromJSON EditsExpansionfilesUpload'ExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionfilesUpload'ExpansionFileType"

instance ToJSON EditsExpansionfilesUpload'ExpansionFileType where
    toJSON = toJSONText

data EditsExpansionfilesPatch'ExpansionFileType
    = EEPEFTMain
      -- ^ @main@
    | EEPEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionfilesPatch'ExpansionFileType

instance FromText EditsExpansionfilesPatch'ExpansionFileType where
    fromText = \case
        "main" -> Just EEPEFTMain
        "patch" -> Just EEPEFTPatch
        _ -> Nothing

instance ToText EditsExpansionfilesPatch'ExpansionFileType where
    toText = \case
        EEPEFTMain -> "main"
        EEPEFTPatch -> "patch"

instance FromJSON EditsExpansionfilesPatch'ExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionfilesPatch'ExpansionFileType"

instance ToJSON EditsExpansionfilesPatch'ExpansionFileType where
    toJSON = toJSONText

data EditsExpansionfilesGet'ExpansionFileType
    = EEGEFTMain
      -- ^ @main@
    | EEGEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionfilesGet'ExpansionFileType

instance FromText EditsExpansionfilesGet'ExpansionFileType where
    fromText = \case
        "main" -> Just EEGEFTMain
        "patch" -> Just EEGEFTPatch
        _ -> Nothing

instance ToText EditsExpansionfilesGet'ExpansionFileType where
    toText = \case
        EEGEFTMain -> "main"
        EEGEFTPatch -> "patch"

instance FromJSON EditsExpansionfilesGet'ExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionfilesGet'ExpansionFileType"

instance ToJSON EditsExpansionfilesGet'ExpansionFileType where
    toJSON = toJSONText

data EditsImagesDelete'ImageType
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

instance Hashable EditsImagesDelete'ImageType

instance FromText EditsImagesDelete'ImageType where
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

instance ToText EditsImagesDelete'ImageType where
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

instance FromJSON EditsImagesDelete'ImageType where
    parseJSON = parseJSONText "EditsImagesDelete'ImageType"

instance ToJSON EditsImagesDelete'ImageType where
    toJSON = toJSONText

data EditsExpansionfilesUpdate'ExpansionFileType
    = EEUEFTMain
      -- ^ @main@
    | EEUEFTPatch
      -- ^ @patch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsExpansionfilesUpdate'ExpansionFileType

instance FromText EditsExpansionfilesUpdate'ExpansionFileType where
    fromText = \case
        "main" -> Just EEUEFTMain
        "patch" -> Just EEUEFTPatch
        _ -> Nothing

instance ToText EditsExpansionfilesUpdate'ExpansionFileType where
    toText = \case
        EEUEFTMain -> "main"
        EEUEFTPatch -> "patch"

instance FromJSON EditsExpansionfilesUpdate'ExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionfilesUpdate'ExpansionFileType"

instance ToJSON EditsExpansionfilesUpdate'ExpansionFileType where
    toJSON = toJSONText

data EditsTestersUpdate'Track
    = Alpha
      -- ^ @alpha@
    | Beta
      -- ^ @beta@
    | Production
      -- ^ @production@
    | Rollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTestersUpdate'Track

instance FromText EditsTestersUpdate'Track where
    fromText = \case
        "alpha" -> Just Alpha
        "beta" -> Just Beta
        "production" -> Just Production
        "rollout" -> Just Rollout
        _ -> Nothing

instance ToText EditsTestersUpdate'Track where
    toText = \case
        Alpha -> "alpha"
        Beta -> "beta"
        Production -> "production"
        Rollout -> "rollout"

instance FromJSON EditsTestersUpdate'Track where
    parseJSON = parseJSONText "EditsTestersUpdate'Track"

instance ToJSON EditsTestersUpdate'Track where
    toJSON = toJSONText

data EditsTestersPatch'Track
    = ETPTAlpha
      -- ^ @alpha@
    | ETPTBeta
      -- ^ @beta@
    | ETPTProduction
      -- ^ @production@
    | ETPTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTestersPatch'Track

instance FromText EditsTestersPatch'Track where
    fromText = \case
        "alpha" -> Just ETPTAlpha
        "beta" -> Just ETPTBeta
        "production" -> Just ETPTProduction
        "rollout" -> Just ETPTRollout
        _ -> Nothing

instance ToText EditsTestersPatch'Track where
    toText = \case
        ETPTAlpha -> "alpha"
        ETPTBeta -> "beta"
        ETPTProduction -> "production"
        ETPTRollout -> "rollout"

instance FromJSON EditsTestersPatch'Track where
    parseJSON = parseJSONText "EditsTestersPatch'Track"

instance ToJSON EditsTestersPatch'Track where
    toJSON = toJSONText

data EditsTestersGet'Track
    = ETGTAlpha
      -- ^ @alpha@
    | ETGTBeta
      -- ^ @beta@
    | ETGTProduction
      -- ^ @production@
    | ETGTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTestersGet'Track

instance FromText EditsTestersGet'Track where
    fromText = \case
        "alpha" -> Just ETGTAlpha
        "beta" -> Just ETGTBeta
        "production" -> Just ETGTProduction
        "rollout" -> Just ETGTRollout
        _ -> Nothing

instance ToText EditsTestersGet'Track where
    toText = \case
        ETGTAlpha -> "alpha"
        ETGTBeta -> "beta"
        ETGTProduction -> "production"
        ETGTRollout -> "rollout"

instance FromJSON EditsTestersGet'Track where
    parseJSON = parseJSONText "EditsTestersGet'Track"

instance ToJSON EditsTestersGet'Track where
    toJSON = toJSONText

data EditsImagesDeleteall'ImageType
    = EFeatureGraphic
      -- ^ @featureGraphic@
    | EIcon
      -- ^ @icon@
    | EPhoneScreenshots
      -- ^ @phoneScreenshots@
    | EPromoGraphic
      -- ^ @promoGraphic@
    | ESevenInchScreenshots
      -- ^ @sevenInchScreenshots@
    | ETenInchScreenshots
      -- ^ @tenInchScreenshots@
    | ETvBanner
      -- ^ @tvBanner@
    | ETvScreenshots
      -- ^ @tvScreenshots@
    | EWearScreenshots
      -- ^ @wearScreenshots@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsImagesDeleteall'ImageType

instance FromText EditsImagesDeleteall'ImageType where
    fromText = \case
        "featureGraphic" -> Just EFeatureGraphic
        "icon" -> Just EIcon
        "phoneScreenshots" -> Just EPhoneScreenshots
        "promoGraphic" -> Just EPromoGraphic
        "sevenInchScreenshots" -> Just ESevenInchScreenshots
        "tenInchScreenshots" -> Just ETenInchScreenshots
        "tvBanner" -> Just ETvBanner
        "tvScreenshots" -> Just ETvScreenshots
        "wearScreenshots" -> Just EWearScreenshots
        _ -> Nothing

instance ToText EditsImagesDeleteall'ImageType where
    toText = \case
        EFeatureGraphic -> "featureGraphic"
        EIcon -> "icon"
        EPhoneScreenshots -> "phoneScreenshots"
        EPromoGraphic -> "promoGraphic"
        ESevenInchScreenshots -> "sevenInchScreenshots"
        ETenInchScreenshots -> "tenInchScreenshots"
        ETvBanner -> "tvBanner"
        ETvScreenshots -> "tvScreenshots"
        EWearScreenshots -> "wearScreenshots"

instance FromJSON EditsImagesDeleteall'ImageType where
    parseJSON = parseJSONText "EditsImagesDeleteall'ImageType"

instance ToJSON EditsImagesDeleteall'ImageType where
    toJSON = toJSONText

-- | The track type to read or modify.
data EditsTracksPatch'Track
    = EAlpha
      -- ^ @alpha@
    | EBeta
      -- ^ @beta@
    | EProduction
      -- ^ @production@
    | ERollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTracksPatch'Track

instance FromText EditsTracksPatch'Track where
    fromText = \case
        "alpha" -> Just EAlpha
        "beta" -> Just EBeta
        "production" -> Just EProduction
        "rollout" -> Just ERollout
        _ -> Nothing

instance ToText EditsTracksPatch'Track where
    toText = \case
        EAlpha -> "alpha"
        EBeta -> "beta"
        EProduction -> "production"
        ERollout -> "rollout"

instance FromJSON EditsTracksPatch'Track where
    parseJSON = parseJSONText "EditsTracksPatch'Track"

instance ToJSON EditsTracksPatch'Track where
    toJSON = toJSONText

-- | The track type to read or modify.
data EditsTracksGet'Track
    = EDIAlpha
      -- ^ @alpha@
    | EDIBeta
      -- ^ @beta@
    | EDIProduction
      -- ^ @production@
    | EDIRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTracksGet'Track

instance FromText EditsTracksGet'Track where
    fromText = \case
        "alpha" -> Just EDIAlpha
        "beta" -> Just EDIBeta
        "production" -> Just EDIProduction
        "rollout" -> Just EDIRollout
        _ -> Nothing

instance ToText EditsTracksGet'Track where
    toText = \case
        EDIAlpha -> "alpha"
        EDIBeta -> "beta"
        EDIProduction -> "production"
        EDIRollout -> "rollout"

instance FromJSON EditsTracksGet'Track where
    parseJSON = parseJSONText "EditsTracksGet'Track"

instance ToJSON EditsTracksGet'Track where
    toJSON = toJSONText

-- | The track type to read or modify.
data EditsTracksUpdate'Track
    = ETUTAlpha
      -- ^ @alpha@
    | ETUTBeta
      -- ^ @beta@
    | ETUTProduction
      -- ^ @production@
    | ETUTRollout
      -- ^ @rollout@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditsTracksUpdate'Track

instance FromText EditsTracksUpdate'Track where
    fromText = \case
        "alpha" -> Just ETUTAlpha
        "beta" -> Just ETUTBeta
        "production" -> Just ETUTProduction
        "rollout" -> Just ETUTRollout
        _ -> Nothing

instance ToText EditsTracksUpdate'Track where
    toText = \case
        ETUTAlpha -> "alpha"
        ETUTBeta -> "beta"
        ETUTProduction -> "production"
        ETUTRollout -> "rollout"

instance FromJSON EditsTracksUpdate'Track where
    parseJSON = parseJSONText "EditsTracksUpdate'Track"

instance ToJSON EditsTracksUpdate'Track where
    toJSON = toJSONText
