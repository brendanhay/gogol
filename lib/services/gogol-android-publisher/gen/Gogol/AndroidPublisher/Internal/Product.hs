{-# LANGUAGE CPP #-}
-- |
-- Module      : Gogol.AndroidPublisher.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AndroidPublisher.Internal.Product
  (

    -- * Apk

-- | Information about an APK. The resource for ApksService.
--
-- Construct a default value using the 'MkApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Apk = Apk
    {
      -- | Information about the binary payload of this APK.
      binary :: Core.Maybe ApkBinary
      -- | The version code of the APK, as specified in the manifest file.
    , versionCode :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Apk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApk :: Apk
pattern MkApk{} = Apk{binary = Core.Nothing, versionCode = Core.Nothing}

{-# DEPRECATED mkApk "Please use MkApk instead" #-}
#endif

-- | Create 'Apk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApk :: Apk
mkApk = Apk{binary = Core.Nothing, versionCode = Core.Nothing}

    -- * ApkBinary

-- | Represents the binary payload of an APK.
--
-- Construct a default value using the 'MkApkBinary' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ApkBinary = ApkBinary
    {
      -- | A sha1 hash of the APK payload, encoded as a hex string and matching the output of the sha1sum command.
      sha1 :: Core.Maybe Core.Text
      -- | A sha256 hash of the APK payload, encoded as a hex string and matching the output of the sha256sum command.
    , sha256 :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApkBinary' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApkBinary :: ApkBinary
pattern MkApkBinary{} = ApkBinary{sha1 = Core.Nothing, sha256 = Core.Nothing}

{-# DEPRECATED mkApkBinary "Please use MkApkBinary instead" #-}
#endif

-- | Create 'ApkBinary' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApkBinary :: ApkBinary
mkApkBinary = ApkBinary{sha1 = Core.Nothing, sha256 = Core.Nothing}

    -- * ApksAddExternallyHostedRequest

-- | Request to create a new externally hosted APK.
--
-- Construct a default value using the 'MkApksAddExternallyHostedRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ApksAddExternallyHostedRequest = ApksAddExternallyHostedRequest
    {
      -- | The definition of the externally-hosted APK and where it is located.
      externallyHostedApk :: Core.Maybe ExternallyHostedApk
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApksAddExternallyHostedRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApksAddExternallyHostedRequest :: ApksAddExternallyHostedRequest
pattern MkApksAddExternallyHostedRequest{} = ApksAddExternallyHostedRequest{externallyHostedApk = Core.Nothing}

{-# DEPRECATED mkApksAddExternallyHostedRequest "Please use MkApksAddExternallyHostedRequest instead" #-}
#endif

-- | Create 'ApksAddExternallyHostedRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApksAddExternallyHostedRequest :: ApksAddExternallyHostedRequest
mkApksAddExternallyHostedRequest = ApksAddExternallyHostedRequest{externallyHostedApk = Core.Nothing}

    -- * ApksAddExternallyHostedResponse

-- | Response for creating a new externally hosted APK.
--
-- Construct a default value using the 'MkApksAddExternallyHostedResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ApksAddExternallyHostedResponse = ApksAddExternallyHostedResponse
    {
      -- | The definition of the externally-hosted APK and where it is located.
      externallyHostedApk :: Core.Maybe ExternallyHostedApk
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApksAddExternallyHostedResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApksAddExternallyHostedResponse :: ApksAddExternallyHostedResponse
pattern MkApksAddExternallyHostedResponse{} = ApksAddExternallyHostedResponse{externallyHostedApk = Core.Nothing}

{-# DEPRECATED mkApksAddExternallyHostedResponse "Please use MkApksAddExternallyHostedResponse instead" #-}
#endif

-- | Create 'ApksAddExternallyHostedResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApksAddExternallyHostedResponse :: ApksAddExternallyHostedResponse
mkApksAddExternallyHostedResponse = ApksAddExternallyHostedResponse{externallyHostedApk = Core.Nothing}

    -- * ApksListResponse

-- | Response listing all APKs.
--
-- Construct a default value using the 'MkApksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ApksListResponse = ApksListResponse
    {
      -- | All APKs.
      apks :: [Apk]
      -- | The kind of this response (\"androidpublisher#apksListResponse\").
    , kind :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApksListResponse :: ApksListResponse
pattern MkApksListResponse{} = ApksListResponse{apks = Core.Nothing, kind = Core.Nothing}

{-# DEPRECATED mkApksListResponse "Please use MkApksListResponse instead" #-}
#endif

-- | Create 'ApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApksListResponse :: ApksListResponse
mkApksListResponse = ApksListResponse{apks = Core.Nothing, kind = Core.Nothing}

    -- * AppDetails

-- | The app details. The resource for DetailsService.
--
-- Construct a default value using the 'MkAppDetails' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AppDetails = AppDetails
    {
      -- | The user-visible support email for this app.
      contactEmail :: Core.Maybe Core.Text
      -- | The user-visible support telephone number for this app.
    , contactPhone :: Core.Maybe Core.Text
      -- | The user-visible website for this app.
    , contactWebsite :: Core.Maybe Core.Text
      -- | Default language code, in BCP 47 format (eg \"en-US\").
    , defaultLanguage :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AppDetails' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAppDetails :: AppDetails
pattern MkAppDetails{} =
        AppDetails{contactEmail = Core.Nothing, contactPhone = Core.Nothing, contactWebsite = Core.Nothing,
                   defaultLanguage = Core.Nothing}

{-# DEPRECATED mkAppDetails "Please use MkAppDetails instead" #-}
#endif

-- | Create 'AppDetails' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAppDetails :: AppDetails
mkAppDetails
  = AppDetails{contactEmail = Core.Nothing, contactPhone = Core.Nothing, contactWebsite = Core.Nothing,
               defaultLanguage = Core.Nothing}

    -- * AppEdit

-- | An app edit. The resource for EditsService.
--
-- Construct a default value using the 'MkAppEdit' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AppEdit = AppEdit
    {
      -- | Output only. The time (as seconds since Epoch) at which the edit will expire and will be no longer valid for use.
      expiryTimeSeconds :: Core.Maybe Core.Text
      -- | Output only. Identifier of the edit. Can be used in subsequent API calls.
    , id :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AppEdit' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAppEdit :: AppEdit
pattern MkAppEdit{} = AppEdit{expiryTimeSeconds = Core.Nothing, id = Core.Nothing}

{-# DEPRECATED mkAppEdit "Please use MkAppEdit instead" #-}
#endif

-- | Create 'AppEdit' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAppEdit :: AppEdit
mkAppEdit = AppEdit{expiryTimeSeconds = Core.Nothing, id = Core.Nothing}

    -- * Bundle

-- | Information about an app bundle. The resource for BundlesService.
--
-- Construct a default value using the 'MkBundle' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Bundle = Bundle
    {
      -- | A sha1 hash of the upload payload, encoded as a hex string and matching the output of the sha1sum command.
      sha1 :: Core.Maybe Core.Text
      -- | A sha256 hash of the upload payload, encoded as a hex string and matching the output of the sha256sum command.
    , sha256 :: Core.Maybe Core.Text
      -- | The version code of the Android App Bundle, as specified in the Android App Bundle\'s base module APK manifest file.
    , versionCode :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Bundle' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkBundle :: Bundle
pattern MkBundle{} = Bundle{sha1 = Core.Nothing, sha256 = Core.Nothing, versionCode = Core.Nothing}

{-# DEPRECATED mkBundle "Please use MkBundle instead" #-}
#endif

-- | Create 'Bundle' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkBundle :: Bundle
mkBundle = Bundle{sha1 = Core.Nothing, sha256 = Core.Nothing, versionCode = Core.Nothing}

    -- * BundlesListResponse

-- | Response listing all app bundles.
--
-- Construct a default value using the 'MkBundlesListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data BundlesListResponse = BundlesListResponse
    {
      -- | All app bundles.
      bundles :: [Bundle]
      -- | The kind of this response (\"androidpublisher#bundlesListResponse\").
    , kind :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'BundlesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkBundlesListResponse :: BundlesListResponse
pattern MkBundlesListResponse{} = BundlesListResponse{bundles = Core.Nothing, kind = Core.Nothing}

{-# DEPRECATED mkBundlesListResponse "Please use MkBundlesListResponse instead" #-}
#endif

-- | Create 'BundlesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkBundlesListResponse :: BundlesListResponse
mkBundlesListResponse = BundlesListResponse{bundles = Core.Nothing, kind = Core.Nothing}

    -- * Comment

-- | An entry of conversation between user and developer.
--
-- Construct a default value using the 'MkComment' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Comment = Comment
    {
      -- | A comment from a developer.
      developerComment :: Core.Maybe DeveloperComment
      -- | A comment from a user.
    , userComment :: Core.Maybe UserComment
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Comment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkComment :: Comment
pattern MkComment{} = Comment{developerComment = Core.Nothing, userComment = Core.Nothing}

{-# DEPRECATED mkComment "Please use MkComment instead" #-}
#endif

-- | Create 'Comment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkComment :: Comment
mkComment = Comment{developerComment = Core.Nothing, userComment = Core.Nothing}

    -- * ConvertRegionPricesRequest

-- | Request message for ConvertRegionPrices.
--
-- Construct a default value using the 'MkConvertRegionPricesRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ConvertRegionPricesRequest = ConvertRegionPricesRequest
    {
      -- | The intital price to convert other regions from. Tax exclusive.
      price :: Core.Maybe Money
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertRegionPricesRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertRegionPricesRequest :: ConvertRegionPricesRequest
pattern MkConvertRegionPricesRequest{} = ConvertRegionPricesRequest{price = Core.Nothing}

{-# DEPRECATED mkConvertRegionPricesRequest "Please use MkConvertRegionPricesRequest instead" #-}
#endif

-- | Create 'ConvertRegionPricesRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertRegionPricesRequest :: ConvertRegionPricesRequest
mkConvertRegionPricesRequest = ConvertRegionPricesRequest{price = Core.Nothing}

    -- * ConvertRegionPricesResponse

-- | Response message for ConvertRegionPrices.
--
-- Construct a default value using the 'MkConvertRegionPricesResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ConvertRegionPricesResponse = ConvertRegionPricesResponse
    {
      -- | Converted other regions prices in USD and EUR, to use for countries where Play doesn\'t support a country\'s local currency.
      convertedOtherRegionsPrice :: Core.Maybe ConvertedOtherRegionsPrice
      -- | Map from region code to converted region price.
    , convertedRegionPrices :: Core.Maybe ConvertRegionPricesResponse'ConvertedRegionPrices
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertRegionPricesResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertRegionPricesResponse :: ConvertRegionPricesResponse
pattern MkConvertRegionPricesResponse{} =
        ConvertRegionPricesResponse{convertedOtherRegionsPrice = Core.Nothing, convertedRegionPrices = Core.Nothing}

{-# DEPRECATED mkConvertRegionPricesResponse "Please use MkConvertRegionPricesResponse instead" #-}
#endif

-- | Create 'ConvertRegionPricesResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertRegionPricesResponse :: ConvertRegionPricesResponse
mkConvertRegionPricesResponse
  = ConvertRegionPricesResponse{convertedOtherRegionsPrice = Core.Nothing, convertedRegionPrices = Core.Nothing}

    -- * ConvertRegionPricesResponse'ConvertedRegionPrices

-- | Map from region code to converted region price.
newtype ConvertRegionPricesResponse'ConvertedRegionPrices = ConvertRegionPricesResponse'ConvertedRegionPrices
    {
      -- | 
      additional :: Core.HashMap Core.Text ConvertedRegionPrice
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

    -- * ConvertedOtherRegionsPrice

-- | Converted other regions prices.
--
-- Construct a default value using the 'MkConvertedOtherRegionsPrice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ConvertedOtherRegionsPrice = ConvertedOtherRegionsPrice
    {
      -- | Price in EUR to use for the \"Other regions\" location exclusive of taxes.
      eurPrice :: Core.Maybe Money
      -- | Price in USD to use for the \"Other regions\" location exclusive of taxes.
    , usdPrice :: Core.Maybe Money
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertedOtherRegionsPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertedOtherRegionsPrice :: ConvertedOtherRegionsPrice
pattern MkConvertedOtherRegionsPrice{} = ConvertedOtherRegionsPrice{eurPrice = Core.Nothing, usdPrice = Core.Nothing}

{-# DEPRECATED mkConvertedOtherRegionsPrice "Please use MkConvertedOtherRegionsPrice instead" #-}
#endif

-- | Create 'ConvertedOtherRegionsPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertedOtherRegionsPrice :: ConvertedOtherRegionsPrice
mkConvertedOtherRegionsPrice = ConvertedOtherRegionsPrice{eurPrice = Core.Nothing, usdPrice = Core.Nothing}

    -- * ConvertedRegionPrice

-- | A converted region price.
--
-- Construct a default value using the 'MkConvertedRegionPrice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ConvertedRegionPrice = ConvertedRegionPrice
    {
      -- | The converted price tax inclusive.
      price :: Core.Maybe Money
      -- | The region code of the region.
    , regionCode :: Core.Maybe Core.Text
      -- | The tax amount of the converted price.
    , taxAmount :: Core.Maybe Money
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertedRegionPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertedRegionPrice :: ConvertedRegionPrice
pattern MkConvertedRegionPrice{} =
        ConvertedRegionPrice{price = Core.Nothing, regionCode = Core.Nothing, taxAmount = Core.Nothing}

{-# DEPRECATED mkConvertedRegionPrice "Please use MkConvertedRegionPrice instead" #-}
#endif

-- | Create 'ConvertedRegionPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertedRegionPrice :: ConvertedRegionPrice
mkConvertedRegionPrice = ConvertedRegionPrice{price = Core.Nothing, regionCode = Core.Nothing, taxAmount = Core.Nothing}

    -- * CountryTargeting

-- | Country targeting specification.
--
-- Construct a default value using the 'MkCountryTargeting' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data CountryTargeting = CountryTargeting
    {
      -- | Countries to target, specified as two letter <https://unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html CLDR codes>.
      countries :: [Core.Text]
      -- | Include \"rest of world\" as well as explicitly targeted countries.
    , includeRestOfWorld :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'CountryTargeting' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkCountryTargeting :: CountryTargeting
pattern MkCountryTargeting{} = CountryTargeting{countries = Core.Nothing, includeRestOfWorld = Core.Nothing}

{-# DEPRECATED mkCountryTargeting "Please use MkCountryTargeting instead" #-}
#endif

-- | Create 'CountryTargeting' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkCountryTargeting :: CountryTargeting
mkCountryTargeting = CountryTargeting{countries = Core.Nothing, includeRestOfWorld = Core.Nothing}

    -- * DeobfuscationFile

-- | Represents a deobfuscation file.
--
-- Construct a default value using the 'MkDeobfuscationFile' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype DeobfuscationFile = DeobfuscationFile
    {
      -- | The type of the deobfuscation file.
      symbolType :: Core.Maybe DeobfuscationFile'SymbolType
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeobfuscationFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeobfuscationFile :: DeobfuscationFile
pattern MkDeobfuscationFile{} = DeobfuscationFile{symbolType = Core.Nothing}

{-# DEPRECATED mkDeobfuscationFile "Please use MkDeobfuscationFile instead" #-}
#endif

-- | Create 'DeobfuscationFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeobfuscationFile :: DeobfuscationFile
mkDeobfuscationFile = DeobfuscationFile{symbolType = Core.Nothing}

    -- * DeobfuscationFilesUploadResponse

-- | Responses for the upload.
--
-- Construct a default value using the 'MkDeobfuscationFilesUploadResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype DeobfuscationFilesUploadResponse = DeobfuscationFilesUploadResponse
    {
      -- | The uploaded Deobfuscation File configuration.
      deobfuscationFile :: Core.Maybe DeobfuscationFile
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeobfuscationFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeobfuscationFilesUploadResponse :: DeobfuscationFilesUploadResponse
pattern MkDeobfuscationFilesUploadResponse{} = DeobfuscationFilesUploadResponse{deobfuscationFile = Core.Nothing}

{-# DEPRECATED mkDeobfuscationFilesUploadResponse "Please use MkDeobfuscationFilesUploadResponse instead" #-}
#endif

-- | Create 'DeobfuscationFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeobfuscationFilesUploadResponse :: DeobfuscationFilesUploadResponse
mkDeobfuscationFilesUploadResponse = DeobfuscationFilesUploadResponse{deobfuscationFile = Core.Nothing}

    -- * DeveloperComment

-- | Developer entry from conversation between user and developer.
--
-- Construct a default value using the 'MkDeveloperComment' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data DeveloperComment = DeveloperComment
    {
      -- | The last time at which this comment was updated.
      lastModified :: Core.Maybe Timestamp
      -- | The content of the comment, i.e. reply body.
    , text :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeveloperComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeveloperComment :: DeveloperComment
pattern MkDeveloperComment{} = DeveloperComment{lastModified = Core.Nothing, text = Core.Nothing}

{-# DEPRECATED mkDeveloperComment "Please use MkDeveloperComment instead" #-}
#endif

-- | Create 'DeveloperComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeveloperComment :: DeveloperComment
mkDeveloperComment = DeveloperComment{lastModified = Core.Nothing, text = Core.Nothing}

    -- * DeviceMetadata

-- | Characteristics of the user\'s device.
--
-- Construct a default value using the 'MkDeviceMetadata' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data DeviceMetadata = DeviceMetadata
    {
      -- | Device CPU make, e.g. \"Qualcomm\".
      cpuMake :: Core.Maybe Core.Text
      -- | Device CPU model, e.g. \"MSM8974\".
    , cpuModel :: Core.Maybe Core.Text
      -- | Device class (e.g. tablet).
    , deviceClass :: Core.Maybe Core.Text
      -- | OpenGL version.
    , glEsVersion :: Core.Maybe Core.Int32
      -- | Device manufacturer (e.g. Motorola).
    , manufacturer :: Core.Maybe Core.Text
      -- | Comma separated list of native platforms (e.g. \"arm\", \"arm7\").
    , nativePlatform :: Core.Maybe Core.Text
      -- | Device model name (e.g. Droid).
    , productName :: Core.Maybe Core.Text
      -- | Device RAM in Megabytes, e.g. \"2048\".
    , ramMb :: Core.Maybe Core.Int32
      -- | Screen density in DPI.
    , screenDensityDpi :: Core.Maybe Core.Int32
      -- | Screen height in pixels.
    , screenHeightPx :: Core.Maybe Core.Int32
      -- | Screen width in pixels.
    , screenWidthPx :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeviceMetadata' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeviceMetadata :: DeviceMetadata
pattern MkDeviceMetadata{} =
        DeviceMetadata{cpuMake = Core.Nothing, cpuModel = Core.Nothing, deviceClass = Core.Nothing, glEsVersion = Core.Nothing,
                       manufacturer = Core.Nothing, nativePlatform = Core.Nothing, productName = Core.Nothing, ramMb = Core.Nothing,
                       screenDensityDpi = Core.Nothing, screenHeightPx = Core.Nothing, screenWidthPx = Core.Nothing}

{-# DEPRECATED mkDeviceMetadata "Please use MkDeviceMetadata instead" #-}
#endif

-- | Create 'DeviceMetadata' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeviceMetadata :: DeviceMetadata
mkDeviceMetadata
  = DeviceMetadata{cpuMake = Core.Nothing, cpuModel = Core.Nothing, deviceClass = Core.Nothing, glEsVersion = Core.Nothing,
                   manufacturer = Core.Nothing, nativePlatform = Core.Nothing, productName = Core.Nothing, ramMb = Core.Nothing,
                   screenDensityDpi = Core.Nothing, screenHeightPx = Core.Nothing, screenWidthPx = Core.Nothing}

    -- * DeviceSpec

-- | The device spec used to generate a system APK.
--
-- Construct a default value using the 'MkDeviceSpec' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data DeviceSpec = DeviceSpec
    {
      -- | Screen dpi.
      screenDensity :: Core.Maybe Core.Word32
      -- | Supported ABI architectures in the order of preference. The values should be the string as reported by the platform, e.g. \"armeabi-v7a\", \"x86_64\".
    , supportedAbis :: [Core.Text]
      -- | All installed locales represented as BCP-47 strings, e.g. \"en-US\".
    , supportedLocales :: [Core.Text]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeviceSpec' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeviceSpec :: DeviceSpec
pattern MkDeviceSpec{} = DeviceSpec{screenDensity = Core.Nothing, supportedAbis = Core.Nothing, supportedLocales = Core.Nothing}

{-# DEPRECATED mkDeviceSpec "Please use MkDeviceSpec instead" #-}
#endif

-- | Create 'DeviceSpec' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeviceSpec :: DeviceSpec
mkDeviceSpec = DeviceSpec{screenDensity = Core.Nothing, supportedAbis = Core.Nothing, supportedLocales = Core.Nothing}

    -- * ExpansionFile

-- | An expansion file. The resource for ExpansionFilesService.
--
-- Construct a default value using the 'MkExpansionFile' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ExpansionFile = ExpansionFile
    {
      -- | If set, this field indicates that this APK has an expansion file uploaded to it: this APK does not reference another APK\'s expansion file. The field\'s value is the size of the uploaded expansion file in bytes.
      fileSize :: Core.Maybe Core.Int64
      -- | If set, this APK\'s expansion file references another APK\'s expansion file. The file_size field will not be set.
    , referencesVersion :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ExpansionFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkExpansionFile :: ExpansionFile
pattern MkExpansionFile{} = ExpansionFile{fileSize = Core.Nothing, referencesVersion = Core.Nothing}

{-# DEPRECATED mkExpansionFile "Please use MkExpansionFile instead" #-}
#endif

-- | Create 'ExpansionFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkExpansionFile :: ExpansionFile
mkExpansionFile = ExpansionFile{fileSize = Core.Nothing, referencesVersion = Core.Nothing}

    -- * ExpansionFilesUploadResponse

-- | Response for uploading an expansion file.
--
-- Construct a default value using the 'MkExpansionFilesUploadResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ExpansionFilesUploadResponse = ExpansionFilesUploadResponse
    {
      -- | The uploaded expansion file configuration.
      expansionFile :: Core.Maybe ExpansionFile
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ExpansionFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkExpansionFilesUploadResponse :: ExpansionFilesUploadResponse
pattern MkExpansionFilesUploadResponse{} = ExpansionFilesUploadResponse{expansionFile = Core.Nothing}

{-# DEPRECATED mkExpansionFilesUploadResponse "Please use MkExpansionFilesUploadResponse instead" #-}
#endif

-- | Create 'ExpansionFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkExpansionFilesUploadResponse :: ExpansionFilesUploadResponse
mkExpansionFilesUploadResponse = ExpansionFilesUploadResponse{expansionFile = Core.Nothing}

    -- * ExternallyHostedApk

-- | Defines an APK available for this application that is hosted externally and not uploaded to Google Play. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.
--
-- Construct a default value using the 'MkExternallyHostedApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ExternallyHostedApk = ExternallyHostedApk
    {
      -- | The application label.
      applicationLabel :: Core.Maybe Core.Text
      -- | A certificate (or array of certificates if a certificate-chain is used) used to sign this APK, represented as a base64 encoded byte array.
    , certificateBase64s :: [Core.Text]
      -- | The URL at which the APK is hosted. This must be an https URL.
    , externallyHostedUrl :: Core.Maybe Core.Text
      -- | The sha1 checksum of this APK, represented as a base64 encoded byte array.
    , fileSha1Base64 :: Core.Maybe Core.Text
      -- | The sha256 checksum of this APK, represented as a base64 encoded byte array.
    , fileSha256Base64 :: Core.Maybe Core.Text
      -- | The file size in bytes of this APK.
    , fileSize :: Core.Maybe Core.Int64
      -- | The icon image from the APK, as a base64 encoded byte array.
    , iconBase64 :: Core.Maybe Core.Text
      -- | The maximum SDK supported by this APK (optional).
    , maximumSdk :: Core.Maybe Core.Int32
      -- | The minimum SDK targeted by this APK.
    , minimumSdk :: Core.Maybe Core.Int32
      -- | The native code environments supported by this APK (optional).
    , nativeCodes :: [Core.Text]
      -- | The package name.
    , packageName :: Core.Maybe Core.Text
      -- | The features required by this APK (optional).
    , usesFeatures :: [Core.Text]
      -- | The permissions requested by this APK.
    , usesPermissions :: [UsesPermission]
      -- | The version code of this APK.
    , versionCode :: Core.Maybe Core.Int32
      -- | The version name of this APK.
    , versionName :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ExternallyHostedApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkExternallyHostedApk :: ExternallyHostedApk
pattern MkExternallyHostedApk{} =
        ExternallyHostedApk{applicationLabel = Core.Nothing, certificateBase64s = Core.Nothing, externallyHostedUrl = Core.Nothing,
                            fileSha1Base64 = Core.Nothing, fileSha256Base64 = Core.Nothing, fileSize = Core.Nothing, iconBase64 = Core.Nothing,
                            maximumSdk = Core.Nothing, minimumSdk = Core.Nothing, nativeCodes = Core.Nothing, packageName = Core.Nothing,
                            usesFeatures = Core.Nothing, usesPermissions = Core.Nothing, versionCode = Core.Nothing, versionName = Core.Nothing}

{-# DEPRECATED mkExternallyHostedApk "Please use MkExternallyHostedApk instead" #-}
#endif

-- | Create 'ExternallyHostedApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkExternallyHostedApk :: ExternallyHostedApk
mkExternallyHostedApk
  = ExternallyHostedApk{applicationLabel = Core.Nothing, certificateBase64s = Core.Nothing, externallyHostedUrl = Core.Nothing,
                        fileSha1Base64 = Core.Nothing, fileSha256Base64 = Core.Nothing, fileSize = Core.Nothing, iconBase64 = Core.Nothing,
                        maximumSdk = Core.Nothing, minimumSdk = Core.Nothing, nativeCodes = Core.Nothing, packageName = Core.Nothing,
                        usesFeatures = Core.Nothing, usesPermissions = Core.Nothing, versionCode = Core.Nothing, versionName = Core.Nothing}

    -- * GeneratedApksListResponse

-- | Response to list generated APKs.
--
-- Construct a default value using the 'MkGeneratedApksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype GeneratedApksListResponse = GeneratedApksListResponse
    {
      -- | All generated APKs, grouped by the APK signing key.
      generatedApks :: [GeneratedApksPerSigningKey]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedApksListResponse :: GeneratedApksListResponse
pattern MkGeneratedApksListResponse{} = GeneratedApksListResponse{generatedApks = Core.Nothing}

{-# DEPRECATED mkGeneratedApksListResponse "Please use MkGeneratedApksListResponse instead" #-}
#endif

-- | Create 'GeneratedApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedApksListResponse :: GeneratedApksListResponse
mkGeneratedApksListResponse = GeneratedApksListResponse{generatedApks = Core.Nothing}

    -- * GeneratedApksPerSigningKey

-- | Download metadata for split, standalone and universal APKs, as well as asset pack slices, signed with a given key.
--
-- Construct a default value using the 'MkGeneratedApksPerSigningKey' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedApksPerSigningKey = GeneratedApksPerSigningKey
    {
      -- | SHA256 hash of the APK signing public key certificate.
      certificateSha256Hash :: Core.Maybe Core.Text
      -- | List of asset pack slices which will be served for this app bundle, signed with a key corresponding to certificate/sha256/hash.
    , generatedAssetPackSlices :: [GeneratedAssetPackSlice]
      -- | List of generated split APKs, signed with a key corresponding to certificate/sha256/hash.
    , generatedSplitApks :: [GeneratedSplitApk]
      -- | List of generated standalone APKs, signed with a key corresponding to certificate/sha256/hash.
    , generatedStandaloneApks :: [GeneratedStandaloneApk]
      -- | Generated universal APK, signed with a key corresponding to certificate/sha256/hash. This field is not set if no universal APK was generated for this signing key.
    , generatedUniversalApk :: Core.Maybe GeneratedUniversalApk
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedApksPerSigningKey' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedApksPerSigningKey :: GeneratedApksPerSigningKey
pattern MkGeneratedApksPerSigningKey{} =
        GeneratedApksPerSigningKey{certificateSha256Hash = Core.Nothing, generatedAssetPackSlices = Core.Nothing,
                                   generatedSplitApks = Core.Nothing, generatedStandaloneApks = Core.Nothing, generatedUniversalApk = Core.Nothing}

{-# DEPRECATED mkGeneratedApksPerSigningKey "Please use MkGeneratedApksPerSigningKey instead" #-}
#endif

-- | Create 'GeneratedApksPerSigningKey' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedApksPerSigningKey :: GeneratedApksPerSigningKey
mkGeneratedApksPerSigningKey
  = GeneratedApksPerSigningKey{certificateSha256Hash = Core.Nothing, generatedAssetPackSlices = Core.Nothing,
                               generatedSplitApks = Core.Nothing, generatedStandaloneApks = Core.Nothing, generatedUniversalApk = Core.Nothing}

    -- * GeneratedAssetPackSlice

-- | Download metadata for an asset pack slice.
--
-- Construct a default value using the 'MkGeneratedAssetPackSlice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedAssetPackSlice = GeneratedAssetPackSlice
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
      -- | Name of the module that this asset slice belongs to.
    , moduleName :: Core.Maybe Core.Text
      -- | Asset slice ID.
    , sliceId :: Core.Maybe Core.Text
      -- | Asset module version.
    , version :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedAssetPackSlice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedAssetPackSlice :: GeneratedAssetPackSlice
pattern MkGeneratedAssetPackSlice{} =
        GeneratedAssetPackSlice{downloadId = Core.Nothing, moduleName = Core.Nothing, sliceId = Core.Nothing, version = Core.Nothing}

{-# DEPRECATED mkGeneratedAssetPackSlice "Please use MkGeneratedAssetPackSlice instead" #-}
#endif

-- | Create 'GeneratedAssetPackSlice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedAssetPackSlice :: GeneratedAssetPackSlice
mkGeneratedAssetPackSlice
  = GeneratedAssetPackSlice{downloadId = Core.Nothing, moduleName = Core.Nothing, sliceId = Core.Nothing, version = Core.Nothing}

    -- * GeneratedSplitApk

-- | Download metadata for a split APK.
--
-- Construct a default value using the 'MkGeneratedSplitApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedSplitApk = GeneratedSplitApk
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
      -- | Name of the module that this APK belongs to.
    , moduleName :: Core.Maybe Core.Text
      -- | Split ID. Empty for the main split of the base module.
    , splitId :: Core.Maybe Core.Text
      -- | ID of the generated variant.
    , variantId :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedSplitApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedSplitApk :: GeneratedSplitApk
pattern MkGeneratedSplitApk{} =
        GeneratedSplitApk{downloadId = Core.Nothing, moduleName = Core.Nothing, splitId = Core.Nothing, variantId = Core.Nothing}

{-# DEPRECATED mkGeneratedSplitApk "Please use MkGeneratedSplitApk instead" #-}
#endif

-- | Create 'GeneratedSplitApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedSplitApk :: GeneratedSplitApk
mkGeneratedSplitApk
  = GeneratedSplitApk{downloadId = Core.Nothing, moduleName = Core.Nothing, splitId = Core.Nothing, variantId = Core.Nothing}

    -- * GeneratedStandaloneApk

-- | Download metadata for a standalone APK.
--
-- Construct a default value using the 'MkGeneratedStandaloneApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedStandaloneApk = GeneratedStandaloneApk
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
      -- | ID of the generated variant.
    , variantId :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedStandaloneApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedStandaloneApk :: GeneratedStandaloneApk
pattern MkGeneratedStandaloneApk{} = GeneratedStandaloneApk{downloadId = Core.Nothing, variantId = Core.Nothing}

{-# DEPRECATED mkGeneratedStandaloneApk "Please use MkGeneratedStandaloneApk instead" #-}
#endif

-- | Create 'GeneratedStandaloneApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedStandaloneApk :: GeneratedStandaloneApk
mkGeneratedStandaloneApk = GeneratedStandaloneApk{downloadId = Core.Nothing, variantId = Core.Nothing}

    -- * GeneratedUniversalApk

-- | Download metadata for a universal APK.
--
-- Construct a default value using the 'MkGeneratedUniversalApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype GeneratedUniversalApk = GeneratedUniversalApk
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedUniversalApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedUniversalApk :: GeneratedUniversalApk
pattern MkGeneratedUniversalApk{} = GeneratedUniversalApk{downloadId = Core.Nothing}

{-# DEPRECATED mkGeneratedUniversalApk "Please use MkGeneratedUniversalApk instead" #-}
#endif

-- | Create 'GeneratedUniversalApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedUniversalApk :: GeneratedUniversalApk
mkGeneratedUniversalApk = GeneratedUniversalApk{downloadId = Core.Nothing}

    -- * Grant

-- | An access grant resource.
--
-- Construct a default value using the 'MkGrant' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Grant = Grant
    {
      -- | The permissions granted to the user for this app.
      appLevelPermissions :: [Grant'AppLevelPermissionsItem]
      -- | Required. Resource name for this grant, following the pattern \"developers\/{developer}\/users\/{email}\/grants\/{package_name}\".
    , name :: Core.Maybe Core.Text
      -- | Immutable. The package name of the app.
    , packageName :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Grant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGrant :: Grant
pattern MkGrant{} = Grant{appLevelPermissions = Core.Nothing, name = Core.Nothing, packageName = Core.Nothing}

{-# DEPRECATED mkGrant "Please use MkGrant instead" #-}
#endif

-- | Create 'Grant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGrant :: Grant
mkGrant = Grant{appLevelPermissions = Core.Nothing, name = Core.Nothing, packageName = Core.Nothing}

    -- * Image

-- | An uploaded image. The resource for ImagesService.
--
-- Construct a default value using the 'MkImage' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Image = Image
    {
      -- | A unique id representing this image.
      id :: Core.Maybe Core.Text
      -- | A sha1 hash of the image.
    , sha1 :: Core.Maybe Core.Text
      -- | A sha256 hash of the image.
    , sha256 :: Core.Maybe Core.Text
      -- | A URL that will serve a preview of the image.
    , url :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Image' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImage :: Image
pattern MkImage{} = Image{id = Core.Nothing, sha1 = Core.Nothing, sha256 = Core.Nothing, url = Core.Nothing}

{-# DEPRECATED mkImage "Please use MkImage instead" #-}
#endif

-- | Create 'Image' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImage :: Image
mkImage = Image{id = Core.Nothing, sha1 = Core.Nothing, sha256 = Core.Nothing, url = Core.Nothing}

    -- * ImagesDeleteAllResponse

-- | Response for deleting all images.
--
-- Construct a default value using the 'MkImagesDeleteAllResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ImagesDeleteAllResponse = ImagesDeleteAllResponse
    {
      -- | The deleted images.
      deleted :: [Image]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ImagesDeleteAllResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImagesDeleteAllResponse :: ImagesDeleteAllResponse
pattern MkImagesDeleteAllResponse{} = ImagesDeleteAllResponse{deleted = Core.Nothing}

{-# DEPRECATED mkImagesDeleteAllResponse "Please use MkImagesDeleteAllResponse instead" #-}
#endif

-- | Create 'ImagesDeleteAllResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImagesDeleteAllResponse :: ImagesDeleteAllResponse
mkImagesDeleteAllResponse = ImagesDeleteAllResponse{deleted = Core.Nothing}

    -- * ImagesListResponse

-- | Response listing all images.
--
-- Construct a default value using the 'MkImagesListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ImagesListResponse = ImagesListResponse
    {
      -- | All listed Images.
      images :: [Image]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ImagesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImagesListResponse :: ImagesListResponse
pattern MkImagesListResponse{} = ImagesListResponse{images = Core.Nothing}

{-# DEPRECATED mkImagesListResponse "Please use MkImagesListResponse instead" #-}
#endif

-- | Create 'ImagesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImagesListResponse :: ImagesListResponse
mkImagesListResponse = ImagesListResponse{images = Core.Nothing}

    -- * ImagesUploadResponse

-- | Response for uploading an image.
--
-- Construct a default value using the 'MkImagesUploadResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ImagesUploadResponse = ImagesUploadResponse
    {
      -- | The uploaded image.
      image :: Core.Maybe Image
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ImagesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImagesUploadResponse :: ImagesUploadResponse
pattern MkImagesUploadResponse{} = ImagesUploadResponse{image = Core.Nothing}

{-# DEPRECATED mkImagesUploadResponse "Please use MkImagesUploadResponse instead" #-}
#endif

-- | Create 'ImagesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImagesUploadResponse :: ImagesUploadResponse
mkImagesUploadResponse = ImagesUploadResponse{image = Core.Nothing}

    -- * InAppProduct

-- | An in-app product. The resource for InappproductsService.
--
-- Construct a default value using the 'MkInAppProduct' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InAppProduct = InAppProduct
    {
      -- | Default language of the localized data, as defined by BCP-47. e.g. \"en-US\".
      defaultLanguage :: Core.Maybe Core.Text
      -- | Default price. Cannot be zero, as in-app products are never free. Always in the developer\'s Checkout merchant currency.
    , defaultPrice :: Core.Maybe Price
      -- | Grace period of the subscription, specified in ISO 8601 format. Allows developers to give their subscribers a grace period when the payment for the new recurrence period is declined. Acceptable values are P0D (zero days), P3D (three days), P7D (seven days), P14D (14 days), and P30D (30 days).
    , gracePeriod :: Core.Maybe Core.Text
      -- | List of localized title and description data. Map key is the language of the localized data, as defined by BCP-47, e.g. \"en-US\".
    , listings :: Core.Maybe InAppProduct'Listings
      -- | Details about taxes and legal compliance. Only applicable to managed products.
    , managedProductTaxesAndComplianceSettings :: Core.Maybe ManagedProductTaxAndComplianceSettings
      -- | Package name of the parent app.
    , packageName :: Core.Maybe Core.Text
      -- | Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is region code, as defined by ISO 3166-2.
    , prices :: Core.Maybe InAppProduct'Prices
      -- | The type of the product, e.g. a recurring subscription.
    , purchaseType :: Core.Maybe InAppProduct'PurchaseType
      -- | Stock-keeping-unit (SKU) of the product, unique within an app.
    , sku :: Core.Maybe Core.Text
      -- | The status of the product, e.g. whether it\'s active.
    , status :: Core.Maybe InAppProduct'Status
      -- | Subscription period, specified in ISO 8601 format. Acceptable values are P1W (one week), P1M (one month), P3M (three months), P6M (six months), and P1Y (one year).
    , subscriptionPeriod :: Core.Maybe Core.Text
      -- | Details about taxes and legal compliance. Only applicable to subscription products.
    , subscriptionTaxesAndComplianceSettings :: Core.Maybe SubscriptionTaxAndComplianceSettings
      -- | Trial period, specified in ISO 8601 format. Acceptable values are anything between P7D (seven days) and P999D (999 days).
    , trialPeriod :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InAppProduct' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInAppProduct :: InAppProduct
pattern MkInAppProduct{} =
        InAppProduct{defaultLanguage = Core.Nothing, defaultPrice = Core.Nothing, gracePeriod = Core.Nothing, listings = Core.Nothing,
                     managedProductTaxesAndComplianceSettings = Core.Nothing, packageName = Core.Nothing, prices = Core.Nothing,
                     purchaseType = Core.Nothing, sku = Core.Nothing, status = Core.Nothing, subscriptionPeriod = Core.Nothing,
                     subscriptionTaxesAndComplianceSettings = Core.Nothing, trialPeriod = Core.Nothing}

{-# DEPRECATED mkInAppProduct "Please use MkInAppProduct instead" #-}
#endif

-- | Create 'InAppProduct' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInAppProduct :: InAppProduct
mkInAppProduct
  = InAppProduct{defaultLanguage = Core.Nothing, defaultPrice = Core.Nothing, gracePeriod = Core.Nothing, listings = Core.Nothing,
                 managedProductTaxesAndComplianceSettings = Core.Nothing, packageName = Core.Nothing, prices = Core.Nothing,
                 purchaseType = Core.Nothing, sku = Core.Nothing, status = Core.Nothing, subscriptionPeriod = Core.Nothing,
                 subscriptionTaxesAndComplianceSettings = Core.Nothing, trialPeriod = Core.Nothing}

    -- * InAppProduct'Listings

-- | List of localized title and description data. Map key is the language of the localized data, as defined by BCP-47, e.g. \"en-US\".
newtype InAppProduct'Listings = InAppProduct'Listings
    {
      -- | 
      additional :: Core.HashMap Core.Text InAppProductListing
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

    -- * InAppProduct'Prices

-- | Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is region code, as defined by ISO 3166-2.
newtype InAppProduct'Prices = InAppProduct'Prices
    {
      -- | 
      additional :: Core.HashMap Core.Text Price
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

    -- * InAppProductListing

-- | Store listing of a single in-app product.
--
-- Construct a default value using the 'MkInAppProductListing' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InAppProductListing = InAppProductListing
    {
      -- | Localized entitlement benefits for a subscription.
      benefits :: [Core.Text]
      -- | Description for the store listing.
    , description :: Core.Maybe Core.Text
      -- | Title for the store listing.
    , title :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InAppProductListing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInAppProductListing :: InAppProductListing
pattern MkInAppProductListing{} = InAppProductListing{benefits = Core.Nothing, description = Core.Nothing, title = Core.Nothing}

{-# DEPRECATED mkInAppProductListing "Please use MkInAppProductListing instead" #-}
#endif

-- | Create 'InAppProductListing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInAppProductListing :: InAppProductListing
mkInAppProductListing = InAppProductListing{benefits = Core.Nothing, description = Core.Nothing, title = Core.Nothing}

    -- * InappproductsListResponse

-- | Response listing all in-app products.
--
-- Construct a default value using the 'MkInappproductsListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InappproductsListResponse = InappproductsListResponse
    {
      -- | All in-app products.
      inappproduct :: [InAppProduct]
      -- | The kind of this response (\"androidpublisher#inappproductsListResponse\").
    , kind :: Core.Maybe Core.Text
      -- | Deprecated and unset.
    , pageInfo :: Core.Maybe PageInfo
      -- | Pagination token, to handle a number of products that is over one page.
    , tokenPagination :: Core.Maybe TokenPagination
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InappproductsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInappproductsListResponse :: InappproductsListResponse
pattern MkInappproductsListResponse{} =
        InappproductsListResponse{inappproduct = Core.Nothing, kind = Core.Nothing, pageInfo = Core.Nothing,
                                  tokenPagination = Core.Nothing}

{-# DEPRECATED mkInappproductsListResponse "Please use MkInappproductsListResponse instead" #-}
#endif

-- | Create 'InappproductsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInappproductsListResponse :: InappproductsListResponse
mkInappproductsListResponse
  = InappproductsListResponse{inappproduct = Core.Nothing, kind = Core.Nothing, pageInfo = Core.Nothing,
                              tokenPagination = Core.Nothing}

    -- * InternalAppSharingArtifact

-- | An artifact resource which gets created when uploading an APK or Android App Bundle through internal app sharing.
--
-- Construct a default value using the 'MkInternalAppSharingArtifact' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InternalAppSharingArtifact = InternalAppSharingArtifact
    {
      -- | The sha256 fingerprint of the certificate used to sign the generated artifact.
      certificateFingerprint :: Core.Maybe Core.Text
      -- | The download URL generated for the uploaded artifact. Users that are authorized to download can follow the link to the Play Store app to install it.
    , downloadUrl :: Core.Maybe Core.Text
      -- | The sha256 hash of the artifact represented as a lowercase hexadecimal number, matching the output of the sha256sum command.
    , sha256 :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InternalAppSharingArtifact' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInternalAppSharingArtifact :: InternalAppSharingArtifact
pattern MkInternalAppSharingArtifact{} =
        InternalAppSharingArtifact{certificateFingerprint = Core.Nothing, downloadUrl = Core.Nothing, sha256 = Core.Nothing}

{-# DEPRECATED mkInternalAppSharingArtifact "Please use MkInternalAppSharingArtifact instead" #-}
#endif

-- | Create 'InternalAppSharingArtifact' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInternalAppSharingArtifact :: InternalAppSharingArtifact
mkInternalAppSharingArtifact
  = InternalAppSharingArtifact{certificateFingerprint = Core.Nothing, downloadUrl = Core.Nothing, sha256 = Core.Nothing}

    -- * IntroductoryPriceInfo

-- | Contains the introductory price information for a subscription.
--
-- Construct a default value using the 'MkIntroductoryPriceInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data IntroductoryPriceInfo = IntroductoryPriceInfo
    {
      -- | Introductory price of the subscription, not including tax. The currency is the same as price/currency/code. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price/amount/micros is 1990000.
      introductoryPriceAmountMicros :: Core.Maybe Core.Int64
      -- | ISO 4217 currency code for the introductory subscription price. For example, if the price is specified in British pounds sterling, price/currency/code is \"GBP\".
    , introductoryPriceCurrencyCode :: Core.Maybe Core.Text
      -- | The number of billing period to offer introductory pricing.
    , introductoryPriceCycles :: Core.Maybe Core.Int32
      -- | Introductory price period, specified in ISO 8601 format. Common values are (but not limited to) \"P1W\" (one week), \"P1M\" (one month), \"P3M\" (three months), \"P6M\" (six months), and \"P1Y\" (one year).
    , introductoryPricePeriod :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'IntroductoryPriceInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkIntroductoryPriceInfo :: IntroductoryPriceInfo
pattern MkIntroductoryPriceInfo{} =
        IntroductoryPriceInfo{introductoryPriceAmountMicros = Core.Nothing, introductoryPriceCurrencyCode = Core.Nothing,
                              introductoryPriceCycles = Core.Nothing, introductoryPricePeriod = Core.Nothing}

{-# DEPRECATED mkIntroductoryPriceInfo "Please use MkIntroductoryPriceInfo instead" #-}
#endif

-- | Create 'IntroductoryPriceInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkIntroductoryPriceInfo :: IntroductoryPriceInfo
mkIntroductoryPriceInfo
  = IntroductoryPriceInfo{introductoryPriceAmountMicros = Core.Nothing, introductoryPriceCurrencyCode = Core.Nothing,
                          introductoryPriceCycles = Core.Nothing, introductoryPricePeriod = Core.Nothing}

    -- * ListUsersResponse

-- | A response containing one or more users with access to an account.
--
-- Construct a default value using the 'MkListUsersResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ListUsersResponse = ListUsersResponse
    {
      -- | A token to pass to subsequent calls in order to retrieve subsequent results. This will not be set if there are no more results to return.
      nextPageToken :: Core.Maybe Core.Text
      -- | The resulting users.
    , users :: [User]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ListUsersResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkListUsersResponse :: ListUsersResponse
pattern MkListUsersResponse{} = ListUsersResponse{nextPageToken = Core.Nothing, users = Core.Nothing}

{-# DEPRECATED mkListUsersResponse "Please use MkListUsersResponse instead" #-}
#endif

-- | Create 'ListUsersResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkListUsersResponse :: ListUsersResponse
mkListUsersResponse = ListUsersResponse{nextPageToken = Core.Nothing, users = Core.Nothing}

    -- * Listing

-- | A localized store listing. The resource for ListingsService.
--
-- Construct a default value using the 'MkListing' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Listing = Listing
    {
      -- | Full description of the app.
      fullDescription :: Core.Maybe Core.Text
      -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    , language :: Core.Maybe Core.Text
      -- | Short description of the app.
    , shortDescription :: Core.Maybe Core.Text
      -- | Localized title of the app.
    , title :: Core.Maybe Core.Text
      -- | URL of a promotional YouTube video for the app.
    , video :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Listing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkListing :: Listing
pattern MkListing{} =
        Listing{fullDescription = Core.Nothing, language = Core.Nothing, shortDescription = Core.Nothing, title = Core.Nothing,
                video = Core.Nothing}

{-# DEPRECATED mkListing "Please use MkListing instead" #-}
#endif

-- | Create 'Listing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkListing :: Listing
mkListing
  = Listing{fullDescription = Core.Nothing, language = Core.Nothing, shortDescription = Core.Nothing, title = Core.Nothing,
            video = Core.Nothing}

    -- * ListingsListResponse

-- | Response listing all localized listings.
--
-- Construct a default value using the 'MkListingsListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ListingsListResponse = ListingsListResponse
    {
      -- | The kind of this response (\"androidpublisher#listingsListResponse\").
      kind :: Core.Maybe Core.Text
      -- | All localized listings.
    , listings :: [Listing]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ListingsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkListingsListResponse :: ListingsListResponse
pattern MkListingsListResponse{} = ListingsListResponse{kind = Core.Nothing, listings = Core.Nothing}

{-# DEPRECATED mkListingsListResponse "Please use MkListingsListResponse instead" #-}
#endif

-- | Create 'ListingsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkListingsListResponse :: ListingsListResponse
mkListingsListResponse = ListingsListResponse{kind = Core.Nothing, listings = Core.Nothing}

    -- * LocalizedText

-- | Localized text in given language.
--
-- Construct a default value using the 'MkLocalizedText' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data LocalizedText = LocalizedText
    {
      -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
      language :: Core.Maybe Core.Text
      -- | The text in the given language.
    , text :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'LocalizedText' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkLocalizedText :: LocalizedText
pattern MkLocalizedText{} = LocalizedText{language = Core.Nothing, text = Core.Nothing}

{-# DEPRECATED mkLocalizedText "Please use MkLocalizedText instead" #-}
#endif

-- | Create 'LocalizedText' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkLocalizedText :: LocalizedText
mkLocalizedText = LocalizedText{language = Core.Nothing, text = Core.Nothing}

    -- * ManagedProductTaxAndComplianceSettings

-- | Details about taxation and legal compliance for managed products.
--
-- Construct a default value using the 'MkManagedProductTaxAndComplianceSettings' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ManagedProductTaxAndComplianceSettings = ManagedProductTaxAndComplianceSettings
    {
      -- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
      eeaWithdrawalRightType :: Core.Maybe ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
      -- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
    , taxRateInfoByRegionCode :: Core.Maybe ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ManagedProductTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkManagedProductTaxAndComplianceSettings :: ManagedProductTaxAndComplianceSettings
pattern MkManagedProductTaxAndComplianceSettings{} =
        ManagedProductTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}

{-# DEPRECATED mkManagedProductTaxAndComplianceSettings "Please use MkManagedProductTaxAndComplianceSettings instead" #-}
#endif

-- | Create 'ManagedProductTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkManagedProductTaxAndComplianceSettings :: ManagedProductTaxAndComplianceSettings
mkManagedProductTaxAndComplianceSettings
  = ManagedProductTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}

    -- * ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode

-- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
newtype ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode = ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode
    {
      -- | 
      additional :: Core.HashMap Core.Text RegionalTaxRateInfo
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

    -- * Money

-- | Represents an amount of money with its currency type.
--
-- Construct a default value using the 'MkMoney' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Money = Money
    {
      -- | The three-letter currency code defined in ISO 4217.
      currencyCode :: Core.Maybe Core.Text
      -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    , nanos :: Core.Maybe Core.Int32
      -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    , units :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Money' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkMoney :: Money
pattern MkMoney{} = Money{currencyCode = Core.Nothing, nanos = Core.Nothing, units = Core.Nothing}

{-# DEPRECATED mkMoney "Please use MkMoney instead" #-}
#endif

-- | Create 'Money' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkMoney :: Money
mkMoney = Money{currencyCode = Core.Nothing, nanos = Core.Nothing, units = Core.Nothing}

    -- * PageInfo

-- | Information about the current page. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned.
--
-- Construct a default value using the 'MkPageInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data PageInfo = PageInfo
    {
      -- | Maximum number of results returned in one page. ! The number of results included in the API response.
      resultPerPage :: Core.Maybe Core.Int32
      -- | Index of the first result returned in the current page.
    , startIndex :: Core.Maybe Core.Int32
      -- | Total number of results available on the backend ! The total number of results in the result set.
    , totalResults :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'PageInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkPageInfo :: PageInfo
pattern MkPageInfo{} = PageInfo{resultPerPage = Core.Nothing, startIndex = Core.Nothing, totalResults = Core.Nothing}

{-# DEPRECATED mkPageInfo "Please use MkPageInfo instead" #-}
#endif

-- | Create 'PageInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkPageInfo :: PageInfo
mkPageInfo = PageInfo{resultPerPage = Core.Nothing, startIndex = Core.Nothing, totalResults = Core.Nothing}

    -- * Price

-- | Definition of a price, i.e. currency and units.
--
-- Construct a default value using the 'MkPrice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Price = Price
    {
      -- | 3 letter Currency code, as defined by ISO 4217. See java\/com\/google\/common\/money\/CurrencyCode.java.
      currency :: Core.Maybe Core.Text
      -- | Price in 1\/million of the currency base unit, represented as a string.
    , priceMicros :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Price' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkPrice :: Price
pattern MkPrice{} = Price{currency = Core.Nothing, priceMicros = Core.Nothing}

{-# DEPRECATED mkPrice "Please use MkPrice instead" #-}
#endif

-- | Create 'Price' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkPrice :: Price
mkPrice = Price{currency = Core.Nothing, priceMicros = Core.Nothing}

    -- * ProductPurchase

-- | A ProductPurchase resource indicates the status of a user\'s inapp product purchase.
--
-- Construct a default value using the 'MkProductPurchase' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ProductPurchase = ProductPurchase
    {
      -- | The acknowledgement state of the inapp product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged.
      acknowledgementState :: Core.Maybe Core.Int32
      -- | The consumption state of the inapp product. Possible values are: 0. Yet to be consumed 1. Consumed.
    , consumptionState :: Core.Maybe Core.Int32
      -- | A developer-specified string that contains supplemental information about an order.
    , developerPayload :: Core.Maybe Core.Text
      -- | This kind represents an inappPurchase object in the androidpublisher service.
    , kind :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s account in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
    , obfuscatedExternalAccountId :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s profile in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
    , obfuscatedExternalProfileId :: Core.Maybe Core.Text
      -- | The order id associated with the purchase of the inapp product.
    , orderId :: Core.Maybe Core.Text
      -- | The inapp product SKU.
    , productId :: Core.Maybe Core.Text
      -- | The purchase state of the order. Possible values are: 0. Purchased 1. Canceled 2. Pending.
    , purchaseState :: Core.Maybe Core.Int32
      -- | The time the product was purchased, in milliseconds since the epoch (Jan 1, 1970).
    , purchaseTimeMillis :: Core.Maybe Core.Int64
      -- | The purchase token generated to identify this purchase.
    , purchaseToken :: Core.Maybe Core.Text
      -- | The type of purchase of the inapp product. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code) 2. Rewarded (i.e. from watching a video ad instead of paying).
    , purchaseType :: Core.Maybe Core.Int32
      -- | The quantity associated with the purchase of the inapp product.
    , quantity :: Core.Maybe Core.Int32
      -- | ISO 3166-1 alpha-2 billing region code of the user at the time the product was granted.
    , regionCode :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ProductPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkProductPurchase :: ProductPurchase
pattern MkProductPurchase{} =
        ProductPurchase{acknowledgementState = Core.Nothing, consumptionState = Core.Nothing, developerPayload = Core.Nothing,
                        kind = Core.Nothing, obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing,
                        orderId = Core.Nothing, productId = Core.Nothing, purchaseState = Core.Nothing, purchaseTimeMillis = Core.Nothing,
                        purchaseToken = Core.Nothing, purchaseType = Core.Nothing, quantity = Core.Nothing, regionCode = Core.Nothing}

{-# DEPRECATED mkProductPurchase "Please use MkProductPurchase instead" #-}
#endif

-- | Create 'ProductPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkProductPurchase :: ProductPurchase
mkProductPurchase
  = ProductPurchase{acknowledgementState = Core.Nothing, consumptionState = Core.Nothing, developerPayload = Core.Nothing,
                    kind = Core.Nothing, obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing,
                    orderId = Core.Nothing, productId = Core.Nothing, purchaseState = Core.Nothing, purchaseTimeMillis = Core.Nothing,
                    purchaseToken = Core.Nothing, purchaseType = Core.Nothing, quantity = Core.Nothing, regionCode = Core.Nothing}

    -- * ProductPurchasesAcknowledgeRequest

-- | Request for the product.purchases.acknowledge API.
--
-- Construct a default value using the 'MkProductPurchasesAcknowledgeRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ProductPurchasesAcknowledgeRequest = ProductPurchasesAcknowledgeRequest
    {
      -- | Payload to attach to the purchase.
      developerPayload :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ProductPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkProductPurchasesAcknowledgeRequest :: ProductPurchasesAcknowledgeRequest
pattern MkProductPurchasesAcknowledgeRequest{} = ProductPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}

{-# DEPRECATED mkProductPurchasesAcknowledgeRequest "Please use MkProductPurchasesAcknowledgeRequest instead" #-}
#endif

-- | Create 'ProductPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkProductPurchasesAcknowledgeRequest :: ProductPurchasesAcknowledgeRequest
mkProductPurchasesAcknowledgeRequest = ProductPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}

    -- * RegionalTaxRateInfo

-- | Specified details about taxation in a given geographical region.
--
-- Construct a default value using the 'MkRegionalTaxRateInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data RegionalTaxRateInfo = RegionalTaxRateInfo
    {
      -- | You must tell us if your app contains streaming products to correctly charge US state and local sales tax. Field only supported in United States.
      eligibleForStreamingServiceTaxRate :: Core.Maybe Core.Bool
      -- | Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, books, or audiobooks in various regions may be eligible for reduced tax rates. <https://support.google.com/googleplay/android-developer/answer/10463498 Learn more>.
    , taxTier :: Core.Maybe RegionalTaxRateInfo'TaxTier
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'RegionalTaxRateInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkRegionalTaxRateInfo :: RegionalTaxRateInfo
pattern MkRegionalTaxRateInfo{} = RegionalTaxRateInfo{eligibleForStreamingServiceTaxRate = Core.Nothing, taxTier = Core.Nothing}

{-# DEPRECATED mkRegionalTaxRateInfo "Please use MkRegionalTaxRateInfo instead" #-}
#endif

-- | Create 'RegionalTaxRateInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkRegionalTaxRateInfo :: RegionalTaxRateInfo
mkRegionalTaxRateInfo = RegionalTaxRateInfo{eligibleForStreamingServiceTaxRate = Core.Nothing, taxTier = Core.Nothing}

    -- * Review

-- | An Android app review.
--
-- Construct a default value using the 'MkReview' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Review = Review
    {
      -- | The name of the user who wrote the review.
      authorName :: Core.Maybe Core.Text
      -- | A repeated field containing comments for the review.
    , comments :: [Comment]
      -- | Unique identifier for this review.
    , reviewId :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Review' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReview :: Review
pattern MkReview{} = Review{authorName = Core.Nothing, comments = Core.Nothing, reviewId = Core.Nothing}

{-# DEPRECATED mkReview "Please use MkReview instead" #-}
#endif

-- | Create 'Review' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReview :: Review
mkReview = Review{authorName = Core.Nothing, comments = Core.Nothing, reviewId = Core.Nothing}

    -- * ReviewReplyResult

-- | The result of replying\/updating a reply to review.
--
-- Construct a default value using the 'MkReviewReplyResult' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ReviewReplyResult = ReviewReplyResult
    {
      -- | The time at which the reply took effect.
      lastEdited :: Core.Maybe Timestamp
      -- | The reply text that was applied.
    , replyText :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewReplyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewReplyResult :: ReviewReplyResult
pattern MkReviewReplyResult{} = ReviewReplyResult{lastEdited = Core.Nothing, replyText = Core.Nothing}

{-# DEPRECATED mkReviewReplyResult "Please use MkReviewReplyResult instead" #-}
#endif

-- | Create 'ReviewReplyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewReplyResult :: ReviewReplyResult
mkReviewReplyResult = ReviewReplyResult{lastEdited = Core.Nothing, replyText = Core.Nothing}

    -- * ReviewsListResponse

-- | Response listing reviews.
--
-- Construct a default value using the 'MkReviewsListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ReviewsListResponse = ReviewsListResponse
    {
      -- | Information about the current page.
      pageInfo :: Core.Maybe PageInfo
      -- | List of reviews.
    , reviews :: [Review]
      -- | Pagination token, to handle a number of products that is over one page.
    , tokenPagination :: Core.Maybe TokenPagination
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewsListResponse :: ReviewsListResponse
pattern MkReviewsListResponse{} =
        ReviewsListResponse{pageInfo = Core.Nothing, reviews = Core.Nothing, tokenPagination = Core.Nothing}

{-# DEPRECATED mkReviewsListResponse "Please use MkReviewsListResponse instead" #-}
#endif

-- | Create 'ReviewsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewsListResponse :: ReviewsListResponse
mkReviewsListResponse = ReviewsListResponse{pageInfo = Core.Nothing, reviews = Core.Nothing, tokenPagination = Core.Nothing}

    -- * ReviewsReplyRequest

-- | Request to reply to review or update existing reply.
--
-- Construct a default value using the 'MkReviewsReplyRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ReviewsReplyRequest = ReviewsReplyRequest
    {
      -- | The text to set as the reply. Replies of more than approximately 350 characters will be rejected. HTML tags will be stripped.
      replyText :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewsReplyRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewsReplyRequest :: ReviewsReplyRequest
pattern MkReviewsReplyRequest{} = ReviewsReplyRequest{replyText = Core.Nothing}

{-# DEPRECATED mkReviewsReplyRequest "Please use MkReviewsReplyRequest instead" #-}
#endif

-- | Create 'ReviewsReplyRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewsReplyRequest :: ReviewsReplyRequest
mkReviewsReplyRequest = ReviewsReplyRequest{replyText = Core.Nothing}

    -- * ReviewsReplyResponse

-- | Response on status of replying to a review.
--
-- Construct a default value using the 'MkReviewsReplyResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ReviewsReplyResponse = ReviewsReplyResponse
    {
      -- | The result of replying\/updating a reply to review.
      result :: Core.Maybe ReviewReplyResult
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewsReplyResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewsReplyResponse :: ReviewsReplyResponse
pattern MkReviewsReplyResponse{} = ReviewsReplyResponse{result = Core.Nothing}

{-# DEPRECATED mkReviewsReplyResponse "Please use MkReviewsReplyResponse instead" #-}
#endif

-- | Create 'ReviewsReplyResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewsReplyResponse :: ReviewsReplyResponse
mkReviewsReplyResponse = ReviewsReplyResponse{result = Core.Nothing}

    -- * SubscriptionCancelSurveyResult

-- | Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).
--
-- Construct a default value using the 'MkSubscriptionCancelSurveyResult' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionCancelSurveyResult = SubscriptionCancelSurveyResult
    {
      -- | The cancellation reason the user chose in the survey. Possible values are: 0. Other 1. I don\'t use this service enough 2. Technical issues 3. Cost-related reasons 4. I found a better app.
      cancelSurveyReason :: Core.Maybe Core.Int32
      -- | The customized input cancel reason from the user. Only present when cancelReason is 0.
    , userInputCancelReason :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionCancelSurveyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionCancelSurveyResult :: SubscriptionCancelSurveyResult
pattern MkSubscriptionCancelSurveyResult{} =
        SubscriptionCancelSurveyResult{cancelSurveyReason = Core.Nothing, userInputCancelReason = Core.Nothing}

{-# DEPRECATED mkSubscriptionCancelSurveyResult "Please use MkSubscriptionCancelSurveyResult instead" #-}
#endif

-- | Create 'SubscriptionCancelSurveyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionCancelSurveyResult :: SubscriptionCancelSurveyResult
mkSubscriptionCancelSurveyResult
  = SubscriptionCancelSurveyResult{cancelSurveyReason = Core.Nothing, userInputCancelReason = Core.Nothing}

    -- * SubscriptionDeferralInfo

-- | A SubscriptionDeferralInfo contains the data needed to defer a subscription purchase to a future expiry time.
--
-- Construct a default value using the 'MkSubscriptionDeferralInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionDeferralInfo = SubscriptionDeferralInfo
    {
      -- | The desired next expiry time to assign to the subscription, in milliseconds since the Epoch. The given time must be later\/greater than the current expiry time for the subscription.
      desiredExpiryTimeMillis :: Core.Maybe Core.Int64
      -- | The expected expiry time for the subscription. If the current expiry time for the subscription is not the value specified here, the deferral will not occur.
    , expectedExpiryTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionDeferralInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionDeferralInfo :: SubscriptionDeferralInfo
pattern MkSubscriptionDeferralInfo{} =
        SubscriptionDeferralInfo{desiredExpiryTimeMillis = Core.Nothing, expectedExpiryTimeMillis = Core.Nothing}

{-# DEPRECATED mkSubscriptionDeferralInfo "Please use MkSubscriptionDeferralInfo instead" #-}
#endif

-- | Create 'SubscriptionDeferralInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionDeferralInfo :: SubscriptionDeferralInfo
mkSubscriptionDeferralInfo
  = SubscriptionDeferralInfo{desiredExpiryTimeMillis = Core.Nothing, expectedExpiryTimeMillis = Core.Nothing}

    -- * SubscriptionPriceChange

-- | Contains the price change information for a subscription that can be used to control the user journey for the price change in the app. This can be in the form of seeking confirmation from the user or tailoring the experience for a successful conversion.
--
-- Construct a default value using the 'MkSubscriptionPriceChange' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionPriceChange = SubscriptionPriceChange
    {
      -- | The new price the subscription will renew with if the price change is accepted by the user.
      newPrice :: Core.Maybe Price
      -- | The current state of the price change. Possible values are: 0. Outstanding: State for a pending price change waiting for the user to agree. In this state, you can optionally seek confirmation from the user using the In-App API. 1. Accepted: State for an accepted price change that the subscription will renew with unless it\'s canceled. The price change takes effect on a future date when the subscription renews. Note that the change might not occur when the subscription is renewed next.
    , state :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPriceChange' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPriceChange :: SubscriptionPriceChange
pattern MkSubscriptionPriceChange{} = SubscriptionPriceChange{newPrice = Core.Nothing, state = Core.Nothing}

{-# DEPRECATED mkSubscriptionPriceChange "Please use MkSubscriptionPriceChange instead" #-}
#endif

-- | Create 'SubscriptionPriceChange' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPriceChange :: SubscriptionPriceChange
mkSubscriptionPriceChange = SubscriptionPriceChange{newPrice = Core.Nothing, state = Core.Nothing}

    -- * SubscriptionPurchase

-- | A SubscriptionPurchase resource indicates the status of a user\'s subscription purchase.
--
-- Construct a default value using the 'MkSubscriptionPurchase' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionPurchase = SubscriptionPurchase
    {
      -- | The acknowledgement state of the subscription product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged.
      acknowledgementState :: Core.Maybe Core.Int32
      -- | Whether the subscription will automatically be renewed when it reaches its current expiry time.
    , autoRenewing :: Core.Maybe Core.Bool
      -- | Time at which the subscription will be automatically resumed, in milliseconds since the Epoch. Only present if the user has requested to pause the subscription.
    , autoResumeTimeMillis :: Core.Maybe Core.Int64
      -- | The reason why a subscription was canceled or is not auto-renewing. Possible values are: 0. User canceled the subscription 1. Subscription was canceled by the system, for example because of a billing problem 2. Subscription was replaced with a new subscription 3. Subscription was canceled by the developer.
    , cancelReason :: Core.Maybe Core.Int32
      -- | Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).
    , cancelSurveyResult :: Core.Maybe SubscriptionCancelSurveyResult
      -- | ISO 3166-1 alpha-2 billing country\/region code of the user at the time the subscription was granted.
    , countryCode :: Core.Maybe Core.Text
      -- | A developer-specified string that contains supplemental information about an order.
    , developerPayload :: Core.Maybe Core.Text
      -- | The email address of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , emailAddress :: Core.Maybe Core.Text
      -- | Time at which the subscription will expire, in milliseconds since the Epoch.
    , expiryTimeMillis :: Core.Maybe Core.Int64
      -- | User account identifier in the third-party service. Only present if account linking happened as part of the subscription purchase flow.
    , externalAccountId :: Core.Maybe Core.Text
      -- | The family name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , familyName :: Core.Maybe Core.Text
      -- | The given name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , givenName :: Core.Maybe Core.Text
      -- | Introductory price information of the subscription. This is only present when the subscription was purchased with an introductory price. This field does not indicate the subscription is currently in introductory price period.
    , introductoryPriceInfo :: Core.Maybe IntroductoryPriceInfo
      -- | This kind represents a subscriptionPurchase object in the androidpublisher service.
    , kind :: Core.Maybe Core.Text
      -- | The purchase token of the originating purchase if this subscription is one of the following: 0. Re-signup of a canceled but non-lapsed subscription 1. Upgrade\/downgrade from a previous subscription For example, suppose a user originally signs up and you receive purchase token X, then the user cancels and goes through the resignup flow (before their subscription lapses) and you receive purchase token Y, and finally the user upgrades their subscription and you receive purchase token Z. If you call this API with purchase token Z, this field will be set to Y. If you call this API with purchase token Y, this field will be set to X. If you call this API with purchase token X, this field will not be set.
    , linkedPurchaseToken :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s account in your app. Present for the following purchases: * If account linking happened as part of the subscription purchase flow. * It was specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
    , obfuscatedExternalAccountId :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s profile in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
    , obfuscatedExternalProfileId :: Core.Maybe Core.Text
      -- | The order id of the latest recurring order associated with the purchase of the subscription. If the subscription was canceled because payment was declined, this will be the order id from the payment declined order.
    , orderId :: Core.Maybe Core.Text
      -- | The payment state of the subscription. Possible values are: 0. Payment pending 1. Payment received 2. Free trial 3. Pending deferred upgrade\/downgrade Not present for canceled, expired subscriptions.
    , paymentState :: Core.Maybe Core.Int32
      -- | Price of the subscription, For tax exclusive countries, the price doesn\'t include tax. For tax inclusive countries, the price includes tax. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price/amount/micros is 1990000.
    , priceAmountMicros :: Core.Maybe Core.Int64
      -- | The latest price change information available. This is present only when there is an upcoming price change for the subscription yet to be applied. Once the subscription renews with the new price or the subscription is canceled, no price change information will be returned.
    , priceChange :: Core.Maybe SubscriptionPriceChange
      -- | ISO 4217 currency code for the subscription price. For example, if the price is specified in British pounds sterling, price/currency/code is \"GBP\".
    , priceCurrencyCode :: Core.Maybe Core.Text
      -- | The Google profile id of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , profileId :: Core.Maybe Core.Text
      -- | The profile name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , profileName :: Core.Maybe Core.Text
      -- | The promotion code applied on this purchase. This field is only set if a vanity code promotion is applied when the subscription was purchased.
    , promotionCode :: Core.Maybe Core.Text
      -- | The type of promotion applied on this purchase. This field is only set if a promotion is applied when the subscription was purchased. Possible values are: 0. One time code 1. Vanity code.
    , promotionType :: Core.Maybe Core.Int32
      -- | The type of purchase of the subscription. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code).
    , purchaseType :: Core.Maybe Core.Int32
      -- | Time at which the subscription was granted, in milliseconds since the Epoch.
    , startTimeMillis :: Core.Maybe Core.Int64
      -- | The time at which the subscription was canceled by the user, in milliseconds since the epoch. Only present if cancelReason is 0.
    , userCancellationTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchase :: SubscriptionPurchase
pattern MkSubscriptionPurchase{} =
        SubscriptionPurchase{acknowledgementState = Core.Nothing, autoRenewing = Core.Nothing, autoResumeTimeMillis = Core.Nothing,
                             cancelReason = Core.Nothing, cancelSurveyResult = Core.Nothing, countryCode = Core.Nothing, developerPayload = Core.Nothing,
                             emailAddress = Core.Nothing, expiryTimeMillis = Core.Nothing, externalAccountId = Core.Nothing, familyName = Core.Nothing,
                             givenName = Core.Nothing, introductoryPriceInfo = Core.Nothing, kind = Core.Nothing, linkedPurchaseToken = Core.Nothing,
                             obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing, orderId = Core.Nothing,
                             paymentState = Core.Nothing, priceAmountMicros = Core.Nothing, priceChange = Core.Nothing, priceCurrencyCode = Core.Nothing,
                             profileId = Core.Nothing, profileName = Core.Nothing, promotionCode = Core.Nothing, promotionType = Core.Nothing,
                             purchaseType = Core.Nothing, startTimeMillis = Core.Nothing, userCancellationTimeMillis = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchase "Please use MkSubscriptionPurchase instead" #-}
#endif

-- | Create 'SubscriptionPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchase :: SubscriptionPurchase
mkSubscriptionPurchase
  = SubscriptionPurchase{acknowledgementState = Core.Nothing, autoRenewing = Core.Nothing, autoResumeTimeMillis = Core.Nothing,
                         cancelReason = Core.Nothing, cancelSurveyResult = Core.Nothing, countryCode = Core.Nothing, developerPayload = Core.Nothing,
                         emailAddress = Core.Nothing, expiryTimeMillis = Core.Nothing, externalAccountId = Core.Nothing, familyName = Core.Nothing,
                         givenName = Core.Nothing, introductoryPriceInfo = Core.Nothing, kind = Core.Nothing, linkedPurchaseToken = Core.Nothing,
                         obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing, orderId = Core.Nothing,
                         paymentState = Core.Nothing, priceAmountMicros = Core.Nothing, priceChange = Core.Nothing, priceCurrencyCode = Core.Nothing,
                         profileId = Core.Nothing, profileName = Core.Nothing, promotionCode = Core.Nothing, promotionType = Core.Nothing,
                         purchaseType = Core.Nothing, startTimeMillis = Core.Nothing, userCancellationTimeMillis = Core.Nothing}

    -- * SubscriptionPurchasesAcknowledgeRequest

-- | Request for the purchases.subscriptions.acknowledge API.
--
-- Construct a default value using the 'MkSubscriptionPurchasesAcknowledgeRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SubscriptionPurchasesAcknowledgeRequest = SubscriptionPurchasesAcknowledgeRequest
    {
      -- | Payload to attach to the purchase.
      developerPayload :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchasesAcknowledgeRequest :: SubscriptionPurchasesAcknowledgeRequest
pattern MkSubscriptionPurchasesAcknowledgeRequest{} = SubscriptionPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchasesAcknowledgeRequest "Please use MkSubscriptionPurchasesAcknowledgeRequest instead" #-}
#endif

-- | Create 'SubscriptionPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchasesAcknowledgeRequest :: SubscriptionPurchasesAcknowledgeRequest
mkSubscriptionPurchasesAcknowledgeRequest = SubscriptionPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}

    -- * SubscriptionPurchasesDeferRequest

-- | Request for the purchases.subscriptions.defer API.
--
-- Construct a default value using the 'MkSubscriptionPurchasesDeferRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SubscriptionPurchasesDeferRequest = SubscriptionPurchasesDeferRequest
    {
      -- | The information about the new desired expiry time for the subscription.
      deferralInfo :: Core.Maybe SubscriptionDeferralInfo
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchasesDeferRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchasesDeferRequest :: SubscriptionPurchasesDeferRequest
pattern MkSubscriptionPurchasesDeferRequest{} = SubscriptionPurchasesDeferRequest{deferralInfo = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchasesDeferRequest "Please use MkSubscriptionPurchasesDeferRequest instead" #-}
#endif

-- | Create 'SubscriptionPurchasesDeferRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchasesDeferRequest :: SubscriptionPurchasesDeferRequest
mkSubscriptionPurchasesDeferRequest = SubscriptionPurchasesDeferRequest{deferralInfo = Core.Nothing}

    -- * SubscriptionPurchasesDeferResponse

-- | Response for the purchases.subscriptions.defer API.
--
-- Construct a default value using the 'MkSubscriptionPurchasesDeferResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SubscriptionPurchasesDeferResponse = SubscriptionPurchasesDeferResponse
    {
      -- | The new expiry time for the subscription in milliseconds since the Epoch.
      newExpiryTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchasesDeferResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchasesDeferResponse :: SubscriptionPurchasesDeferResponse
pattern MkSubscriptionPurchasesDeferResponse{} = SubscriptionPurchasesDeferResponse{newExpiryTimeMillis = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchasesDeferResponse "Please use MkSubscriptionPurchasesDeferResponse instead" #-}
#endif

-- | Create 'SubscriptionPurchasesDeferResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchasesDeferResponse :: SubscriptionPurchasesDeferResponse
mkSubscriptionPurchasesDeferResponse = SubscriptionPurchasesDeferResponse{newExpiryTimeMillis = Core.Nothing}

    -- * SubscriptionTaxAndComplianceSettings

-- | Details about taxation, Google Play policy and legal compliance for subscription products.
--
-- Construct a default value using the 'MkSubscriptionTaxAndComplianceSettings' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionTaxAndComplianceSettings = SubscriptionTaxAndComplianceSettings
    {
      -- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
      eeaWithdrawalRightType :: Core.Maybe SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
      -- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
    , taxRateInfoByRegionCode :: Core.Maybe SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionTaxAndComplianceSettings :: SubscriptionTaxAndComplianceSettings
pattern MkSubscriptionTaxAndComplianceSettings{} =
        SubscriptionTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}

{-# DEPRECATED mkSubscriptionTaxAndComplianceSettings "Please use MkSubscriptionTaxAndComplianceSettings instead" #-}
#endif

-- | Create 'SubscriptionTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionTaxAndComplianceSettings :: SubscriptionTaxAndComplianceSettings
mkSubscriptionTaxAndComplianceSettings
  = SubscriptionTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}

    -- * SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode

-- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
newtype SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode = SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode
    {
      -- | 
      additional :: Core.HashMap Core.Text RegionalTaxRateInfo
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

    -- * SystemApksListResponse

-- | Response to list previously created system APK variants.
--
-- Construct a default value using the 'MkSystemApksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SystemApksListResponse = SystemApksListResponse
    {
      -- | All system APK variants created.
      variants :: [Variant]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SystemApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSystemApksListResponse :: SystemApksListResponse
pattern MkSystemApksListResponse{} = SystemApksListResponse{variants = Core.Nothing}

{-# DEPRECATED mkSystemApksListResponse "Please use MkSystemApksListResponse instead" #-}
#endif

-- | Create 'SystemApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSystemApksListResponse :: SystemApksListResponse
mkSystemApksListResponse = SystemApksListResponse{variants = Core.Nothing}

    -- * Testers

-- | The testers of an app. The resource for TestersService.
--
-- Construct a default value using the 'MkTesters' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype Testers = Testers
    {
      -- | All testing Google Groups, as email addresses.
      googleGroups :: [Core.Text]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Testers' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTesters :: Testers
pattern MkTesters{} = Testers{googleGroups = Core.Nothing}

{-# DEPRECATED mkTesters "Please use MkTesters instead" #-}
#endif

-- | Create 'Testers' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTesters :: Testers
mkTesters = Testers{googleGroups = Core.Nothing}

    -- * Timestamp

-- | A Timestamp represents a point in time independent of any time zone or local calendar, encoded as a count of seconds and fractions of seconds at nanosecond resolution. The count is relative to an epoch at UTC midnight on January 1, 1970.
--
-- Construct a default value using the 'MkTimestamp' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Timestamp = Timestamp
    {
      -- | Non-negative fractions of a second at nanosecond resolution. Must be from 0 to 999,999,999 inclusive.
      nanos :: Core.Maybe Core.Int32
      -- | Represents seconds of UTC time since Unix epoch.
    , seconds :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Timestamp' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTimestamp :: Timestamp
pattern MkTimestamp{} = Timestamp{nanos = Core.Nothing, seconds = Core.Nothing}

{-# DEPRECATED mkTimestamp "Please use MkTimestamp instead" #-}
#endif

-- | Create 'Timestamp' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTimestamp :: Timestamp
mkTimestamp = Timestamp{nanos = Core.Nothing, seconds = Core.Nothing}

    -- * TokenPagination

-- | Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next\/previous token to get another page of the result. The presence or absence of next\/previous token indicates whether a next\/previous page is available and provides a mean of accessing this page. ListRequest.page/token should be set to either next/page/token or previous/page_token to access another page.
--
-- Construct a default value using the 'MkTokenPagination' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TokenPagination = TokenPagination
    {
      -- | Tokens to pass to the standard list field \'page/token\'. Whenever available, tokens are preferred over manipulating start/index.
      nextPageToken :: Core.Maybe Core.Text
      -- | 
    , previousPageToken :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TokenPagination' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTokenPagination :: TokenPagination
pattern MkTokenPagination{} = TokenPagination{nextPageToken = Core.Nothing, previousPageToken = Core.Nothing}

{-# DEPRECATED mkTokenPagination "Please use MkTokenPagination instead" #-}
#endif

-- | Create 'TokenPagination' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTokenPagination :: TokenPagination
mkTokenPagination = TokenPagination{nextPageToken = Core.Nothing, previousPageToken = Core.Nothing}

    -- * Track

-- | A track configuration. The resource for TracksService.
--
-- Construct a default value using the 'MkTrack' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Track = Track
    {
      -- | In a read request, represents all active releases in the track. In an update request, represents desired changes.
      releases :: [TrackRelease]
      -- | Identifier of the track.
    , track :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Track' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrack :: Track
pattern MkTrack{} = Track{releases = Core.Nothing, track = Core.Nothing}

{-# DEPRECATED mkTrack "Please use MkTrack instead" #-}
#endif

-- | Create 'Track' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrack :: Track
mkTrack = Track{releases = Core.Nothing, track = Core.Nothing}

    -- * TrackCountryAvailability

-- | Resource for per-track country availability information.
--
-- Construct a default value using the 'MkTrackCountryAvailability' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TrackCountryAvailability = TrackCountryAvailability
    {
      -- | A list of one or more countries where artifacts in this track are available. This list includes all countries that are targeted by the track, even if only specific carriers are targeted in that country.
      countries :: [TrackTargetedCountry]
      -- | Whether artifacts in this track are available to \"rest of the world\" countries.
    , restOfWorld :: Core.Maybe Core.Bool
      -- | Whether this track\'s availability is synced with the default production track. See https:\/\/support.google.com\/googleplay\/android-developer\/answer\/7550024 for more information on syncing country availability with production. Note that if this is true, the returned \"countries\" and \"rest/of/world\" fields will reflect the values for the default production track.
    , syncWithProduction :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TrackCountryAvailability' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrackCountryAvailability :: TrackCountryAvailability
pattern MkTrackCountryAvailability{} =
        TrackCountryAvailability{countries = Core.Nothing, restOfWorld = Core.Nothing, syncWithProduction = Core.Nothing}

{-# DEPRECATED mkTrackCountryAvailability "Please use MkTrackCountryAvailability instead" #-}
#endif

-- | Create 'TrackCountryAvailability' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrackCountryAvailability :: TrackCountryAvailability
mkTrackCountryAvailability
  = TrackCountryAvailability{countries = Core.Nothing, restOfWorld = Core.Nothing, syncWithProduction = Core.Nothing}

    -- * TrackRelease

-- | A release within a track.
--
-- Construct a default value using the 'MkTrackRelease' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TrackRelease = TrackRelease
    {
      -- | Restricts a release to a specific set of countries.
      countryTargeting :: Core.Maybe CountryTargeting
      -- | In-app update priority of the release. All newly added APKs in the release will be considered at this priority. Can take values in the range [0, 5], with 5 the highest priority. Defaults to 0. in/app/update_priority can not be updated once the release is rolled out. See https:\/\/developer.android.com\/guide\/playcore\/in-app-updates.
    , inAppUpdatePriority :: Core.Maybe Core.Int32
      -- | The release name. Not required to be unique. If not set, the name is generated from the APK\'s version_name. If the release contains multiple APKs, the name is generated from the date.
    , name :: Core.Maybe Core.Text
      -- | A description of what is new in this release.
    , releaseNotes :: [LocalizedText]
      -- | The status of the release.
    , status :: Core.Maybe TrackRelease'Status
      -- | Fraction of users who are eligible for a staged release. 0 \< fraction \< 1. Can only be set when status is \"inProgress\" or \"halted\".
    , userFraction :: Core.Maybe Core.Double
      -- | Version codes of all APKs in the release. Must include version codes to retain from previous releases.
    , versionCodes :: [Core.Int64]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TrackRelease' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrackRelease :: TrackRelease
pattern MkTrackRelease{} =
        TrackRelease{countryTargeting = Core.Nothing, inAppUpdatePriority = Core.Nothing, name = Core.Nothing,
                     releaseNotes = Core.Nothing, status = Core.Nothing, userFraction = Core.Nothing, versionCodes = Core.Nothing}

{-# DEPRECATED mkTrackRelease "Please use MkTrackRelease instead" #-}
#endif

-- | Create 'TrackRelease' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrackRelease :: TrackRelease
mkTrackRelease
  = TrackRelease{countryTargeting = Core.Nothing, inAppUpdatePriority = Core.Nothing, name = Core.Nothing,
                 releaseNotes = Core.Nothing, status = Core.Nothing, userFraction = Core.Nothing, versionCodes = Core.Nothing}

    -- * TrackTargetedCountry

-- | Representation of a single country where the contents of a track are available.
--
-- Construct a default value using the 'MkTrackTargetedCountry' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype TrackTargetedCountry = TrackTargetedCountry
    {
      -- | The country to target, as a two-letter CLDR code.
      countryCode :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TrackTargetedCountry' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrackTargetedCountry :: TrackTargetedCountry
pattern MkTrackTargetedCountry{} = TrackTargetedCountry{countryCode = Core.Nothing}

{-# DEPRECATED mkTrackTargetedCountry "Please use MkTrackTargetedCountry instead" #-}
#endif

-- | Create 'TrackTargetedCountry' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrackTargetedCountry :: TrackTargetedCountry
mkTrackTargetedCountry = TrackTargetedCountry{countryCode = Core.Nothing}

    -- * TracksListResponse

-- | Response listing all tracks.
--
-- Construct a default value using the 'MkTracksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TracksListResponse = TracksListResponse
    {
      -- | The kind of this response (\"androidpublisher#tracksListResponse\").
      kind :: Core.Maybe Core.Text
      -- | All tracks.
    , tracks :: [Track]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TracksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTracksListResponse :: TracksListResponse
pattern MkTracksListResponse{} = TracksListResponse{kind = Core.Nothing, tracks = Core.Nothing}

{-# DEPRECATED mkTracksListResponse "Please use MkTracksListResponse instead" #-}
#endif

-- | Create 'TracksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTracksListResponse :: TracksListResponse
mkTracksListResponse = TracksListResponse{kind = Core.Nothing, tracks = Core.Nothing}

    -- * User

-- | A user resource.
--
-- Construct a default value using the 'MkUser' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data User = User
    {
      -- | Output only. The state of the user\'s access to the Play Console.
      accessState :: Core.Maybe User'AccessState
      -- | Permissions for the user which apply across the developer account.
    , developerAccountPermissions :: [User'DeveloperAccountPermissionsItem]
      -- | Immutable. The user\'s email address.
    , email :: Core.Maybe Core.Text
      -- | The time at which the user\'s access expires, if set.
    , expirationTime :: Core.Maybe Core.DateTime
      -- | Output only. Per-app permissions for the user.
    , grants :: [Grant]
      -- | Required. Resource name for this user, following the pattern \"developers\/{developer}\/users\/{email}\".
    , name :: Core.Maybe Core.Text
      -- | Output only. Whether there are more permissions for the user that are not represented here.
    , partial :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'User' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkUser :: User
pattern MkUser{} =
        User{accessState = Core.Nothing, developerAccountPermissions = Core.Nothing, email = Core.Nothing,
             expirationTime = Core.Nothing, grants = Core.Nothing, name = Core.Nothing, partial = Core.Nothing}

{-# DEPRECATED mkUser "Please use MkUser instead" #-}
#endif

-- | Create 'User' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkUser :: User
mkUser
  = User{accessState = Core.Nothing, developerAccountPermissions = Core.Nothing, email = Core.Nothing,
         expirationTime = Core.Nothing, grants = Core.Nothing, name = Core.Nothing, partial = Core.Nothing}

    -- * UserComment

-- | User entry from conversation between user and developer.
--
-- Construct a default value using the 'MkUserComment' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data UserComment = UserComment
    {
      -- | Integer Android SDK version of the user\'s device at the time the review was written, e.g. 23 is Marshmallow. May be absent.
      androidOsVersion :: Core.Maybe Core.Int32
      -- | Integer version code of the app as installed at the time the review was written. May be absent.
    , appVersionCode :: Core.Maybe Core.Int32
      -- | String version name of the app as installed at the time the review was written. May be absent.
    , appVersionName :: Core.Maybe Core.Text
      -- | Codename for the reviewer\'s device, e.g. klte, flounder. May be absent.
    , device :: Core.Maybe Core.Text
      -- | Information about the characteristics of the user\'s device.
    , deviceMetadata :: Core.Maybe DeviceMetadata
      -- | The last time at which this comment was updated.
    , lastModified :: Core.Maybe Timestamp
      -- | Untranslated text of the review, where the review was translated. If the review was not translated this is left blank.
    , originalText :: Core.Maybe Core.Text
      -- | Language code for the reviewer. This is taken from the device settings so is not guaranteed to match the language the review is written in. May be absent.
    , reviewerLanguage :: Core.Maybe Core.Text
      -- | The star rating associated with the review, from 1 to 5.
    , starRating :: Core.Maybe Core.Int32
      -- | The content of the comment, i.e. review body. In some cases users have been able to write a review with separate title and body; in those cases the title and body are concatenated and separated by a tab character.
    , text :: Core.Maybe Core.Text
      -- | Number of users who have given this review a thumbs down.
    , thumbsDownCount :: Core.Maybe Core.Int32
      -- | Number of users who have given this review a thumbs up.
    , thumbsUpCount :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'UserComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkUserComment :: UserComment
pattern MkUserComment{} =
        UserComment{androidOsVersion = Core.Nothing, appVersionCode = Core.Nothing, appVersionName = Core.Nothing,
                    device = Core.Nothing, deviceMetadata = Core.Nothing, lastModified = Core.Nothing, originalText = Core.Nothing,
                    reviewerLanguage = Core.Nothing, starRating = Core.Nothing, text = Core.Nothing, thumbsDownCount = Core.Nothing,
                    thumbsUpCount = Core.Nothing}

{-# DEPRECATED mkUserComment "Please use MkUserComment instead" #-}
#endif

-- | Create 'UserComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkUserComment :: UserComment
mkUserComment
  = UserComment{androidOsVersion = Core.Nothing, appVersionCode = Core.Nothing, appVersionName = Core.Nothing,
                device = Core.Nothing, deviceMetadata = Core.Nothing, lastModified = Core.Nothing, originalText = Core.Nothing,
                reviewerLanguage = Core.Nothing, starRating = Core.Nothing, text = Core.Nothing, thumbsDownCount = Core.Nothing,
                thumbsUpCount = Core.Nothing}

    -- * UsesPermission

-- | A permission used by this APK.
--
-- Construct a default value using the 'MkUsesPermission' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data UsesPermission = UsesPermission
    {
      -- | Optionally, the maximum SDK version for which the permission is required.
      maxSdkVersion :: Core.Maybe Core.Int32
      -- | The name of the permission requested.
    , name :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'UsesPermission' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkUsesPermission :: UsesPermission
pattern MkUsesPermission{} = UsesPermission{maxSdkVersion = Core.Nothing, name = Core.Nothing}

{-# DEPRECATED mkUsesPermission "Please use MkUsesPermission instead" #-}
#endif

-- | Create 'UsesPermission' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkUsesPermission :: UsesPermission
mkUsesPermission = UsesPermission{maxSdkVersion = Core.Nothing, name = Core.Nothing}

    -- * Variant

-- | APK that is suitable for inclusion in a system image. The resource of SystemApksService.
--
-- Construct a default value using the 'MkVariant' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Variant = Variant
    {
      -- | The device spec used to generate the APK.
      deviceSpec :: Core.Maybe DeviceSpec
      -- | Output only. The ID of a previously created system APK variant.
    , variantId :: Core.Maybe Core.Word32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Variant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkVariant :: Variant
pattern MkVariant{} = Variant{deviceSpec = Core.Nothing, variantId = Core.Nothing}

{-# DEPRECATED mkVariant "Please use MkVariant instead" #-}
#endif

-- | Create 'Variant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkVariant :: Variant
mkVariant = Variant{deviceSpec = Core.Nothing, variantId = Core.Nothing}

    -- * VoidedPurchase

-- | A VoidedPurchase resource indicates a purchase that was either canceled\/refunded\/charged-back.
--
-- Construct a default value using the 'MkVoidedPurchase' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data VoidedPurchase = VoidedPurchase
    {
      -- | This kind represents a voided purchase object in the androidpublisher service.
      kind :: Core.Maybe Core.Text
      -- | The order id which uniquely identifies a one-time purchase, subscription purchase, or subscription renewal.
    , orderId :: Core.Maybe Core.Text
      -- | The time at which the purchase was made, in milliseconds since the epoch (Jan 1, 1970).
    , purchaseTimeMillis :: Core.Maybe Core.Int64
      -- | The token which uniquely identifies a one-time purchase or subscription. To uniquely identify subscription renewals use order_id (available starting from version 3 of the API).
    , purchaseToken :: Core.Maybe Core.Text
      -- | The reason why the purchase was voided, possible values are: 0. Other 1. Remorse 2. Not/received 3. Defective 4. Accidental/purchase 5. Fraud 6. Friendly_fraud 7. Chargeback.
    , voidedReason :: Core.Maybe Core.Int32
      -- | The initiator of voided purchase, possible values are: 0. User 1. Developer 2. Google.
    , voidedSource :: Core.Maybe Core.Int32
      -- | The time at which the purchase was canceled\/refunded\/charged-back, in milliseconds since the epoch (Jan 1, 1970).
    , voidedTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'VoidedPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkVoidedPurchase :: VoidedPurchase
pattern MkVoidedPurchase{} =
        VoidedPurchase{kind = Core.Nothing, orderId = Core.Nothing, purchaseTimeMillis = Core.Nothing, purchaseToken = Core.Nothing,
                       voidedReason = Core.Nothing, voidedSource = Core.Nothing, voidedTimeMillis = Core.Nothing}

{-# DEPRECATED mkVoidedPurchase "Please use MkVoidedPurchase instead" #-}
#endif

-- | Create 'VoidedPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkVoidedPurchase :: VoidedPurchase
mkVoidedPurchase
  = VoidedPurchase{kind = Core.Nothing, orderId = Core.Nothing, purchaseTimeMillis = Core.Nothing, purchaseToken = Core.Nothing,
                   voidedReason = Core.Nothing, voidedSource = Core.Nothing, voidedTimeMillis = Core.Nothing}

    -- * VoidedPurchasesListResponse

-- | Response for the voidedpurchases.list API.
--
-- Construct a default value using the 'MkVoidedPurchasesListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data VoidedPurchasesListResponse = VoidedPurchasesListResponse
    {
      -- | General pagination information.
      pageInfo :: Core.Maybe PageInfo
      -- | Pagination information for token pagination.
    , tokenPagination :: Core.Maybe TokenPagination
      -- | 
    , voidedPurchases :: [VoidedPurchase]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'VoidedPurchasesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkVoidedPurchasesListResponse :: VoidedPurchasesListResponse
pattern MkVoidedPurchasesListResponse{} =
        VoidedPurchasesListResponse{pageInfo = Core.Nothing, tokenPagination = Core.Nothing, voidedPurchases = Core.Nothing}

{-# DEPRECATED mkVoidedPurchasesListResponse "Please use MkVoidedPurchasesListResponse instead" #-}
#endif

-- | Create 'VoidedPurchasesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkVoidedPurchasesListResponse :: VoidedPurchasesListResponse
mkVoidedPurchasesListResponse
  = VoidedPurchasesListResponse{pageInfo = Core.Nothing, tokenPagination = Core.Nothing, voidedPurchases = Core.Nothing}
  ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Internal.Sum


-- | Information about an APK. The resource for ApksService.
--
-- Construct a default value using the 'MkApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Apk = Apk
    {
      -- | Information about the binary payload of this APK.
      binary :: Core.Maybe ApkBinary
      -- | The version code of the APK, as specified in the manifest file.
    , versionCode :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Apk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApk :: Apk
pattern MkApk{} = Apk{binary = Core.Nothing, versionCode = Core.Nothing}

{-# DEPRECATED mkApk "Please use MkApk instead" #-}
#endif

-- | Create 'Apk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApk :: Apk
mkApk = Apk{binary = Core.Nothing, versionCode = Core.Nothing}


-- | Represents the binary payload of an APK.
--
-- Construct a default value using the 'MkApkBinary' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ApkBinary = ApkBinary
    {
      -- | A sha1 hash of the APK payload, encoded as a hex string and matching the output of the sha1sum command.
      sha1 :: Core.Maybe Core.Text
      -- | A sha256 hash of the APK payload, encoded as a hex string and matching the output of the sha256sum command.
    , sha256 :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApkBinary' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApkBinary :: ApkBinary
pattern MkApkBinary{} = ApkBinary{sha1 = Core.Nothing, sha256 = Core.Nothing}

{-# DEPRECATED mkApkBinary "Please use MkApkBinary instead" #-}
#endif

-- | Create 'ApkBinary' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApkBinary :: ApkBinary
mkApkBinary = ApkBinary{sha1 = Core.Nothing, sha256 = Core.Nothing}


-- | Request to create a new externally hosted APK.
--
-- Construct a default value using the 'MkApksAddExternallyHostedRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ApksAddExternallyHostedRequest = ApksAddExternallyHostedRequest
    {
      -- | The definition of the externally-hosted APK and where it is located.
      externallyHostedApk :: Core.Maybe ExternallyHostedApk
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApksAddExternallyHostedRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApksAddExternallyHostedRequest :: ApksAddExternallyHostedRequest
pattern MkApksAddExternallyHostedRequest{} = ApksAddExternallyHostedRequest{externallyHostedApk = Core.Nothing}

{-# DEPRECATED mkApksAddExternallyHostedRequest "Please use MkApksAddExternallyHostedRequest instead" #-}
#endif

-- | Create 'ApksAddExternallyHostedRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApksAddExternallyHostedRequest :: ApksAddExternallyHostedRequest
mkApksAddExternallyHostedRequest = ApksAddExternallyHostedRequest{externallyHostedApk = Core.Nothing}


-- | Response for creating a new externally hosted APK.
--
-- Construct a default value using the 'MkApksAddExternallyHostedResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ApksAddExternallyHostedResponse = ApksAddExternallyHostedResponse
    {
      -- | The definition of the externally-hosted APK and where it is located.
      externallyHostedApk :: Core.Maybe ExternallyHostedApk
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApksAddExternallyHostedResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApksAddExternallyHostedResponse :: ApksAddExternallyHostedResponse
pattern MkApksAddExternallyHostedResponse{} = ApksAddExternallyHostedResponse{externallyHostedApk = Core.Nothing}

{-# DEPRECATED mkApksAddExternallyHostedResponse "Please use MkApksAddExternallyHostedResponse instead" #-}
#endif

-- | Create 'ApksAddExternallyHostedResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApksAddExternallyHostedResponse :: ApksAddExternallyHostedResponse
mkApksAddExternallyHostedResponse = ApksAddExternallyHostedResponse{externallyHostedApk = Core.Nothing}


-- | Response listing all APKs.
--
-- Construct a default value using the 'MkApksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ApksListResponse = ApksListResponse
    {
      -- | All APKs.
      apks :: [Apk]
      -- | The kind of this response (\"androidpublisher#apksListResponse\").
    , kind :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkApksListResponse :: ApksListResponse
pattern MkApksListResponse{} = ApksListResponse{apks = Core.Nothing, kind = Core.Nothing}

{-# DEPRECATED mkApksListResponse "Please use MkApksListResponse instead" #-}
#endif

-- | Create 'ApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkApksListResponse :: ApksListResponse
mkApksListResponse = ApksListResponse{apks = Core.Nothing, kind = Core.Nothing}


-- | The app details. The resource for DetailsService.
--
-- Construct a default value using the 'MkAppDetails' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AppDetails = AppDetails
    {
      -- | The user-visible support email for this app.
      contactEmail :: Core.Maybe Core.Text
      -- | The user-visible support telephone number for this app.
    , contactPhone :: Core.Maybe Core.Text
      -- | The user-visible website for this app.
    , contactWebsite :: Core.Maybe Core.Text
      -- | Default language code, in BCP 47 format (eg \"en-US\").
    , defaultLanguage :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AppDetails' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAppDetails :: AppDetails
pattern MkAppDetails{} =
        AppDetails{contactEmail = Core.Nothing, contactPhone = Core.Nothing, contactWebsite = Core.Nothing,
                   defaultLanguage = Core.Nothing}

{-# DEPRECATED mkAppDetails "Please use MkAppDetails instead" #-}
#endif

-- | Create 'AppDetails' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAppDetails :: AppDetails
mkAppDetails
  = AppDetails{contactEmail = Core.Nothing, contactPhone = Core.Nothing, contactWebsite = Core.Nothing,
               defaultLanguage = Core.Nothing}


-- | An app edit. The resource for EditsService.
--
-- Construct a default value using the 'MkAppEdit' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AppEdit = AppEdit
    {
      -- | Output only. The time (as seconds since Epoch) at which the edit will expire and will be no longer valid for use.
      expiryTimeSeconds :: Core.Maybe Core.Text
      -- | Output only. Identifier of the edit. Can be used in subsequent API calls.
    , id :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AppEdit' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAppEdit :: AppEdit
pattern MkAppEdit{} = AppEdit{expiryTimeSeconds = Core.Nothing, id = Core.Nothing}

{-# DEPRECATED mkAppEdit "Please use MkAppEdit instead" #-}
#endif

-- | Create 'AppEdit' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAppEdit :: AppEdit
mkAppEdit = AppEdit{expiryTimeSeconds = Core.Nothing, id = Core.Nothing}


-- | Information about an app bundle. The resource for BundlesService.
--
-- Construct a default value using the 'MkBundle' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Bundle = Bundle
    {
      -- | A sha1 hash of the upload payload, encoded as a hex string and matching the output of the sha1sum command.
      sha1 :: Core.Maybe Core.Text
      -- | A sha256 hash of the upload payload, encoded as a hex string and matching the output of the sha256sum command.
    , sha256 :: Core.Maybe Core.Text
      -- | The version code of the Android App Bundle, as specified in the Android App Bundle\'s base module APK manifest file.
    , versionCode :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Bundle' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkBundle :: Bundle
pattern MkBundle{} = Bundle{sha1 = Core.Nothing, sha256 = Core.Nothing, versionCode = Core.Nothing}

{-# DEPRECATED mkBundle "Please use MkBundle instead" #-}
#endif

-- | Create 'Bundle' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkBundle :: Bundle
mkBundle = Bundle{sha1 = Core.Nothing, sha256 = Core.Nothing, versionCode = Core.Nothing}


-- | Response listing all app bundles.
--
-- Construct a default value using the 'MkBundlesListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data BundlesListResponse = BundlesListResponse
    {
      -- | All app bundles.
      bundles :: [Bundle]
      -- | The kind of this response (\"androidpublisher#bundlesListResponse\").
    , kind :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'BundlesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkBundlesListResponse :: BundlesListResponse
pattern MkBundlesListResponse{} = BundlesListResponse{bundles = Core.Nothing, kind = Core.Nothing}

{-# DEPRECATED mkBundlesListResponse "Please use MkBundlesListResponse instead" #-}
#endif

-- | Create 'BundlesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkBundlesListResponse :: BundlesListResponse
mkBundlesListResponse = BundlesListResponse{bundles = Core.Nothing, kind = Core.Nothing}


-- | An entry of conversation between user and developer.
--
-- Construct a default value using the 'MkComment' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Comment = Comment
    {
      -- | A comment from a developer.
      developerComment :: Core.Maybe DeveloperComment
      -- | A comment from a user.
    , userComment :: Core.Maybe UserComment
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Comment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkComment :: Comment
pattern MkComment{} = Comment{developerComment = Core.Nothing, userComment = Core.Nothing}

{-# DEPRECATED mkComment "Please use MkComment instead" #-}
#endif

-- | Create 'Comment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkComment :: Comment
mkComment = Comment{developerComment = Core.Nothing, userComment = Core.Nothing}


-- | Request message for ConvertRegionPrices.
--
-- Construct a default value using the 'MkConvertRegionPricesRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ConvertRegionPricesRequest = ConvertRegionPricesRequest
    {
      -- | The intital price to convert other regions from. Tax exclusive.
      price :: Core.Maybe Money
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertRegionPricesRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertRegionPricesRequest :: ConvertRegionPricesRequest
pattern MkConvertRegionPricesRequest{} = ConvertRegionPricesRequest{price = Core.Nothing}

{-# DEPRECATED mkConvertRegionPricesRequest "Please use MkConvertRegionPricesRequest instead" #-}
#endif

-- | Create 'ConvertRegionPricesRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertRegionPricesRequest :: ConvertRegionPricesRequest
mkConvertRegionPricesRequest = ConvertRegionPricesRequest{price = Core.Nothing}


-- | Response message for ConvertRegionPrices.
--
-- Construct a default value using the 'MkConvertRegionPricesResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ConvertRegionPricesResponse = ConvertRegionPricesResponse
    {
      -- | Converted other regions prices in USD and EUR, to use for countries where Play doesn\'t support a country\'s local currency.
      convertedOtherRegionsPrice :: Core.Maybe ConvertedOtherRegionsPrice
      -- | Map from region code to converted region price.
    , convertedRegionPrices :: Core.Maybe ConvertRegionPricesResponse'ConvertedRegionPrices
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertRegionPricesResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertRegionPricesResponse :: ConvertRegionPricesResponse
pattern MkConvertRegionPricesResponse{} =
        ConvertRegionPricesResponse{convertedOtherRegionsPrice = Core.Nothing, convertedRegionPrices = Core.Nothing}

{-# DEPRECATED mkConvertRegionPricesResponse "Please use MkConvertRegionPricesResponse instead" #-}
#endif

-- | Create 'ConvertRegionPricesResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertRegionPricesResponse :: ConvertRegionPricesResponse
mkConvertRegionPricesResponse
  = ConvertRegionPricesResponse{convertedOtherRegionsPrice = Core.Nothing, convertedRegionPrices = Core.Nothing}


-- | Map from region code to converted region price.
newtype ConvertRegionPricesResponse'ConvertedRegionPrices = ConvertRegionPricesResponse'ConvertedRegionPrices
    {
      -- | 
      additional :: Core.HashMap Core.Text ConvertedRegionPrice
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)


-- | Converted other regions prices.
--
-- Construct a default value using the 'MkConvertedOtherRegionsPrice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ConvertedOtherRegionsPrice = ConvertedOtherRegionsPrice
    {
      -- | Price in EUR to use for the \"Other regions\" location exclusive of taxes.
      eurPrice :: Core.Maybe Money
      -- | Price in USD to use for the \"Other regions\" location exclusive of taxes.
    , usdPrice :: Core.Maybe Money
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertedOtherRegionsPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertedOtherRegionsPrice :: ConvertedOtherRegionsPrice
pattern MkConvertedOtherRegionsPrice{} = ConvertedOtherRegionsPrice{eurPrice = Core.Nothing, usdPrice = Core.Nothing}

{-# DEPRECATED mkConvertedOtherRegionsPrice "Please use MkConvertedOtherRegionsPrice instead" #-}
#endif

-- | Create 'ConvertedOtherRegionsPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertedOtherRegionsPrice :: ConvertedOtherRegionsPrice
mkConvertedOtherRegionsPrice = ConvertedOtherRegionsPrice{eurPrice = Core.Nothing, usdPrice = Core.Nothing}


-- | A converted region price.
--
-- Construct a default value using the 'MkConvertedRegionPrice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ConvertedRegionPrice = ConvertedRegionPrice
    {
      -- | The converted price tax inclusive.
      price :: Core.Maybe Money
      -- | The region code of the region.
    , regionCode :: Core.Maybe Core.Text
      -- | The tax amount of the converted price.
    , taxAmount :: Core.Maybe Money
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ConvertedRegionPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkConvertedRegionPrice :: ConvertedRegionPrice
pattern MkConvertedRegionPrice{} =
        ConvertedRegionPrice{price = Core.Nothing, regionCode = Core.Nothing, taxAmount = Core.Nothing}

{-# DEPRECATED mkConvertedRegionPrice "Please use MkConvertedRegionPrice instead" #-}
#endif

-- | Create 'ConvertedRegionPrice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkConvertedRegionPrice :: ConvertedRegionPrice
mkConvertedRegionPrice = ConvertedRegionPrice{price = Core.Nothing, regionCode = Core.Nothing, taxAmount = Core.Nothing}


-- | Country targeting specification.
--
-- Construct a default value using the 'MkCountryTargeting' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data CountryTargeting = CountryTargeting
    {
      -- | Countries to target, specified as two letter <https://unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html CLDR codes>.
      countries :: [Core.Text]
      -- | Include \"rest of world\" as well as explicitly targeted countries.
    , includeRestOfWorld :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'CountryTargeting' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkCountryTargeting :: CountryTargeting
pattern MkCountryTargeting{} = CountryTargeting{countries = Core.Nothing, includeRestOfWorld = Core.Nothing}

{-# DEPRECATED mkCountryTargeting "Please use MkCountryTargeting instead" #-}
#endif

-- | Create 'CountryTargeting' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkCountryTargeting :: CountryTargeting
mkCountryTargeting = CountryTargeting{countries = Core.Nothing, includeRestOfWorld = Core.Nothing}


-- | Represents a deobfuscation file.
--
-- Construct a default value using the 'MkDeobfuscationFile' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype DeobfuscationFile = DeobfuscationFile
    {
      -- | The type of the deobfuscation file.
      symbolType :: Core.Maybe DeobfuscationFile'SymbolType
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeobfuscationFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeobfuscationFile :: DeobfuscationFile
pattern MkDeobfuscationFile{} = DeobfuscationFile{symbolType = Core.Nothing}

{-# DEPRECATED mkDeobfuscationFile "Please use MkDeobfuscationFile instead" #-}
#endif

-- | Create 'DeobfuscationFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeobfuscationFile :: DeobfuscationFile
mkDeobfuscationFile = DeobfuscationFile{symbolType = Core.Nothing}


-- | Responses for the upload.
--
-- Construct a default value using the 'MkDeobfuscationFilesUploadResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype DeobfuscationFilesUploadResponse = DeobfuscationFilesUploadResponse
    {
      -- | The uploaded Deobfuscation File configuration.
      deobfuscationFile :: Core.Maybe DeobfuscationFile
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeobfuscationFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeobfuscationFilesUploadResponse :: DeobfuscationFilesUploadResponse
pattern MkDeobfuscationFilesUploadResponse{} = DeobfuscationFilesUploadResponse{deobfuscationFile = Core.Nothing}

{-# DEPRECATED mkDeobfuscationFilesUploadResponse "Please use MkDeobfuscationFilesUploadResponse instead" #-}
#endif

-- | Create 'DeobfuscationFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeobfuscationFilesUploadResponse :: DeobfuscationFilesUploadResponse
mkDeobfuscationFilesUploadResponse = DeobfuscationFilesUploadResponse{deobfuscationFile = Core.Nothing}


-- | Developer entry from conversation between user and developer.
--
-- Construct a default value using the 'MkDeveloperComment' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data DeveloperComment = DeveloperComment
    {
      -- | The last time at which this comment was updated.
      lastModified :: Core.Maybe Timestamp
      -- | The content of the comment, i.e. reply body.
    , text :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeveloperComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeveloperComment :: DeveloperComment
pattern MkDeveloperComment{} = DeveloperComment{lastModified = Core.Nothing, text = Core.Nothing}

{-# DEPRECATED mkDeveloperComment "Please use MkDeveloperComment instead" #-}
#endif

-- | Create 'DeveloperComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeveloperComment :: DeveloperComment
mkDeveloperComment = DeveloperComment{lastModified = Core.Nothing, text = Core.Nothing}


-- | Characteristics of the user\'s device.
--
-- Construct a default value using the 'MkDeviceMetadata' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data DeviceMetadata = DeviceMetadata
    {
      -- | Device CPU make, e.g. \"Qualcomm\".
      cpuMake :: Core.Maybe Core.Text
      -- | Device CPU model, e.g. \"MSM8974\".
    , cpuModel :: Core.Maybe Core.Text
      -- | Device class (e.g. tablet).
    , deviceClass :: Core.Maybe Core.Text
      -- | OpenGL version.
    , glEsVersion :: Core.Maybe Core.Int32
      -- | Device manufacturer (e.g. Motorola).
    , manufacturer :: Core.Maybe Core.Text
      -- | Comma separated list of native platforms (e.g. \"arm\", \"arm7\").
    , nativePlatform :: Core.Maybe Core.Text
      -- | Device model name (e.g. Droid).
    , productName :: Core.Maybe Core.Text
      -- | Device RAM in Megabytes, e.g. \"2048\".
    , ramMb :: Core.Maybe Core.Int32
      -- | Screen density in DPI.
    , screenDensityDpi :: Core.Maybe Core.Int32
      -- | Screen height in pixels.
    , screenHeightPx :: Core.Maybe Core.Int32
      -- | Screen width in pixels.
    , screenWidthPx :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeviceMetadata' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeviceMetadata :: DeviceMetadata
pattern MkDeviceMetadata{} =
        DeviceMetadata{cpuMake = Core.Nothing, cpuModel = Core.Nothing, deviceClass = Core.Nothing, glEsVersion = Core.Nothing,
                       manufacturer = Core.Nothing, nativePlatform = Core.Nothing, productName = Core.Nothing, ramMb = Core.Nothing,
                       screenDensityDpi = Core.Nothing, screenHeightPx = Core.Nothing, screenWidthPx = Core.Nothing}

{-# DEPRECATED mkDeviceMetadata "Please use MkDeviceMetadata instead" #-}
#endif

-- | Create 'DeviceMetadata' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeviceMetadata :: DeviceMetadata
mkDeviceMetadata
  = DeviceMetadata{cpuMake = Core.Nothing, cpuModel = Core.Nothing, deviceClass = Core.Nothing, glEsVersion = Core.Nothing,
                   manufacturer = Core.Nothing, nativePlatform = Core.Nothing, productName = Core.Nothing, ramMb = Core.Nothing,
                   screenDensityDpi = Core.Nothing, screenHeightPx = Core.Nothing, screenWidthPx = Core.Nothing}


-- | The device spec used to generate a system APK.
--
-- Construct a default value using the 'MkDeviceSpec' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data DeviceSpec = DeviceSpec
    {
      -- | Screen dpi.
      screenDensity :: Core.Maybe Core.Word32
      -- | Supported ABI architectures in the order of preference. The values should be the string as reported by the platform, e.g. \"armeabi-v7a\", \"x86_64\".
    , supportedAbis :: [Core.Text]
      -- | All installed locales represented as BCP-47 strings, e.g. \"en-US\".
    , supportedLocales :: [Core.Text]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'DeviceSpec' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkDeviceSpec :: DeviceSpec
pattern MkDeviceSpec{} = DeviceSpec{screenDensity = Core.Nothing, supportedAbis = Core.Nothing, supportedLocales = Core.Nothing}

{-# DEPRECATED mkDeviceSpec "Please use MkDeviceSpec instead" #-}
#endif

-- | Create 'DeviceSpec' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkDeviceSpec :: DeviceSpec
mkDeviceSpec = DeviceSpec{screenDensity = Core.Nothing, supportedAbis = Core.Nothing, supportedLocales = Core.Nothing}


-- | An expansion file. The resource for ExpansionFilesService.
--
-- Construct a default value using the 'MkExpansionFile' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ExpansionFile = ExpansionFile
    {
      -- | If set, this field indicates that this APK has an expansion file uploaded to it: this APK does not reference another APK\'s expansion file. The field\'s value is the size of the uploaded expansion file in bytes.
      fileSize :: Core.Maybe Core.Int64
      -- | If set, this APK\'s expansion file references another APK\'s expansion file. The file_size field will not be set.
    , referencesVersion :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ExpansionFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkExpansionFile :: ExpansionFile
pattern MkExpansionFile{} = ExpansionFile{fileSize = Core.Nothing, referencesVersion = Core.Nothing}

{-# DEPRECATED mkExpansionFile "Please use MkExpansionFile instead" #-}
#endif

-- | Create 'ExpansionFile' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkExpansionFile :: ExpansionFile
mkExpansionFile = ExpansionFile{fileSize = Core.Nothing, referencesVersion = Core.Nothing}


-- | Response for uploading an expansion file.
--
-- Construct a default value using the 'MkExpansionFilesUploadResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ExpansionFilesUploadResponse = ExpansionFilesUploadResponse
    {
      -- | The uploaded expansion file configuration.
      expansionFile :: Core.Maybe ExpansionFile
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ExpansionFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkExpansionFilesUploadResponse :: ExpansionFilesUploadResponse
pattern MkExpansionFilesUploadResponse{} = ExpansionFilesUploadResponse{expansionFile = Core.Nothing}

{-# DEPRECATED mkExpansionFilesUploadResponse "Please use MkExpansionFilesUploadResponse instead" #-}
#endif

-- | Create 'ExpansionFilesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkExpansionFilesUploadResponse :: ExpansionFilesUploadResponse
mkExpansionFilesUploadResponse = ExpansionFilesUploadResponse{expansionFile = Core.Nothing}


-- | Defines an APK available for this application that is hosted externally and not uploaded to Google Play. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.
--
-- Construct a default value using the 'MkExternallyHostedApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ExternallyHostedApk = ExternallyHostedApk
    {
      -- | The application label.
      applicationLabel :: Core.Maybe Core.Text
      -- | A certificate (or array of certificates if a certificate-chain is used) used to sign this APK, represented as a base64 encoded byte array.
    , certificateBase64s :: [Core.Text]
      -- | The URL at which the APK is hosted. This must be an https URL.
    , externallyHostedUrl :: Core.Maybe Core.Text
      -- | The sha1 checksum of this APK, represented as a base64 encoded byte array.
    , fileSha1Base64 :: Core.Maybe Core.Text
      -- | The sha256 checksum of this APK, represented as a base64 encoded byte array.
    , fileSha256Base64 :: Core.Maybe Core.Text
      -- | The file size in bytes of this APK.
    , fileSize :: Core.Maybe Core.Int64
      -- | The icon image from the APK, as a base64 encoded byte array.
    , iconBase64 :: Core.Maybe Core.Text
      -- | The maximum SDK supported by this APK (optional).
    , maximumSdk :: Core.Maybe Core.Int32
      -- | The minimum SDK targeted by this APK.
    , minimumSdk :: Core.Maybe Core.Int32
      -- | The native code environments supported by this APK (optional).
    , nativeCodes :: [Core.Text]
      -- | The package name.
    , packageName :: Core.Maybe Core.Text
      -- | The features required by this APK (optional).
    , usesFeatures :: [Core.Text]
      -- | The permissions requested by this APK.
    , usesPermissions :: [UsesPermission]
      -- | The version code of this APK.
    , versionCode :: Core.Maybe Core.Int32
      -- | The version name of this APK.
    , versionName :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ExternallyHostedApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkExternallyHostedApk :: ExternallyHostedApk
pattern MkExternallyHostedApk{} =
        ExternallyHostedApk{applicationLabel = Core.Nothing, certificateBase64s = Core.Nothing, externallyHostedUrl = Core.Nothing,
                            fileSha1Base64 = Core.Nothing, fileSha256Base64 = Core.Nothing, fileSize = Core.Nothing, iconBase64 = Core.Nothing,
                            maximumSdk = Core.Nothing, minimumSdk = Core.Nothing, nativeCodes = Core.Nothing, packageName = Core.Nothing,
                            usesFeatures = Core.Nothing, usesPermissions = Core.Nothing, versionCode = Core.Nothing, versionName = Core.Nothing}

{-# DEPRECATED mkExternallyHostedApk "Please use MkExternallyHostedApk instead" #-}
#endif

-- | Create 'ExternallyHostedApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkExternallyHostedApk :: ExternallyHostedApk
mkExternallyHostedApk
  = ExternallyHostedApk{applicationLabel = Core.Nothing, certificateBase64s = Core.Nothing, externallyHostedUrl = Core.Nothing,
                        fileSha1Base64 = Core.Nothing, fileSha256Base64 = Core.Nothing, fileSize = Core.Nothing, iconBase64 = Core.Nothing,
                        maximumSdk = Core.Nothing, minimumSdk = Core.Nothing, nativeCodes = Core.Nothing, packageName = Core.Nothing,
                        usesFeatures = Core.Nothing, usesPermissions = Core.Nothing, versionCode = Core.Nothing, versionName = Core.Nothing}


-- | Response to list generated APKs.
--
-- Construct a default value using the 'MkGeneratedApksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype GeneratedApksListResponse = GeneratedApksListResponse
    {
      -- | All generated APKs, grouped by the APK signing key.
      generatedApks :: [GeneratedApksPerSigningKey]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedApksListResponse :: GeneratedApksListResponse
pattern MkGeneratedApksListResponse{} = GeneratedApksListResponse{generatedApks = Core.Nothing}

{-# DEPRECATED mkGeneratedApksListResponse "Please use MkGeneratedApksListResponse instead" #-}
#endif

-- | Create 'GeneratedApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedApksListResponse :: GeneratedApksListResponse
mkGeneratedApksListResponse = GeneratedApksListResponse{generatedApks = Core.Nothing}


-- | Download metadata for split, standalone and universal APKs, as well as asset pack slices, signed with a given key.
--
-- Construct a default value using the 'MkGeneratedApksPerSigningKey' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedApksPerSigningKey = GeneratedApksPerSigningKey
    {
      -- | SHA256 hash of the APK signing public key certificate.
      certificateSha256Hash :: Core.Maybe Core.Text
      -- | List of asset pack slices which will be served for this app bundle, signed with a key corresponding to certificate/sha256/hash.
    , generatedAssetPackSlices :: [GeneratedAssetPackSlice]
      -- | List of generated split APKs, signed with a key corresponding to certificate/sha256/hash.
    , generatedSplitApks :: [GeneratedSplitApk]
      -- | List of generated standalone APKs, signed with a key corresponding to certificate/sha256/hash.
    , generatedStandaloneApks :: [GeneratedStandaloneApk]
      -- | Generated universal APK, signed with a key corresponding to certificate/sha256/hash. This field is not set if no universal APK was generated for this signing key.
    , generatedUniversalApk :: Core.Maybe GeneratedUniversalApk
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedApksPerSigningKey' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedApksPerSigningKey :: GeneratedApksPerSigningKey
pattern MkGeneratedApksPerSigningKey{} =
        GeneratedApksPerSigningKey{certificateSha256Hash = Core.Nothing, generatedAssetPackSlices = Core.Nothing,
                                   generatedSplitApks = Core.Nothing, generatedStandaloneApks = Core.Nothing, generatedUniversalApk = Core.Nothing}

{-# DEPRECATED mkGeneratedApksPerSigningKey "Please use MkGeneratedApksPerSigningKey instead" #-}
#endif

-- | Create 'GeneratedApksPerSigningKey' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedApksPerSigningKey :: GeneratedApksPerSigningKey
mkGeneratedApksPerSigningKey
  = GeneratedApksPerSigningKey{certificateSha256Hash = Core.Nothing, generatedAssetPackSlices = Core.Nothing,
                               generatedSplitApks = Core.Nothing, generatedStandaloneApks = Core.Nothing, generatedUniversalApk = Core.Nothing}


-- | Download metadata for an asset pack slice.
--
-- Construct a default value using the 'MkGeneratedAssetPackSlice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedAssetPackSlice = GeneratedAssetPackSlice
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
      -- | Name of the module that this asset slice belongs to.
    , moduleName :: Core.Maybe Core.Text
      -- | Asset slice ID.
    , sliceId :: Core.Maybe Core.Text
      -- | Asset module version.
    , version :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedAssetPackSlice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedAssetPackSlice :: GeneratedAssetPackSlice
pattern MkGeneratedAssetPackSlice{} =
        GeneratedAssetPackSlice{downloadId = Core.Nothing, moduleName = Core.Nothing, sliceId = Core.Nothing, version = Core.Nothing}

{-# DEPRECATED mkGeneratedAssetPackSlice "Please use MkGeneratedAssetPackSlice instead" #-}
#endif

-- | Create 'GeneratedAssetPackSlice' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedAssetPackSlice :: GeneratedAssetPackSlice
mkGeneratedAssetPackSlice
  = GeneratedAssetPackSlice{downloadId = Core.Nothing, moduleName = Core.Nothing, sliceId = Core.Nothing, version = Core.Nothing}


-- | Download metadata for a split APK.
--
-- Construct a default value using the 'MkGeneratedSplitApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedSplitApk = GeneratedSplitApk
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
      -- | Name of the module that this APK belongs to.
    , moduleName :: Core.Maybe Core.Text
      -- | Split ID. Empty for the main split of the base module.
    , splitId :: Core.Maybe Core.Text
      -- | ID of the generated variant.
    , variantId :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedSplitApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedSplitApk :: GeneratedSplitApk
pattern MkGeneratedSplitApk{} =
        GeneratedSplitApk{downloadId = Core.Nothing, moduleName = Core.Nothing, splitId = Core.Nothing, variantId = Core.Nothing}

{-# DEPRECATED mkGeneratedSplitApk "Please use MkGeneratedSplitApk instead" #-}
#endif

-- | Create 'GeneratedSplitApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedSplitApk :: GeneratedSplitApk
mkGeneratedSplitApk
  = GeneratedSplitApk{downloadId = Core.Nothing, moduleName = Core.Nothing, splitId = Core.Nothing, variantId = Core.Nothing}


-- | Download metadata for a standalone APK.
--
-- Construct a default value using the 'MkGeneratedStandaloneApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data GeneratedStandaloneApk = GeneratedStandaloneApk
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
      -- | ID of the generated variant.
    , variantId :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedStandaloneApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedStandaloneApk :: GeneratedStandaloneApk
pattern MkGeneratedStandaloneApk{} = GeneratedStandaloneApk{downloadId = Core.Nothing, variantId = Core.Nothing}

{-# DEPRECATED mkGeneratedStandaloneApk "Please use MkGeneratedStandaloneApk instead" #-}
#endif

-- | Create 'GeneratedStandaloneApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedStandaloneApk :: GeneratedStandaloneApk
mkGeneratedStandaloneApk = GeneratedStandaloneApk{downloadId = Core.Nothing, variantId = Core.Nothing}


-- | Download metadata for a universal APK.
--
-- Construct a default value using the 'MkGeneratedUniversalApk' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype GeneratedUniversalApk = GeneratedUniversalApk
    {
      -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
      downloadId :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'GeneratedUniversalApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGeneratedUniversalApk :: GeneratedUniversalApk
pattern MkGeneratedUniversalApk{} = GeneratedUniversalApk{downloadId = Core.Nothing}

{-# DEPRECATED mkGeneratedUniversalApk "Please use MkGeneratedUniversalApk instead" #-}
#endif

-- | Create 'GeneratedUniversalApk' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGeneratedUniversalApk :: GeneratedUniversalApk
mkGeneratedUniversalApk = GeneratedUniversalApk{downloadId = Core.Nothing}


-- | An access grant resource.
--
-- Construct a default value using the 'MkGrant' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Grant = Grant
    {
      -- | The permissions granted to the user for this app.
      appLevelPermissions :: [Grant'AppLevelPermissionsItem]
      -- | Required. Resource name for this grant, following the pattern \"developers\/{developer}\/users\/{email}\/grants\/{package_name}\".
    , name :: Core.Maybe Core.Text
      -- | Immutable. The package name of the app.
    , packageName :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Grant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkGrant :: Grant
pattern MkGrant{} = Grant{appLevelPermissions = Core.Nothing, name = Core.Nothing, packageName = Core.Nothing}

{-# DEPRECATED mkGrant "Please use MkGrant instead" #-}
#endif

-- | Create 'Grant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkGrant :: Grant
mkGrant = Grant{appLevelPermissions = Core.Nothing, name = Core.Nothing, packageName = Core.Nothing}


-- | An uploaded image. The resource for ImagesService.
--
-- Construct a default value using the 'MkImage' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Image = Image
    {
      -- | A unique id representing this image.
      id :: Core.Maybe Core.Text
      -- | A sha1 hash of the image.
    , sha1 :: Core.Maybe Core.Text
      -- | A sha256 hash of the image.
    , sha256 :: Core.Maybe Core.Text
      -- | A URL that will serve a preview of the image.
    , url :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Image' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImage :: Image
pattern MkImage{} = Image{id = Core.Nothing, sha1 = Core.Nothing, sha256 = Core.Nothing, url = Core.Nothing}

{-# DEPRECATED mkImage "Please use MkImage instead" #-}
#endif

-- | Create 'Image' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImage :: Image
mkImage = Image{id = Core.Nothing, sha1 = Core.Nothing, sha256 = Core.Nothing, url = Core.Nothing}


-- | Response for deleting all images.
--
-- Construct a default value using the 'MkImagesDeleteAllResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ImagesDeleteAllResponse = ImagesDeleteAllResponse
    {
      -- | The deleted images.
      deleted :: [Image]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ImagesDeleteAllResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImagesDeleteAllResponse :: ImagesDeleteAllResponse
pattern MkImagesDeleteAllResponse{} = ImagesDeleteAllResponse{deleted = Core.Nothing}

{-# DEPRECATED mkImagesDeleteAllResponse "Please use MkImagesDeleteAllResponse instead" #-}
#endif

-- | Create 'ImagesDeleteAllResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImagesDeleteAllResponse :: ImagesDeleteAllResponse
mkImagesDeleteAllResponse = ImagesDeleteAllResponse{deleted = Core.Nothing}


-- | Response listing all images.
--
-- Construct a default value using the 'MkImagesListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ImagesListResponse = ImagesListResponse
    {
      -- | All listed Images.
      images :: [Image]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ImagesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImagesListResponse :: ImagesListResponse
pattern MkImagesListResponse{} = ImagesListResponse{images = Core.Nothing}

{-# DEPRECATED mkImagesListResponse "Please use MkImagesListResponse instead" #-}
#endif

-- | Create 'ImagesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImagesListResponse :: ImagesListResponse
mkImagesListResponse = ImagesListResponse{images = Core.Nothing}


-- | Response for uploading an image.
--
-- Construct a default value using the 'MkImagesUploadResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ImagesUploadResponse = ImagesUploadResponse
    {
      -- | The uploaded image.
      image :: Core.Maybe Image
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ImagesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkImagesUploadResponse :: ImagesUploadResponse
pattern MkImagesUploadResponse{} = ImagesUploadResponse{image = Core.Nothing}

{-# DEPRECATED mkImagesUploadResponse "Please use MkImagesUploadResponse instead" #-}
#endif

-- | Create 'ImagesUploadResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkImagesUploadResponse :: ImagesUploadResponse
mkImagesUploadResponse = ImagesUploadResponse{image = Core.Nothing}


-- | An in-app product. The resource for InappproductsService.
--
-- Construct a default value using the 'MkInAppProduct' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InAppProduct = InAppProduct
    {
      -- | Default language of the localized data, as defined by BCP-47. e.g. \"en-US\".
      defaultLanguage :: Core.Maybe Core.Text
      -- | Default price. Cannot be zero, as in-app products are never free. Always in the developer\'s Checkout merchant currency.
    , defaultPrice :: Core.Maybe Price
      -- | Grace period of the subscription, specified in ISO 8601 format. Allows developers to give their subscribers a grace period when the payment for the new recurrence period is declined. Acceptable values are P0D (zero days), P3D (three days), P7D (seven days), P14D (14 days), and P30D (30 days).
    , gracePeriod :: Core.Maybe Core.Text
      -- | List of localized title and description data. Map key is the language of the localized data, as defined by BCP-47, e.g. \"en-US\".
    , listings :: Core.Maybe InAppProduct'Listings
      -- | Details about taxes and legal compliance. Only applicable to managed products.
    , managedProductTaxesAndComplianceSettings :: Core.Maybe ManagedProductTaxAndComplianceSettings
      -- | Package name of the parent app.
    , packageName :: Core.Maybe Core.Text
      -- | Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is region code, as defined by ISO 3166-2.
    , prices :: Core.Maybe InAppProduct'Prices
      -- | The type of the product, e.g. a recurring subscription.
    , purchaseType :: Core.Maybe InAppProduct'PurchaseType
      -- | Stock-keeping-unit (SKU) of the product, unique within an app.
    , sku :: Core.Maybe Core.Text
      -- | The status of the product, e.g. whether it\'s active.
    , status :: Core.Maybe InAppProduct'Status
      -- | Subscription period, specified in ISO 8601 format. Acceptable values are P1W (one week), P1M (one month), P3M (three months), P6M (six months), and P1Y (one year).
    , subscriptionPeriod :: Core.Maybe Core.Text
      -- | Details about taxes and legal compliance. Only applicable to subscription products.
    , subscriptionTaxesAndComplianceSettings :: Core.Maybe SubscriptionTaxAndComplianceSettings
      -- | Trial period, specified in ISO 8601 format. Acceptable values are anything between P7D (seven days) and P999D (999 days).
    , trialPeriod :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InAppProduct' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInAppProduct :: InAppProduct
pattern MkInAppProduct{} =
        InAppProduct{defaultLanguage = Core.Nothing, defaultPrice = Core.Nothing, gracePeriod = Core.Nothing, listings = Core.Nothing,
                     managedProductTaxesAndComplianceSettings = Core.Nothing, packageName = Core.Nothing, prices = Core.Nothing,
                     purchaseType = Core.Nothing, sku = Core.Nothing, status = Core.Nothing, subscriptionPeriod = Core.Nothing,
                     subscriptionTaxesAndComplianceSettings = Core.Nothing, trialPeriod = Core.Nothing}

{-# DEPRECATED mkInAppProduct "Please use MkInAppProduct instead" #-}
#endif

-- | Create 'InAppProduct' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInAppProduct :: InAppProduct
mkInAppProduct
  = InAppProduct{defaultLanguage = Core.Nothing, defaultPrice = Core.Nothing, gracePeriod = Core.Nothing, listings = Core.Nothing,
                 managedProductTaxesAndComplianceSettings = Core.Nothing, packageName = Core.Nothing, prices = Core.Nothing,
                 purchaseType = Core.Nothing, sku = Core.Nothing, status = Core.Nothing, subscriptionPeriod = Core.Nothing,
                 subscriptionTaxesAndComplianceSettings = Core.Nothing, trialPeriod = Core.Nothing}


-- | List of localized title and description data. Map key is the language of the localized data, as defined by BCP-47, e.g. \"en-US\".
newtype InAppProduct'Listings = InAppProduct'Listings
    {
      -- | 
      additional :: Core.HashMap Core.Text InAppProductListing
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)


-- | Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is region code, as defined by ISO 3166-2.
newtype InAppProduct'Prices = InAppProduct'Prices
    {
      -- | 
      additional :: Core.HashMap Core.Text Price
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)


-- | Store listing of a single in-app product.
--
-- Construct a default value using the 'MkInAppProductListing' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InAppProductListing = InAppProductListing
    {
      -- | Localized entitlement benefits for a subscription.
      benefits :: [Core.Text]
      -- | Description for the store listing.
    , description :: Core.Maybe Core.Text
      -- | Title for the store listing.
    , title :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InAppProductListing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInAppProductListing :: InAppProductListing
pattern MkInAppProductListing{} = InAppProductListing{benefits = Core.Nothing, description = Core.Nothing, title = Core.Nothing}

{-# DEPRECATED mkInAppProductListing "Please use MkInAppProductListing instead" #-}
#endif

-- | Create 'InAppProductListing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInAppProductListing :: InAppProductListing
mkInAppProductListing = InAppProductListing{benefits = Core.Nothing, description = Core.Nothing, title = Core.Nothing}


-- | Response listing all in-app products.
--
-- Construct a default value using the 'MkInappproductsListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InappproductsListResponse = InappproductsListResponse
    {
      -- | All in-app products.
      inappproduct :: [InAppProduct]
      -- | The kind of this response (\"androidpublisher#inappproductsListResponse\").
    , kind :: Core.Maybe Core.Text
      -- | Deprecated and unset.
    , pageInfo :: Core.Maybe PageInfo
      -- | Pagination token, to handle a number of products that is over one page.
    , tokenPagination :: Core.Maybe TokenPagination
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InappproductsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInappproductsListResponse :: InappproductsListResponse
pattern MkInappproductsListResponse{} =
        InappproductsListResponse{inappproduct = Core.Nothing, kind = Core.Nothing, pageInfo = Core.Nothing,
                                  tokenPagination = Core.Nothing}

{-# DEPRECATED mkInappproductsListResponse "Please use MkInappproductsListResponse instead" #-}
#endif

-- | Create 'InappproductsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInappproductsListResponse :: InappproductsListResponse
mkInappproductsListResponse
  = InappproductsListResponse{inappproduct = Core.Nothing, kind = Core.Nothing, pageInfo = Core.Nothing,
                              tokenPagination = Core.Nothing}


-- | An artifact resource which gets created when uploading an APK or Android App Bundle through internal app sharing.
--
-- Construct a default value using the 'MkInternalAppSharingArtifact' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data InternalAppSharingArtifact = InternalAppSharingArtifact
    {
      -- | The sha256 fingerprint of the certificate used to sign the generated artifact.
      certificateFingerprint :: Core.Maybe Core.Text
      -- | The download URL generated for the uploaded artifact. Users that are authorized to download can follow the link to the Play Store app to install it.
    , downloadUrl :: Core.Maybe Core.Text
      -- | The sha256 hash of the artifact represented as a lowercase hexadecimal number, matching the output of the sha256sum command.
    , sha256 :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'InternalAppSharingArtifact' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkInternalAppSharingArtifact :: InternalAppSharingArtifact
pattern MkInternalAppSharingArtifact{} =
        InternalAppSharingArtifact{certificateFingerprint = Core.Nothing, downloadUrl = Core.Nothing, sha256 = Core.Nothing}

{-# DEPRECATED mkInternalAppSharingArtifact "Please use MkInternalAppSharingArtifact instead" #-}
#endif

-- | Create 'InternalAppSharingArtifact' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkInternalAppSharingArtifact :: InternalAppSharingArtifact
mkInternalAppSharingArtifact
  = InternalAppSharingArtifact{certificateFingerprint = Core.Nothing, downloadUrl = Core.Nothing, sha256 = Core.Nothing}


-- | Contains the introductory price information for a subscription.
--
-- Construct a default value using the 'MkIntroductoryPriceInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data IntroductoryPriceInfo = IntroductoryPriceInfo
    {
      -- | Introductory price of the subscription, not including tax. The currency is the same as price/currency/code. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price/amount/micros is 1990000.
      introductoryPriceAmountMicros :: Core.Maybe Core.Int64
      -- | ISO 4217 currency code for the introductory subscription price. For example, if the price is specified in British pounds sterling, price/currency/code is \"GBP\".
    , introductoryPriceCurrencyCode :: Core.Maybe Core.Text
      -- | The number of billing period to offer introductory pricing.
    , introductoryPriceCycles :: Core.Maybe Core.Int32
      -- | Introductory price period, specified in ISO 8601 format. Common values are (but not limited to) \"P1W\" (one week), \"P1M\" (one month), \"P3M\" (three months), \"P6M\" (six months), and \"P1Y\" (one year).
    , introductoryPricePeriod :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'IntroductoryPriceInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkIntroductoryPriceInfo :: IntroductoryPriceInfo
pattern MkIntroductoryPriceInfo{} =
        IntroductoryPriceInfo{introductoryPriceAmountMicros = Core.Nothing, introductoryPriceCurrencyCode = Core.Nothing,
                              introductoryPriceCycles = Core.Nothing, introductoryPricePeriod = Core.Nothing}

{-# DEPRECATED mkIntroductoryPriceInfo "Please use MkIntroductoryPriceInfo instead" #-}
#endif

-- | Create 'IntroductoryPriceInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkIntroductoryPriceInfo :: IntroductoryPriceInfo
mkIntroductoryPriceInfo
  = IntroductoryPriceInfo{introductoryPriceAmountMicros = Core.Nothing, introductoryPriceCurrencyCode = Core.Nothing,
                          introductoryPriceCycles = Core.Nothing, introductoryPricePeriod = Core.Nothing}


-- | A response containing one or more users with access to an account.
--
-- Construct a default value using the 'MkListUsersResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ListUsersResponse = ListUsersResponse
    {
      -- | A token to pass to subsequent calls in order to retrieve subsequent results. This will not be set if there are no more results to return.
      nextPageToken :: Core.Maybe Core.Text
      -- | The resulting users.
    , users :: [User]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ListUsersResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkListUsersResponse :: ListUsersResponse
pattern MkListUsersResponse{} = ListUsersResponse{nextPageToken = Core.Nothing, users = Core.Nothing}

{-# DEPRECATED mkListUsersResponse "Please use MkListUsersResponse instead" #-}
#endif

-- | Create 'ListUsersResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkListUsersResponse :: ListUsersResponse
mkListUsersResponse = ListUsersResponse{nextPageToken = Core.Nothing, users = Core.Nothing}


-- | A localized store listing. The resource for ListingsService.
--
-- Construct a default value using the 'MkListing' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Listing = Listing
    {
      -- | Full description of the app.
      fullDescription :: Core.Maybe Core.Text
      -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    , language :: Core.Maybe Core.Text
      -- | Short description of the app.
    , shortDescription :: Core.Maybe Core.Text
      -- | Localized title of the app.
    , title :: Core.Maybe Core.Text
      -- | URL of a promotional YouTube video for the app.
    , video :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Listing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkListing :: Listing
pattern MkListing{} =
        Listing{fullDescription = Core.Nothing, language = Core.Nothing, shortDescription = Core.Nothing, title = Core.Nothing,
                video = Core.Nothing}

{-# DEPRECATED mkListing "Please use MkListing instead" #-}
#endif

-- | Create 'Listing' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkListing :: Listing
mkListing
  = Listing{fullDescription = Core.Nothing, language = Core.Nothing, shortDescription = Core.Nothing, title = Core.Nothing,
            video = Core.Nothing}


-- | Response listing all localized listings.
--
-- Construct a default value using the 'MkListingsListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ListingsListResponse = ListingsListResponse
    {
      -- | The kind of this response (\"androidpublisher#listingsListResponse\").
      kind :: Core.Maybe Core.Text
      -- | All localized listings.
    , listings :: [Listing]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ListingsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkListingsListResponse :: ListingsListResponse
pattern MkListingsListResponse{} = ListingsListResponse{kind = Core.Nothing, listings = Core.Nothing}

{-# DEPRECATED mkListingsListResponse "Please use MkListingsListResponse instead" #-}
#endif

-- | Create 'ListingsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkListingsListResponse :: ListingsListResponse
mkListingsListResponse = ListingsListResponse{kind = Core.Nothing, listings = Core.Nothing}


-- | Localized text in given language.
--
-- Construct a default value using the 'MkLocalizedText' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data LocalizedText = LocalizedText
    {
      -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
      language :: Core.Maybe Core.Text
      -- | The text in the given language.
    , text :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'LocalizedText' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkLocalizedText :: LocalizedText
pattern MkLocalizedText{} = LocalizedText{language = Core.Nothing, text = Core.Nothing}

{-# DEPRECATED mkLocalizedText "Please use MkLocalizedText instead" #-}
#endif

-- | Create 'LocalizedText' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkLocalizedText :: LocalizedText
mkLocalizedText = LocalizedText{language = Core.Nothing, text = Core.Nothing}


-- | Details about taxation and legal compliance for managed products.
--
-- Construct a default value using the 'MkManagedProductTaxAndComplianceSettings' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ManagedProductTaxAndComplianceSettings = ManagedProductTaxAndComplianceSettings
    {
      -- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
      eeaWithdrawalRightType :: Core.Maybe ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
      -- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
    , taxRateInfoByRegionCode :: Core.Maybe ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ManagedProductTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkManagedProductTaxAndComplianceSettings :: ManagedProductTaxAndComplianceSettings
pattern MkManagedProductTaxAndComplianceSettings{} =
        ManagedProductTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}

{-# DEPRECATED mkManagedProductTaxAndComplianceSettings "Please use MkManagedProductTaxAndComplianceSettings instead" #-}
#endif

-- | Create 'ManagedProductTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkManagedProductTaxAndComplianceSettings :: ManagedProductTaxAndComplianceSettings
mkManagedProductTaxAndComplianceSettings
  = ManagedProductTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}


-- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
newtype ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode = ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode
    {
      -- | 
      additional :: Core.HashMap Core.Text RegionalTaxRateInfo
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)


-- | Represents an amount of money with its currency type.
--
-- Construct a default value using the 'MkMoney' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Money = Money
    {
      -- | The three-letter currency code defined in ISO 4217.
      currencyCode :: Core.Maybe Core.Text
      -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    , nanos :: Core.Maybe Core.Int32
      -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    , units :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Money' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkMoney :: Money
pattern MkMoney{} = Money{currencyCode = Core.Nothing, nanos = Core.Nothing, units = Core.Nothing}

{-# DEPRECATED mkMoney "Please use MkMoney instead" #-}
#endif

-- | Create 'Money' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkMoney :: Money
mkMoney = Money{currencyCode = Core.Nothing, nanos = Core.Nothing, units = Core.Nothing}


-- | Information about the current page. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned.
--
-- Construct a default value using the 'MkPageInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data PageInfo = PageInfo
    {
      -- | Maximum number of results returned in one page. ! The number of results included in the API response.
      resultPerPage :: Core.Maybe Core.Int32
      -- | Index of the first result returned in the current page.
    , startIndex :: Core.Maybe Core.Int32
      -- | Total number of results available on the backend ! The total number of results in the result set.
    , totalResults :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'PageInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkPageInfo :: PageInfo
pattern MkPageInfo{} = PageInfo{resultPerPage = Core.Nothing, startIndex = Core.Nothing, totalResults = Core.Nothing}

{-# DEPRECATED mkPageInfo "Please use MkPageInfo instead" #-}
#endif

-- | Create 'PageInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkPageInfo :: PageInfo
mkPageInfo = PageInfo{resultPerPage = Core.Nothing, startIndex = Core.Nothing, totalResults = Core.Nothing}


-- | Definition of a price, i.e. currency and units.
--
-- Construct a default value using the 'MkPrice' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Price = Price
    {
      -- | 3 letter Currency code, as defined by ISO 4217. See java\/com\/google\/common\/money\/CurrencyCode.java.
      currency :: Core.Maybe Core.Text
      -- | Price in 1\/million of the currency base unit, represented as a string.
    , priceMicros :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Price' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkPrice :: Price
pattern MkPrice{} = Price{currency = Core.Nothing, priceMicros = Core.Nothing}

{-# DEPRECATED mkPrice "Please use MkPrice instead" #-}
#endif

-- | Create 'Price' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkPrice :: Price
mkPrice = Price{currency = Core.Nothing, priceMicros = Core.Nothing}


-- | A ProductPurchase resource indicates the status of a user\'s inapp product purchase.
--
-- Construct a default value using the 'MkProductPurchase' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ProductPurchase = ProductPurchase
    {
      -- | The acknowledgement state of the inapp product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged.
      acknowledgementState :: Core.Maybe Core.Int32
      -- | The consumption state of the inapp product. Possible values are: 0. Yet to be consumed 1. Consumed.
    , consumptionState :: Core.Maybe Core.Int32
      -- | A developer-specified string that contains supplemental information about an order.
    , developerPayload :: Core.Maybe Core.Text
      -- | This kind represents an inappPurchase object in the androidpublisher service.
    , kind :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s account in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
    , obfuscatedExternalAccountId :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s profile in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
    , obfuscatedExternalProfileId :: Core.Maybe Core.Text
      -- | The order id associated with the purchase of the inapp product.
    , orderId :: Core.Maybe Core.Text
      -- | The inapp product SKU.
    , productId :: Core.Maybe Core.Text
      -- | The purchase state of the order. Possible values are: 0. Purchased 1. Canceled 2. Pending.
    , purchaseState :: Core.Maybe Core.Int32
      -- | The time the product was purchased, in milliseconds since the epoch (Jan 1, 1970).
    , purchaseTimeMillis :: Core.Maybe Core.Int64
      -- | The purchase token generated to identify this purchase.
    , purchaseToken :: Core.Maybe Core.Text
      -- | The type of purchase of the inapp product. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code) 2. Rewarded (i.e. from watching a video ad instead of paying).
    , purchaseType :: Core.Maybe Core.Int32
      -- | The quantity associated with the purchase of the inapp product.
    , quantity :: Core.Maybe Core.Int32
      -- | ISO 3166-1 alpha-2 billing region code of the user at the time the product was granted.
    , regionCode :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ProductPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkProductPurchase :: ProductPurchase
pattern MkProductPurchase{} =
        ProductPurchase{acknowledgementState = Core.Nothing, consumptionState = Core.Nothing, developerPayload = Core.Nothing,
                        kind = Core.Nothing, obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing,
                        orderId = Core.Nothing, productId = Core.Nothing, purchaseState = Core.Nothing, purchaseTimeMillis = Core.Nothing,
                        purchaseToken = Core.Nothing, purchaseType = Core.Nothing, quantity = Core.Nothing, regionCode = Core.Nothing}

{-# DEPRECATED mkProductPurchase "Please use MkProductPurchase instead" #-}
#endif

-- | Create 'ProductPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkProductPurchase :: ProductPurchase
mkProductPurchase
  = ProductPurchase{acknowledgementState = Core.Nothing, consumptionState = Core.Nothing, developerPayload = Core.Nothing,
                    kind = Core.Nothing, obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing,
                    orderId = Core.Nothing, productId = Core.Nothing, purchaseState = Core.Nothing, purchaseTimeMillis = Core.Nothing,
                    purchaseToken = Core.Nothing, purchaseType = Core.Nothing, quantity = Core.Nothing, regionCode = Core.Nothing}


-- | Request for the product.purchases.acknowledge API.
--
-- Construct a default value using the 'MkProductPurchasesAcknowledgeRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ProductPurchasesAcknowledgeRequest = ProductPurchasesAcknowledgeRequest
    {
      -- | Payload to attach to the purchase.
      developerPayload :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ProductPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkProductPurchasesAcknowledgeRequest :: ProductPurchasesAcknowledgeRequest
pattern MkProductPurchasesAcknowledgeRequest{} = ProductPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}

{-# DEPRECATED mkProductPurchasesAcknowledgeRequest "Please use MkProductPurchasesAcknowledgeRequest instead" #-}
#endif

-- | Create 'ProductPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkProductPurchasesAcknowledgeRequest :: ProductPurchasesAcknowledgeRequest
mkProductPurchasesAcknowledgeRequest = ProductPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}


-- | Specified details about taxation in a given geographical region.
--
-- Construct a default value using the 'MkRegionalTaxRateInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data RegionalTaxRateInfo = RegionalTaxRateInfo
    {
      -- | You must tell us if your app contains streaming products to correctly charge US state and local sales tax. Field only supported in United States.
      eligibleForStreamingServiceTaxRate :: Core.Maybe Core.Bool
      -- | Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, books, or audiobooks in various regions may be eligible for reduced tax rates. <https://support.google.com/googleplay/android-developer/answer/10463498 Learn more>.
    , taxTier :: Core.Maybe RegionalTaxRateInfo'TaxTier
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'RegionalTaxRateInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkRegionalTaxRateInfo :: RegionalTaxRateInfo
pattern MkRegionalTaxRateInfo{} = RegionalTaxRateInfo{eligibleForStreamingServiceTaxRate = Core.Nothing, taxTier = Core.Nothing}

{-# DEPRECATED mkRegionalTaxRateInfo "Please use MkRegionalTaxRateInfo instead" #-}
#endif

-- | Create 'RegionalTaxRateInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkRegionalTaxRateInfo :: RegionalTaxRateInfo
mkRegionalTaxRateInfo = RegionalTaxRateInfo{eligibleForStreamingServiceTaxRate = Core.Nothing, taxTier = Core.Nothing}


-- | An Android app review.
--
-- Construct a default value using the 'MkReview' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Review = Review
    {
      -- | The name of the user who wrote the review.
      authorName :: Core.Maybe Core.Text
      -- | A repeated field containing comments for the review.
    , comments :: [Comment]
      -- | Unique identifier for this review.
    , reviewId :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Review' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReview :: Review
pattern MkReview{} = Review{authorName = Core.Nothing, comments = Core.Nothing, reviewId = Core.Nothing}

{-# DEPRECATED mkReview "Please use MkReview instead" #-}
#endif

-- | Create 'Review' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReview :: Review
mkReview = Review{authorName = Core.Nothing, comments = Core.Nothing, reviewId = Core.Nothing}


-- | The result of replying\/updating a reply to review.
--
-- Construct a default value using the 'MkReviewReplyResult' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ReviewReplyResult = ReviewReplyResult
    {
      -- | The time at which the reply took effect.
      lastEdited :: Core.Maybe Timestamp
      -- | The reply text that was applied.
    , replyText :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewReplyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewReplyResult :: ReviewReplyResult
pattern MkReviewReplyResult{} = ReviewReplyResult{lastEdited = Core.Nothing, replyText = Core.Nothing}

{-# DEPRECATED mkReviewReplyResult "Please use MkReviewReplyResult instead" #-}
#endif

-- | Create 'ReviewReplyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewReplyResult :: ReviewReplyResult
mkReviewReplyResult = ReviewReplyResult{lastEdited = Core.Nothing, replyText = Core.Nothing}


-- | Response listing reviews.
--
-- Construct a default value using the 'MkReviewsListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data ReviewsListResponse = ReviewsListResponse
    {
      -- | Information about the current page.
      pageInfo :: Core.Maybe PageInfo
      -- | List of reviews.
    , reviews :: [Review]
      -- | Pagination token, to handle a number of products that is over one page.
    , tokenPagination :: Core.Maybe TokenPagination
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewsListResponse :: ReviewsListResponse
pattern MkReviewsListResponse{} =
        ReviewsListResponse{pageInfo = Core.Nothing, reviews = Core.Nothing, tokenPagination = Core.Nothing}

{-# DEPRECATED mkReviewsListResponse "Please use MkReviewsListResponse instead" #-}
#endif

-- | Create 'ReviewsListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewsListResponse :: ReviewsListResponse
mkReviewsListResponse = ReviewsListResponse{pageInfo = Core.Nothing, reviews = Core.Nothing, tokenPagination = Core.Nothing}


-- | Request to reply to review or update existing reply.
--
-- Construct a default value using the 'MkReviewsReplyRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ReviewsReplyRequest = ReviewsReplyRequest
    {
      -- | The text to set as the reply. Replies of more than approximately 350 characters will be rejected. HTML tags will be stripped.
      replyText :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewsReplyRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewsReplyRequest :: ReviewsReplyRequest
pattern MkReviewsReplyRequest{} = ReviewsReplyRequest{replyText = Core.Nothing}

{-# DEPRECATED mkReviewsReplyRequest "Please use MkReviewsReplyRequest instead" #-}
#endif

-- | Create 'ReviewsReplyRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewsReplyRequest :: ReviewsReplyRequest
mkReviewsReplyRequest = ReviewsReplyRequest{replyText = Core.Nothing}


-- | Response on status of replying to a review.
--
-- Construct a default value using the 'MkReviewsReplyResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype ReviewsReplyResponse = ReviewsReplyResponse
    {
      -- | The result of replying\/updating a reply to review.
      result :: Core.Maybe ReviewReplyResult
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'ReviewsReplyResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkReviewsReplyResponse :: ReviewsReplyResponse
pattern MkReviewsReplyResponse{} = ReviewsReplyResponse{result = Core.Nothing}

{-# DEPRECATED mkReviewsReplyResponse "Please use MkReviewsReplyResponse instead" #-}
#endif

-- | Create 'ReviewsReplyResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkReviewsReplyResponse :: ReviewsReplyResponse
mkReviewsReplyResponse = ReviewsReplyResponse{result = Core.Nothing}


-- | Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).
--
-- Construct a default value using the 'MkSubscriptionCancelSurveyResult' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionCancelSurveyResult = SubscriptionCancelSurveyResult
    {
      -- | The cancellation reason the user chose in the survey. Possible values are: 0. Other 1. I don\'t use this service enough 2. Technical issues 3. Cost-related reasons 4. I found a better app.
      cancelSurveyReason :: Core.Maybe Core.Int32
      -- | The customized input cancel reason from the user. Only present when cancelReason is 0.
    , userInputCancelReason :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionCancelSurveyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionCancelSurveyResult :: SubscriptionCancelSurveyResult
pattern MkSubscriptionCancelSurveyResult{} =
        SubscriptionCancelSurveyResult{cancelSurveyReason = Core.Nothing, userInputCancelReason = Core.Nothing}

{-# DEPRECATED mkSubscriptionCancelSurveyResult "Please use MkSubscriptionCancelSurveyResult instead" #-}
#endif

-- | Create 'SubscriptionCancelSurveyResult' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionCancelSurveyResult :: SubscriptionCancelSurveyResult
mkSubscriptionCancelSurveyResult
  = SubscriptionCancelSurveyResult{cancelSurveyReason = Core.Nothing, userInputCancelReason = Core.Nothing}


-- | A SubscriptionDeferralInfo contains the data needed to defer a subscription purchase to a future expiry time.
--
-- Construct a default value using the 'MkSubscriptionDeferralInfo' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionDeferralInfo = SubscriptionDeferralInfo
    {
      -- | The desired next expiry time to assign to the subscription, in milliseconds since the Epoch. The given time must be later\/greater than the current expiry time for the subscription.
      desiredExpiryTimeMillis :: Core.Maybe Core.Int64
      -- | The expected expiry time for the subscription. If the current expiry time for the subscription is not the value specified here, the deferral will not occur.
    , expectedExpiryTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionDeferralInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionDeferralInfo :: SubscriptionDeferralInfo
pattern MkSubscriptionDeferralInfo{} =
        SubscriptionDeferralInfo{desiredExpiryTimeMillis = Core.Nothing, expectedExpiryTimeMillis = Core.Nothing}

{-# DEPRECATED mkSubscriptionDeferralInfo "Please use MkSubscriptionDeferralInfo instead" #-}
#endif

-- | Create 'SubscriptionDeferralInfo' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionDeferralInfo :: SubscriptionDeferralInfo
mkSubscriptionDeferralInfo
  = SubscriptionDeferralInfo{desiredExpiryTimeMillis = Core.Nothing, expectedExpiryTimeMillis = Core.Nothing}


-- | Contains the price change information for a subscription that can be used to control the user journey for the price change in the app. This can be in the form of seeking confirmation from the user or tailoring the experience for a successful conversion.
--
-- Construct a default value using the 'MkSubscriptionPriceChange' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionPriceChange = SubscriptionPriceChange
    {
      -- | The new price the subscription will renew with if the price change is accepted by the user.
      newPrice :: Core.Maybe Price
      -- | The current state of the price change. Possible values are: 0. Outstanding: State for a pending price change waiting for the user to agree. In this state, you can optionally seek confirmation from the user using the In-App API. 1. Accepted: State for an accepted price change that the subscription will renew with unless it\'s canceled. The price change takes effect on a future date when the subscription renews. Note that the change might not occur when the subscription is renewed next.
    , state :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPriceChange' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPriceChange :: SubscriptionPriceChange
pattern MkSubscriptionPriceChange{} = SubscriptionPriceChange{newPrice = Core.Nothing, state = Core.Nothing}

{-# DEPRECATED mkSubscriptionPriceChange "Please use MkSubscriptionPriceChange instead" #-}
#endif

-- | Create 'SubscriptionPriceChange' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPriceChange :: SubscriptionPriceChange
mkSubscriptionPriceChange = SubscriptionPriceChange{newPrice = Core.Nothing, state = Core.Nothing}


-- | A SubscriptionPurchase resource indicates the status of a user\'s subscription purchase.
--
-- Construct a default value using the 'MkSubscriptionPurchase' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionPurchase = SubscriptionPurchase
    {
      -- | The acknowledgement state of the subscription product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged.
      acknowledgementState :: Core.Maybe Core.Int32
      -- | Whether the subscription will automatically be renewed when it reaches its current expiry time.
    , autoRenewing :: Core.Maybe Core.Bool
      -- | Time at which the subscription will be automatically resumed, in milliseconds since the Epoch. Only present if the user has requested to pause the subscription.
    , autoResumeTimeMillis :: Core.Maybe Core.Int64
      -- | The reason why a subscription was canceled or is not auto-renewing. Possible values are: 0. User canceled the subscription 1. Subscription was canceled by the system, for example because of a billing problem 2. Subscription was replaced with a new subscription 3. Subscription was canceled by the developer.
    , cancelReason :: Core.Maybe Core.Int32
      -- | Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).
    , cancelSurveyResult :: Core.Maybe SubscriptionCancelSurveyResult
      -- | ISO 3166-1 alpha-2 billing country\/region code of the user at the time the subscription was granted.
    , countryCode :: Core.Maybe Core.Text
      -- | A developer-specified string that contains supplemental information about an order.
    , developerPayload :: Core.Maybe Core.Text
      -- | The email address of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , emailAddress :: Core.Maybe Core.Text
      -- | Time at which the subscription will expire, in milliseconds since the Epoch.
    , expiryTimeMillis :: Core.Maybe Core.Int64
      -- | User account identifier in the third-party service. Only present if account linking happened as part of the subscription purchase flow.
    , externalAccountId :: Core.Maybe Core.Text
      -- | The family name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , familyName :: Core.Maybe Core.Text
      -- | The given name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , givenName :: Core.Maybe Core.Text
      -- | Introductory price information of the subscription. This is only present when the subscription was purchased with an introductory price. This field does not indicate the subscription is currently in introductory price period.
    , introductoryPriceInfo :: Core.Maybe IntroductoryPriceInfo
      -- | This kind represents a subscriptionPurchase object in the androidpublisher service.
    , kind :: Core.Maybe Core.Text
      -- | The purchase token of the originating purchase if this subscription is one of the following: 0. Re-signup of a canceled but non-lapsed subscription 1. Upgrade\/downgrade from a previous subscription For example, suppose a user originally signs up and you receive purchase token X, then the user cancels and goes through the resignup flow (before their subscription lapses) and you receive purchase token Y, and finally the user upgrades their subscription and you receive purchase token Z. If you call this API with purchase token Z, this field will be set to Y. If you call this API with purchase token Y, this field will be set to X. If you call this API with purchase token X, this field will not be set.
    , linkedPurchaseToken :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s account in your app. Present for the following purchases: * If account linking happened as part of the subscription purchase flow. * It was specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
    , obfuscatedExternalAccountId :: Core.Maybe Core.Text
      -- | An obfuscated version of the id that is uniquely associated with the user\'s profile in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
    , obfuscatedExternalProfileId :: Core.Maybe Core.Text
      -- | The order id of the latest recurring order associated with the purchase of the subscription. If the subscription was canceled because payment was declined, this will be the order id from the payment declined order.
    , orderId :: Core.Maybe Core.Text
      -- | The payment state of the subscription. Possible values are: 0. Payment pending 1. Payment received 2. Free trial 3. Pending deferred upgrade\/downgrade Not present for canceled, expired subscriptions.
    , paymentState :: Core.Maybe Core.Int32
      -- | Price of the subscription, For tax exclusive countries, the price doesn\'t include tax. For tax inclusive countries, the price includes tax. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price/amount/micros is 1990000.
    , priceAmountMicros :: Core.Maybe Core.Int64
      -- | The latest price change information available. This is present only when there is an upcoming price change for the subscription yet to be applied. Once the subscription renews with the new price or the subscription is canceled, no price change information will be returned.
    , priceChange :: Core.Maybe SubscriptionPriceChange
      -- | ISO 4217 currency code for the subscription price. For example, if the price is specified in British pounds sterling, price/currency/code is \"GBP\".
    , priceCurrencyCode :: Core.Maybe Core.Text
      -- | The Google profile id of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , profileId :: Core.Maybe Core.Text
      -- | The profile name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    , profileName :: Core.Maybe Core.Text
      -- | The promotion code applied on this purchase. This field is only set if a vanity code promotion is applied when the subscription was purchased.
    , promotionCode :: Core.Maybe Core.Text
      -- | The type of promotion applied on this purchase. This field is only set if a promotion is applied when the subscription was purchased. Possible values are: 0. One time code 1. Vanity code.
    , promotionType :: Core.Maybe Core.Int32
      -- | The type of purchase of the subscription. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code).
    , purchaseType :: Core.Maybe Core.Int32
      -- | Time at which the subscription was granted, in milliseconds since the Epoch.
    , startTimeMillis :: Core.Maybe Core.Int64
      -- | The time at which the subscription was canceled by the user, in milliseconds since the epoch. Only present if cancelReason is 0.
    , userCancellationTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchase :: SubscriptionPurchase
pattern MkSubscriptionPurchase{} =
        SubscriptionPurchase{acknowledgementState = Core.Nothing, autoRenewing = Core.Nothing, autoResumeTimeMillis = Core.Nothing,
                             cancelReason = Core.Nothing, cancelSurveyResult = Core.Nothing, countryCode = Core.Nothing, developerPayload = Core.Nothing,
                             emailAddress = Core.Nothing, expiryTimeMillis = Core.Nothing, externalAccountId = Core.Nothing, familyName = Core.Nothing,
                             givenName = Core.Nothing, introductoryPriceInfo = Core.Nothing, kind = Core.Nothing, linkedPurchaseToken = Core.Nothing,
                             obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing, orderId = Core.Nothing,
                             paymentState = Core.Nothing, priceAmountMicros = Core.Nothing, priceChange = Core.Nothing, priceCurrencyCode = Core.Nothing,
                             profileId = Core.Nothing, profileName = Core.Nothing, promotionCode = Core.Nothing, promotionType = Core.Nothing,
                             purchaseType = Core.Nothing, startTimeMillis = Core.Nothing, userCancellationTimeMillis = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchase "Please use MkSubscriptionPurchase instead" #-}
#endif

-- | Create 'SubscriptionPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchase :: SubscriptionPurchase
mkSubscriptionPurchase
  = SubscriptionPurchase{acknowledgementState = Core.Nothing, autoRenewing = Core.Nothing, autoResumeTimeMillis = Core.Nothing,
                         cancelReason = Core.Nothing, cancelSurveyResult = Core.Nothing, countryCode = Core.Nothing, developerPayload = Core.Nothing,
                         emailAddress = Core.Nothing, expiryTimeMillis = Core.Nothing, externalAccountId = Core.Nothing, familyName = Core.Nothing,
                         givenName = Core.Nothing, introductoryPriceInfo = Core.Nothing, kind = Core.Nothing, linkedPurchaseToken = Core.Nothing,
                         obfuscatedExternalAccountId = Core.Nothing, obfuscatedExternalProfileId = Core.Nothing, orderId = Core.Nothing,
                         paymentState = Core.Nothing, priceAmountMicros = Core.Nothing, priceChange = Core.Nothing, priceCurrencyCode = Core.Nothing,
                         profileId = Core.Nothing, profileName = Core.Nothing, promotionCode = Core.Nothing, promotionType = Core.Nothing,
                         purchaseType = Core.Nothing, startTimeMillis = Core.Nothing, userCancellationTimeMillis = Core.Nothing}


-- | Request for the purchases.subscriptions.acknowledge API.
--
-- Construct a default value using the 'MkSubscriptionPurchasesAcknowledgeRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SubscriptionPurchasesAcknowledgeRequest = SubscriptionPurchasesAcknowledgeRequest
    {
      -- | Payload to attach to the purchase.
      developerPayload :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchasesAcknowledgeRequest :: SubscriptionPurchasesAcknowledgeRequest
pattern MkSubscriptionPurchasesAcknowledgeRequest{} = SubscriptionPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchasesAcknowledgeRequest "Please use MkSubscriptionPurchasesAcknowledgeRequest instead" #-}
#endif

-- | Create 'SubscriptionPurchasesAcknowledgeRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchasesAcknowledgeRequest :: SubscriptionPurchasesAcknowledgeRequest
mkSubscriptionPurchasesAcknowledgeRequest = SubscriptionPurchasesAcknowledgeRequest{developerPayload = Core.Nothing}


-- | Request for the purchases.subscriptions.defer API.
--
-- Construct a default value using the 'MkSubscriptionPurchasesDeferRequest' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SubscriptionPurchasesDeferRequest = SubscriptionPurchasesDeferRequest
    {
      -- | The information about the new desired expiry time for the subscription.
      deferralInfo :: Core.Maybe SubscriptionDeferralInfo
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchasesDeferRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchasesDeferRequest :: SubscriptionPurchasesDeferRequest
pattern MkSubscriptionPurchasesDeferRequest{} = SubscriptionPurchasesDeferRequest{deferralInfo = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchasesDeferRequest "Please use MkSubscriptionPurchasesDeferRequest instead" #-}
#endif

-- | Create 'SubscriptionPurchasesDeferRequest' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchasesDeferRequest :: SubscriptionPurchasesDeferRequest
mkSubscriptionPurchasesDeferRequest = SubscriptionPurchasesDeferRequest{deferralInfo = Core.Nothing}


-- | Response for the purchases.subscriptions.defer API.
--
-- Construct a default value using the 'MkSubscriptionPurchasesDeferResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SubscriptionPurchasesDeferResponse = SubscriptionPurchasesDeferResponse
    {
      -- | The new expiry time for the subscription in milliseconds since the Epoch.
      newExpiryTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionPurchasesDeferResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionPurchasesDeferResponse :: SubscriptionPurchasesDeferResponse
pattern MkSubscriptionPurchasesDeferResponse{} = SubscriptionPurchasesDeferResponse{newExpiryTimeMillis = Core.Nothing}

{-# DEPRECATED mkSubscriptionPurchasesDeferResponse "Please use MkSubscriptionPurchasesDeferResponse instead" #-}
#endif

-- | Create 'SubscriptionPurchasesDeferResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionPurchasesDeferResponse :: SubscriptionPurchasesDeferResponse
mkSubscriptionPurchasesDeferResponse = SubscriptionPurchasesDeferResponse{newExpiryTimeMillis = Core.Nothing}


-- | Details about taxation, Google Play policy and legal compliance for subscription products.
--
-- Construct a default value using the 'MkSubscriptionTaxAndComplianceSettings' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data SubscriptionTaxAndComplianceSettings = SubscriptionTaxAndComplianceSettings
    {
      -- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
      eeaWithdrawalRightType :: Core.Maybe SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
      -- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
    , taxRateInfoByRegionCode :: Core.Maybe SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SubscriptionTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSubscriptionTaxAndComplianceSettings :: SubscriptionTaxAndComplianceSettings
pattern MkSubscriptionTaxAndComplianceSettings{} =
        SubscriptionTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}

{-# DEPRECATED mkSubscriptionTaxAndComplianceSettings "Please use MkSubscriptionTaxAndComplianceSettings instead" #-}
#endif

-- | Create 'SubscriptionTaxAndComplianceSettings' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSubscriptionTaxAndComplianceSettings :: SubscriptionTaxAndComplianceSettings
mkSubscriptionTaxAndComplianceSettings
  = SubscriptionTaxAndComplianceSettings{eeaWithdrawalRightType = Core.Nothing, taxRateInfoByRegionCode = Core.Nothing}


-- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
newtype SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode = SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode
    {
      -- | 
      additional :: Core.HashMap Core.Text RegionalTaxRateInfo
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)


-- | Response to list previously created system APK variants.
--
-- Construct a default value using the 'MkSystemApksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype SystemApksListResponse = SystemApksListResponse
    {
      -- | All system APK variants created.
      variants :: [Variant]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'SystemApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkSystemApksListResponse :: SystemApksListResponse
pattern MkSystemApksListResponse{} = SystemApksListResponse{variants = Core.Nothing}

{-# DEPRECATED mkSystemApksListResponse "Please use MkSystemApksListResponse instead" #-}
#endif

-- | Create 'SystemApksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkSystemApksListResponse :: SystemApksListResponse
mkSystemApksListResponse = SystemApksListResponse{variants = Core.Nothing}


-- | The testers of an app. The resource for TestersService.
--
-- Construct a default value using the 'MkTesters' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype Testers = Testers
    {
      -- | All testing Google Groups, as email addresses.
      googleGroups :: [Core.Text]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Testers' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTesters :: Testers
pattern MkTesters{} = Testers{googleGroups = Core.Nothing}

{-# DEPRECATED mkTesters "Please use MkTesters instead" #-}
#endif

-- | Create 'Testers' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTesters :: Testers
mkTesters = Testers{googleGroups = Core.Nothing}


-- | A Timestamp represents a point in time independent of any time zone or local calendar, encoded as a count of seconds and fractions of seconds at nanosecond resolution. The count is relative to an epoch at UTC midnight on January 1, 1970.
--
-- Construct a default value using the 'MkTimestamp' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Timestamp = Timestamp
    {
      -- | Non-negative fractions of a second at nanosecond resolution. Must be from 0 to 999,999,999 inclusive.
      nanos :: Core.Maybe Core.Int32
      -- | Represents seconds of UTC time since Unix epoch.
    , seconds :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Timestamp' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTimestamp :: Timestamp
pattern MkTimestamp{} = Timestamp{nanos = Core.Nothing, seconds = Core.Nothing}

{-# DEPRECATED mkTimestamp "Please use MkTimestamp instead" #-}
#endif

-- | Create 'Timestamp' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTimestamp :: Timestamp
mkTimestamp = Timestamp{nanos = Core.Nothing, seconds = Core.Nothing}


-- | Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next\/previous token to get another page of the result. The presence or absence of next\/previous token indicates whether a next\/previous page is available and provides a mean of accessing this page. ListRequest.page/token should be set to either next/page/token or previous/page_token to access another page.
--
-- Construct a default value using the 'MkTokenPagination' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TokenPagination = TokenPagination
    {
      -- | Tokens to pass to the standard list field \'page/token\'. Whenever available, tokens are preferred over manipulating start/index.
      nextPageToken :: Core.Maybe Core.Text
      -- | 
    , previousPageToken :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TokenPagination' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTokenPagination :: TokenPagination
pattern MkTokenPagination{} = TokenPagination{nextPageToken = Core.Nothing, previousPageToken = Core.Nothing}

{-# DEPRECATED mkTokenPagination "Please use MkTokenPagination instead" #-}
#endif

-- | Create 'TokenPagination' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTokenPagination :: TokenPagination
mkTokenPagination = TokenPagination{nextPageToken = Core.Nothing, previousPageToken = Core.Nothing}


-- | A track configuration. The resource for TracksService.
--
-- Construct a default value using the 'MkTrack' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Track = Track
    {
      -- | In a read request, represents all active releases in the track. In an update request, represents desired changes.
      releases :: [TrackRelease]
      -- | Identifier of the track.
    , track :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Track' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrack :: Track
pattern MkTrack{} = Track{releases = Core.Nothing, track = Core.Nothing}

{-# DEPRECATED mkTrack "Please use MkTrack instead" #-}
#endif

-- | Create 'Track' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrack :: Track
mkTrack = Track{releases = Core.Nothing, track = Core.Nothing}


-- | Resource for per-track country availability information.
--
-- Construct a default value using the 'MkTrackCountryAvailability' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TrackCountryAvailability = TrackCountryAvailability
    {
      -- | A list of one or more countries where artifacts in this track are available. This list includes all countries that are targeted by the track, even if only specific carriers are targeted in that country.
      countries :: [TrackTargetedCountry]
      -- | Whether artifacts in this track are available to \"rest of the world\" countries.
    , restOfWorld :: Core.Maybe Core.Bool
      -- | Whether this track\'s availability is synced with the default production track. See https:\/\/support.google.com\/googleplay\/android-developer\/answer\/7550024 for more information on syncing country availability with production. Note that if this is true, the returned \"countries\" and \"rest/of/world\" fields will reflect the values for the default production track.
    , syncWithProduction :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TrackCountryAvailability' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrackCountryAvailability :: TrackCountryAvailability
pattern MkTrackCountryAvailability{} =
        TrackCountryAvailability{countries = Core.Nothing, restOfWorld = Core.Nothing, syncWithProduction = Core.Nothing}

{-# DEPRECATED mkTrackCountryAvailability "Please use MkTrackCountryAvailability instead" #-}
#endif

-- | Create 'TrackCountryAvailability' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrackCountryAvailability :: TrackCountryAvailability
mkTrackCountryAvailability
  = TrackCountryAvailability{countries = Core.Nothing, restOfWorld = Core.Nothing, syncWithProduction = Core.Nothing}


-- | A release within a track.
--
-- Construct a default value using the 'MkTrackRelease' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TrackRelease = TrackRelease
    {
      -- | Restricts a release to a specific set of countries.
      countryTargeting :: Core.Maybe CountryTargeting
      -- | In-app update priority of the release. All newly added APKs in the release will be considered at this priority. Can take values in the range [0, 5], with 5 the highest priority. Defaults to 0. in/app/update_priority can not be updated once the release is rolled out. See https:\/\/developer.android.com\/guide\/playcore\/in-app-updates.
    , inAppUpdatePriority :: Core.Maybe Core.Int32
      -- | The release name. Not required to be unique. If not set, the name is generated from the APK\'s version_name. If the release contains multiple APKs, the name is generated from the date.
    , name :: Core.Maybe Core.Text
      -- | A description of what is new in this release.
    , releaseNotes :: [LocalizedText]
      -- | The status of the release.
    , status :: Core.Maybe TrackRelease'Status
      -- | Fraction of users who are eligible for a staged release. 0 \< fraction \< 1. Can only be set when status is \"inProgress\" or \"halted\".
    , userFraction :: Core.Maybe Core.Double
      -- | Version codes of all APKs in the release. Must include version codes to retain from previous releases.
    , versionCodes :: [Core.Int64]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TrackRelease' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrackRelease :: TrackRelease
pattern MkTrackRelease{} =
        TrackRelease{countryTargeting = Core.Nothing, inAppUpdatePriority = Core.Nothing, name = Core.Nothing,
                     releaseNotes = Core.Nothing, status = Core.Nothing, userFraction = Core.Nothing, versionCodes = Core.Nothing}

{-# DEPRECATED mkTrackRelease "Please use MkTrackRelease instead" #-}
#endif

-- | Create 'TrackRelease' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrackRelease :: TrackRelease
mkTrackRelease
  = TrackRelease{countryTargeting = Core.Nothing, inAppUpdatePriority = Core.Nothing, name = Core.Nothing,
                 releaseNotes = Core.Nothing, status = Core.Nothing, userFraction = Core.Nothing, versionCodes = Core.Nothing}


-- | Representation of a single country where the contents of a track are available.
--
-- Construct a default value using the 'MkTrackTargetedCountry' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
newtype TrackTargetedCountry = TrackTargetedCountry
    {
      -- | The country to target, as a two-letter CLDR code.
      countryCode :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TrackTargetedCountry' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTrackTargetedCountry :: TrackTargetedCountry
pattern MkTrackTargetedCountry{} = TrackTargetedCountry{countryCode = Core.Nothing}

{-# DEPRECATED mkTrackTargetedCountry "Please use MkTrackTargetedCountry instead" #-}
#endif

-- | Create 'TrackTargetedCountry' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTrackTargetedCountry :: TrackTargetedCountry
mkTrackTargetedCountry = TrackTargetedCountry{countryCode = Core.Nothing}


-- | Response listing all tracks.
--
-- Construct a default value using the 'MkTracksListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data TracksListResponse = TracksListResponse
    {
      -- | The kind of this response (\"androidpublisher#tracksListResponse\").
      kind :: Core.Maybe Core.Text
      -- | All tracks.
    , tracks :: [Track]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'TracksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkTracksListResponse :: TracksListResponse
pattern MkTracksListResponse{} = TracksListResponse{kind = Core.Nothing, tracks = Core.Nothing}

{-# DEPRECATED mkTracksListResponse "Please use MkTracksListResponse instead" #-}
#endif

-- | Create 'TracksListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkTracksListResponse :: TracksListResponse
mkTracksListResponse = TracksListResponse{kind = Core.Nothing, tracks = Core.Nothing}


-- | A user resource.
--
-- Construct a default value using the 'MkUser' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data User = User
    {
      -- | Output only. The state of the user\'s access to the Play Console.
      accessState :: Core.Maybe User'AccessState
      -- | Permissions for the user which apply across the developer account.
    , developerAccountPermissions :: [User'DeveloperAccountPermissionsItem]
      -- | Immutable. The user\'s email address.
    , email :: Core.Maybe Core.Text
      -- | The time at which the user\'s access expires, if set.
    , expirationTime :: Core.Maybe Core.DateTime
      -- | Output only. Per-app permissions for the user.
    , grants :: [Grant]
      -- | Required. Resource name for this user, following the pattern \"developers\/{developer}\/users\/{email}\".
    , name :: Core.Maybe Core.Text
      -- | Output only. Whether there are more permissions for the user that are not represented here.
    , partial :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'User' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkUser :: User
pattern MkUser{} =
        User{accessState = Core.Nothing, developerAccountPermissions = Core.Nothing, email = Core.Nothing,
             expirationTime = Core.Nothing, grants = Core.Nothing, name = Core.Nothing, partial = Core.Nothing}

{-# DEPRECATED mkUser "Please use MkUser instead" #-}
#endif

-- | Create 'User' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkUser :: User
mkUser
  = User{accessState = Core.Nothing, developerAccountPermissions = Core.Nothing, email = Core.Nothing,
         expirationTime = Core.Nothing, grants = Core.Nothing, name = Core.Nothing, partial = Core.Nothing}


-- | User entry from conversation between user and developer.
--
-- Construct a default value using the 'MkUserComment' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data UserComment = UserComment
    {
      -- | Integer Android SDK version of the user\'s device at the time the review was written, e.g. 23 is Marshmallow. May be absent.
      androidOsVersion :: Core.Maybe Core.Int32
      -- | Integer version code of the app as installed at the time the review was written. May be absent.
    , appVersionCode :: Core.Maybe Core.Int32
      -- | String version name of the app as installed at the time the review was written. May be absent.
    , appVersionName :: Core.Maybe Core.Text
      -- | Codename for the reviewer\'s device, e.g. klte, flounder. May be absent.
    , device :: Core.Maybe Core.Text
      -- | Information about the characteristics of the user\'s device.
    , deviceMetadata :: Core.Maybe DeviceMetadata
      -- | The last time at which this comment was updated.
    , lastModified :: Core.Maybe Timestamp
      -- | Untranslated text of the review, where the review was translated. If the review was not translated this is left blank.
    , originalText :: Core.Maybe Core.Text
      -- | Language code for the reviewer. This is taken from the device settings so is not guaranteed to match the language the review is written in. May be absent.
    , reviewerLanguage :: Core.Maybe Core.Text
      -- | The star rating associated with the review, from 1 to 5.
    , starRating :: Core.Maybe Core.Int32
      -- | The content of the comment, i.e. review body. In some cases users have been able to write a review with separate title and body; in those cases the title and body are concatenated and separated by a tab character.
    , text :: Core.Maybe Core.Text
      -- | Number of users who have given this review a thumbs down.
    , thumbsDownCount :: Core.Maybe Core.Int32
      -- | Number of users who have given this review a thumbs up.
    , thumbsUpCount :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'UserComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkUserComment :: UserComment
pattern MkUserComment{} =
        UserComment{androidOsVersion = Core.Nothing, appVersionCode = Core.Nothing, appVersionName = Core.Nothing,
                    device = Core.Nothing, deviceMetadata = Core.Nothing, lastModified = Core.Nothing, originalText = Core.Nothing,
                    reviewerLanguage = Core.Nothing, starRating = Core.Nothing, text = Core.Nothing, thumbsDownCount = Core.Nothing,
                    thumbsUpCount = Core.Nothing}

{-# DEPRECATED mkUserComment "Please use MkUserComment instead" #-}
#endif

-- | Create 'UserComment' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkUserComment :: UserComment
mkUserComment
  = UserComment{androidOsVersion = Core.Nothing, appVersionCode = Core.Nothing, appVersionName = Core.Nothing,
                device = Core.Nothing, deviceMetadata = Core.Nothing, lastModified = Core.Nothing, originalText = Core.Nothing,
                reviewerLanguage = Core.Nothing, starRating = Core.Nothing, text = Core.Nothing, thumbsDownCount = Core.Nothing,
                thumbsUpCount = Core.Nothing}


-- | A permission used by this APK.
--
-- Construct a default value using the 'MkUsesPermission' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data UsesPermission = UsesPermission
    {
      -- | Optionally, the maximum SDK version for which the permission is required.
      maxSdkVersion :: Core.Maybe Core.Int32
      -- | The name of the permission requested.
    , name :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'UsesPermission' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkUsesPermission :: UsesPermission
pattern MkUsesPermission{} = UsesPermission{maxSdkVersion = Core.Nothing, name = Core.Nothing}

{-# DEPRECATED mkUsesPermission "Please use MkUsesPermission instead" #-}
#endif

-- | Create 'UsesPermission' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkUsesPermission :: UsesPermission
mkUsesPermission = UsesPermission{maxSdkVersion = Core.Nothing, name = Core.Nothing}


-- | APK that is suitable for inclusion in a system image. The resource of SystemApksService.
--
-- Construct a default value using the 'MkVariant' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data Variant = Variant
    {
      -- | The device spec used to generate the APK.
      deviceSpec :: Core.Maybe DeviceSpec
      -- | Output only. The ID of a previously created system APK variant.
    , variantId :: Core.Maybe Core.Word32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'Variant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkVariant :: Variant
pattern MkVariant{} = Variant{deviceSpec = Core.Nothing, variantId = Core.Nothing}

{-# DEPRECATED mkVariant "Please use MkVariant instead" #-}
#endif

-- | Create 'Variant' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkVariant :: Variant
mkVariant = Variant{deviceSpec = Core.Nothing, variantId = Core.Nothing}


-- | A VoidedPurchase resource indicates a purchase that was either canceled\/refunded\/charged-back.
--
-- Construct a default value using the 'MkVoidedPurchase' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data VoidedPurchase = VoidedPurchase
    {
      -- | This kind represents a voided purchase object in the androidpublisher service.
      kind :: Core.Maybe Core.Text
      -- | The order id which uniquely identifies a one-time purchase, subscription purchase, or subscription renewal.
    , orderId :: Core.Maybe Core.Text
      -- | The time at which the purchase was made, in milliseconds since the epoch (Jan 1, 1970).
    , purchaseTimeMillis :: Core.Maybe Core.Int64
      -- | The token which uniquely identifies a one-time purchase or subscription. To uniquely identify subscription renewals use order_id (available starting from version 3 of the API).
    , purchaseToken :: Core.Maybe Core.Text
      -- | The reason why the purchase was voided, possible values are: 0. Other 1. Remorse 2. Not/received 3. Defective 4. Accidental/purchase 5. Fraud 6. Friendly_fraud 7. Chargeback.
    , voidedReason :: Core.Maybe Core.Int32
      -- | The initiator of voided purchase, possible values are: 0. User 1. Developer 2. Google.
    , voidedSource :: Core.Maybe Core.Int32
      -- | The time at which the purchase was canceled\/refunded\/charged-back, in milliseconds since the epoch (Jan 1, 1970).
    , voidedTimeMillis :: Core.Maybe Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'VoidedPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkVoidedPurchase :: VoidedPurchase
pattern MkVoidedPurchase{} =
        VoidedPurchase{kind = Core.Nothing, orderId = Core.Nothing, purchaseTimeMillis = Core.Nothing, purchaseToken = Core.Nothing,
                       voidedReason = Core.Nothing, voidedSource = Core.Nothing, voidedTimeMillis = Core.Nothing}

{-# DEPRECATED mkVoidedPurchase "Please use MkVoidedPurchase instead" #-}
#endif

-- | Create 'VoidedPurchase' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkVoidedPurchase :: VoidedPurchase
mkVoidedPurchase
  = VoidedPurchase{kind = Core.Nothing, orderId = Core.Nothing, purchaseTimeMillis = Core.Nothing, purchaseToken = Core.Nothing,
                   voidedReason = Core.Nothing, voidedSource = Core.Nothing, voidedTimeMillis = Core.Nothing}


-- | Response for the voidedpurchases.list API.
--
-- Construct a default value using the 'MkVoidedPurchasesListResponse' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data VoidedPurchasesListResponse = VoidedPurchasesListResponse
    {
      -- | General pagination information.
      pageInfo :: Core.Maybe PageInfo
      -- | Pagination information for token pagination.
    , tokenPagination :: Core.Maybe TokenPagination
      -- | 
    , voidedPurchases :: [VoidedPurchase]
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'VoidedPurchasesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkVoidedPurchasesListResponse :: VoidedPurchasesListResponse
pattern MkVoidedPurchasesListResponse{} =
        VoidedPurchasesListResponse{pageInfo = Core.Nothing, tokenPagination = Core.Nothing, voidedPurchases = Core.Nothing}

{-# DEPRECATED mkVoidedPurchasesListResponse "Please use MkVoidedPurchasesListResponse instead" #-}
#endif

-- | Create 'VoidedPurchasesListResponse' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkVoidedPurchasesListResponse :: VoidedPurchasesListResponse
mkVoidedPurchasesListResponse
  = VoidedPurchasesListResponse{pageInfo = Core.Nothing, tokenPagination = Core.Nothing, voidedPurchases = Core.Nothing}
