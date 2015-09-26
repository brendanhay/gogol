{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidPublisher.Types.Product where

import           Network.Google.AndroidPublisher.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'apk' smart constructor.
data Apk = Apk
    { _apkVersionCode :: !(Maybe Int32)
    , _apkBinary      :: !(Maybe (Maybe ApkBinary))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Apk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkVersionCode'
--
-- * 'apkBinary'
apk
    :: Apk
apk =
    Apk
    { _apkVersionCode = Nothing
    , _apkBinary = Nothing
    }

-- | The version code of the APK, as specified in the APK\'s manifest file.
apkVersionCode :: Lens' Apk (Maybe Int32)
apkVersionCode
  = lens _apkVersionCode
      (\ s a -> s{_apkVersionCode = a})

-- | Information about the binary payload of this APK.
apkBinary :: Lens' Apk (Maybe (Maybe ApkBinary))
apkBinary
  = lens _apkBinary (\ s a -> s{_apkBinary = a})

-- | Represents the binary payload of an APK.
--
-- /See:/ 'apkBinary' smart constructor.
newtype ApkBinary = ApkBinary
    { _abSha1 :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApkBinary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abSha1'
apkBinary
    :: ApkBinary
apkBinary =
    ApkBinary
    { _abSha1 = Nothing
    }

-- | A sha1 hash of the APK payload, encoded as a hex string and matching the
-- output of the sha1sum command.
abSha1 :: Lens' ApkBinary (Maybe Text)
abSha1 = lens _abSha1 (\ s a -> s{_abSha1 = a})

--
-- /See:/ 'apkListing' smart constructor.
data ApkListing = ApkListing
    { _alLanguage      :: !(Maybe Text)
    , _alRecentChanges :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApkListing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alLanguage'
--
-- * 'alRecentChanges'
apkListing
    :: ApkListing
apkListing =
    ApkListing
    { _alLanguage = Nothing
    , _alRecentChanges = Nothing
    }

-- | The language code, in BCP 47 format (eg \"en-US\").
alLanguage :: Lens' ApkListing (Maybe Text)
alLanguage
  = lens _alLanguage (\ s a -> s{_alLanguage = a})

-- | Describe what\'s new in your APK.
alRecentChanges :: Lens' ApkListing (Maybe Text)
alRecentChanges
  = lens _alRecentChanges
      (\ s a -> s{_alRecentChanges = a})

--
-- /See:/ 'apkListingsListResponse' smart constructor.
data ApkListingsListResponse = ApkListingsListResponse
    { _allrKind     :: !Text
    , _allrListings :: !(Maybe [Maybe ApkListing])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApkListingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allrKind'
--
-- * 'allrListings'
apkListingsListResponse
    :: ApkListingsListResponse
apkListingsListResponse =
    ApkListingsListResponse
    { _allrKind = "androidpublisher#apkListingsListResponse"
    , _allrListings = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#apkListingsListResponse\".
allrKind :: Lens' ApkListingsListResponse Text
allrKind = lens _allrKind (\ s a -> s{_allrKind = a})

allrListings :: Lens' ApkListingsListResponse [Maybe ApkListing]
allrListings
  = lens _allrListings (\ s a -> s{_allrListings = a})
      . _Default
      . _Coerce

--
-- /See:/ 'apksAddExternallyHostedRequest' smart constructor.
newtype ApksAddExternallyHostedRequest = ApksAddExternallyHostedRequest
    { _aaehrExternallyHostedApk :: Maybe (Maybe ExternallyHostedApk)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApksAddExternallyHostedRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaehrExternallyHostedApk'
apksAddExternallyHostedRequest
    :: ApksAddExternallyHostedRequest
apksAddExternallyHostedRequest =
    ApksAddExternallyHostedRequest
    { _aaehrExternallyHostedApk = Nothing
    }

-- | The definition of the externally-hosted APK and where it is located.
aaehrExternallyHostedApk :: Lens' ApksAddExternallyHostedRequest (Maybe (Maybe ExternallyHostedApk))
aaehrExternallyHostedApk
  = lens _aaehrExternallyHostedApk
      (\ s a -> s{_aaehrExternallyHostedApk = a})

--
-- /See:/ 'apksAddExternallyHostedResponse' smart constructor.
newtype ApksAddExternallyHostedResponse = ApksAddExternallyHostedResponse
    { _aExternallyHostedApk :: Maybe (Maybe ExternallyHostedApk)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApksAddExternallyHostedResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aExternallyHostedApk'
apksAddExternallyHostedResponse
    :: ApksAddExternallyHostedResponse
apksAddExternallyHostedResponse =
    ApksAddExternallyHostedResponse
    { _aExternallyHostedApk = Nothing
    }

-- | The definition of the externally-hosted APK and where it is located.
aExternallyHostedApk :: Lens' ApksAddExternallyHostedResponse (Maybe (Maybe ExternallyHostedApk))
aExternallyHostedApk
  = lens _aExternallyHostedApk
      (\ s a -> s{_aExternallyHostedApk = a})

--
-- /See:/ 'apksListResponse' smart constructor.
data ApksListResponse = ApksListResponse
    { _alrKind :: !Text
    , _alrApks :: !(Maybe [Maybe Apk])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApksListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrKind'
--
-- * 'alrApks'
apksListResponse
    :: ApksListResponse
apksListResponse =
    ApksListResponse
    { _alrKind = "androidpublisher#apksListResponse"
    , _alrApks = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#apksListResponse\".
alrKind :: Lens' ApksListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

alrApks :: Lens' ApksListResponse [Maybe Apk]
alrApks
  = lens _alrApks (\ s a -> s{_alrApks = a}) . _Default
      . _Coerce

--
-- /See:/ 'appDetails' smart constructor.
data AppDetails = AppDetails
    { _adContactPhone    :: !(Maybe Text)
    , _adContactEmail    :: !(Maybe Text)
    , _adContactWebsite  :: !(Maybe Text)
    , _adDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adContactPhone'
--
-- * 'adContactEmail'
--
-- * 'adContactWebsite'
--
-- * 'adDefaultLanguage'
appDetails
    :: AppDetails
appDetails =
    AppDetails
    { _adContactPhone = Nothing
    , _adContactEmail = Nothing
    , _adContactWebsite = Nothing
    , _adDefaultLanguage = Nothing
    }

-- | The user-visible support telephone number for this app.
adContactPhone :: Lens' AppDetails (Maybe Text)
adContactPhone
  = lens _adContactPhone
      (\ s a -> s{_adContactPhone = a})

-- | The user-visible support email for this app.
adContactEmail :: Lens' AppDetails (Maybe Text)
adContactEmail
  = lens _adContactEmail
      (\ s a -> s{_adContactEmail = a})

-- | The user-visible website for this app.
adContactWebsite :: Lens' AppDetails (Maybe Text)
adContactWebsite
  = lens _adContactWebsite
      (\ s a -> s{_adContactWebsite = a})

-- | Default language code, in BCP 47 format (eg \"en-US\").
adDefaultLanguage :: Lens' AppDetails (Maybe Text)
adDefaultLanguage
  = lens _adDefaultLanguage
      (\ s a -> s{_adDefaultLanguage = a})

-- | Represents an edit of an app. An edit allows clients to make multiple
-- changes before committing them in one operation.
--
-- /See:/ 'appEdit' smart constructor.
data AppEdit = AppEdit
    { _aeId                :: !(Maybe Text)
    , _aeExpiryTimeSeconds :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppEdit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeId'
--
-- * 'aeExpiryTimeSeconds'
appEdit
    :: AppEdit
appEdit =
    AppEdit
    { _aeId = Nothing
    , _aeExpiryTimeSeconds = Nothing
    }

-- | The ID of the edit that can be used in subsequent API calls.
aeId :: Lens' AppEdit (Maybe Text)
aeId = lens _aeId (\ s a -> s{_aeId = a})

-- | The time at which the edit will expire and will be no longer valid for
-- use in any subsequent API calls (encoded as seconds since the Epoch).
aeExpiryTimeSeconds :: Lens' AppEdit (Maybe Text)
aeExpiryTimeSeconds
  = lens _aeExpiryTimeSeconds
      (\ s a -> s{_aeExpiryTimeSeconds = a})

-- | An Entitlement resource indicates a user\'s current entitlement to an
-- inapp item or subscription.
--
-- /See:/ 'entitlement' smart constructor.
data Entitlement = Entitlement
    { _eKind        :: !Text
    , _eProductType :: !(Maybe Text)
    , _eToken       :: !(Maybe Text)
    , _eProductId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Entitlement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eKind'
--
-- * 'eProductType'
--
-- * 'eToken'
--
-- * 'eProductId'
entitlement
    :: Entitlement
entitlement =
    Entitlement
    { _eKind = "androidpublisher#entitlement"
    , _eProductType = Nothing
    , _eToken = Nothing
    , _eProductId = Nothing
    }

-- | This kind represents an entitlement object in the androidpublisher
-- service.
eKind :: Lens' Entitlement Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | The type of the inapp product. Possible values are: - In-app item:
-- \"inapp\" - Subscription: \"subs\"
eProductType :: Lens' Entitlement (Maybe Text)
eProductType
  = lens _eProductType (\ s a -> s{_eProductType = a})

-- | The token which can be verified using the subscriptions or products API.
eToken :: Lens' Entitlement (Maybe Text)
eToken = lens _eToken (\ s a -> s{_eToken = a})

-- | The SKU of the product.
eProductId :: Lens' Entitlement (Maybe Text)
eProductId
  = lens _eProductId (\ s a -> s{_eProductId = a})

--
-- /See:/ 'entitlementsListResponse' smart constructor.
data EntitlementsListResponse = EntitlementsListResponse
    { _elrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _elrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _elrResources       :: !(Maybe [Maybe Entitlement])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elrTokenPagination'
--
-- * 'elrPageInfo'
--
-- * 'elrResources'
entitlementsListResponse
    :: EntitlementsListResponse
entitlementsListResponse =
    EntitlementsListResponse
    { _elrTokenPagination = Nothing
    , _elrPageInfo = Nothing
    , _elrResources = Nothing
    }

elrTokenPagination :: Lens' EntitlementsListResponse (Maybe (Maybe TokenPagination))
elrTokenPagination
  = lens _elrTokenPagination
      (\ s a -> s{_elrTokenPagination = a})

elrPageInfo :: Lens' EntitlementsListResponse (Maybe (Maybe PageInfo))
elrPageInfo
  = lens _elrPageInfo (\ s a -> s{_elrPageInfo = a})

elrResources :: Lens' EntitlementsListResponse [Maybe Entitlement]
elrResources
  = lens _elrResources (\ s a -> s{_elrResources = a})
      . _Default
      . _Coerce

--
-- /See:/ 'expansionFile' smart constructor.
data ExpansionFile = ExpansionFile
    { _efFileSize          :: !(Maybe Int64)
    , _efReferencesVersion :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExpansionFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efFileSize'
--
-- * 'efReferencesVersion'
expansionFile
    :: ExpansionFile
expansionFile =
    ExpansionFile
    { _efFileSize = Nothing
    , _efReferencesVersion = Nothing
    }

-- | If set this field indicates that this APK has an Expansion File uploaded
-- to it: this APK does not reference another APK\'s Expansion File. The
-- field\'s value is the size of the uploaded Expansion File in bytes.
efFileSize :: Lens' ExpansionFile (Maybe Int64)
efFileSize
  = lens _efFileSize (\ s a -> s{_efFileSize = a})

-- | If set this APK\'s Expansion File references another APK\'s Expansion
-- File. The file_size field will not be set.
efReferencesVersion :: Lens' ExpansionFile (Maybe Int32)
efReferencesVersion
  = lens _efReferencesVersion
      (\ s a -> s{_efReferencesVersion = a})

--
-- /See:/ 'expansionFilesUploadResponse' smart constructor.
newtype ExpansionFilesUploadResponse = ExpansionFilesUploadResponse
    { _efurExpansionFile :: Maybe (Maybe ExpansionFile)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExpansionFilesUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efurExpansionFile'
expansionFilesUploadResponse
    :: ExpansionFilesUploadResponse
expansionFilesUploadResponse =
    ExpansionFilesUploadResponse
    { _efurExpansionFile = Nothing
    }

efurExpansionFile :: Lens' ExpansionFilesUploadResponse (Maybe (Maybe ExpansionFile))
efurExpansionFile
  = lens _efurExpansionFile
      (\ s a -> s{_efurExpansionFile = a})

-- | Defines an APK available for this application that is hosted externally
-- and not uploaded to Google Play. This function is only available to
-- enterprises who are using Google Play for Work, and whos application is
-- restricted to the enterprise private channel
--
-- /See:/ 'externallyHostedApk' smart constructor.
data ExternallyHostedApk = ExternallyHostedApk
    { _ehaApplicationLabel    :: !(Maybe Text)
    , _ehaMaximumSdk          :: !(Maybe Int32)
    , _ehaNativeCodes         :: !(Maybe [Text])
    , _ehaVersionCode         :: !(Maybe Int32)
    , _ehaFileSha256Base64    :: !(Maybe Text)
    , _ehaExternallyHostedUrl :: !(Maybe Text)
    , _ehaVersionName         :: !(Maybe Text)
    , _ehaPackageName         :: !(Maybe Text)
    , _ehaFileSize            :: !(Maybe Int64)
    , _ehaIconBase64          :: !(Maybe Text)
    , _ehaUsesFeatures        :: !(Maybe [Text])
    , _ehaMinimumSdk          :: !(Maybe Int32)
    , _ehaFileSha1Base64      :: !(Maybe Text)
    , _ehaUsesPermissions     :: !(Maybe [Maybe ExternallyHostedApkUsesPermission])
    , _ehaCertificateBase64s  :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExternallyHostedApk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehaApplicationLabel'
--
-- * 'ehaMaximumSdk'
--
-- * 'ehaNativeCodes'
--
-- * 'ehaVersionCode'
--
-- * 'ehaFileSha256Base64'
--
-- * 'ehaExternallyHostedUrl'
--
-- * 'ehaVersionName'
--
-- * 'ehaPackageName'
--
-- * 'ehaFileSize'
--
-- * 'ehaIconBase64'
--
-- * 'ehaUsesFeatures'
--
-- * 'ehaMinimumSdk'
--
-- * 'ehaFileSha1Base64'
--
-- * 'ehaUsesPermissions'
--
-- * 'ehaCertificateBase64s'
externallyHostedApk
    :: ExternallyHostedApk
externallyHostedApk =
    ExternallyHostedApk
    { _ehaApplicationLabel = Nothing
    , _ehaMaximumSdk = Nothing
    , _ehaNativeCodes = Nothing
    , _ehaVersionCode = Nothing
    , _ehaFileSha256Base64 = Nothing
    , _ehaExternallyHostedUrl = Nothing
    , _ehaVersionName = Nothing
    , _ehaPackageName = Nothing
    , _ehaFileSize = Nothing
    , _ehaIconBase64 = Nothing
    , _ehaUsesFeatures = Nothing
    , _ehaMinimumSdk = Nothing
    , _ehaFileSha1Base64 = Nothing
    , _ehaUsesPermissions = Nothing
    , _ehaCertificateBase64s = Nothing
    }

-- | The application label.
ehaApplicationLabel :: Lens' ExternallyHostedApk (Maybe Text)
ehaApplicationLabel
  = lens _ehaApplicationLabel
      (\ s a -> s{_ehaApplicationLabel = a})

-- | The maximum SDK supported by this APK (optional).
ehaMaximumSdk :: Lens' ExternallyHostedApk (Maybe Int32)
ehaMaximumSdk
  = lens _ehaMaximumSdk
      (\ s a -> s{_ehaMaximumSdk = a})

-- | The native code environments supported by this APK (optional).
ehaNativeCodes :: Lens' ExternallyHostedApk [Text]
ehaNativeCodes
  = lens _ehaNativeCodes
      (\ s a -> s{_ehaNativeCodes = a})
      . _Default
      . _Coerce

-- | The version code of this APK.
ehaVersionCode :: Lens' ExternallyHostedApk (Maybe Int32)
ehaVersionCode
  = lens _ehaVersionCode
      (\ s a -> s{_ehaVersionCode = a})

-- | The SHA256 checksum of this APK, represented as a base64 encoded byte
-- array.
ehaFileSha256Base64 :: Lens' ExternallyHostedApk (Maybe Text)
ehaFileSha256Base64
  = lens _ehaFileSha256Base64
      (\ s a -> s{_ehaFileSha256Base64 = a})

-- | The URL at which the APK is hosted. This must be an https URL.
ehaExternallyHostedUrl :: Lens' ExternallyHostedApk (Maybe Text)
ehaExternallyHostedUrl
  = lens _ehaExternallyHostedUrl
      (\ s a -> s{_ehaExternallyHostedUrl = a})

-- | The version name of this APK.
ehaVersionName :: Lens' ExternallyHostedApk (Maybe Text)
ehaVersionName
  = lens _ehaVersionName
      (\ s a -> s{_ehaVersionName = a})

-- | The package name.
ehaPackageName :: Lens' ExternallyHostedApk (Maybe Text)
ehaPackageName
  = lens _ehaPackageName
      (\ s a -> s{_ehaPackageName = a})

-- | The file size in bytes of this APK.
ehaFileSize :: Lens' ExternallyHostedApk (Maybe Int64)
ehaFileSize
  = lens _ehaFileSize (\ s a -> s{_ehaFileSize = a})

-- | The icon image from the APK, as a base64 encoded byte array.
ehaIconBase64 :: Lens' ExternallyHostedApk (Maybe Text)
ehaIconBase64
  = lens _ehaIconBase64
      (\ s a -> s{_ehaIconBase64 = a})

-- | The features required by this APK (optional).
ehaUsesFeatures :: Lens' ExternallyHostedApk [Text]
ehaUsesFeatures
  = lens _ehaUsesFeatures
      (\ s a -> s{_ehaUsesFeatures = a})
      . _Default
      . _Coerce

-- | The minimum SDK targeted by this APK.
ehaMinimumSdk :: Lens' ExternallyHostedApk (Maybe Int32)
ehaMinimumSdk
  = lens _ehaMinimumSdk
      (\ s a -> s{_ehaMinimumSdk = a})

-- | The SHA1 checksum of this APK, represented as a base64 encoded byte
-- array.
ehaFileSha1Base64 :: Lens' ExternallyHostedApk (Maybe Text)
ehaFileSha1Base64
  = lens _ehaFileSha1Base64
      (\ s a -> s{_ehaFileSha1Base64 = a})

-- | The permissions requested by this APK.
ehaUsesPermissions :: Lens' ExternallyHostedApk [Maybe ExternallyHostedApkUsesPermission]
ehaUsesPermissions
  = lens _ehaUsesPermissions
      (\ s a -> s{_ehaUsesPermissions = a})
      . _Default
      . _Coerce

-- | A certificate (or array of certificates if a certificate-chain is used)
-- used to signed this APK, represented as a base64 encoded byte array.
ehaCertificateBase64s :: Lens' ExternallyHostedApk [Text]
ehaCertificateBase64s
  = lens _ehaCertificateBase64s
      (\ s a -> s{_ehaCertificateBase64s = a})
      . _Default
      . _Coerce

-- | A permission used by this APK.
--
-- /See:/ 'externallyHostedApkUsesPermission' smart constructor.
data ExternallyHostedApkUsesPermission = ExternallyHostedApkUsesPermission
    { _ehaupName          :: !(Maybe Text)
    , _ehaupMaxSdkVersion :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExternallyHostedApkUsesPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehaupName'
--
-- * 'ehaupMaxSdkVersion'
externallyHostedApkUsesPermission
    :: ExternallyHostedApkUsesPermission
externallyHostedApkUsesPermission =
    ExternallyHostedApkUsesPermission
    { _ehaupName = Nothing
    , _ehaupMaxSdkVersion = Nothing
    }

-- | The name of the permission requested.
ehaupName :: Lens' ExternallyHostedApkUsesPermission (Maybe Text)
ehaupName
  = lens _ehaupName (\ s a -> s{_ehaupName = a})

-- | Optionally, the maximum SDK version for which the permission is
-- required.
ehaupMaxSdkVersion :: Lens' ExternallyHostedApkUsesPermission (Maybe Int32)
ehaupMaxSdkVersion
  = lens _ehaupMaxSdkVersion
      (\ s a -> s{_ehaupMaxSdkVersion = a})

--
-- /See:/ 'image' smart constructor.
data Image = Image
    { _iUrl  :: !(Maybe Text)
    , _iSha1 :: !(Maybe Text)
    , _iId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iUrl'
--
-- * 'iSha1'
--
-- * 'iId'
image
    :: Image
image =
    Image
    { _iUrl = Nothing
    , _iSha1 = Nothing
    , _iId = Nothing
    }

-- | A URL that will serve a preview of the image.
iUrl :: Lens' Image (Maybe Text)
iUrl = lens _iUrl (\ s a -> s{_iUrl = a})

-- | A sha1 hash of the image that was uploaded.
iSha1 :: Lens' Image (Maybe Text)
iSha1 = lens _iSha1 (\ s a -> s{_iSha1 = a})

-- | A unique id representing this image.
iId :: Lens' Image (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

--
-- /See:/ 'imagesDeleteAllResponse' smart constructor.
newtype ImagesDeleteAllResponse = ImagesDeleteAllResponse
    { _idarDeleted :: Maybe [Maybe Image]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDeleteAllResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idarDeleted'
imagesDeleteAllResponse
    :: ImagesDeleteAllResponse
imagesDeleteAllResponse =
    ImagesDeleteAllResponse
    { _idarDeleted = Nothing
    }

idarDeleted :: Lens' ImagesDeleteAllResponse [Maybe Image]
idarDeleted
  = lens _idarDeleted (\ s a -> s{_idarDeleted = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'imagesListResponse' smart constructor.
newtype ImagesListResponse = ImagesListResponse
    { _ilrImages :: Maybe [Maybe Image]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrImages'
imagesListResponse
    :: ImagesListResponse
imagesListResponse =
    ImagesListResponse
    { _ilrImages = Nothing
    }

ilrImages :: Lens' ImagesListResponse [Maybe Image]
ilrImages
  = lens _ilrImages (\ s a -> s{_ilrImages = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'imagesUploadResponse' smart constructor.
newtype ImagesUploadResponse = ImagesUploadResponse
    { _iurImage :: Maybe (Maybe Image)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iurImage'
imagesUploadResponse
    :: ImagesUploadResponse
imagesUploadResponse =
    ImagesUploadResponse
    { _iurImage = Nothing
    }

iurImage :: Lens' ImagesUploadResponse (Maybe (Maybe Image))
iurImage = lens _iurImage (\ s a -> s{_iurImage = a})

--
-- /See:/ 'inAppProduct' smart constructor.
data InAppProduct = InAppProduct
    { _iapStatus             :: !(Maybe Text)
    , _iapTrialPeriod        :: !(Maybe Text)
    , _iapPackageName        :: !(Maybe Text)
    , _iapSeason             :: !(Maybe (Maybe Season))
    , _iapPurchaseType       :: !(Maybe Text)
    , _iapSubscriptionPeriod :: !(Maybe Text)
    , _iapPrices             :: !(Maybe InAppProductPrices)
    , _iapSku                :: !(Maybe Text)
    , _iapDefaultPrice       :: !(Maybe (Maybe Price))
    , _iapListings           :: !(Maybe InAppProductListings)
    , _iapDefaultLanguage    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapStatus'
--
-- * 'iapTrialPeriod'
--
-- * 'iapPackageName'
--
-- * 'iapSeason'
--
-- * 'iapPurchaseType'
--
-- * 'iapSubscriptionPeriod'
--
-- * 'iapPrices'
--
-- * 'iapSku'
--
-- * 'iapDefaultPrice'
--
-- * 'iapListings'
--
-- * 'iapDefaultLanguage'
inAppProduct
    :: InAppProduct
inAppProduct =
    InAppProduct
    { _iapStatus = Nothing
    , _iapTrialPeriod = Nothing
    , _iapPackageName = Nothing
    , _iapSeason = Nothing
    , _iapPurchaseType = Nothing
    , _iapSubscriptionPeriod = Nothing
    , _iapPrices = Nothing
    , _iapSku = Nothing
    , _iapDefaultPrice = Nothing
    , _iapListings = Nothing
    , _iapDefaultLanguage = Nothing
    }

iapStatus :: Lens' InAppProduct (Maybe Text)
iapStatus
  = lens _iapStatus (\ s a -> s{_iapStatus = a})

-- | Trial period, specified in ISO 8601 format. Acceptable values are
-- anything between \"P7D\" (seven days) and \"P999D\" (999 days). Seasonal
-- subscriptions cannot have a trial period.
iapTrialPeriod :: Lens' InAppProduct (Maybe Text)
iapTrialPeriod
  = lens _iapTrialPeriod
      (\ s a -> s{_iapTrialPeriod = a})

-- | The package name of the parent app.
iapPackageName :: Lens' InAppProduct (Maybe Text)
iapPackageName
  = lens _iapPackageName
      (\ s a -> s{_iapPackageName = a})

-- | Definition of a season for a seasonal subscription. Can be defined only
-- for yearly subscriptions.
iapSeason :: Lens' InAppProduct (Maybe (Maybe Season))
iapSeason
  = lens _iapSeason (\ s a -> s{_iapSeason = a})

-- | Purchase type enum value. Unmodifiable after creation.
iapPurchaseType :: Lens' InAppProduct (Maybe Text)
iapPurchaseType
  = lens _iapPurchaseType
      (\ s a -> s{_iapPurchaseType = a})

-- | Subscription period, specified in ISO 8601 format. Acceptable values are
-- \"P1W\" (one week), \"P1M\" (one month) and \"P1Y\" (one year).
iapSubscriptionPeriod :: Lens' InAppProduct (Maybe Text)
iapSubscriptionPeriod
  = lens _iapSubscriptionPeriod
      (\ s a -> s{_iapSubscriptionPeriod = a})

-- | Prices per buyer region. None of these prices should be zero. In-app
-- products can never be free.
iapPrices :: Lens' InAppProduct (Maybe InAppProductPrices)
iapPrices
  = lens _iapPrices (\ s a -> s{_iapPrices = a})

-- | The stock-keeping-unit (SKU) of the product, unique within an app.
iapSku :: Lens' InAppProduct (Maybe Text)
iapSku = lens _iapSku (\ s a -> s{_iapSku = a})

-- | Default price cannot be zero. In-app products can never be free. Default
-- price is always in the developer\'s Checkout merchant currency.
iapDefaultPrice :: Lens' InAppProduct (Maybe (Maybe Price))
iapDefaultPrice
  = lens _iapDefaultPrice
      (\ s a -> s{_iapDefaultPrice = a})

-- | List of localized title and description data.
iapListings :: Lens' InAppProduct (Maybe InAppProductListings)
iapListings
  = lens _iapListings (\ s a -> s{_iapListings = a})

-- | The default language of the localized data, as defined by BCP 47. e.g.
-- \"en-US\", \"en-GB\".
iapDefaultLanguage :: Lens' InAppProduct (Maybe Text)
iapDefaultLanguage
  = lens _iapDefaultLanguage
      (\ s a -> s{_iapDefaultLanguage = a})

--
-- /See:/ 'inAppProductListing' smart constructor.
data InAppProductListing = InAppProductListing
    { _iaplTitle       :: !(Maybe Text)
    , _iaplDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductListing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplTitle'
--
-- * 'iaplDescription'
inAppProductListing
    :: InAppProductListing
inAppProductListing =
    InAppProductListing
    { _iaplTitle = Nothing
    , _iaplDescription = Nothing
    }

iaplTitle :: Lens' InAppProductListing (Maybe Text)
iaplTitle
  = lens _iaplTitle (\ s a -> s{_iaplTitle = a})

iaplDescription :: Lens' InAppProductListing (Maybe Text)
iaplDescription
  = lens _iaplDescription
      (\ s a -> s{_iaplDescription = a})

-- | List of localized title and description data.
--
-- /See:/ 'inAppProductListings' smart constructor.
data InAppProductListings =
    InAppProductListings
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductListings' with the minimum fields required to make a request.
--
inAppProductListings
    :: InAppProductListings
inAppProductListings = InAppProductListings

-- | Prices per buyer region. None of these prices should be zero. In-app
-- products can never be free.
--
-- /See:/ 'inAppProductPrices' smart constructor.
data InAppProductPrices =
    InAppProductPrices
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductPrices' with the minimum fields required to make a request.
--
inAppProductPrices
    :: InAppProductPrices
inAppProductPrices = InAppProductPrices

--
-- /See:/ 'inappproductsBatchRequest' smart constructor.
newtype InappproductsBatchRequest = InappproductsBatchRequest
    { _iEntrys :: Maybe [Maybe InappproductsBatchRequestEntry]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iEntrys'
inappproductsBatchRequest
    :: InappproductsBatchRequest
inappproductsBatchRequest =
    InappproductsBatchRequest
    { _iEntrys = Nothing
    }

iEntrys :: Lens' InappproductsBatchRequest [Maybe InappproductsBatchRequestEntry]
iEntrys
  = lens _iEntrys (\ s a -> s{_iEntrys = a}) . _Default
      . _Coerce

--
-- /See:/ 'inappproductsBatchRequestEntry' smart constructor.
data InappproductsBatchRequestEntry = InappproductsBatchRequestEntry
    { _iMethodName                 :: !(Maybe Text)
    , _iInappproductsinsertrequest :: !(Maybe (Maybe InappproductsInsertRequest))
    , _iInappproductsupdaterequest :: !(Maybe (Maybe InappproductsUpdateRequest))
    , _iBatchId                    :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iMethodName'
--
-- * 'iInappproductsinsertrequest'
--
-- * 'iInappproductsupdaterequest'
--
-- * 'iBatchId'
inappproductsBatchRequestEntry
    :: InappproductsBatchRequestEntry
inappproductsBatchRequestEntry =
    InappproductsBatchRequestEntry
    { _iMethodName = Nothing
    , _iInappproductsinsertrequest = Nothing
    , _iInappproductsupdaterequest = Nothing
    , _iBatchId = Nothing
    }

iMethodName :: Lens' InappproductsBatchRequestEntry (Maybe Text)
iMethodName
  = lens _iMethodName (\ s a -> s{_iMethodName = a})

iInappproductsinsertrequest :: Lens' InappproductsBatchRequestEntry (Maybe (Maybe InappproductsInsertRequest))
iInappproductsinsertrequest
  = lens _iInappproductsinsertrequest
      (\ s a -> s{_iInappproductsinsertrequest = a})

iInappproductsupdaterequest :: Lens' InappproductsBatchRequestEntry (Maybe (Maybe InappproductsUpdateRequest))
iInappproductsupdaterequest
  = lens _iInappproductsupdaterequest
      (\ s a -> s{_iInappproductsupdaterequest = a})

iBatchId :: Lens' InappproductsBatchRequestEntry (Maybe Word32)
iBatchId = lens _iBatchId (\ s a -> s{_iBatchId = a})

--
-- /See:/ 'inappproductsBatchResponse' smart constructor.
data InappproductsBatchResponse = InappproductsBatchResponse
    { _ibrEntrys :: !(Maybe [Maybe InappproductsBatchResponseEntry])
    , _ibrKind   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibrEntrys'
--
-- * 'ibrKind'
inappproductsBatchResponse
    :: InappproductsBatchResponse
inappproductsBatchResponse =
    InappproductsBatchResponse
    { _ibrEntrys = Nothing
    , _ibrKind = "androidpublisher#inappproductsBatchResponse"
    }

ibrEntrys :: Lens' InappproductsBatchResponse [Maybe InappproductsBatchResponseEntry]
ibrEntrys
  = lens _ibrEntrys (\ s a -> s{_ibrEntrys = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#inappproductsBatchResponse\".
ibrKind :: Lens' InappproductsBatchResponse Text
ibrKind = lens _ibrKind (\ s a -> s{_ibrKind = a})

--
-- /See:/ 'inappproductsBatchResponseEntry' smart constructor.
data InappproductsBatchResponseEntry = InappproductsBatchResponseEntry
    { _ibreInappproductsupdateresponse :: !(Maybe (Maybe InappproductsUpdateResponse))
    , _ibreInappproductsinsertresponse :: !(Maybe (Maybe InappproductsInsertResponse))
    , _ibreBatchId                     :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibreInappproductsupdateresponse'
--
-- * 'ibreInappproductsinsertresponse'
--
-- * 'ibreBatchId'
inappproductsBatchResponseEntry
    :: InappproductsBatchResponseEntry
inappproductsBatchResponseEntry =
    InappproductsBatchResponseEntry
    { _ibreInappproductsupdateresponse = Nothing
    , _ibreInappproductsinsertresponse = Nothing
    , _ibreBatchId = Nothing
    }

ibreInappproductsupdateresponse :: Lens' InappproductsBatchResponseEntry (Maybe (Maybe InappproductsUpdateResponse))
ibreInappproductsupdateresponse
  = lens _ibreInappproductsupdateresponse
      (\ s a -> s{_ibreInappproductsupdateresponse = a})

ibreInappproductsinsertresponse :: Lens' InappproductsBatchResponseEntry (Maybe (Maybe InappproductsInsertResponse))
ibreInappproductsinsertresponse
  = lens _ibreInappproductsinsertresponse
      (\ s a -> s{_ibreInappproductsinsertresponse = a})

ibreBatchId :: Lens' InappproductsBatchResponseEntry (Maybe Word32)
ibreBatchId
  = lens _ibreBatchId (\ s a -> s{_ibreBatchId = a})

--
-- /See:/ 'inappproductsInsertRequest' smart constructor.
newtype InappproductsInsertRequest = InappproductsInsertRequest
    { _iirInappproduct :: Maybe (Maybe InAppProduct)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsInsertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirInappproduct'
inappproductsInsertRequest
    :: InappproductsInsertRequest
inappproductsInsertRequest =
    InappproductsInsertRequest
    { _iirInappproduct = Nothing
    }

iirInappproduct :: Lens' InappproductsInsertRequest (Maybe (Maybe InAppProduct))
iirInappproduct
  = lens _iirInappproduct
      (\ s a -> s{_iirInappproduct = a})

--
-- /See:/ 'inappproductsInsertResponse' smart constructor.
newtype InappproductsInsertResponse = InappproductsInsertResponse
    { _iInappproduct :: Maybe (Maybe InAppProduct)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsInsertResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInappproduct'
inappproductsInsertResponse
    :: InappproductsInsertResponse
inappproductsInsertResponse =
    InappproductsInsertResponse
    { _iInappproduct = Nothing
    }

iInappproduct :: Lens' InappproductsInsertResponse (Maybe (Maybe InAppProduct))
iInappproduct
  = lens _iInappproduct
      (\ s a -> s{_iInappproduct = a})

--
-- /See:/ 'inappproductsListResponse' smart constructor.
data InappproductsListResponse = InappproductsListResponse
    { _ilrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _ilrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _ilrKind            :: !Text
    , _ilrInappproduct    :: !(Maybe [Maybe InAppProduct])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrTokenPagination'
--
-- * 'ilrPageInfo'
--
-- * 'ilrKind'
--
-- * 'ilrInappproduct'
inappproductsListResponse
    :: InappproductsListResponse
inappproductsListResponse =
    InappproductsListResponse
    { _ilrTokenPagination = Nothing
    , _ilrPageInfo = Nothing
    , _ilrKind = "androidpublisher#inappproductsListResponse"
    , _ilrInappproduct = Nothing
    }

ilrTokenPagination :: Lens' InappproductsListResponse (Maybe (Maybe TokenPagination))
ilrTokenPagination
  = lens _ilrTokenPagination
      (\ s a -> s{_ilrTokenPagination = a})

ilrPageInfo :: Lens' InappproductsListResponse (Maybe (Maybe PageInfo))
ilrPageInfo
  = lens _ilrPageInfo (\ s a -> s{_ilrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#inappproductsListResponse\".
ilrKind :: Lens' InappproductsListResponse Text
ilrKind = lens _ilrKind (\ s a -> s{_ilrKind = a})

ilrInappproduct :: Lens' InappproductsListResponse [Maybe InAppProduct]
ilrInappproduct
  = lens _ilrInappproduct
      (\ s a -> s{_ilrInappproduct = a})
      . _Default
      . _Coerce

--
-- /See:/ 'inappproductsUpdateRequest' smart constructor.
newtype InappproductsUpdateRequest = InappproductsUpdateRequest
    { _inaInappproduct :: Maybe (Maybe InAppProduct)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsUpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'inaInappproduct'
inappproductsUpdateRequest
    :: InappproductsUpdateRequest
inappproductsUpdateRequest =
    InappproductsUpdateRequest
    { _inaInappproduct = Nothing
    }

inaInappproduct :: Lens' InappproductsUpdateRequest (Maybe (Maybe InAppProduct))
inaInappproduct
  = lens _inaInappproduct
      (\ s a -> s{_inaInappproduct = a})

--
-- /See:/ 'inappproductsUpdateResponse' smart constructor.
newtype InappproductsUpdateResponse = InappproductsUpdateResponse
    { _iurInappproduct :: Maybe (Maybe InAppProduct)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iurInappproduct'
inappproductsUpdateResponse
    :: InappproductsUpdateResponse
inappproductsUpdateResponse =
    InappproductsUpdateResponse
    { _iurInappproduct = Nothing
    }

iurInappproduct :: Lens' InappproductsUpdateResponse (Maybe (Maybe InAppProduct))
iurInappproduct
  = lens _iurInappproduct
      (\ s a -> s{_iurInappproduct = a})

--
-- /See:/ 'listing' smart constructor.
data Listing = Listing
    { _lFullDescription  :: !(Maybe Text)
    , _lVideo            :: !(Maybe Text)
    , _lShortDescription :: !(Maybe Text)
    , _lLanguage         :: !(Maybe Text)
    , _lTitle            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Listing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lFullDescription'
--
-- * 'lVideo'
--
-- * 'lShortDescription'
--
-- * 'lLanguage'
--
-- * 'lTitle'
listing
    :: Listing
listing =
    Listing
    { _lFullDescription = Nothing
    , _lVideo = Nothing
    , _lShortDescription = Nothing
    , _lLanguage = Nothing
    , _lTitle = Nothing
    }

-- | Full description of the app; this may be up to 4000 characters in
-- length.
lFullDescription :: Lens' Listing (Maybe Text)
lFullDescription
  = lens _lFullDescription
      (\ s a -> s{_lFullDescription = a})

-- | URL of a promotional YouTube video for the app.
lVideo :: Lens' Listing (Maybe Text)
lVideo = lens _lVideo (\ s a -> s{_lVideo = a})

-- | Short description of the app (previously known as promo text); this may
-- be up to 80 characters in length.
lShortDescription :: Lens' Listing (Maybe Text)
lShortDescription
  = lens _lShortDescription
      (\ s a -> s{_lShortDescription = a})

-- | Language localization code (for example, \"de-AT\" for Austrian German).
lLanguage :: Lens' Listing (Maybe Text)
lLanguage
  = lens _lLanguage (\ s a -> s{_lLanguage = a})

-- | App\'s localized title.
lTitle :: Lens' Listing (Maybe Text)
lTitle = lens _lTitle (\ s a -> s{_lTitle = a})

--
-- /See:/ 'listingsListResponse' smart constructor.
data ListingsListResponse = ListingsListResponse
    { _llrKind     :: !Text
    , _llrListings :: !(Maybe [Maybe Listing])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrKind'
--
-- * 'llrListings'
listingsListResponse
    :: ListingsListResponse
listingsListResponse =
    ListingsListResponse
    { _llrKind = "androidpublisher#listingsListResponse"
    , _llrListings = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#listingsListResponse\".
llrKind :: Lens' ListingsListResponse Text
llrKind = lens _llrKind (\ s a -> s{_llrKind = a})

llrListings :: Lens' ListingsListResponse [Maybe Listing]
llrListings
  = lens _llrListings (\ s a -> s{_llrListings = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'monthDay' smart constructor.
data MonthDay = MonthDay
    { _mdDay   :: !(Maybe Word32)
    , _mdMonth :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonthDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdDay'
--
-- * 'mdMonth'
monthDay
    :: MonthDay
monthDay =
    MonthDay
    { _mdDay = Nothing
    , _mdMonth = Nothing
    }

-- | Day of a month, value in [1, 31] range. Valid range depends on the
-- specified month.
mdDay :: Lens' MonthDay (Maybe Word32)
mdDay = lens _mdDay (\ s a -> s{_mdDay = a})

-- | Month of a year. e.g. 1 = JAN, 2 = FEB etc.
mdMonth :: Lens' MonthDay (Maybe Word32)
mdMonth = lens _mdMonth (\ s a -> s{_mdMonth = a})

--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo = PageInfo
    { _piResultPerPage :: !(Maybe Int32)
    , _piTotalResults  :: !(Maybe Int32)
    , _piStartIndex    :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piResultPerPage'
--
-- * 'piTotalResults'
--
-- * 'piStartIndex'
pageInfo
    :: PageInfo
pageInfo =
    PageInfo
    { _piResultPerPage = Nothing
    , _piTotalResults = Nothing
    , _piStartIndex = Nothing
    }

piResultPerPage :: Lens' PageInfo (Maybe Int32)
piResultPerPage
  = lens _piResultPerPage
      (\ s a -> s{_piResultPerPage = a})

piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})

piStartIndex :: Lens' PageInfo (Maybe Int32)
piStartIndex
  = lens _piStartIndex (\ s a -> s{_piStartIndex = a})

--
-- /See:/ 'price' smart constructor.
data Price = Price
    { _pPriceMicros :: !(Maybe Text)
    , _pCurrency    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPriceMicros'
--
-- * 'pCurrency'
price
    :: Price
price =
    Price
    { _pPriceMicros = Nothing
    , _pCurrency = Nothing
    }

-- | The price in millionths of the currency base unit represented as a
-- string.
pPriceMicros :: Lens' Price (Maybe Text)
pPriceMicros
  = lens _pPriceMicros (\ s a -> s{_pPriceMicros = a})

-- | 3 letter Currency code, as defined by ISO 4217.
pCurrency :: Lens' Price (Maybe Text)
pCurrency
  = lens _pCurrency (\ s a -> s{_pCurrency = a})

-- | A ProductPurchase resource indicates the status of a user\'s inapp
-- product purchase.
--
-- /See:/ 'productPurchase' smart constructor.
data ProductPurchase = ProductPurchase
    { _ppPurchaseState      :: !(Maybe Int32)
    , _ppConsumptionState   :: !(Maybe Int32)
    , _ppKind               :: !Text
    , _ppPurchaseTimeMillis :: !(Maybe Int64)
    , _ppDeveloperPayload   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductPurchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppPurchaseState'
--
-- * 'ppConsumptionState'
--
-- * 'ppKind'
--
-- * 'ppPurchaseTimeMillis'
--
-- * 'ppDeveloperPayload'
productPurchase
    :: ProductPurchase
productPurchase =
    ProductPurchase
    { _ppPurchaseState = Nothing
    , _ppConsumptionState = Nothing
    , _ppKind = "androidpublisher#productPurchase"
    , _ppPurchaseTimeMillis = Nothing
    , _ppDeveloperPayload = Nothing
    }

-- | The purchase state of the order. Possible values are: - Purchased -
-- Cancelled
ppPurchaseState :: Lens' ProductPurchase (Maybe Int32)
ppPurchaseState
  = lens _ppPurchaseState
      (\ s a -> s{_ppPurchaseState = a})

-- | The consumption state of the inapp product. Possible values are: - Yet
-- to be consumed - Consumed
ppConsumptionState :: Lens' ProductPurchase (Maybe Int32)
ppConsumptionState
  = lens _ppConsumptionState
      (\ s a -> s{_ppConsumptionState = a})

-- | This kind represents an inappPurchase object in the androidpublisher
-- service.
ppKind :: Lens' ProductPurchase Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | The time the product was purchased, in milliseconds since the epoch (Jan
-- 1, 1970).
ppPurchaseTimeMillis :: Lens' ProductPurchase (Maybe Int64)
ppPurchaseTimeMillis
  = lens _ppPurchaseTimeMillis
      (\ s a -> s{_ppPurchaseTimeMillis = a})

-- | A developer-specified string that contains supplemental information
-- about an order.
ppDeveloperPayload :: Lens' ProductPurchase (Maybe Text)
ppDeveloperPayload
  = lens _ppDeveloperPayload
      (\ s a -> s{_ppDeveloperPayload = a})

--
-- /See:/ 'season' smart constructor.
data Season = Season
    { _sStart :: !(Maybe (Maybe MonthDay))
    , _sEnd   :: !(Maybe (Maybe MonthDay))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Season' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStart'
--
-- * 'sEnd'
season
    :: Season
season =
    Season
    { _sStart = Nothing
    , _sEnd = Nothing
    }

-- | Inclusive start date of the recurrence period.
sStart :: Lens' Season (Maybe (Maybe MonthDay))
sStart = lens _sStart (\ s a -> s{_sStart = a})

-- | Inclusive end date of the recurrence period.
sEnd :: Lens' Season (Maybe (Maybe MonthDay))
sEnd = lens _sEnd (\ s a -> s{_sEnd = a})

-- | A SubscriptionDeferralInfo contains the data needed to defer a
-- subscription purchase to a future expiry time.
--
-- /See:/ 'subscriptionDeferralInfo' smart constructor.
data SubscriptionDeferralInfo = SubscriptionDeferralInfo
    { _sdiDesiredExpiryTimeMillis  :: !(Maybe Int64)
    , _sdiExpectedExpiryTimeMillis :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionDeferralInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiDesiredExpiryTimeMillis'
--
-- * 'sdiExpectedExpiryTimeMillis'
subscriptionDeferralInfo
    :: SubscriptionDeferralInfo
subscriptionDeferralInfo =
    SubscriptionDeferralInfo
    { _sdiDesiredExpiryTimeMillis = Nothing
    , _sdiExpectedExpiryTimeMillis = Nothing
    }

-- | The desired next expiry time for the subscription in milliseconds since
-- Epoch. The given time must be after the current expiry time for the
-- subscription.
sdiDesiredExpiryTimeMillis :: Lens' SubscriptionDeferralInfo (Maybe Int64)
sdiDesiredExpiryTimeMillis
  = lens _sdiDesiredExpiryTimeMillis
      (\ s a -> s{_sdiDesiredExpiryTimeMillis = a})

-- | The expected expiry time for the subscription. If the current expiry
-- time for the subscription is not the value specified here, the deferral
-- will not occur.
sdiExpectedExpiryTimeMillis :: Lens' SubscriptionDeferralInfo (Maybe Int64)
sdiExpectedExpiryTimeMillis
  = lens _sdiExpectedExpiryTimeMillis
      (\ s a -> s{_sdiExpectedExpiryTimeMillis = a})

-- | A SubscriptionPurchase resource indicates the status of a user\'s
-- subscription purchase.
--
-- /See:/ 'subscriptionPurchase' smart constructor.
data SubscriptionPurchase = SubscriptionPurchase
    { _spKind             :: !Text
    , _spExpiryTimeMillis :: !(Maybe Int64)
    , _spAutoRenewing     :: !(Maybe Bool)
    , _spStartTimeMillis  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionPurchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spKind'
--
-- * 'spExpiryTimeMillis'
--
-- * 'spAutoRenewing'
--
-- * 'spStartTimeMillis'
subscriptionPurchase
    :: SubscriptionPurchase
subscriptionPurchase =
    SubscriptionPurchase
    { _spKind = "androidpublisher#subscriptionPurchase"
    , _spExpiryTimeMillis = Nothing
    , _spAutoRenewing = Nothing
    , _spStartTimeMillis = Nothing
    }

-- | This kind represents a subscriptionPurchase object in the
-- androidpublisher service.
spKind :: Lens' SubscriptionPurchase Text
spKind = lens _spKind (\ s a -> s{_spKind = a})

-- | Time at which the subscription will expire, in milliseconds since Epoch.
spExpiryTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spExpiryTimeMillis
  = lens _spExpiryTimeMillis
      (\ s a -> s{_spExpiryTimeMillis = a})

-- | Whether the subscription will automatically be renewed when it reaches
-- its current expiry time.
spAutoRenewing :: Lens' SubscriptionPurchase (Maybe Bool)
spAutoRenewing
  = lens _spAutoRenewing
      (\ s a -> s{_spAutoRenewing = a})

-- | Time at which the subscription was granted, in milliseconds since Epoch.
spStartTimeMillis :: Lens' SubscriptionPurchase (Maybe Int64)
spStartTimeMillis
  = lens _spStartTimeMillis
      (\ s a -> s{_spStartTimeMillis = a})

--
-- /See:/ 'subscriptionPurchasesDeferRequest' smart constructor.
newtype SubscriptionPurchasesDeferRequest = SubscriptionPurchasesDeferRequest
    { _spdrDeferralInfo :: Maybe (Maybe SubscriptionDeferralInfo)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionPurchasesDeferRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdrDeferralInfo'
subscriptionPurchasesDeferRequest
    :: SubscriptionPurchasesDeferRequest
subscriptionPurchasesDeferRequest =
    SubscriptionPurchasesDeferRequest
    { _spdrDeferralInfo = Nothing
    }

-- | The information about the new desired expiry time for the subscription.
spdrDeferralInfo :: Lens' SubscriptionPurchasesDeferRequest (Maybe (Maybe SubscriptionDeferralInfo))
spdrDeferralInfo
  = lens _spdrDeferralInfo
      (\ s a -> s{_spdrDeferralInfo = a})

--
-- /See:/ 'subscriptionPurchasesDeferResponse' smart constructor.
newtype SubscriptionPurchasesDeferResponse = SubscriptionPurchasesDeferResponse
    { _spdrNewExpiryTimeMillis :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionPurchasesDeferResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdrNewExpiryTimeMillis'
subscriptionPurchasesDeferResponse
    :: SubscriptionPurchasesDeferResponse
subscriptionPurchasesDeferResponse =
    SubscriptionPurchasesDeferResponse
    { _spdrNewExpiryTimeMillis = Nothing
    }

-- | The new expiry time for the subscription in milliseconds since the
-- Epoch.
spdrNewExpiryTimeMillis :: Lens' SubscriptionPurchasesDeferResponse (Maybe Int64)
spdrNewExpiryTimeMillis
  = lens _spdrNewExpiryTimeMillis
      (\ s a -> s{_spdrNewExpiryTimeMillis = a})

--
-- /See:/ 'testers' smart constructor.
data Testers = Testers
    { _tGooglePlusCommunities :: !(Maybe [Text])
    , _tGoogleGroups          :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Testers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tGooglePlusCommunities'
--
-- * 'tGoogleGroups'
testers
    :: Testers
testers =
    Testers
    { _tGooglePlusCommunities = Nothing
    , _tGoogleGroups = Nothing
    }

tGooglePlusCommunities :: Lens' Testers [Text]
tGooglePlusCommunities
  = lens _tGooglePlusCommunities
      (\ s a -> s{_tGooglePlusCommunities = a})
      . _Default
      . _Coerce

tGoogleGroups :: Lens' Testers [Text]
tGoogleGroups
  = lens _tGoogleGroups
      (\ s a -> s{_tGoogleGroups = a})
      . _Default
      . _Coerce

--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination = TokenPagination
    { _tpNextPageToken     :: !(Maybe Text)
    , _tpPreviousPageToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpNextPageToken'
--
-- * 'tpPreviousPageToken'
tokenPagination
    :: TokenPagination
tokenPagination =
    TokenPagination
    { _tpNextPageToken = Nothing
    , _tpPreviousPageToken = Nothing
    }

tpNextPageToken :: Lens' TokenPagination (Maybe Text)
tpNextPageToken
  = lens _tpNextPageToken
      (\ s a -> s{_tpNextPageToken = a})

tpPreviousPageToken :: Lens' TokenPagination (Maybe Text)
tpPreviousPageToken
  = lens _tpPreviousPageToken
      (\ s a -> s{_tpPreviousPageToken = a})

--
-- /See:/ 'track' smart constructor.
data Track = Track
    { _tVersionCodes :: !(Maybe [Int32])
    , _tTrack        :: !(Maybe Text)
    , _tUserFraction :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tVersionCodes'
--
-- * 'tTrack'
--
-- * 'tUserFraction'
track
    :: Track
track =
    Track
    { _tVersionCodes = Nothing
    , _tTrack = Nothing
    , _tUserFraction = Nothing
    }

tVersionCodes :: Lens' Track [Int32]
tVersionCodes
  = lens _tVersionCodes
      (\ s a -> s{_tVersionCodes = a})
      . _Default
      . _Coerce

tTrack :: Lens' Track (Maybe Text)
tTrack = lens _tTrack (\ s a -> s{_tTrack = a})

tUserFraction :: Lens' Track (Maybe Double)
tUserFraction
  = lens _tUserFraction
      (\ s a -> s{_tUserFraction = a})

--
-- /See:/ 'tracksListResponse' smart constructor.
data TracksListResponse = TracksListResponse
    { _tlrTracks :: !(Maybe [Maybe Track])
    , _tlrKind   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TracksListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrTracks'
--
-- * 'tlrKind'
tracksListResponse
    :: TracksListResponse
tracksListResponse =
    TracksListResponse
    { _tlrTracks = Nothing
    , _tlrKind = "androidpublisher#tracksListResponse"
    }

tlrTracks :: Lens' TracksListResponse [Maybe Track]
tlrTracks
  = lens _tlrTracks (\ s a -> s{_tlrTracks = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidpublisher#tracksListResponse\".
tlrKind :: Lens' TracksListResponse Text
tlrKind = lens _tlrKind (\ s a -> s{_tlrKind = a})
