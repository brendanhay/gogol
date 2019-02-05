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

import           Network.Google.Prelude hiding (Bytes)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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

data EditsDeobfuscationFilesUploadDeobfuscationFileType
    = Proguard
      -- ^ @proguard@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsDeobfuscationFilesUploadDeobfuscationFileType

instance FromHttpApiData EditsDeobfuscationFilesUploadDeobfuscationFileType where
    parseQueryParam = \case
        "proguard" -> Right Proguard
        x -> Left ("Unable to parse EditsDeobfuscationFilesUploadDeobfuscationFileType from: " <> x)

instance ToHttpApiData EditsDeobfuscationFilesUploadDeobfuscationFileType where
    toQueryParam = \case
        Proguard -> "proguard"

instance FromJSON EditsDeobfuscationFilesUploadDeobfuscationFileType where
    parseJSON = parseJSONText "EditsDeobfuscationFilesUploadDeobfuscationFileType"

instance ToJSON EditsDeobfuscationFilesUploadDeobfuscationFileType where
    toJSON = toJSONText

data EditsExpansionFilesUploadExpansionFileType
    = Main
      -- ^ @main@
    | Patch'
      -- ^ @patch@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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
