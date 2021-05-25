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

import Network.Google.Prelude hiding (Bytes)

-- | Type of the Image. Providing an image type that refers to no images is a
-- no-op.
data EditsImagesDeleteallImageType
    = AppImageTypeUnspecified
      -- ^ @appImageTypeUnspecified@
      -- Unspecified type. Do not use.
    | PhoneScreenshots
      -- ^ @phoneScreenshots@
      -- Phone screenshot.
    | SevenInchScreenshots
      -- ^ @sevenInchScreenshots@
      -- Seven inch screenshot.
    | TenInchScreenshots
      -- ^ @tenInchScreenshots@
      -- Ten inch screenshot.
    | TvScreenshots
      -- ^ @tvScreenshots@
      -- TV screenshot.
    | WearScreenshots
      -- ^ @wearScreenshots@
      -- Wear screenshot.
    | Icon
      -- ^ @icon@
      -- Icon.
    | FeatureGraphic
      -- ^ @featureGraphic@
      -- Feature graphic.
    | TvBanner
      -- ^ @tvBanner@
      -- TV banner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsImagesDeleteallImageType

instance FromHttpApiData EditsImagesDeleteallImageType where
    parseQueryParam = \case
        "appImageTypeUnspecified" -> Right AppImageTypeUnspecified
        "phoneScreenshots" -> Right PhoneScreenshots
        "sevenInchScreenshots" -> Right SevenInchScreenshots
        "tenInchScreenshots" -> Right TenInchScreenshots
        "tvScreenshots" -> Right TvScreenshots
        "wearScreenshots" -> Right WearScreenshots
        "icon" -> Right Icon
        "featureGraphic" -> Right FeatureGraphic
        "tvBanner" -> Right TvBanner
        x -> Left ("Unable to parse EditsImagesDeleteallImageType from: " <> x)

instance ToHttpApiData EditsImagesDeleteallImageType where
    toQueryParam = \case
        AppImageTypeUnspecified -> "appImageTypeUnspecified"
        PhoneScreenshots -> "phoneScreenshots"
        SevenInchScreenshots -> "sevenInchScreenshots"
        TenInchScreenshots -> "tenInchScreenshots"
        TvScreenshots -> "tvScreenshots"
        WearScreenshots -> "wearScreenshots"
        Icon -> "icon"
        FeatureGraphic -> "featureGraphic"
        TvBanner -> "tvBanner"

instance FromJSON EditsImagesDeleteallImageType where
    parseJSON = parseJSONText "EditsImagesDeleteallImageType"

instance ToJSON EditsImagesDeleteallImageType where
    toJSON = toJSONText

-- | The type of the product, e.g. a recurring subscription.
data InAppProductPurchaseType
    = PurchaseTypeUnspecified
      -- ^ @purchaseTypeUnspecified@
      -- Unspecified purchase type.
    | ManagedUser
      -- ^ @managedUser@
      -- The default product type - one time purchase.
    | Subscription
      -- ^ @subscription@
      -- In-app product with a recurring period.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InAppProductPurchaseType

instance FromHttpApiData InAppProductPurchaseType where
    parseQueryParam = \case
        "purchaseTypeUnspecified" -> Right PurchaseTypeUnspecified
        "managedUser" -> Right ManagedUser
        "subscription" -> Right Subscription
        x -> Left ("Unable to parse InAppProductPurchaseType from: " <> x)

instance ToHttpApiData InAppProductPurchaseType where
    toQueryParam = \case
        PurchaseTypeUnspecified -> "purchaseTypeUnspecified"
        ManagedUser -> "managedUser"
        Subscription -> "subscription"

instance FromJSON InAppProductPurchaseType where
    parseJSON = parseJSONText "InAppProductPurchaseType"

instance ToJSON InAppProductPurchaseType where
    toJSON = toJSONText

-- | Type of the Image. Providing an image type that refers to no images will
-- return an empty response.
data EditsImagesListImageType
    = EILITAppImageTypeUnspecified
      -- ^ @appImageTypeUnspecified@
      -- Unspecified type. Do not use.
    | EILITPhoneScreenshots
      -- ^ @phoneScreenshots@
      -- Phone screenshot.
    | EILITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
      -- Seven inch screenshot.
    | EILITTenInchScreenshots
      -- ^ @tenInchScreenshots@
      -- Ten inch screenshot.
    | EILITTvScreenshots
      -- ^ @tvScreenshots@
      -- TV screenshot.
    | EILITWearScreenshots
      -- ^ @wearScreenshots@
      -- Wear screenshot.
    | EILITIcon
      -- ^ @icon@
      -- Icon.
    | EILITFeatureGraphic
      -- ^ @featureGraphic@
      -- Feature graphic.
    | EILITTvBanner
      -- ^ @tvBanner@
      -- TV banner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsImagesListImageType

instance FromHttpApiData EditsImagesListImageType where
    parseQueryParam = \case
        "appImageTypeUnspecified" -> Right EILITAppImageTypeUnspecified
        "phoneScreenshots" -> Right EILITPhoneScreenshots
        "sevenInchScreenshots" -> Right EILITSevenInchScreenshots
        "tenInchScreenshots" -> Right EILITTenInchScreenshots
        "tvScreenshots" -> Right EILITTvScreenshots
        "wearScreenshots" -> Right EILITWearScreenshots
        "icon" -> Right EILITIcon
        "featureGraphic" -> Right EILITFeatureGraphic
        "tvBanner" -> Right EILITTvBanner
        x -> Left ("Unable to parse EditsImagesListImageType from: " <> x)

instance ToHttpApiData EditsImagesListImageType where
    toQueryParam = \case
        EILITAppImageTypeUnspecified -> "appImageTypeUnspecified"
        EILITPhoneScreenshots -> "phoneScreenshots"
        EILITSevenInchScreenshots -> "sevenInchScreenshots"
        EILITTenInchScreenshots -> "tenInchScreenshots"
        EILITTvScreenshots -> "tvScreenshots"
        EILITWearScreenshots -> "wearScreenshots"
        EILITIcon -> "icon"
        EILITFeatureGraphic -> "featureGraphic"
        EILITTvBanner -> "tvBanner"

instance FromJSON EditsImagesListImageType where
    parseJSON = parseJSONText "EditsImagesListImageType"

instance ToJSON EditsImagesListImageType where
    toJSON = toJSONText

-- | Type of the Image.
data EditsImagesUploadImageType
    = EIUITAppImageTypeUnspecified
      -- ^ @appImageTypeUnspecified@
      -- Unspecified type. Do not use.
    | EIUITPhoneScreenshots
      -- ^ @phoneScreenshots@
      -- Phone screenshot.
    | EIUITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
      -- Seven inch screenshot.
    | EIUITTenInchScreenshots
      -- ^ @tenInchScreenshots@
      -- Ten inch screenshot.
    | EIUITTvScreenshots
      -- ^ @tvScreenshots@
      -- TV screenshot.
    | EIUITWearScreenshots
      -- ^ @wearScreenshots@
      -- Wear screenshot.
    | EIUITIcon
      -- ^ @icon@
      -- Icon.
    | EIUITFeatureGraphic
      -- ^ @featureGraphic@
      -- Feature graphic.
    | EIUITTvBanner
      -- ^ @tvBanner@
      -- TV banner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsImagesUploadImageType

instance FromHttpApiData EditsImagesUploadImageType where
    parseQueryParam = \case
        "appImageTypeUnspecified" -> Right EIUITAppImageTypeUnspecified
        "phoneScreenshots" -> Right EIUITPhoneScreenshots
        "sevenInchScreenshots" -> Right EIUITSevenInchScreenshots
        "tenInchScreenshots" -> Right EIUITTenInchScreenshots
        "tvScreenshots" -> Right EIUITTvScreenshots
        "wearScreenshots" -> Right EIUITWearScreenshots
        "icon" -> Right EIUITIcon
        "featureGraphic" -> Right EIUITFeatureGraphic
        "tvBanner" -> Right EIUITTvBanner
        x -> Left ("Unable to parse EditsImagesUploadImageType from: " <> x)

instance ToHttpApiData EditsImagesUploadImageType where
    toQueryParam = \case
        EIUITAppImageTypeUnspecified -> "appImageTypeUnspecified"
        EIUITPhoneScreenshots -> "phoneScreenshots"
        EIUITSevenInchScreenshots -> "sevenInchScreenshots"
        EIUITTenInchScreenshots -> "tenInchScreenshots"
        EIUITTvScreenshots -> "tvScreenshots"
        EIUITWearScreenshots -> "wearScreenshots"
        EIUITIcon -> "icon"
        EIUITFeatureGraphic -> "featureGraphic"
        EIUITTvBanner -> "tvBanner"

instance FromJSON EditsImagesUploadImageType where
    parseJSON = parseJSONText "EditsImagesUploadImageType"

instance ToJSON EditsImagesUploadImageType where
    toJSON = toJSONText

-- | The type of the deobfuscation file.
data EditsDeobfuscationFilesUploadDeobfuscationFileType
    = DeobfuscationFileTypeUnspecified
      -- ^ @deobfuscationFileTypeUnspecified@
      -- Unspecified deobfuscation file type.
    | Proguard
      -- ^ @proguard@
      -- Proguard deobfuscation file type.
    | NATiveCode
      -- ^ @nativeCode@
      -- Native debugging symbols file type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsDeobfuscationFilesUploadDeobfuscationFileType

instance FromHttpApiData EditsDeobfuscationFilesUploadDeobfuscationFileType where
    parseQueryParam = \case
        "deobfuscationFileTypeUnspecified" -> Right DeobfuscationFileTypeUnspecified
        "proguard" -> Right Proguard
        "nativeCode" -> Right NATiveCode
        x -> Left ("Unable to parse EditsDeobfuscationFilesUploadDeobfuscationFileType from: " <> x)

instance ToHttpApiData EditsDeobfuscationFilesUploadDeobfuscationFileType where
    toQueryParam = \case
        DeobfuscationFileTypeUnspecified -> "deobfuscationFileTypeUnspecified"
        Proguard -> "proguard"
        NATiveCode -> "nativeCode"

instance FromJSON EditsDeobfuscationFilesUploadDeobfuscationFileType where
    parseJSON = parseJSONText "EditsDeobfuscationFilesUploadDeobfuscationFileType"

instance ToJSON EditsDeobfuscationFilesUploadDeobfuscationFileType where
    toJSON = toJSONText

-- | The file type of the expansion file configuration which is being
-- updated.
data EditsExpansionFilesUploadExpansionFileType
    = ExpansionFileTypeUnspecified
      -- ^ @expansionFileTypeUnspecified@
      -- Unspecified expansion file type.
    | Main
      -- ^ @main@
      -- Main expansion file.
    | Patch'
      -- ^ @patch@
      -- Patch expansion file.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsExpansionFilesUploadExpansionFileType

instance FromHttpApiData EditsExpansionFilesUploadExpansionFileType where
    parseQueryParam = \case
        "expansionFileTypeUnspecified" -> Right ExpansionFileTypeUnspecified
        "main" -> Right Main
        "patch" -> Right Patch'
        x -> Left ("Unable to parse EditsExpansionFilesUploadExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesUploadExpansionFileType where
    toQueryParam = \case
        ExpansionFileTypeUnspecified -> "expansionFileTypeUnspecified"
        Main -> "main"
        Patch' -> "patch"

instance FromJSON EditsExpansionFilesUploadExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesUploadExpansionFileType"

instance ToJSON EditsExpansionFilesUploadExpansionFileType where
    toJSON = toJSONText

-- | The type of the deobfuscation file.
data DeobfuscationFileSymbolType
    = DFSTDeobfuscationFileTypeUnspecified
      -- ^ @deobfuscationFileTypeUnspecified@
      -- Unspecified deobfuscation file type.
    | DFSTProguard
      -- ^ @proguard@
      -- Proguard deobfuscation file type.
    | DFSTNATiveCode
      -- ^ @nativeCode@
      -- Native debugging symbols file type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeobfuscationFileSymbolType

instance FromHttpApiData DeobfuscationFileSymbolType where
    parseQueryParam = \case
        "deobfuscationFileTypeUnspecified" -> Right DFSTDeobfuscationFileTypeUnspecified
        "proguard" -> Right DFSTProguard
        "nativeCode" -> Right DFSTNATiveCode
        x -> Left ("Unable to parse DeobfuscationFileSymbolType from: " <> x)

instance ToHttpApiData DeobfuscationFileSymbolType where
    toQueryParam = \case
        DFSTDeobfuscationFileTypeUnspecified -> "deobfuscationFileTypeUnspecified"
        DFSTProguard -> "proguard"
        DFSTNATiveCode -> "nativeCode"

instance FromJSON DeobfuscationFileSymbolType where
    parseJSON = parseJSONText "DeobfuscationFileSymbolType"

instance ToJSON DeobfuscationFileSymbolType where
    toJSON = toJSONText

-- | The status of the release.
data TrackReleaseStatus
    = StatusUnspecified
      -- ^ @statusUnspecified@
      -- Unspecified status.
    | Draft
      -- ^ @draft@
      -- The release\'s APKs are not being served to users.
    | InProgress
      -- ^ @inProgress@
      -- The release\'s APKs are being served to a fraction of users, determined
      -- by \'user_fraction\'.
    | Halted
      -- ^ @halted@
      -- The release\'s APKs will no longer be served to users. Users who already
      -- have these APKs are unaffected.
    | Completed
      -- ^ @completed@
      -- The release will have no further changes. Its APKs are being served to
      -- all users, unless they are eligible to APKs of a more recent release.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrackReleaseStatus

instance FromHttpApiData TrackReleaseStatus where
    parseQueryParam = \case
        "statusUnspecified" -> Right StatusUnspecified
        "draft" -> Right Draft
        "inProgress" -> Right InProgress
        "halted" -> Right Halted
        "completed" -> Right Completed
        x -> Left ("Unable to parse TrackReleaseStatus from: " <> x)

instance ToHttpApiData TrackReleaseStatus where
    toQueryParam = \case
        StatusUnspecified -> "statusUnspecified"
        Draft -> "draft"
        InProgress -> "inProgress"
        Halted -> "halted"
        Completed -> "completed"

instance FromJSON TrackReleaseStatus where
    parseJSON = parseJSONText "TrackReleaseStatus"

instance ToJSON TrackReleaseStatus where
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

-- | The file type of the file configuration which is being read or modified.
data EditsExpansionFilesGetExpansionFileType
    = EEFGEFTExpansionFileTypeUnspecified
      -- ^ @expansionFileTypeUnspecified@
      -- Unspecified expansion file type.
    | EEFGEFTMain
      -- ^ @main@
      -- Main expansion file.
    | EEFGEFTPatch'
      -- ^ @patch@
      -- Patch expansion file.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsExpansionFilesGetExpansionFileType

instance FromHttpApiData EditsExpansionFilesGetExpansionFileType where
    parseQueryParam = \case
        "expansionFileTypeUnspecified" -> Right EEFGEFTExpansionFileTypeUnspecified
        "main" -> Right EEFGEFTMain
        "patch" -> Right EEFGEFTPatch'
        x -> Left ("Unable to parse EditsExpansionFilesGetExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesGetExpansionFileType where
    toQueryParam = \case
        EEFGEFTExpansionFileTypeUnspecified -> "expansionFileTypeUnspecified"
        EEFGEFTMain -> "main"
        EEFGEFTPatch' -> "patch"

instance FromJSON EditsExpansionFilesGetExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesGetExpansionFileType"

instance ToJSON EditsExpansionFilesGetExpansionFileType where
    toJSON = toJSONText

-- | The file type of the expansion file configuration which is being
-- updated.
data EditsExpansionFilesPatchExpansionFileType
    = EEFPEFTExpansionFileTypeUnspecified
      -- ^ @expansionFileTypeUnspecified@
      -- Unspecified expansion file type.
    | EEFPEFTMain
      -- ^ @main@
      -- Main expansion file.
    | EEFPEFTPatch'
      -- ^ @patch@
      -- Patch expansion file.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsExpansionFilesPatchExpansionFileType

instance FromHttpApiData EditsExpansionFilesPatchExpansionFileType where
    parseQueryParam = \case
        "expansionFileTypeUnspecified" -> Right EEFPEFTExpansionFileTypeUnspecified
        "main" -> Right EEFPEFTMain
        "patch" -> Right EEFPEFTPatch'
        x -> Left ("Unable to parse EditsExpansionFilesPatchExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesPatchExpansionFileType where
    toQueryParam = \case
        EEFPEFTExpansionFileTypeUnspecified -> "expansionFileTypeUnspecified"
        EEFPEFTMain -> "main"
        EEFPEFTPatch' -> "patch"

instance FromJSON EditsExpansionFilesPatchExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesPatchExpansionFileType"

instance ToJSON EditsExpansionFilesPatchExpansionFileType where
    toJSON = toJSONText

-- | The file type of the file configuration which is being read or modified.
data EditsExpansionFilesUpdateExpansionFileType
    = EEFUEFTExpansionFileTypeUnspecified
      -- ^ @expansionFileTypeUnspecified@
      -- Unspecified expansion file type.
    | EEFUEFTMain
      -- ^ @main@
      -- Main expansion file.
    | EEFUEFTPatch'
      -- ^ @patch@
      -- Patch expansion file.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsExpansionFilesUpdateExpansionFileType

instance FromHttpApiData EditsExpansionFilesUpdateExpansionFileType where
    parseQueryParam = \case
        "expansionFileTypeUnspecified" -> Right EEFUEFTExpansionFileTypeUnspecified
        "main" -> Right EEFUEFTMain
        "patch" -> Right EEFUEFTPatch'
        x -> Left ("Unable to parse EditsExpansionFilesUpdateExpansionFileType from: " <> x)

instance ToHttpApiData EditsExpansionFilesUpdateExpansionFileType where
    toQueryParam = \case
        EEFUEFTExpansionFileTypeUnspecified -> "expansionFileTypeUnspecified"
        EEFUEFTMain -> "main"
        EEFUEFTPatch' -> "patch"

instance FromJSON EditsExpansionFilesUpdateExpansionFileType where
    parseJSON = parseJSONText "EditsExpansionFilesUpdateExpansionFileType"

instance ToJSON EditsExpansionFilesUpdateExpansionFileType where
    toJSON = toJSONText

-- | Type of the Image.
data EditsImagesDeleteImageType
    = EIDITAppImageTypeUnspecified
      -- ^ @appImageTypeUnspecified@
      -- Unspecified type. Do not use.
    | EIDITPhoneScreenshots
      -- ^ @phoneScreenshots@
      -- Phone screenshot.
    | EIDITSevenInchScreenshots
      -- ^ @sevenInchScreenshots@
      -- Seven inch screenshot.
    | EIDITTenInchScreenshots
      -- ^ @tenInchScreenshots@
      -- Ten inch screenshot.
    | EIDITTvScreenshots
      -- ^ @tvScreenshots@
      -- TV screenshot.
    | EIDITWearScreenshots
      -- ^ @wearScreenshots@
      -- Wear screenshot.
    | EIDITIcon
      -- ^ @icon@
      -- Icon.
    | EIDITFeatureGraphic
      -- ^ @featureGraphic@
      -- Feature graphic.
    | EIDITTvBanner
      -- ^ @tvBanner@
      -- TV banner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EditsImagesDeleteImageType

instance FromHttpApiData EditsImagesDeleteImageType where
    parseQueryParam = \case
        "appImageTypeUnspecified" -> Right EIDITAppImageTypeUnspecified
        "phoneScreenshots" -> Right EIDITPhoneScreenshots
        "sevenInchScreenshots" -> Right EIDITSevenInchScreenshots
        "tenInchScreenshots" -> Right EIDITTenInchScreenshots
        "tvScreenshots" -> Right EIDITTvScreenshots
        "wearScreenshots" -> Right EIDITWearScreenshots
        "icon" -> Right EIDITIcon
        "featureGraphic" -> Right EIDITFeatureGraphic
        "tvBanner" -> Right EIDITTvBanner
        x -> Left ("Unable to parse EditsImagesDeleteImageType from: " <> x)

instance ToHttpApiData EditsImagesDeleteImageType where
    toQueryParam = \case
        EIDITAppImageTypeUnspecified -> "appImageTypeUnspecified"
        EIDITPhoneScreenshots -> "phoneScreenshots"
        EIDITSevenInchScreenshots -> "sevenInchScreenshots"
        EIDITTenInchScreenshots -> "tenInchScreenshots"
        EIDITTvScreenshots -> "tvScreenshots"
        EIDITWearScreenshots -> "wearScreenshots"
        EIDITIcon -> "icon"
        EIDITFeatureGraphic -> "featureGraphic"
        EIDITTvBanner -> "tvBanner"

instance FromJSON EditsImagesDeleteImageType where
    parseJSON = parseJSONText "EditsImagesDeleteImageType"

instance ToJSON EditsImagesDeleteImageType where
    toJSON = toJSONText

-- | The status of the product, e.g. whether it\'s active.
data InAppProductStatus
    = IAPSStatusUnspecified
      -- ^ @statusUnspecified@
      -- Unspecified status.
    | IAPSActive
      -- ^ @active@
      -- The product is published and active in the store.
    | IAPSInactive
      -- ^ @inactive@
      -- The product is not published and therefore inactive in the store.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InAppProductStatus

instance FromHttpApiData InAppProductStatus where
    parseQueryParam = \case
        "statusUnspecified" -> Right IAPSStatusUnspecified
        "active" -> Right IAPSActive
        "inactive" -> Right IAPSInactive
        x -> Left ("Unable to parse InAppProductStatus from: " <> x)

instance ToHttpApiData InAppProductStatus where
    toQueryParam = \case
        IAPSStatusUnspecified -> "statusUnspecified"
        IAPSActive -> "active"
        IAPSInactive -> "inactive"

instance FromJSON InAppProductStatus where
    parseJSON = parseJSONText "InAppProductStatus"

instance ToJSON InAppProductStatus where
    toJSON = toJSONText
