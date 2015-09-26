{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Drive.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Drive.Types.Product where

import           Network.Google.Drive.Types.Sum
import           Network.Google.Prelude

-- | An item with user information and settings.
--
-- /See:/ 'about' smart constructor.
data About = About
    { _aExportFormats           :: !(Maybe [AboutItemExportFormats])
    , _aRemainingChangeIds      :: !(Maybe Int64)
    , _aLanguageCode            :: !(Maybe Text)
    , _aEtag                    :: !(Maybe Text)
    , _aImportFormats           :: !(Maybe [AboutItemImportFormats])
    , _aKind                    :: !Text
    , _aDomainSharingPolicy     :: !(Maybe Text)
    , _aQuotaBytesUsedInTrash   :: !(Maybe Int64)
    , _aQuotaType               :: !(Maybe Text)
    , _aMaxUploadSizes          :: !(Maybe [AboutItemMaxUploadSizes])
    , _aUser                    :: !(Maybe (Maybe User))
    , _aSelfLink                :: !(Maybe Text)
    , _aName                    :: !(Maybe Text)
    , _aFeatures                :: !(Maybe [AboutItemFeatures])
    , _aIsCurrentAppInstalled   :: !(Maybe Bool)
    , _aQuotaBytesTotal         :: !(Maybe Int64)
    , _aRootFolderId            :: !(Maybe Text)
    , _aQuotaBytesUsed          :: !(Maybe Int64)
    , _aAdditionalRoleInfo      :: !(Maybe [AboutItemAdditionalRoleInfo])
    , _aFolderColorPalette      :: !(Maybe [Text])
    , _aPermissionId            :: !(Maybe Text)
    , _aQuotaBytesUsedAggregate :: !(Maybe Int64)
    , _aQuotaBytesByService     :: !(Maybe [AboutItemQuotaBytesByService])
    , _aLargestChangeId         :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'About' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aExportFormats'
--
-- * 'aRemainingChangeIds'
--
-- * 'aLanguageCode'
--
-- * 'aEtag'
--
-- * 'aImportFormats'
--
-- * 'aKind'
--
-- * 'aDomainSharingPolicy'
--
-- * 'aQuotaBytesUsedInTrash'
--
-- * 'aQuotaType'
--
-- * 'aMaxUploadSizes'
--
-- * 'aUser'
--
-- * 'aSelfLink'
--
-- * 'aName'
--
-- * 'aFeatures'
--
-- * 'aIsCurrentAppInstalled'
--
-- * 'aQuotaBytesTotal'
--
-- * 'aRootFolderId'
--
-- * 'aQuotaBytesUsed'
--
-- * 'aAdditionalRoleInfo'
--
-- * 'aFolderColorPalette'
--
-- * 'aPermissionId'
--
-- * 'aQuotaBytesUsedAggregate'
--
-- * 'aQuotaBytesByService'
--
-- * 'aLargestChangeId'
about
    :: About
about =
    About
    { _aExportFormats = Nothing
    , _aRemainingChangeIds = Nothing
    , _aLanguageCode = Nothing
    , _aEtag = Nothing
    , _aImportFormats = Nothing
    , _aKind = "drive#about"
    , _aDomainSharingPolicy = Nothing
    , _aQuotaBytesUsedInTrash = Nothing
    , _aQuotaType = Nothing
    , _aMaxUploadSizes = Nothing
    , _aUser = Nothing
    , _aSelfLink = Nothing
    , _aName = Nothing
    , _aFeatures = Nothing
    , _aIsCurrentAppInstalled = Nothing
    , _aQuotaBytesTotal = Nothing
    , _aRootFolderId = Nothing
    , _aQuotaBytesUsed = Nothing
    , _aAdditionalRoleInfo = Nothing
    , _aFolderColorPalette = Nothing
    , _aPermissionId = Nothing
    , _aQuotaBytesUsedAggregate = Nothing
    , _aQuotaBytesByService = Nothing
    , _aLargestChangeId = Nothing
    }

-- | The allowable export formats.
aExportFormats :: Lens' About [AboutItemExportFormats]
aExportFormats
  = lens _aExportFormats
      (\ s a -> s{_aExportFormats = a})
      . _Default
      . _Coerce

-- | The number of remaining change ids.
aRemainingChangeIds :: Lens' About (Maybe Int64)
aRemainingChangeIds
  = lens _aRemainingChangeIds
      (\ s a -> s{_aRemainingChangeIds = a})

-- | The user\'s language or locale code, as defined by BCP 47, with some
-- extensions from Unicode\'s LDML format
-- (http:\/\/www.unicode.org\/reports\/tr35\/).
aLanguageCode :: Lens' About (Maybe Text)
aLanguageCode
  = lens _aLanguageCode
      (\ s a -> s{_aLanguageCode = a})

-- | The ETag of the item.
aEtag :: Lens' About (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | The allowable import formats.
aImportFormats :: Lens' About [AboutItemImportFormats]
aImportFormats
  = lens _aImportFormats
      (\ s a -> s{_aImportFormats = a})
      . _Default
      . _Coerce

-- | This is always drive#about.
aKind :: Lens' About Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The domain sharing policy for the current user. Possible values are: -
-- allowed - allowedWithWarning - incomingOnly - disallowed
aDomainSharingPolicy :: Lens' About (Maybe Text)
aDomainSharingPolicy
  = lens _aDomainSharingPolicy
      (\ s a -> s{_aDomainSharingPolicy = a})

-- | The number of quota bytes used by trashed items.
aQuotaBytesUsedInTrash :: Lens' About (Maybe Int64)
aQuotaBytesUsedInTrash
  = lens _aQuotaBytesUsedInTrash
      (\ s a -> s{_aQuotaBytesUsedInTrash = a})

-- | The type of the user\'s storage quota. Possible values are: - LIMITED -
-- UNLIMITED
aQuotaType :: Lens' About (Maybe Text)
aQuotaType
  = lens _aQuotaType (\ s a -> s{_aQuotaType = a})

-- | List of max upload sizes for each file type. The most specific type
-- takes precedence.
aMaxUploadSizes :: Lens' About [AboutItemMaxUploadSizes]
aMaxUploadSizes
  = lens _aMaxUploadSizes
      (\ s a -> s{_aMaxUploadSizes = a})
      . _Default
      . _Coerce

-- | The authenticated user.
aUser :: Lens' About (Maybe (Maybe User))
aUser = lens _aUser (\ s a -> s{_aUser = a})

-- | A link back to this item.
aSelfLink :: Lens' About (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

-- | The name of the current user.
aName :: Lens' About (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | List of additional features enabled on this account.
aFeatures :: Lens' About [AboutItemFeatures]
aFeatures
  = lens _aFeatures (\ s a -> s{_aFeatures = a}) .
      _Default
      . _Coerce

-- | A boolean indicating whether the authenticated app is installed by the
-- authenticated user.
aIsCurrentAppInstalled :: Lens' About (Maybe Bool)
aIsCurrentAppInstalled
  = lens _aIsCurrentAppInstalled
      (\ s a -> s{_aIsCurrentAppInstalled = a})

-- | The total number of quota bytes.
aQuotaBytesTotal :: Lens' About (Maybe Int64)
aQuotaBytesTotal
  = lens _aQuotaBytesTotal
      (\ s a -> s{_aQuotaBytesTotal = a})

-- | The id of the root folder.
aRootFolderId :: Lens' About (Maybe Text)
aRootFolderId
  = lens _aRootFolderId
      (\ s a -> s{_aRootFolderId = a})

-- | The number of quota bytes used by Google Drive.
aQuotaBytesUsed :: Lens' About (Maybe Int64)
aQuotaBytesUsed
  = lens _aQuotaBytesUsed
      (\ s a -> s{_aQuotaBytesUsed = a})

-- | Information about supported additional roles per file type. The most
-- specific type takes precedence.
aAdditionalRoleInfo :: Lens' About [AboutItemAdditionalRoleInfo]
aAdditionalRoleInfo
  = lens _aAdditionalRoleInfo
      (\ s a -> s{_aAdditionalRoleInfo = a})
      . _Default
      . _Coerce

-- | The palette of allowable folder colors as RGB hex strings.
aFolderColorPalette :: Lens' About [Text]
aFolderColorPalette
  = lens _aFolderColorPalette
      (\ s a -> s{_aFolderColorPalette = a})
      . _Default
      . _Coerce

-- | The current user\'s ID as visible in the permissions collection.
aPermissionId :: Lens' About (Maybe Text)
aPermissionId
  = lens _aPermissionId
      (\ s a -> s{_aPermissionId = a})

-- | The number of quota bytes used by all Google apps (Drive, Picasa, etc.).
aQuotaBytesUsedAggregate :: Lens' About (Maybe Int64)
aQuotaBytesUsedAggregate
  = lens _aQuotaBytesUsedAggregate
      (\ s a -> s{_aQuotaBytesUsedAggregate = a})

-- | The amount of storage quota used by different Google services.
aQuotaBytesByService :: Lens' About [AboutItemQuotaBytesByService]
aQuotaBytesByService
  = lens _aQuotaBytesByService
      (\ s a -> s{_aQuotaBytesByService = a})
      . _Default
      . _Coerce

-- | The largest change id.
aLargestChangeId :: Lens' About (Maybe Int64)
aLargestChangeId
  = lens _aLargestChangeId
      (\ s a -> s{_aLargestChangeId = a})

--
-- /See:/ 'aboutItemAdditionalRoleInfo' smart constructor.
data AboutItemAdditionalRoleInfo = AboutItemAdditionalRoleInfo
    { _aiariRoleSets :: !(Maybe [AboutItemRoleSetsItemAdditionalRoleInfo])
    , _aiariType     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutItemAdditionalRoleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiariRoleSets'
--
-- * 'aiariType'
aboutItemAdditionalRoleInfo
    :: AboutItemAdditionalRoleInfo
aboutItemAdditionalRoleInfo =
    AboutItemAdditionalRoleInfo
    { _aiariRoleSets = Nothing
    , _aiariType = Nothing
    }

-- | The supported additional roles per primary role.
aiariRoleSets :: Lens' AboutItemAdditionalRoleInfo [AboutItemRoleSetsItemAdditionalRoleInfo]
aiariRoleSets
  = lens _aiariRoleSets
      (\ s a -> s{_aiariRoleSets = a})
      . _Default
      . _Coerce

-- | The content type that this additional role info applies to.
aiariType :: Lens' AboutItemAdditionalRoleInfo (Maybe Text)
aiariType
  = lens _aiariType (\ s a -> s{_aiariType = a})

--
-- /See:/ 'aboutItemExportFormats' smart constructor.
data AboutItemExportFormats = AboutItemExportFormats
    { _aiefTargets :: !(Maybe [Text])
    , _aiefSource  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutItemExportFormats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiefTargets'
--
-- * 'aiefSource'
aboutItemExportFormats
    :: AboutItemExportFormats
aboutItemExportFormats =
    AboutItemExportFormats
    { _aiefTargets = Nothing
    , _aiefSource = Nothing
    }

-- | The possible content types to convert to.
aiefTargets :: Lens' AboutItemExportFormats [Text]
aiefTargets
  = lens _aiefTargets (\ s a -> s{_aiefTargets = a}) .
      _Default
      . _Coerce

-- | The content type to convert from.
aiefSource :: Lens' AboutItemExportFormats (Maybe Text)
aiefSource
  = lens _aiefSource (\ s a -> s{_aiefSource = a})

--
-- /See:/ 'aboutItemFeatures' smart constructor.
data AboutItemFeatures = AboutItemFeatures
    { _aifFeatureRate :: !(Maybe Double)
    , _aifFeatureName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutItemFeatures' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aifFeatureRate'
--
-- * 'aifFeatureName'
aboutItemFeatures
    :: AboutItemFeatures
aboutItemFeatures =
    AboutItemFeatures
    { _aifFeatureRate = Nothing
    , _aifFeatureName = Nothing
    }

-- | The request limit rate for this feature, in queries per second.
aifFeatureRate :: Lens' AboutItemFeatures (Maybe Double)
aifFeatureRate
  = lens _aifFeatureRate
      (\ s a -> s{_aifFeatureRate = a})

-- | The name of the feature.
aifFeatureName :: Lens' AboutItemFeatures (Maybe Text)
aifFeatureName
  = lens _aifFeatureName
      (\ s a -> s{_aifFeatureName = a})

--
-- /See:/ 'aboutItemImportFormats' smart constructor.
data AboutItemImportFormats = AboutItemImportFormats
    { _aiifTargets :: !(Maybe [Text])
    , _aiifSource  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutItemImportFormats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiifTargets'
--
-- * 'aiifSource'
aboutItemImportFormats
    :: AboutItemImportFormats
aboutItemImportFormats =
    AboutItemImportFormats
    { _aiifTargets = Nothing
    , _aiifSource = Nothing
    }

-- | The possible content types to convert to.
aiifTargets :: Lens' AboutItemImportFormats [Text]
aiifTargets
  = lens _aiifTargets (\ s a -> s{_aiifTargets = a}) .
      _Default
      . _Coerce

-- | The imported file\'s content type to convert from.
aiifSource :: Lens' AboutItemImportFormats (Maybe Text)
aiifSource
  = lens _aiifSource (\ s a -> s{_aiifSource = a})

--
-- /See:/ 'aboutItemMaxUploadSizes' smart constructor.
data AboutItemMaxUploadSizes = AboutItemMaxUploadSizes
    { _aimusSize :: !(Maybe Int64)
    , _aimusType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutItemMaxUploadSizes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aimusSize'
--
-- * 'aimusType'
aboutItemMaxUploadSizes
    :: AboutItemMaxUploadSizes
aboutItemMaxUploadSizes =
    AboutItemMaxUploadSizes
    { _aimusSize = Nothing
    , _aimusType = Nothing
    }

-- | The max upload size for this type.
aimusSize :: Lens' AboutItemMaxUploadSizes (Maybe Int64)
aimusSize
  = lens _aimusSize (\ s a -> s{_aimusSize = a})

-- | The file type.
aimusType :: Lens' AboutItemMaxUploadSizes (Maybe Text)
aimusType
  = lens _aimusType (\ s a -> s{_aimusType = a})

--
-- /See:/ 'aboutItemQuotaBytesByService' smart constructor.
data AboutItemQuotaBytesByService = AboutItemQuotaBytesByService
    { _aiqbbsBytesUsed   :: !(Maybe Int64)
    , _aiqbbsServiceName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutItemQuotaBytesByService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiqbbsBytesUsed'
--
-- * 'aiqbbsServiceName'
aboutItemQuotaBytesByService
    :: AboutItemQuotaBytesByService
aboutItemQuotaBytesByService =
    AboutItemQuotaBytesByService
    { _aiqbbsBytesUsed = Nothing
    , _aiqbbsServiceName = Nothing
    }

-- | The storage quota bytes used by the service.
aiqbbsBytesUsed :: Lens' AboutItemQuotaBytesByService (Maybe Int64)
aiqbbsBytesUsed
  = lens _aiqbbsBytesUsed
      (\ s a -> s{_aiqbbsBytesUsed = a})

-- | The service\'s name, e.g. DRIVE, GMAIL, or PHOTOS.
aiqbbsServiceName :: Lens' AboutItemQuotaBytesByService (Maybe Text)
aiqbbsServiceName
  = lens _aiqbbsServiceName
      (\ s a -> s{_aiqbbsServiceName = a})

--
-- /See:/ 'aboutItemRoleSetsItemAdditionalRoleInfo' smart constructor.
data AboutItemRoleSetsItemAdditionalRoleInfo = AboutItemRoleSetsItemAdditionalRoleInfo
    { _airsiariPrimaryRole     :: !(Maybe Text)
    , _airsiariAdditionalRoles :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutItemRoleSetsItemAdditionalRoleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'airsiariPrimaryRole'
--
-- * 'airsiariAdditionalRoles'
aboutItemRoleSetsItemAdditionalRoleInfo
    :: AboutItemRoleSetsItemAdditionalRoleInfo
aboutItemRoleSetsItemAdditionalRoleInfo =
    AboutItemRoleSetsItemAdditionalRoleInfo
    { _airsiariPrimaryRole = Nothing
    , _airsiariAdditionalRoles = Nothing
    }

-- | A primary permission role.
airsiariPrimaryRole :: Lens' AboutItemRoleSetsItemAdditionalRoleInfo (Maybe Text)
airsiariPrimaryRole
  = lens _airsiariPrimaryRole
      (\ s a -> s{_airsiariPrimaryRole = a})

-- | The supported additional roles with the primary role.
airsiariAdditionalRoles :: Lens' AboutItemRoleSetsItemAdditionalRoleInfo [Text]
airsiariAdditionalRoles
  = lens _airsiariAdditionalRoles
      (\ s a -> s{_airsiariAdditionalRoles = a})
      . _Default
      . _Coerce

-- | The apps resource provides a list of the apps that a user has installed,
-- with information about each app\'s supported MIME types, file
-- extensions, and other details.
--
-- /See:/ 'app' smart constructor.
data App = App
    { _appLongDescription         :: !(Maybe Text)
    , _appOpenUrlTemplate         :: !(Maybe Text)
    , _appAuthorized              :: !(Maybe Bool)
    , _appObjectType              :: !(Maybe Text)
    , _appSecondaryMimeTypes      :: !(Maybe [Text])
    , _appCreateInFolderTemplate  :: !(Maybe Text)
    , _appKind                    :: !Text
    , _appIcons                   :: !(Maybe [AppItemIcons])
    , _appProductUrl              :: !(Maybe Text)
    , _appUseByDefault            :: !(Maybe Bool)
    , _appShortDescription        :: !(Maybe Text)
    , _appName                    :: !(Maybe Text)
    , _appCreateUrl               :: !(Maybe Text)
    , _appId                      :: !(Maybe Text)
    , _appPrimaryFileExtensions   :: !(Maybe [Text])
    , _appInstalled               :: !(Maybe Bool)
    , _appSupportsCreate          :: !(Maybe Bool)
    , _appPrimaryMimeTypes        :: !(Maybe [Text])
    , _appHasDriveWideScope       :: !(Maybe Bool)
    , _appProductId               :: !(Maybe Text)
    , _appSecondaryFileExtensions :: !(Maybe [Text])
    , _appSupportsMultiOpen       :: !(Maybe Bool)
    , _appSupportsImport          :: !(Maybe Bool)
    , _appSupportsOfflineCreate   :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'App' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appLongDescription'
--
-- * 'appOpenUrlTemplate'
--
-- * 'appAuthorized'
--
-- * 'appObjectType'
--
-- * 'appSecondaryMimeTypes'
--
-- * 'appCreateInFolderTemplate'
--
-- * 'appKind'
--
-- * 'appIcons'
--
-- * 'appProductUrl'
--
-- * 'appUseByDefault'
--
-- * 'appShortDescription'
--
-- * 'appName'
--
-- * 'appCreateUrl'
--
-- * 'appId'
--
-- * 'appPrimaryFileExtensions'
--
-- * 'appInstalled'
--
-- * 'appSupportsCreate'
--
-- * 'appPrimaryMimeTypes'
--
-- * 'appHasDriveWideScope'
--
-- * 'appProductId'
--
-- * 'appSecondaryFileExtensions'
--
-- * 'appSupportsMultiOpen'
--
-- * 'appSupportsImport'
--
-- * 'appSupportsOfflineCreate'
app
    :: App
app =
    App
    { _appLongDescription = Nothing
    , _appOpenUrlTemplate = Nothing
    , _appAuthorized = Nothing
    , _appObjectType = Nothing
    , _appSecondaryMimeTypes = Nothing
    , _appCreateInFolderTemplate = Nothing
    , _appKind = "drive#app"
    , _appIcons = Nothing
    , _appProductUrl = Nothing
    , _appUseByDefault = Nothing
    , _appShortDescription = Nothing
    , _appName = Nothing
    , _appCreateUrl = Nothing
    , _appId = Nothing
    , _appPrimaryFileExtensions = Nothing
    , _appInstalled = Nothing
    , _appSupportsCreate = Nothing
    , _appPrimaryMimeTypes = Nothing
    , _appHasDriveWideScope = Nothing
    , _appProductId = Nothing
    , _appSecondaryFileExtensions = Nothing
    , _appSupportsMultiOpen = Nothing
    , _appSupportsImport = Nothing
    , _appSupportsOfflineCreate = Nothing
    }

-- | A long description of the app.
appLongDescription :: Lens' App (Maybe Text)
appLongDescription
  = lens _appLongDescription
      (\ s a -> s{_appLongDescription = a})

-- | The template url for opening files with this app. The template will
-- contain {ids} and\/or {exportIds} to be replaced by the actual file ids.
-- See Open Files for the full documentation.
appOpenUrlTemplate :: Lens' App (Maybe Text)
appOpenUrlTemplate
  = lens _appOpenUrlTemplate
      (\ s a -> s{_appOpenUrlTemplate = a})

-- | Whether the app is authorized to access data on the user\'s Drive.
appAuthorized :: Lens' App (Maybe Bool)
appAuthorized
  = lens _appAuthorized
      (\ s a -> s{_appAuthorized = a})

-- | The type of object this app creates (e.g. Chart). If empty, the app name
-- should be used instead.
appObjectType :: Lens' App (Maybe Text)
appObjectType
  = lens _appObjectType
      (\ s a -> s{_appObjectType = a})

-- | The list of secondary mime types.
appSecondaryMimeTypes :: Lens' App [Text]
appSecondaryMimeTypes
  = lens _appSecondaryMimeTypes
      (\ s a -> s{_appSecondaryMimeTypes = a})
      . _Default
      . _Coerce

-- | The template url to create a new file with this app in a given folder.
-- The template will contain {folderId} to be replaced by the folder to
-- create the new file in.
appCreateInFolderTemplate :: Lens' App (Maybe Text)
appCreateInFolderTemplate
  = lens _appCreateInFolderTemplate
      (\ s a -> s{_appCreateInFolderTemplate = a})

-- | This is always drive#app.
appKind :: Lens' App Text
appKind = lens _appKind (\ s a -> s{_appKind = a})

-- | The various icons for the app.
appIcons :: Lens' App [AppItemIcons]
appIcons
  = lens _appIcons (\ s a -> s{_appIcons = a}) .
      _Default
      . _Coerce

-- | A link to the product listing for this app.
appProductUrl :: Lens' App (Maybe Text)
appProductUrl
  = lens _appProductUrl
      (\ s a -> s{_appProductUrl = a})

-- | Whether the app is selected as the default handler for the types it
-- supports.
appUseByDefault :: Lens' App (Maybe Bool)
appUseByDefault
  = lens _appUseByDefault
      (\ s a -> s{_appUseByDefault = a})

-- | A short description of the app.
appShortDescription :: Lens' App (Maybe Text)
appShortDescription
  = lens _appShortDescription
      (\ s a -> s{_appShortDescription = a})

-- | The name of the app.
appName :: Lens' App (Maybe Text)
appName = lens _appName (\ s a -> s{_appName = a})

-- | The url to create a new file with this app.
appCreateUrl :: Lens' App (Maybe Text)
appCreateUrl
  = lens _appCreateUrl (\ s a -> s{_appCreateUrl = a})

-- | The ID of the app.
appId :: Lens' App (Maybe Text)
appId = lens _appId (\ s a -> s{_appId = a})

-- | The list of primary file extensions.
appPrimaryFileExtensions :: Lens' App [Text]
appPrimaryFileExtensions
  = lens _appPrimaryFileExtensions
      (\ s a -> s{_appPrimaryFileExtensions = a})
      . _Default
      . _Coerce

-- | Whether the app is installed.
appInstalled :: Lens' App (Maybe Bool)
appInstalled
  = lens _appInstalled (\ s a -> s{_appInstalled = a})

-- | Whether this app supports creating new objects.
appSupportsCreate :: Lens' App (Maybe Bool)
appSupportsCreate
  = lens _appSupportsCreate
      (\ s a -> s{_appSupportsCreate = a})

-- | The list of primary mime types.
appPrimaryMimeTypes :: Lens' App [Text]
appPrimaryMimeTypes
  = lens _appPrimaryMimeTypes
      (\ s a -> s{_appPrimaryMimeTypes = a})
      . _Default
      . _Coerce

-- | Whether the app has drive-wide scope. An app with drive-wide scope can
-- access all files in the user\'s drive.
appHasDriveWideScope :: Lens' App (Maybe Bool)
appHasDriveWideScope
  = lens _appHasDriveWideScope
      (\ s a -> s{_appHasDriveWideScope = a})

-- | The ID of the product listing for this app.
appProductId :: Lens' App (Maybe Text)
appProductId
  = lens _appProductId (\ s a -> s{_appProductId = a})

-- | The list of secondary file extensions.
appSecondaryFileExtensions :: Lens' App [Text]
appSecondaryFileExtensions
  = lens _appSecondaryFileExtensions
      (\ s a -> s{_appSecondaryFileExtensions = a})
      . _Default
      . _Coerce

-- | Whether this app supports opening more than one file.
appSupportsMultiOpen :: Lens' App (Maybe Bool)
appSupportsMultiOpen
  = lens _appSupportsMultiOpen
      (\ s a -> s{_appSupportsMultiOpen = a})

-- | Whether this app supports importing Google Docs.
appSupportsImport :: Lens' App (Maybe Bool)
appSupportsImport
  = lens _appSupportsImport
      (\ s a -> s{_appSupportsImport = a})

-- | Whether this app supports creating new files when offline.
appSupportsOfflineCreate :: Lens' App (Maybe Bool)
appSupportsOfflineCreate
  = lens _appSupportsOfflineCreate
      (\ s a -> s{_appSupportsOfflineCreate = a})

--
-- /See:/ 'appItemIcons' smart constructor.
data AppItemIcons = AppItemIcons
    { _aiiSize     :: !(Maybe Int32)
    , _aiiCategory :: !(Maybe Text)
    , _aiiIconUrl  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppItemIcons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiSize'
--
-- * 'aiiCategory'
--
-- * 'aiiIconUrl'
appItemIcons
    :: AppItemIcons
appItemIcons =
    AppItemIcons
    { _aiiSize = Nothing
    , _aiiCategory = Nothing
    , _aiiIconUrl = Nothing
    }

-- | Size of the icon. Represented as the maximum of the width and height.
aiiSize :: Lens' AppItemIcons (Maybe Int32)
aiiSize = lens _aiiSize (\ s a -> s{_aiiSize = a})

-- | Category of the icon. Allowed values are: - application - icon for the
-- application - document - icon for a file associated with the app -
-- documentShared - icon for a shared file associated with the app
aiiCategory :: Lens' AppItemIcons (Maybe Text)
aiiCategory
  = lens _aiiCategory (\ s a -> s{_aiiCategory = a})

-- | URL for the icon.
aiiIconUrl :: Lens' AppItemIcons (Maybe Text)
aiiIconUrl
  = lens _aiiIconUrl (\ s a -> s{_aiiIconUrl = a})

-- | A list of third-party applications which the user has installed or given
-- access to Google Drive.
--
-- /See:/ 'appList' smart constructor.
data AppList = AppList
    { _alDefaultAppIds :: !(Maybe [Text])
    , _alEtag          :: !(Maybe Text)
    , _alKind          :: !Text
    , _alItems         :: !(Maybe [Maybe App])
    , _alSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alDefaultAppIds'
--
-- * 'alEtag'
--
-- * 'alKind'
--
-- * 'alItems'
--
-- * 'alSelfLink'
appList
    :: AppList
appList =
    AppList
    { _alDefaultAppIds = Nothing
    , _alEtag = Nothing
    , _alKind = "drive#appList"
    , _alItems = Nothing
    , _alSelfLink = Nothing
    }

-- | List of app IDs that the user has specified to use by default. The list
-- is in reverse-priority order (lowest to highest).
alDefaultAppIds :: Lens' AppList [Text]
alDefaultAppIds
  = lens _alDefaultAppIds
      (\ s a -> s{_alDefaultAppIds = a})
      . _Default
      . _Coerce

-- | The ETag of the list.
alEtag :: Lens' AppList (Maybe Text)
alEtag = lens _alEtag (\ s a -> s{_alEtag = a})

-- | This is always drive#appList.
alKind :: Lens' AppList Text
alKind = lens _alKind (\ s a -> s{_alKind = a})

-- | The actual list of apps.
alItems :: Lens' AppList [Maybe App]
alItems
  = lens _alItems (\ s a -> s{_alItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
alSelfLink :: Lens' AppList (Maybe Text)
alSelfLink
  = lens _alSelfLink (\ s a -> s{_alSelfLink = a})

-- | Representation of a change to a file.
--
-- /See:/ 'change' smart constructor.
data Change = Change
    { _chaKind             :: !Text
    , _chaSelfLink         :: !(Maybe Text)
    , _chaModificationDate :: !(Maybe UTCTime)
    , _chaId               :: !(Maybe Int64)
    , _chaDeleted          :: !(Maybe Bool)
    , _chaFileId           :: !(Maybe Text)
    , _chaFile             :: !(Maybe (Maybe File))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Change' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaKind'
--
-- * 'chaSelfLink'
--
-- * 'chaModificationDate'
--
-- * 'chaId'
--
-- * 'chaDeleted'
--
-- * 'chaFileId'
--
-- * 'chaFile'
change
    :: Change
change =
    Change
    { _chaKind = "drive#change"
    , _chaSelfLink = Nothing
    , _chaModificationDate = Nothing
    , _chaId = Nothing
    , _chaDeleted = Nothing
    , _chaFileId = Nothing
    , _chaFile = Nothing
    }

-- | This is always drive#change.
chaKind :: Lens' Change Text
chaKind = lens _chaKind (\ s a -> s{_chaKind = a})

-- | A link back to this change.
chaSelfLink :: Lens' Change (Maybe Text)
chaSelfLink
  = lens _chaSelfLink (\ s a -> s{_chaSelfLink = a})

-- | The time of this modification.
chaModificationDate :: Lens' Change (Maybe UTCTime)
chaModificationDate
  = lens _chaModificationDate
      (\ s a -> s{_chaModificationDate = a})

-- | The ID of the change.
chaId :: Lens' Change (Maybe Int64)
chaId = lens _chaId (\ s a -> s{_chaId = a})

-- | Whether the file has been deleted.
chaDeleted :: Lens' Change (Maybe Bool)
chaDeleted
  = lens _chaDeleted (\ s a -> s{_chaDeleted = a})

-- | The ID of the file associated with this change.
chaFileId :: Lens' Change (Maybe Text)
chaFileId
  = lens _chaFileId (\ s a -> s{_chaFileId = a})

-- | The updated state of the file. Present if the file has not been deleted.
chaFile :: Lens' Change (Maybe (Maybe File))
chaFile = lens _chaFile (\ s a -> s{_chaFile = a})

-- | A list of changes for a user.
--
-- /See:/ 'changeList' smart constructor.
data ChangeList = ChangeList
    { _clEtag            :: !(Maybe Text)
    , _clNextPageToken   :: !(Maybe Text)
    , _clNextLink        :: !(Maybe Text)
    , _clKind            :: !Text
    , _clItems           :: !(Maybe [Maybe Change])
    , _clSelfLink        :: !(Maybe Text)
    , _clLargestChangeId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clEtag'
--
-- * 'clNextPageToken'
--
-- * 'clNextLink'
--
-- * 'clKind'
--
-- * 'clItems'
--
-- * 'clSelfLink'
--
-- * 'clLargestChangeId'
changeList
    :: ChangeList
changeList =
    ChangeList
    { _clEtag = Nothing
    , _clNextPageToken = Nothing
    , _clNextLink = Nothing
    , _clKind = "drive#changeList"
    , _clItems = Nothing
    , _clSelfLink = Nothing
    , _clLargestChangeId = Nothing
    }

-- | The ETag of the list.
clEtag :: Lens' ChangeList (Maybe Text)
clEtag = lens _clEtag (\ s a -> s{_clEtag = a})

-- | The page token for the next page of changes.
clNextPageToken :: Lens' ChangeList (Maybe Text)
clNextPageToken
  = lens _clNextPageToken
      (\ s a -> s{_clNextPageToken = a})

-- | A link to the next page of changes.
clNextLink :: Lens' ChangeList (Maybe Text)
clNextLink
  = lens _clNextLink (\ s a -> s{_clNextLink = a})

-- | This is always drive#changeList.
clKind :: Lens' ChangeList Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | The actual list of changes.
clItems :: Lens' ChangeList [Maybe Change]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
clSelfLink :: Lens' ChangeList (Maybe Text)
clSelfLink
  = lens _clSelfLink (\ s a -> s{_clSelfLink = a})

-- | The current largest change ID.
clLargestChangeId :: Lens' ChangeList (Maybe Int64)
clLargestChangeId
  = lens _clLargestChangeId
      (\ s a -> s{_clLargestChangeId = a})

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _chahResourceUri :: !(Maybe Text)
    , _chahResourceId  :: !(Maybe Text)
    , _chahKind        :: !Text
    , _chahExpiration  :: !(Maybe Int64)
    , _chahToken       :: !(Maybe Text)
    , _chahAddress     :: !(Maybe Text)
    , _chahPayload     :: !(Maybe Bool)
    , _chahParams      :: !(Maybe ChannelParams)
    , _chahId          :: !(Maybe Text)
    , _chahType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chahResourceUri'
--
-- * 'chahResourceId'
--
-- * 'chahKind'
--
-- * 'chahExpiration'
--
-- * 'chahToken'
--
-- * 'chahAddress'
--
-- * 'chahPayload'
--
-- * 'chahParams'
--
-- * 'chahId'
--
-- * 'chahType'
channel
    :: Channel
channel =
    Channel
    { _chahResourceUri = Nothing
    , _chahResourceId = Nothing
    , _chahKind = "api#channel"
    , _chahExpiration = Nothing
    , _chahToken = Nothing
    , _chahAddress = Nothing
    , _chahPayload = Nothing
    , _chahParams = Nothing
    , _chahId = Nothing
    , _chahType = Nothing
    }

-- | A version-specific identifier for the watched resource.
chahResourceUri :: Lens' Channel (Maybe Text)
chahResourceUri
  = lens _chahResourceUri
      (\ s a -> s{_chahResourceUri = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
chahResourceId :: Lens' Channel (Maybe Text)
chahResourceId
  = lens _chahResourceId
      (\ s a -> s{_chahResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
chahKind :: Lens' Channel Text
chahKind = lens _chahKind (\ s a -> s{_chahKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
chahExpiration :: Lens' Channel (Maybe Int64)
chahExpiration
  = lens _chahExpiration
      (\ s a -> s{_chahExpiration = a})

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
chahToken :: Lens' Channel (Maybe Text)
chahToken
  = lens _chahToken (\ s a -> s{_chahToken = a})

-- | The address where notifications are delivered for this channel.
chahAddress :: Lens' Channel (Maybe Text)
chahAddress
  = lens _chahAddress (\ s a -> s{_chahAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
chahPayload :: Lens' Channel (Maybe Bool)
chahPayload
  = lens _chahPayload (\ s a -> s{_chahPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
chahParams :: Lens' Channel (Maybe ChannelParams)
chahParams
  = lens _chahParams (\ s a -> s{_chahParams = a})

-- | A UUID or similar unique string that identifies this channel.
chahId :: Lens' Channel (Maybe Text)
chahId = lens _chahId (\ s a -> s{_chahId = a})

-- | The type of delivery mechanism used for this channel.
chahType :: Lens' Channel (Maybe Text)
chahType = lens _chahType (\ s a -> s{_chahType = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
channelParams
    :: ChannelParams
channelParams = ChannelParams

-- | A list of children of a file.
--
-- /See:/ 'childList' smart constructor.
data ChildList = ChildList
    { _chiEtag          :: !(Maybe Text)
    , _chiNextPageToken :: !(Maybe Text)
    , _chiNextLink      :: !(Maybe Text)
    , _chiKind          :: !Text
    , _chiItems         :: !(Maybe [Maybe ChildReference])
    , _chiSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chiEtag'
--
-- * 'chiNextPageToken'
--
-- * 'chiNextLink'
--
-- * 'chiKind'
--
-- * 'chiItems'
--
-- * 'chiSelfLink'
childList
    :: ChildList
childList =
    ChildList
    { _chiEtag = Nothing
    , _chiNextPageToken = Nothing
    , _chiNextLink = Nothing
    , _chiKind = "drive#childList"
    , _chiItems = Nothing
    , _chiSelfLink = Nothing
    }

-- | The ETag of the list.
chiEtag :: Lens' ChildList (Maybe Text)
chiEtag = lens _chiEtag (\ s a -> s{_chiEtag = a})

-- | The page token for the next page of children.
chiNextPageToken :: Lens' ChildList (Maybe Text)
chiNextPageToken
  = lens _chiNextPageToken
      (\ s a -> s{_chiNextPageToken = a})

-- | A link to the next page of children.
chiNextLink :: Lens' ChildList (Maybe Text)
chiNextLink
  = lens _chiNextLink (\ s a -> s{_chiNextLink = a})

-- | This is always drive#childList.
chiKind :: Lens' ChildList Text
chiKind = lens _chiKind (\ s a -> s{_chiKind = a})

-- | The actual list of children.
chiItems :: Lens' ChildList [Maybe ChildReference]
chiItems
  = lens _chiItems (\ s a -> s{_chiItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
chiSelfLink :: Lens' ChildList (Maybe Text)
chiSelfLink
  = lens _chiSelfLink (\ s a -> s{_chiSelfLink = a})

-- | A reference to a folder\'s child.
--
-- /See:/ 'childReference' smart constructor.
data ChildReference = ChildReference
    { _crChildLink :: !(Maybe Text)
    , _crKind      :: !Text
    , _crSelfLink  :: !(Maybe Text)
    , _crId        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crChildLink'
--
-- * 'crKind'
--
-- * 'crSelfLink'
--
-- * 'crId'
childReference
    :: ChildReference
childReference =
    ChildReference
    { _crChildLink = Nothing
    , _crKind = "drive#childReference"
    , _crSelfLink = Nothing
    , _crId = Nothing
    }

-- | A link to the child.
crChildLink :: Lens' ChildReference (Maybe Text)
crChildLink
  = lens _crChildLink (\ s a -> s{_crChildLink = a})

-- | This is always drive#childReference.
crKind :: Lens' ChildReference Text
crKind = lens _crKind (\ s a -> s{_crKind = a})

-- | A link back to this reference.
crSelfLink :: Lens' ChildReference (Maybe Text)
crSelfLink
  = lens _crSelfLink (\ s a -> s{_crSelfLink = a})

-- | The ID of the child.
crId :: Lens' ChildReference (Maybe Text)
crId = lens _crId (\ s a -> s{_crId = a})

-- | A JSON representation of a comment on a file in Google Drive.
--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _cStatus       :: !(Maybe Text)
    , _cHtmlContent  :: !(Maybe Text)
    , _cContext      :: !(Maybe CommentContext)
    , _cKind         :: !Text
    , _cFileTitle    :: !(Maybe Text)
    , _cAnchor       :: !(Maybe Text)
    , _cContent      :: !(Maybe Text)
    , _cReplies      :: !(Maybe [Maybe CommentReply])
    , _cCreatedDate  :: !(Maybe UTCTime)
    , _cSelfLink     :: !(Maybe Text)
    , _cAuthor       :: !(Maybe (Maybe User))
    , _cModifiedDate :: !(Maybe UTCTime)
    , _cDeleted      :: !(Maybe Bool)
    , _cFileId       :: !(Maybe Text)
    , _cCommentId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cHtmlContent'
--
-- * 'cContext'
--
-- * 'cKind'
--
-- * 'cFileTitle'
--
-- * 'cAnchor'
--
-- * 'cContent'
--
-- * 'cReplies'
--
-- * 'cCreatedDate'
--
-- * 'cSelfLink'
--
-- * 'cAuthor'
--
-- * 'cModifiedDate'
--
-- * 'cDeleted'
--
-- * 'cFileId'
--
-- * 'cCommentId'
comment
    :: Comment
comment =
    Comment
    { _cStatus = Nothing
    , _cHtmlContent = Nothing
    , _cContext = Nothing
    , _cKind = "drive#comment"
    , _cFileTitle = Nothing
    , _cAnchor = Nothing
    , _cContent = Nothing
    , _cReplies = Nothing
    , _cCreatedDate = Nothing
    , _cSelfLink = Nothing
    , _cAuthor = Nothing
    , _cModifiedDate = Nothing
    , _cDeleted = Nothing
    , _cFileId = Nothing
    , _cCommentId = Nothing
    }

-- | The status of this comment. Status can be changed by posting a reply to
-- a comment with the desired status. - \"open\" - The comment is still
-- open. - \"resolved\" - The comment has been resolved by one of its
-- replies.
cStatus :: Lens' Comment (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | HTML formatted content for this comment.
cHtmlContent :: Lens' Comment (Maybe Text)
cHtmlContent
  = lens _cHtmlContent (\ s a -> s{_cHtmlContent = a})

-- | The context of the file which is being commented on.
cContext :: Lens' Comment (Maybe CommentContext)
cContext = lens _cContext (\ s a -> s{_cContext = a})

-- | This is always drive#comment.
cKind :: Lens' Comment Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The title of the file which this comment is addressing.
cFileTitle :: Lens' Comment (Maybe Text)
cFileTitle
  = lens _cFileTitle (\ s a -> s{_cFileTitle = a})

-- | A region of the document represented as a JSON string. See anchor
-- documentation for details on how to define and interpret anchor
-- properties.
cAnchor :: Lens' Comment (Maybe Text)
cAnchor = lens _cAnchor (\ s a -> s{_cAnchor = a})

-- | The plain text content used to create this comment. This is not HTML
-- safe and should only be used as a starting point to make edits to a
-- comment\'s content.
cContent :: Lens' Comment (Maybe Text)
cContent = lens _cContent (\ s a -> s{_cContent = a})

-- | Replies to this post.
cReplies :: Lens' Comment [Maybe CommentReply]
cReplies
  = lens _cReplies (\ s a -> s{_cReplies = a}) .
      _Default
      . _Coerce

-- | The date when this comment was first created.
cCreatedDate :: Lens' Comment (Maybe UTCTime)
cCreatedDate
  = lens _cCreatedDate (\ s a -> s{_cCreatedDate = a})

-- | A link back to this comment.
cSelfLink :: Lens' Comment (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The user who wrote this comment.
cAuthor :: Lens' Comment (Maybe (Maybe User))
cAuthor = lens _cAuthor (\ s a -> s{_cAuthor = a})

-- | The date when this comment or any of its replies were last modified.
cModifiedDate :: Lens' Comment (Maybe UTCTime)
cModifiedDate
  = lens _cModifiedDate
      (\ s a -> s{_cModifiedDate = a})

-- | Whether this comment has been deleted. If a comment has been deleted the
-- content will be cleared and this will only represent a comment that once
-- existed.
cDeleted :: Lens' Comment (Maybe Bool)
cDeleted = lens _cDeleted (\ s a -> s{_cDeleted = a})

-- | The file which this comment is addressing.
cFileId :: Lens' Comment (Maybe Text)
cFileId = lens _cFileId (\ s a -> s{_cFileId = a})

-- | The ID of the comment.
cCommentId :: Lens' Comment (Maybe Text)
cCommentId
  = lens _cCommentId (\ s a -> s{_cCommentId = a})

-- | The context of the file which is being commented on.
--
-- /See:/ 'commentContext' smart constructor.
data CommentContext = CommentContext
    { _ccValue :: !(Maybe Text)
    , _ccType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccValue'
--
-- * 'ccType'
commentContext
    :: CommentContext
commentContext =
    CommentContext
    { _ccValue = Nothing
    , _ccType = Nothing
    }

-- | Data representation of the segment of the file being commented on. In
-- the case of a text file for example, this would be the actual text that
-- the comment is about.
ccValue :: Lens' CommentContext (Maybe Text)
ccValue = lens _ccValue (\ s a -> s{_ccValue = a})

-- | The MIME type of the context snippet.
ccType :: Lens' CommentContext (Maybe Text)
ccType = lens _ccType (\ s a -> s{_ccType = a})

-- | A JSON representation of a list of comments on a file in Google Drive.
--
-- /See:/ 'commentList' smart constructor.
data CommentList = CommentList
    { _comNextPageToken :: !(Maybe Text)
    , _comNextLink      :: !(Maybe Text)
    , _comKind          :: !Text
    , _comItems         :: !(Maybe [Maybe Comment])
    , _comSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comNextPageToken'
--
-- * 'comNextLink'
--
-- * 'comKind'
--
-- * 'comItems'
--
-- * 'comSelfLink'
commentList
    :: CommentList
commentList =
    CommentList
    { _comNextPageToken = Nothing
    , _comNextLink = Nothing
    , _comKind = "drive#commentList"
    , _comItems = Nothing
    , _comSelfLink = Nothing
    }

-- | The token to use to request the next page of results.
comNextPageToken :: Lens' CommentList (Maybe Text)
comNextPageToken
  = lens _comNextPageToken
      (\ s a -> s{_comNextPageToken = a})

-- | A link to the next page of comments.
comNextLink :: Lens' CommentList (Maybe Text)
comNextLink
  = lens _comNextLink (\ s a -> s{_comNextLink = a})

-- | This is always drive#commentList.
comKind :: Lens' CommentList Text
comKind = lens _comKind (\ s a -> s{_comKind = a})

-- | List of comments.
comItems :: Lens' CommentList [Maybe Comment]
comItems
  = lens _comItems (\ s a -> s{_comItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
comSelfLink :: Lens' CommentList (Maybe Text)
comSelfLink
  = lens _comSelfLink (\ s a -> s{_comSelfLink = a})

-- | A JSON representation of a reply to a comment on a file in Google Drive.
--
-- /See:/ 'commentReply' smart constructor.
data CommentReply = CommentReply
    { _crrHtmlContent  :: !(Maybe Text)
    , _crrKind         :: !Text
    , _crrContent      :: !(Maybe Text)
    , _crrCreatedDate  :: !(Maybe UTCTime)
    , _crrReplyId      :: !(Maybe Text)
    , _crrAuthor       :: !(Maybe (Maybe User))
    , _crrModifiedDate :: !(Maybe UTCTime)
    , _crrDeleted      :: !(Maybe Bool)
    , _crrVerb         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrHtmlContent'
--
-- * 'crrKind'
--
-- * 'crrContent'
--
-- * 'crrCreatedDate'
--
-- * 'crrReplyId'
--
-- * 'crrAuthor'
--
-- * 'crrModifiedDate'
--
-- * 'crrDeleted'
--
-- * 'crrVerb'
commentReply
    :: CommentReply
commentReply =
    CommentReply
    { _crrHtmlContent = Nothing
    , _crrKind = "drive#commentReply"
    , _crrContent = Nothing
    , _crrCreatedDate = Nothing
    , _crrReplyId = Nothing
    , _crrAuthor = Nothing
    , _crrModifiedDate = Nothing
    , _crrDeleted = Nothing
    , _crrVerb = Nothing
    }

-- | HTML formatted content for this reply.
crrHtmlContent :: Lens' CommentReply (Maybe Text)
crrHtmlContent
  = lens _crrHtmlContent
      (\ s a -> s{_crrHtmlContent = a})

-- | This is always drive#commentReply.
crrKind :: Lens' CommentReply Text
crrKind = lens _crrKind (\ s a -> s{_crrKind = a})

-- | The plain text content used to create this reply. This is not HTML safe
-- and should only be used as a starting point to make edits to a reply\'s
-- content. This field is required on inserts if no verb is specified
-- (resolve\/reopen).
crrContent :: Lens' CommentReply (Maybe Text)
crrContent
  = lens _crrContent (\ s a -> s{_crrContent = a})

-- | The date when this reply was first created.
crrCreatedDate :: Lens' CommentReply (Maybe UTCTime)
crrCreatedDate
  = lens _crrCreatedDate
      (\ s a -> s{_crrCreatedDate = a})

-- | The ID of the reply.
crrReplyId :: Lens' CommentReply (Maybe Text)
crrReplyId
  = lens _crrReplyId (\ s a -> s{_crrReplyId = a})

-- | The user who wrote this reply.
crrAuthor :: Lens' CommentReply (Maybe (Maybe User))
crrAuthor
  = lens _crrAuthor (\ s a -> s{_crrAuthor = a})

-- | The date when this reply was last modified.
crrModifiedDate :: Lens' CommentReply (Maybe UTCTime)
crrModifiedDate
  = lens _crrModifiedDate
      (\ s a -> s{_crrModifiedDate = a})

-- | Whether this reply has been deleted. If a reply has been deleted the
-- content will be cleared and this will only represent a reply that once
-- existed.
crrDeleted :: Lens' CommentReply (Maybe Bool)
crrDeleted
  = lens _crrDeleted (\ s a -> s{_crrDeleted = a})

-- | The action this reply performed to the parent comment. When creating a
-- new reply this is the action to be perform to the parent comment.
-- Possible values are: - \"resolve\" - To resolve a comment. - \"reopen\"
-- - To reopen (un-resolve) a comment.
crrVerb :: Lens' CommentReply (Maybe Text)
crrVerb = lens _crrVerb (\ s a -> s{_crrVerb = a})

-- | A JSON representation of a list of replies to a comment on a file in
-- Google Drive.
--
-- /See:/ 'commentReplyList' smart constructor.
data CommentReplyList = CommentReplyList
    { _crlNextPageToken :: !(Maybe Text)
    , _crlNextLink      :: !(Maybe Text)
    , _crlKind          :: !Text
    , _crlItems         :: !(Maybe [Maybe CommentReply])
    , _crlSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentReplyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crlNextPageToken'
--
-- * 'crlNextLink'
--
-- * 'crlKind'
--
-- * 'crlItems'
--
-- * 'crlSelfLink'
commentReplyList
    :: CommentReplyList
commentReplyList =
    CommentReplyList
    { _crlNextPageToken = Nothing
    , _crlNextLink = Nothing
    , _crlKind = "drive#commentReplyList"
    , _crlItems = Nothing
    , _crlSelfLink = Nothing
    }

-- | The token to use to request the next page of results.
crlNextPageToken :: Lens' CommentReplyList (Maybe Text)
crlNextPageToken
  = lens _crlNextPageToken
      (\ s a -> s{_crlNextPageToken = a})

-- | A link to the next page of replies.
crlNextLink :: Lens' CommentReplyList (Maybe Text)
crlNextLink
  = lens _crlNextLink (\ s a -> s{_crlNextLink = a})

-- | This is always drive#commentReplyList.
crlKind :: Lens' CommentReplyList Text
crlKind = lens _crlKind (\ s a -> s{_crlKind = a})

-- | List of reply.
crlItems :: Lens' CommentReplyList [Maybe CommentReply]
crlItems
  = lens _crlItems (\ s a -> s{_crlItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
crlSelfLink :: Lens' CommentReplyList (Maybe Text)
crlSelfLink
  = lens _crlSelfLink (\ s a -> s{_crlSelfLink = a})

-- | The metadata for a file.
--
-- /See:/ 'file' smart constructor.
data File = File
    { _fOwnedByMe             :: !(Maybe Bool)
    , _fThumbnailLink         :: !(Maybe Text)
    , _fFullFileExtension     :: !(Maybe Text)
    , _fThumbnail             :: !(Maybe FileThumbnail)
    , _fMarkedViewedByMeDate  :: !(Maybe UTCTime)
    , _fEtag                  :: !(Maybe Text)
    , _fFileExtension         :: !(Maybe Text)
    , _fCanComment            :: !(Maybe Bool)
    , _fOwners                :: !(Maybe [Maybe User])
    , _fOwnerNames            :: !(Maybe [Text])
    , _fOpenWithLinks         :: !(Maybe FileOpenWithLinks)
    , _fWebViewLink           :: !(Maybe Text)
    , _fOriginalFilename      :: !(Maybe Text)
    , _fKind                  :: !Text
    , _fLastModifyingUser     :: !(Maybe (Maybe User))
    , _fIconLink              :: !(Maybe Text)
    , _fEmbedLink             :: !(Maybe Text)
    , _fFileSize              :: !(Maybe Int64)
    , _fAppDataContents       :: !(Maybe Bool)
    , _fImageMediaMetadata    :: !(Maybe FileImageMediaMetadata)
    , _fExplicitlyTrashed     :: !(Maybe Bool)
    , _fEditable              :: !(Maybe Bool)
    , _fModifiedByMeDate      :: !(Maybe UTCTime)
    , _fLastViewedByMeDate    :: !(Maybe UTCTime)
    , _fShared                :: !(Maybe Bool)
    , _fMd5Checksum           :: !(Maybe Text)
    , _fFolderColorRgb        :: !(Maybe Text)
    , _fMimeType              :: !(Maybe Text)
    , _fCreatedDate           :: !(Maybe UTCTime)
    , _fSelfLink              :: !(Maybe Text)
    , _fLastModifyingUserName :: !(Maybe Text)
    , _fShareable             :: !(Maybe Bool)
    , _fDownloadUrl           :: !(Maybe Text)
    , _fExportLinks           :: !(Maybe FileExportLinks)
    , _fCopyable              :: !(Maybe Bool)
    , _fParents               :: !(Maybe [Maybe ParentReference])
    , _fSharedWithMeDate      :: !(Maybe UTCTime)
    , _fSpaces                :: !(Maybe [Text])
    , _fVersion               :: !(Maybe Int64)
    , _fUserPermission        :: !(Maybe (Maybe Permission))
    , _fWritersCanShare       :: !(Maybe Bool)
    , _fDefaultOpenWithLink   :: !(Maybe Text)
    , _fId                    :: !(Maybe Text)
    , _fLabels                :: !(Maybe FileLabels)
    , _fModifiedDate          :: !(Maybe UTCTime)
    , _fPermissions           :: !(Maybe [Maybe Permission])
    , _fQuotaBytesUsed        :: !(Maybe Int64)
    , _fTitle                 :: !(Maybe Text)
    , _fAlternateLink         :: !(Maybe Text)
    , _fVideoMediaMetadata    :: !(Maybe FileVideoMediaMetadata)
    , _fHeadRevisionId        :: !(Maybe Text)
    , _fDescription           :: !(Maybe Text)
    , _fSharingUser           :: !(Maybe (Maybe User))
    , _fWebContentLink        :: !(Maybe Text)
    , _fProperties            :: !(Maybe [Maybe Property])
    , _fIndexableText         :: !(Maybe FileIndexableText)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fOwnedByMe'
--
-- * 'fThumbnailLink'
--
-- * 'fFullFileExtension'
--
-- * 'fThumbnail'
--
-- * 'fMarkedViewedByMeDate'
--
-- * 'fEtag'
--
-- * 'fFileExtension'
--
-- * 'fCanComment'
--
-- * 'fOwners'
--
-- * 'fOwnerNames'
--
-- * 'fOpenWithLinks'
--
-- * 'fWebViewLink'
--
-- * 'fOriginalFilename'
--
-- * 'fKind'
--
-- * 'fLastModifyingUser'
--
-- * 'fIconLink'
--
-- * 'fEmbedLink'
--
-- * 'fFileSize'
--
-- * 'fAppDataContents'
--
-- * 'fImageMediaMetadata'
--
-- * 'fExplicitlyTrashed'
--
-- * 'fEditable'
--
-- * 'fModifiedByMeDate'
--
-- * 'fLastViewedByMeDate'
--
-- * 'fShared'
--
-- * 'fMd5Checksum'
--
-- * 'fFolderColorRgb'
--
-- * 'fMimeType'
--
-- * 'fCreatedDate'
--
-- * 'fSelfLink'
--
-- * 'fLastModifyingUserName'
--
-- * 'fShareable'
--
-- * 'fDownloadUrl'
--
-- * 'fExportLinks'
--
-- * 'fCopyable'
--
-- * 'fParents'
--
-- * 'fSharedWithMeDate'
--
-- * 'fSpaces'
--
-- * 'fVersion'
--
-- * 'fUserPermission'
--
-- * 'fWritersCanShare'
--
-- * 'fDefaultOpenWithLink'
--
-- * 'fId'
--
-- * 'fLabels'
--
-- * 'fModifiedDate'
--
-- * 'fPermissions'
--
-- * 'fQuotaBytesUsed'
--
-- * 'fTitle'
--
-- * 'fAlternateLink'
--
-- * 'fVideoMediaMetadata'
--
-- * 'fHeadRevisionId'
--
-- * 'fDescription'
--
-- * 'fSharingUser'
--
-- * 'fWebContentLink'
--
-- * 'fProperties'
--
-- * 'fIndexableText'
file
    :: File
file =
    File
    { _fOwnedByMe = Nothing
    , _fThumbnailLink = Nothing
    , _fFullFileExtension = Nothing
    , _fThumbnail = Nothing
    , _fMarkedViewedByMeDate = Nothing
    , _fEtag = Nothing
    , _fFileExtension = Nothing
    , _fCanComment = Nothing
    , _fOwners = Nothing
    , _fOwnerNames = Nothing
    , _fOpenWithLinks = Nothing
    , _fWebViewLink = Nothing
    , _fOriginalFilename = Nothing
    , _fKind = "drive#file"
    , _fLastModifyingUser = Nothing
    , _fIconLink = Nothing
    , _fEmbedLink = Nothing
    , _fFileSize = Nothing
    , _fAppDataContents = Nothing
    , _fImageMediaMetadata = Nothing
    , _fExplicitlyTrashed = Nothing
    , _fEditable = Nothing
    , _fModifiedByMeDate = Nothing
    , _fLastViewedByMeDate = Nothing
    , _fShared = Nothing
    , _fMd5Checksum = Nothing
    , _fFolderColorRgb = Nothing
    , _fMimeType = Nothing
    , _fCreatedDate = Nothing
    , _fSelfLink = Nothing
    , _fLastModifyingUserName = Nothing
    , _fShareable = Nothing
    , _fDownloadUrl = Nothing
    , _fExportLinks = Nothing
    , _fCopyable = Nothing
    , _fParents = Nothing
    , _fSharedWithMeDate = Nothing
    , _fSpaces = Nothing
    , _fVersion = Nothing
    , _fUserPermission = Nothing
    , _fWritersCanShare = Nothing
    , _fDefaultOpenWithLink = Nothing
    , _fId = Nothing
    , _fLabels = Nothing
    , _fModifiedDate = Nothing
    , _fPermissions = Nothing
    , _fQuotaBytesUsed = Nothing
    , _fTitle = Nothing
    , _fAlternateLink = Nothing
    , _fVideoMediaMetadata = Nothing
    , _fHeadRevisionId = Nothing
    , _fDescription = Nothing
    , _fSharingUser = Nothing
    , _fWebContentLink = Nothing
    , _fProperties = Nothing
    , _fIndexableText = Nothing
    }

-- | Whether the file is owned by the current user.
fOwnedByMe :: Lens' File (Maybe Bool)
fOwnedByMe
  = lens _fOwnedByMe (\ s a -> s{_fOwnedByMe = a})

-- | A short-lived link to the file\'s thumbnail. Typically lasts on the
-- order of hours.
fThumbnailLink :: Lens' File (Maybe Text)
fThumbnailLink
  = lens _fThumbnailLink
      (\ s a -> s{_fThumbnailLink = a})

-- | The full file extension; extracted from the title. May contain multiple
-- concatenated extensions, such as \"tar.gz\". Removing an extension from
-- the title does not clear this field; however, changing the extension on
-- the title does update this field. This field is only populated for files
-- with content stored in Drive; it is not populated for Google Docs or
-- shortcut files.
fFullFileExtension :: Lens' File (Maybe Text)
fFullFileExtension
  = lens _fFullFileExtension
      (\ s a -> s{_fFullFileExtension = a})

-- | Thumbnail for the file. Only accepted on upload and for files that are
-- not already thumbnailed by Google.
fThumbnail :: Lens' File (Maybe FileThumbnail)
fThumbnail
  = lens _fThumbnail (\ s a -> s{_fThumbnail = a})

-- | Time this file was explicitly marked viewed by the user (formatted RFC
-- 3339 timestamp).
fMarkedViewedByMeDate :: Lens' File (Maybe UTCTime)
fMarkedViewedByMeDate
  = lens _fMarkedViewedByMeDate
      (\ s a -> s{_fMarkedViewedByMeDate = a})

-- | ETag of the file.
fEtag :: Lens' File (Maybe Text)
fEtag = lens _fEtag (\ s a -> s{_fEtag = a})

-- | The final component of fullFileExtension with trailing text that does
-- not appear to be part of the extension removed. This field is only
-- populated for files with content stored in Drive; it is not populated
-- for Google Docs or shortcut files.
fFileExtension :: Lens' File (Maybe Text)
fFileExtension
  = lens _fFileExtension
      (\ s a -> s{_fFileExtension = a})

-- | Whether the current user can comment on the file.
fCanComment :: Lens' File (Maybe Bool)
fCanComment
  = lens _fCanComment (\ s a -> s{_fCanComment = a})

-- | The owner(s) of this file.
fOwners :: Lens' File [Maybe User]
fOwners
  = lens _fOwners (\ s a -> s{_fOwners = a}) . _Default
      . _Coerce

-- | Name(s) of the owner(s) of this file.
fOwnerNames :: Lens' File [Text]
fOwnerNames
  = lens _fOwnerNames (\ s a -> s{_fOwnerNames = a}) .
      _Default
      . _Coerce

-- | A map of the id of each of the user\'s apps to a link to open this file
-- with that app. Only populated when the drive.apps.readonly scope is
-- used.
fOpenWithLinks :: Lens' File (Maybe FileOpenWithLinks)
fOpenWithLinks
  = lens _fOpenWithLinks
      (\ s a -> s{_fOpenWithLinks = a})

-- | A link only available on public folders for viewing their static web
-- assets (HTML, CSS, JS, etc) via Google Drive\'s Website Hosting.
fWebViewLink :: Lens' File (Maybe Text)
fWebViewLink
  = lens _fWebViewLink (\ s a -> s{_fWebViewLink = a})

-- | The original filename if the file was uploaded manually, or the original
-- title if the file was inserted through the API. Note that renames of the
-- title will not change the original filename. This field is only
-- populated for files with content stored in Drive; it is not populated
-- for Google Docs or shortcut files.
fOriginalFilename :: Lens' File (Maybe Text)
fOriginalFilename
  = lens _fOriginalFilename
      (\ s a -> s{_fOriginalFilename = a})

-- | The type of file. This is always drive#file.
fKind :: Lens' File Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The last user to modify this file.
fLastModifyingUser :: Lens' File (Maybe (Maybe User))
fLastModifyingUser
  = lens _fLastModifyingUser
      (\ s a -> s{_fLastModifyingUser = a})

-- | A link to the file\'s icon.
fIconLink :: Lens' File (Maybe Text)
fIconLink
  = lens _fIconLink (\ s a -> s{_fIconLink = a})

-- | A link for embedding the file.
fEmbedLink :: Lens' File (Maybe Text)
fEmbedLink
  = lens _fEmbedLink (\ s a -> s{_fEmbedLink = a})

-- | The size of the file in bytes. This field is only populated for files
-- with content stored in Drive; it is not populated for Google Docs or
-- shortcut files.
fFileSize :: Lens' File (Maybe Int64)
fFileSize
  = lens _fFileSize (\ s a -> s{_fFileSize = a})

-- | Whether this file is in the Application Data folder.
fAppDataContents :: Lens' File (Maybe Bool)
fAppDataContents
  = lens _fAppDataContents
      (\ s a -> s{_fAppDataContents = a})

-- | Metadata about image media. This will only be present for image types,
-- and its contents will depend on what can be parsed from the image
-- content.
fImageMediaMetadata :: Lens' File (Maybe FileImageMediaMetadata)
fImageMediaMetadata
  = lens _fImageMediaMetadata
      (\ s a -> s{_fImageMediaMetadata = a})

-- | Whether this file has been explicitly trashed, as opposed to recursively
-- trashed.
fExplicitlyTrashed :: Lens' File (Maybe Bool)
fExplicitlyTrashed
  = lens _fExplicitlyTrashed
      (\ s a -> s{_fExplicitlyTrashed = a})

-- | Whether the file can be edited by the current user.
fEditable :: Lens' File (Maybe Bool)
fEditable
  = lens _fEditable (\ s a -> s{_fEditable = a})

-- | Last time this file was modified by the user (formatted RFC 3339
-- timestamp). Note that setting modifiedDate will also update the
-- modifiedByMe date for the user which set the date.
fModifiedByMeDate :: Lens' File (Maybe UTCTime)
fModifiedByMeDate
  = lens _fModifiedByMeDate
      (\ s a -> s{_fModifiedByMeDate = a})

-- | Last time this file was viewed by the user (formatted RFC 3339
-- timestamp).
fLastViewedByMeDate :: Lens' File (Maybe UTCTime)
fLastViewedByMeDate
  = lens _fLastViewedByMeDate
      (\ s a -> s{_fLastViewedByMeDate = a})

-- | Whether the file has been shared.
fShared :: Lens' File (Maybe Bool)
fShared = lens _fShared (\ s a -> s{_fShared = a})

-- | An MD5 checksum for the content of this file. This field is only
-- populated for files with content stored in Drive; it is not populated
-- for Google Docs or shortcut files.
fMd5Checksum :: Lens' File (Maybe Text)
fMd5Checksum
  = lens _fMd5Checksum (\ s a -> s{_fMd5Checksum = a})

-- | Folder color as an RGB hex string if the file is a folder. The list of
-- supported colors is available in the folderColorPalette field of the
-- About resource. If an unsupported color is specified, it will be changed
-- to the closest color in the palette.
fFolderColorRgb :: Lens' File (Maybe Text)
fFolderColorRgb
  = lens _fFolderColorRgb
      (\ s a -> s{_fFolderColorRgb = a})

-- | The MIME type of the file. This is only mutable on update when uploading
-- new content. This field can be left blank, and the mimetype will be
-- determined from the uploaded content\'s MIME type.
fMimeType :: Lens' File (Maybe Text)
fMimeType
  = lens _fMimeType (\ s a -> s{_fMimeType = a})

-- | Create time for this file (formatted RFC 3339 timestamp).
fCreatedDate :: Lens' File (Maybe UTCTime)
fCreatedDate
  = lens _fCreatedDate (\ s a -> s{_fCreatedDate = a})

-- | A link back to this file.
fSelfLink :: Lens' File (Maybe Text)
fSelfLink
  = lens _fSelfLink (\ s a -> s{_fSelfLink = a})

-- | Name of the last user to modify this file.
fLastModifyingUserName :: Lens' File (Maybe Text)
fLastModifyingUserName
  = lens _fLastModifyingUserName
      (\ s a -> s{_fLastModifyingUserName = a})

-- | Whether the file\'s sharing settings can be modified by the current
-- user.
fShareable :: Lens' File (Maybe Bool)
fShareable
  = lens _fShareable (\ s a -> s{_fShareable = a})

fDownloadUrl :: Lens' File (Maybe Text)
fDownloadUrl
  = lens _fDownloadUrl (\ s a -> s{_fDownloadUrl = a})

-- | Links for exporting Google Docs to specific formats.
fExportLinks :: Lens' File (Maybe FileExportLinks)
fExportLinks
  = lens _fExportLinks (\ s a -> s{_fExportLinks = a})

-- | Whether the file can be copied by the current user.
fCopyable :: Lens' File (Maybe Bool)
fCopyable
  = lens _fCopyable (\ s a -> s{_fCopyable = a})

-- | Collection of parent folders which contain this file. Setting this field
-- will put the file in all of the provided folders. On insert, if no
-- folders are provided, the file will be placed in the default root
-- folder.
fParents :: Lens' File [Maybe ParentReference]
fParents
  = lens _fParents (\ s a -> s{_fParents = a}) .
      _Default
      . _Coerce

-- | Time at which this file was shared with the user (formatted RFC 3339
-- timestamp).
fSharedWithMeDate :: Lens' File (Maybe UTCTime)
fSharedWithMeDate
  = lens _fSharedWithMeDate
      (\ s a -> s{_fSharedWithMeDate = a})

-- | The list of spaces which contain the file. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
fSpaces :: Lens' File [Text]
fSpaces
  = lens _fSpaces (\ s a -> s{_fSpaces = a}) . _Default
      . _Coerce

-- | A monotonically increasing version number for the file. This reflects
-- every change made to the file on the server, even those not visible to
-- the requesting user.
fVersion :: Lens' File (Maybe Int64)
fVersion = lens _fVersion (\ s a -> s{_fVersion = a})

-- | The permissions for the authenticated user on this file.
fUserPermission :: Lens' File (Maybe (Maybe Permission))
fUserPermission
  = lens _fUserPermission
      (\ s a -> s{_fUserPermission = a})

-- | Whether writers can share the document with other users.
fWritersCanShare :: Lens' File (Maybe Bool)
fWritersCanShare
  = lens _fWritersCanShare
      (\ s a -> s{_fWritersCanShare = a})

-- | A link to open this file with the user\'s default app for this file.
-- Only populated when the drive.apps.readonly scope is used.
fDefaultOpenWithLink :: Lens' File (Maybe Text)
fDefaultOpenWithLink
  = lens _fDefaultOpenWithLink
      (\ s a -> s{_fDefaultOpenWithLink = a})

-- | The ID of the file.
fId :: Lens' File (Maybe Text)
fId = lens _fId (\ s a -> s{_fId = a})

-- | A group of labels for the file.
fLabels :: Lens' File (Maybe FileLabels)
fLabels = lens _fLabels (\ s a -> s{_fLabels = a})

-- | Last time this file was modified by anyone (formatted RFC 3339
-- timestamp). This is only mutable on update when the setModifiedDate
-- parameter is set.
fModifiedDate :: Lens' File (Maybe UTCTime)
fModifiedDate
  = lens _fModifiedDate
      (\ s a -> s{_fModifiedDate = a})

-- | The list of permissions for users with access to this file.
fPermissions :: Lens' File [Maybe Permission]
fPermissions
  = lens _fPermissions (\ s a -> s{_fPermissions = a})
      . _Default
      . _Coerce

-- | The number of quota bytes used by this file.
fQuotaBytesUsed :: Lens' File (Maybe Int64)
fQuotaBytesUsed
  = lens _fQuotaBytesUsed
      (\ s a -> s{_fQuotaBytesUsed = a})

-- | The title of this file.
fTitle :: Lens' File (Maybe Text)
fTitle = lens _fTitle (\ s a -> s{_fTitle = a})

-- | A link for opening the file in a relevant Google editor or viewer.
fAlternateLink :: Lens' File (Maybe Text)
fAlternateLink
  = lens _fAlternateLink
      (\ s a -> s{_fAlternateLink = a})

-- | Metadata about video media. This will only be present for video types.
fVideoMediaMetadata :: Lens' File (Maybe FileVideoMediaMetadata)
fVideoMediaMetadata
  = lens _fVideoMediaMetadata
      (\ s a -> s{_fVideoMediaMetadata = a})

-- | The ID of the file\'s head revision. This field is only populated for
-- files with content stored in Drive; it is not populated for Google Docs
-- or shortcut files.
fHeadRevisionId :: Lens' File (Maybe Text)
fHeadRevisionId
  = lens _fHeadRevisionId
      (\ s a -> s{_fHeadRevisionId = a})

-- | A short description of the file.
fDescription :: Lens' File (Maybe Text)
fDescription
  = lens _fDescription (\ s a -> s{_fDescription = a})

-- | User that shared the item with the current user, if available.
fSharingUser :: Lens' File (Maybe (Maybe User))
fSharingUser
  = lens _fSharingUser (\ s a -> s{_fSharingUser = a})

-- | A link for downloading the content of the file in a browser using cookie
-- based authentication. In cases where the content is shared publicly, the
-- content can be downloaded without any credentials.
fWebContentLink :: Lens' File (Maybe Text)
fWebContentLink
  = lens _fWebContentLink
      (\ s a -> s{_fWebContentLink = a})

-- | The list of properties.
fProperties :: Lens' File [Maybe Property]
fProperties
  = lens _fProperties (\ s a -> s{_fProperties = a}) .
      _Default
      . _Coerce

-- | Indexable text attributes for the file (can only be written)
fIndexableText :: Lens' File (Maybe FileIndexableText)
fIndexableText
  = lens _fIndexableText
      (\ s a -> s{_fIndexableText = a})

-- | Links for exporting Google Docs to specific formats.
--
-- /See:/ 'fileExportLinks' smart constructor.
data FileExportLinks =
    FileExportLinks
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileExportLinks' with the minimum fields required to make a request.
--
fileExportLinks
    :: FileExportLinks
fileExportLinks = FileExportLinks

-- | Metadata about image media. This will only be present for image types,
-- and its contents will depend on what can be parsed from the image
-- content.
--
-- /See:/ 'fileImageMediaMetadata' smart constructor.
data FileImageMediaMetadata = FileImageMediaMetadata
    { _fimmRotation         :: !(Maybe Int32)
    , _fimmHeight           :: !(Maybe Int32)
    , _fimmSubjectDistance  :: !(Maybe Int32)
    , _fimmMaxApertureValue :: !(Maybe Float)
    , _fimmIsoSpeed         :: !(Maybe Int32)
    , _fimmLocation         :: !(Maybe FileLocationImageMediaMetadata)
    , _fimmAperture         :: !(Maybe Float)
    , _fimmFocalLength      :: !(Maybe Float)
    , _fimmCameraMake       :: !(Maybe Text)
    , _fimmWidth            :: !(Maybe Int32)
    , _fimmExposureTime     :: !(Maybe Float)
    , _fimmCameraModel      :: !(Maybe Text)
    , _fimmWhiteBalance     :: !(Maybe Text)
    , _fimmDate             :: !(Maybe Text)
    , _fimmLens             :: !(Maybe Text)
    , _fimmFlashUsed        :: !(Maybe Bool)
    , _fimmExposureBias     :: !(Maybe Float)
    , _fimmMeteringMode     :: !(Maybe Text)
    , _fimmExposureMode     :: !(Maybe Text)
    , _fimmSensor           :: !(Maybe Text)
    , _fimmColorSpace       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileImageMediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fimmRotation'
--
-- * 'fimmHeight'
--
-- * 'fimmSubjectDistance'
--
-- * 'fimmMaxApertureValue'
--
-- * 'fimmIsoSpeed'
--
-- * 'fimmLocation'
--
-- * 'fimmAperture'
--
-- * 'fimmFocalLength'
--
-- * 'fimmCameraMake'
--
-- * 'fimmWidth'
--
-- * 'fimmExposureTime'
--
-- * 'fimmCameraModel'
--
-- * 'fimmWhiteBalance'
--
-- * 'fimmDate'
--
-- * 'fimmLens'
--
-- * 'fimmFlashUsed'
--
-- * 'fimmExposureBias'
--
-- * 'fimmMeteringMode'
--
-- * 'fimmExposureMode'
--
-- * 'fimmSensor'
--
-- * 'fimmColorSpace'
fileImageMediaMetadata
    :: FileImageMediaMetadata
fileImageMediaMetadata =
    FileImageMediaMetadata
    { _fimmRotation = Nothing
    , _fimmHeight = Nothing
    , _fimmSubjectDistance = Nothing
    , _fimmMaxApertureValue = Nothing
    , _fimmIsoSpeed = Nothing
    , _fimmLocation = Nothing
    , _fimmAperture = Nothing
    , _fimmFocalLength = Nothing
    , _fimmCameraMake = Nothing
    , _fimmWidth = Nothing
    , _fimmExposureTime = Nothing
    , _fimmCameraModel = Nothing
    , _fimmWhiteBalance = Nothing
    , _fimmDate = Nothing
    , _fimmLens = Nothing
    , _fimmFlashUsed = Nothing
    , _fimmExposureBias = Nothing
    , _fimmMeteringMode = Nothing
    , _fimmExposureMode = Nothing
    , _fimmSensor = Nothing
    , _fimmColorSpace = Nothing
    }

-- | The rotation in clockwise degrees from the image\'s original
-- orientation.
fimmRotation :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmRotation
  = lens _fimmRotation (\ s a -> s{_fimmRotation = a})

-- | The height of the image in pixels.
fimmHeight :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmHeight
  = lens _fimmHeight (\ s a -> s{_fimmHeight = a})

-- | The distance to the subject of the photo, in meters.
fimmSubjectDistance :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmSubjectDistance
  = lens _fimmSubjectDistance
      (\ s a -> s{_fimmSubjectDistance = a})

-- | The smallest f-number of the lens at the focal length used to create the
-- photo (APEX value).
fimmMaxApertureValue :: Lens' FileImageMediaMetadata (Maybe Float)
fimmMaxApertureValue
  = lens _fimmMaxApertureValue
      (\ s a -> s{_fimmMaxApertureValue = a})

-- | The ISO speed used to create the photo.
fimmIsoSpeed :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmIsoSpeed
  = lens _fimmIsoSpeed (\ s a -> s{_fimmIsoSpeed = a})

-- | Geographic location information stored in the image.
fimmLocation :: Lens' FileImageMediaMetadata (Maybe FileLocationImageMediaMetadata)
fimmLocation
  = lens _fimmLocation (\ s a -> s{_fimmLocation = a})

-- | The aperture used to create the photo (f-number).
fimmAperture :: Lens' FileImageMediaMetadata (Maybe Float)
fimmAperture
  = lens _fimmAperture (\ s a -> s{_fimmAperture = a})

-- | The focal length used to create the photo, in millimeters.
fimmFocalLength :: Lens' FileImageMediaMetadata (Maybe Float)
fimmFocalLength
  = lens _fimmFocalLength
      (\ s a -> s{_fimmFocalLength = a})

-- | The make of the camera used to create the photo.
fimmCameraMake :: Lens' FileImageMediaMetadata (Maybe Text)
fimmCameraMake
  = lens _fimmCameraMake
      (\ s a -> s{_fimmCameraMake = a})

-- | The width of the image in pixels.
fimmWidth :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmWidth
  = lens _fimmWidth (\ s a -> s{_fimmWidth = a})

-- | The length of the exposure, in seconds.
fimmExposureTime :: Lens' FileImageMediaMetadata (Maybe Float)
fimmExposureTime
  = lens _fimmExposureTime
      (\ s a -> s{_fimmExposureTime = a})

-- | The model of the camera used to create the photo.
fimmCameraModel :: Lens' FileImageMediaMetadata (Maybe Text)
fimmCameraModel
  = lens _fimmCameraModel
      (\ s a -> s{_fimmCameraModel = a})

-- | The white balance mode used to create the photo.
fimmWhiteBalance :: Lens' FileImageMediaMetadata (Maybe Text)
fimmWhiteBalance
  = lens _fimmWhiteBalance
      (\ s a -> s{_fimmWhiteBalance = a})

-- | The date and time the photo was taken (EXIF format timestamp).
fimmDate :: Lens' FileImageMediaMetadata (Maybe Text)
fimmDate = lens _fimmDate (\ s a -> s{_fimmDate = a})

-- | The lens used to create the photo.
fimmLens :: Lens' FileImageMediaMetadata (Maybe Text)
fimmLens = lens _fimmLens (\ s a -> s{_fimmLens = a})

-- | Whether a flash was used to create the photo.
fimmFlashUsed :: Lens' FileImageMediaMetadata (Maybe Bool)
fimmFlashUsed
  = lens _fimmFlashUsed
      (\ s a -> s{_fimmFlashUsed = a})

-- | The exposure bias of the photo (APEX value).
fimmExposureBias :: Lens' FileImageMediaMetadata (Maybe Float)
fimmExposureBias
  = lens _fimmExposureBias
      (\ s a -> s{_fimmExposureBias = a})

-- | The metering mode used to create the photo.
fimmMeteringMode :: Lens' FileImageMediaMetadata (Maybe Text)
fimmMeteringMode
  = lens _fimmMeteringMode
      (\ s a -> s{_fimmMeteringMode = a})

-- | The exposure mode used to create the photo.
fimmExposureMode :: Lens' FileImageMediaMetadata (Maybe Text)
fimmExposureMode
  = lens _fimmExposureMode
      (\ s a -> s{_fimmExposureMode = a})

-- | The type of sensor used to create the photo.
fimmSensor :: Lens' FileImageMediaMetadata (Maybe Text)
fimmSensor
  = lens _fimmSensor (\ s a -> s{_fimmSensor = a})

-- | The color space of the photo.
fimmColorSpace :: Lens' FileImageMediaMetadata (Maybe Text)
fimmColorSpace
  = lens _fimmColorSpace
      (\ s a -> s{_fimmColorSpace = a})

-- | Indexable text attributes for the file (can only be written)
--
-- /See:/ 'fileIndexableText' smart constructor.
newtype FileIndexableText = FileIndexableText
    { _fitText :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileIndexableText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fitText'
fileIndexableText
    :: FileIndexableText
fileIndexableText =
    FileIndexableText
    { _fitText = Nothing
    }

-- | The text to be indexed for this file.
fitText :: Lens' FileIndexableText (Maybe Text)
fitText = lens _fitText (\ s a -> s{_fitText = a})

-- | A group of labels for the file.
--
-- /See:/ 'fileLabels' smart constructor.
data FileLabels = FileLabels
    { _flViewed     :: !(Maybe Bool)
    , _flTrashed    :: !(Maybe Bool)
    , _flStarred    :: !(Maybe Bool)
    , _flHidden     :: !(Maybe Bool)
    , _flRestricted :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flViewed'
--
-- * 'flTrashed'
--
-- * 'flStarred'
--
-- * 'flHidden'
--
-- * 'flRestricted'
fileLabels
    :: FileLabels
fileLabels =
    FileLabels
    { _flViewed = Nothing
    , _flTrashed = Nothing
    , _flStarred = Nothing
    , _flHidden = Nothing
    , _flRestricted = Nothing
    }

-- | Whether this file has been viewed by this user.
flViewed :: Lens' FileLabels (Maybe Bool)
flViewed = lens _flViewed (\ s a -> s{_flViewed = a})

-- | Whether this file has been trashed. This label applies to all users
-- accessing the file; however, only owners are allowed to see and untrash
-- files.
flTrashed :: Lens' FileLabels (Maybe Bool)
flTrashed
  = lens _flTrashed (\ s a -> s{_flTrashed = a})

-- | Whether this file is starred by the user.
flStarred :: Lens' FileLabels (Maybe Bool)
flStarred
  = lens _flStarred (\ s a -> s{_flStarred = a})

-- | Deprecated.
flHidden :: Lens' FileLabels (Maybe Bool)
flHidden = lens _flHidden (\ s a -> s{_flHidden = a})

-- | Whether viewers and commenters are prevented from downloading, printing,
-- and copying this file.
flRestricted :: Lens' FileLabels (Maybe Bool)
flRestricted
  = lens _flRestricted (\ s a -> s{_flRestricted = a})

-- | A list of files.
--
-- /See:/ 'fileList' smart constructor.
data FileList = FileList
    { _flEtag          :: !(Maybe Text)
    , _flNextPageToken :: !(Maybe Text)
    , _flNextLink      :: !(Maybe Text)
    , _flKind          :: !Text
    , _flItems         :: !(Maybe [Maybe File])
    , _flSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flEtag'
--
-- * 'flNextPageToken'
--
-- * 'flNextLink'
--
-- * 'flKind'
--
-- * 'flItems'
--
-- * 'flSelfLink'
fileList
    :: FileList
fileList =
    FileList
    { _flEtag = Nothing
    , _flNextPageToken = Nothing
    , _flNextLink = Nothing
    , _flKind = "drive#fileList"
    , _flItems = Nothing
    , _flSelfLink = Nothing
    }

-- | The ETag of the list.
flEtag :: Lens' FileList (Maybe Text)
flEtag = lens _flEtag (\ s a -> s{_flEtag = a})

-- | The page token for the next page of files.
flNextPageToken :: Lens' FileList (Maybe Text)
flNextPageToken
  = lens _flNextPageToken
      (\ s a -> s{_flNextPageToken = a})

-- | A link to the next page of files.
flNextLink :: Lens' FileList (Maybe Text)
flNextLink
  = lens _flNextLink (\ s a -> s{_flNextLink = a})

-- | This is always drive#fileList.
flKind :: Lens' FileList Text
flKind = lens _flKind (\ s a -> s{_flKind = a})

-- | The actual list of files.
flItems :: Lens' FileList [Maybe File]
flItems
  = lens _flItems (\ s a -> s{_flItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
flSelfLink :: Lens' FileList (Maybe Text)
flSelfLink
  = lens _flSelfLink (\ s a -> s{_flSelfLink = a})

-- | Geographic location information stored in the image.
--
-- /See:/ 'fileLocationImageMediaMetadata' smart constructor.
data FileLocationImageMediaMetadata = FileLocationImageMediaMetadata
    { _flimmLatitude  :: !(Maybe Double)
    , _flimmAltitude  :: !(Maybe Double)
    , _flimmLongitude :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileLocationImageMediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flimmLatitude'
--
-- * 'flimmAltitude'
--
-- * 'flimmLongitude'
fileLocationImageMediaMetadata
    :: FileLocationImageMediaMetadata
fileLocationImageMediaMetadata =
    FileLocationImageMediaMetadata
    { _flimmLatitude = Nothing
    , _flimmAltitude = Nothing
    , _flimmLongitude = Nothing
    }

-- | The latitude stored in the image.
flimmLatitude :: Lens' FileLocationImageMediaMetadata (Maybe Double)
flimmLatitude
  = lens _flimmLatitude
      (\ s a -> s{_flimmLatitude = a})

-- | The altitude stored in the image.
flimmAltitude :: Lens' FileLocationImageMediaMetadata (Maybe Double)
flimmAltitude
  = lens _flimmAltitude
      (\ s a -> s{_flimmAltitude = a})

-- | The longitude stored in the image.
flimmLongitude :: Lens' FileLocationImageMediaMetadata (Maybe Double)
flimmLongitude
  = lens _flimmLongitude
      (\ s a -> s{_flimmLongitude = a})

-- | A map of the id of each of the user\'s apps to a link to open this file
-- with that app. Only populated when the drive.apps.readonly scope is
-- used.
--
-- /See:/ 'fileOpenWithLinks' smart constructor.
data FileOpenWithLinks =
    FileOpenWithLinks
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileOpenWithLinks' with the minimum fields required to make a request.
--
fileOpenWithLinks
    :: FileOpenWithLinks
fileOpenWithLinks = FileOpenWithLinks

-- | Thumbnail for the file. Only accepted on upload and for files that are
-- not already thumbnailed by Google.
--
-- /See:/ 'fileThumbnail' smart constructor.
data FileThumbnail = FileThumbnail
    { _ftImage    :: !(Maybe Word8)
    , _ftMimeType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileThumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftImage'
--
-- * 'ftMimeType'
fileThumbnail
    :: FileThumbnail
fileThumbnail =
    FileThumbnail
    { _ftImage = Nothing
    , _ftMimeType = Nothing
    }

-- | The URL-safe Base64 encoded bytes of the thumbnail image. It should
-- conform to RFC 4648 section 5.
ftImage :: Lens' FileThumbnail (Maybe Word8)
ftImage = lens _ftImage (\ s a -> s{_ftImage = a})

-- | The MIME type of the thumbnail.
ftMimeType :: Lens' FileThumbnail (Maybe Text)
ftMimeType
  = lens _ftMimeType (\ s a -> s{_ftMimeType = a})

-- | Metadata about video media. This will only be present for video types.
--
-- /See:/ 'fileVideoMediaMetadata' smart constructor.
data FileVideoMediaMetadata = FileVideoMediaMetadata
    { _fvmmHeight         :: !(Maybe Int32)
    , _fvmmWidth          :: !(Maybe Int32)
    , _fvmmDurationMillis :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileVideoMediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fvmmHeight'
--
-- * 'fvmmWidth'
--
-- * 'fvmmDurationMillis'
fileVideoMediaMetadata
    :: FileVideoMediaMetadata
fileVideoMediaMetadata =
    FileVideoMediaMetadata
    { _fvmmHeight = Nothing
    , _fvmmWidth = Nothing
    , _fvmmDurationMillis = Nothing
    }

-- | The height of the video in pixels.
fvmmHeight :: Lens' FileVideoMediaMetadata (Maybe Int32)
fvmmHeight
  = lens _fvmmHeight (\ s a -> s{_fvmmHeight = a})

-- | The width of the video in pixels.
fvmmWidth :: Lens' FileVideoMediaMetadata (Maybe Int32)
fvmmWidth
  = lens _fvmmWidth (\ s a -> s{_fvmmWidth = a})

-- | The duration of the video in milliseconds.
fvmmDurationMillis :: Lens' FileVideoMediaMetadata (Maybe Int64)
fvmmDurationMillis
  = lens _fvmmDurationMillis
      (\ s a -> s{_fvmmDurationMillis = a})

-- | A list of generated IDs which can be provided in insert requests
--
-- /See:/ 'generatedIds' smart constructor.
data GeneratedIds = GeneratedIds
    { _giSpace :: !(Maybe Text)
    , _giKind  :: !Text
    , _giIds   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeneratedIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giSpace'
--
-- * 'giKind'
--
-- * 'giIds'
generatedIds
    :: GeneratedIds
generatedIds =
    GeneratedIds
    { _giSpace = Nothing
    , _giKind = "drive#generatedIds"
    , _giIds = Nothing
    }

-- | The type of file that can be created with these IDs.
giSpace :: Lens' GeneratedIds (Maybe Text)
giSpace = lens _giSpace (\ s a -> s{_giSpace = a})

-- | This is always drive#generatedIds
giKind :: Lens' GeneratedIds Text
giKind = lens _giKind (\ s a -> s{_giKind = a})

-- | The IDs generated for the requesting user in the specified space.
giIds :: Lens' GeneratedIds [Text]
giIds
  = lens _giIds (\ s a -> s{_giIds = a}) . _Default .
      _Coerce

-- | A list of a file\'s parents.
--
-- /See:/ 'parentList' smart constructor.
data ParentList = ParentList
    { _parEtag     :: !(Maybe Text)
    , _parKind     :: !Text
    , _parItems    :: !(Maybe [Maybe ParentReference])
    , _parSelfLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parEtag'
--
-- * 'parKind'
--
-- * 'parItems'
--
-- * 'parSelfLink'
parentList
    :: ParentList
parentList =
    ParentList
    { _parEtag = Nothing
    , _parKind = "drive#parentList"
    , _parItems = Nothing
    , _parSelfLink = Nothing
    }

-- | The ETag of the list.
parEtag :: Lens' ParentList (Maybe Text)
parEtag = lens _parEtag (\ s a -> s{_parEtag = a})

-- | This is always drive#parentList.
parKind :: Lens' ParentList Text
parKind = lens _parKind (\ s a -> s{_parKind = a})

-- | The actual list of parents.
parItems :: Lens' ParentList [Maybe ParentReference]
parItems
  = lens _parItems (\ s a -> s{_parItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
parSelfLink :: Lens' ParentList (Maybe Text)
parSelfLink
  = lens _parSelfLink (\ s a -> s{_parSelfLink = a})

-- | A reference to a file\'s parent.
--
-- /See:/ 'parentReference' smart constructor.
data ParentReference = ParentReference
    { _prParentLink :: !(Maybe Text)
    , _prIsRoot     :: !(Maybe Bool)
    , _prKind       :: !Text
    , _prSelfLink   :: !(Maybe Text)
    , _prId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prParentLink'
--
-- * 'prIsRoot'
--
-- * 'prKind'
--
-- * 'prSelfLink'
--
-- * 'prId'
parentReference
    :: ParentReference
parentReference =
    ParentReference
    { _prParentLink = Nothing
    , _prIsRoot = Nothing
    , _prKind = "drive#parentReference"
    , _prSelfLink = Nothing
    , _prId = Nothing
    }

-- | A link to the parent.
prParentLink :: Lens' ParentReference (Maybe Text)
prParentLink
  = lens _prParentLink (\ s a -> s{_prParentLink = a})

-- | Whether or not the parent is the root folder.
prIsRoot :: Lens' ParentReference (Maybe Bool)
prIsRoot = lens _prIsRoot (\ s a -> s{_prIsRoot = a})

-- | This is always drive#parentReference.
prKind :: Lens' ParentReference Text
prKind = lens _prKind (\ s a -> s{_prKind = a})

-- | A link back to this reference.
prSelfLink :: Lens' ParentReference (Maybe Text)
prSelfLink
  = lens _prSelfLink (\ s a -> s{_prSelfLink = a})

-- | The ID of the parent.
prId :: Lens' ParentReference (Maybe Text)
prId = lens _prId (\ s a -> s{_prId = a})

-- | A permission for a file.
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission
    { _pPhotoLink       :: !(Maybe Text)
    , _pEtag            :: !(Maybe Text)
    , _pWithLink        :: !(Maybe Bool)
    , _pKind            :: !Text
    , _pDomain          :: !(Maybe Text)
    , _pValue           :: !(Maybe Text)
    , _pAdditionalRoles :: !(Maybe [Text])
    , _pRole            :: !(Maybe Text)
    , _pSelfLink        :: !(Maybe Text)
    , _pName            :: !(Maybe Text)
    , _pAuthKey         :: !(Maybe Text)
    , _pEmailAddress    :: !(Maybe Text)
    , _pId              :: !(Maybe Text)
    , _pType            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPhotoLink'
--
-- * 'pEtag'
--
-- * 'pWithLink'
--
-- * 'pKind'
--
-- * 'pDomain'
--
-- * 'pValue'
--
-- * 'pAdditionalRoles'
--
-- * 'pRole'
--
-- * 'pSelfLink'
--
-- * 'pName'
--
-- * 'pAuthKey'
--
-- * 'pEmailAddress'
--
-- * 'pId'
--
-- * 'pType'
permission
    :: Permission
permission =
    Permission
    { _pPhotoLink = Nothing
    , _pEtag = Nothing
    , _pWithLink = Nothing
    , _pKind = "drive#permission"
    , _pDomain = Nothing
    , _pValue = Nothing
    , _pAdditionalRoles = Nothing
    , _pRole = Nothing
    , _pSelfLink = Nothing
    , _pName = Nothing
    , _pAuthKey = Nothing
    , _pEmailAddress = Nothing
    , _pId = Nothing
    , _pType = Nothing
    }

-- | A link to the profile photo, if available.
pPhotoLink :: Lens' Permission (Maybe Text)
pPhotoLink
  = lens _pPhotoLink (\ s a -> s{_pPhotoLink = a})

-- | The ETag of the permission.
pEtag :: Lens' Permission (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | Whether the link is required for this permission.
pWithLink :: Lens' Permission (Maybe Bool)
pWithLink
  = lens _pWithLink (\ s a -> s{_pWithLink = a})

-- | This is always drive#permission.
pKind :: Lens' Permission Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The domain name of the entity this permission refers to. This is an
-- output-only field which is present when the permission type is user,
-- group or domain.
pDomain :: Lens' Permission (Maybe Text)
pDomain = lens _pDomain (\ s a -> s{_pDomain = a})

-- | The email address or domain name for the entity. This is used during
-- inserts and is not populated in responses. When making a
-- drive.permissions.insert request, exactly one of the id or value fields
-- must be specified.
pValue :: Lens' Permission (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | Additional roles for this user. Only commenter is currently allowed.
pAdditionalRoles :: Lens' Permission [Text]
pAdditionalRoles
  = lens _pAdditionalRoles
      (\ s a -> s{_pAdditionalRoles = a})
      . _Default
      . _Coerce

-- | The primary role for this user. Allowed values are: - owner - reader -
-- writer
pRole :: Lens' Permission (Maybe Text)
pRole = lens _pRole (\ s a -> s{_pRole = a})

-- | A link back to this permission.
pSelfLink :: Lens' Permission (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | The name for this permission.
pName :: Lens' Permission (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The authkey parameter required for this permission.
pAuthKey :: Lens' Permission (Maybe Text)
pAuthKey = lens _pAuthKey (\ s a -> s{_pAuthKey = a})

-- | The email address of the user or group this permission refers to. This
-- is an output-only field which is present when the permission type is
-- user or group.
pEmailAddress :: Lens' Permission (Maybe Text)
pEmailAddress
  = lens _pEmailAddress
      (\ s a -> s{_pEmailAddress = a})

-- | The ID of the user this permission refers to, and identical to the
-- permissionId in the About and Files resources. When making a
-- drive.permissions.insert request, exactly one of the id or value fields
-- must be specified.
pId :: Lens' Permission (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The account type. Allowed values are: - user - group - domain - anyone
pType :: Lens' Permission (Maybe Text)
pType = lens _pType (\ s a -> s{_pType = a})

-- | An ID for a user or group as seen in Permission items.
--
-- /See:/ 'permissionId' smart constructor.
data PermissionId = PermissionId
    { _piKind :: !Text
    , _piId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piKind'
--
-- * 'piId'
permissionId
    :: PermissionId
permissionId =
    PermissionId
    { _piKind = "drive#permissionId"
    , _piId = Nothing
    }

-- | This is always drive#permissionId.
piKind :: Lens' PermissionId Text
piKind = lens _piKind (\ s a -> s{_piKind = a})

-- | The permission ID.
piId :: Lens' PermissionId (Maybe Text)
piId = lens _piId (\ s a -> s{_piId = a})

-- | A list of permissions associated with a file.
--
-- /See:/ 'permissionList' smart constructor.
data PermissionList = PermissionList
    { _plEtag     :: !(Maybe Text)
    , _plKind     :: !Text
    , _plItems    :: !(Maybe [Maybe Permission])
    , _plSelfLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plEtag'
--
-- * 'plKind'
--
-- * 'plItems'
--
-- * 'plSelfLink'
permissionList
    :: PermissionList
permissionList =
    PermissionList
    { _plEtag = Nothing
    , _plKind = "drive#permissionList"
    , _plItems = Nothing
    , _plSelfLink = Nothing
    }

-- | The ETag of the list.
plEtag :: Lens' PermissionList (Maybe Text)
plEtag = lens _plEtag (\ s a -> s{_plEtag = a})

-- | This is always drive#permissionList.
plKind :: Lens' PermissionList Text
plKind = lens _plKind (\ s a -> s{_plKind = a})

-- | The actual list of permissions.
plItems :: Lens' PermissionList [Maybe Permission]
plItems
  = lens _plItems (\ s a -> s{_plItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
plSelfLink :: Lens' PermissionList (Maybe Text)
plSelfLink
  = lens _plSelfLink (\ s a -> s{_plSelfLink = a})

-- | A key-value pair attached to a file that is either public or private to
-- an application. The following limits apply to file properties: - Maximum
-- of 100 properties total per file - Maximum of 30 private properties per
-- app - Maximum of 30 public properties - Maximum of 124 bytes size limit
-- on (key + value) string in UTF-8 encoding for a single property.
--
-- /See:/ 'property' smart constructor.
data Property = Property
    { _proEtag       :: !(Maybe Text)
    , _proKind       :: !Text
    , _proValue      :: !(Maybe Text)
    , _proVisibility :: !(Maybe Text)
    , _proSelfLink   :: !(Maybe Text)
    , _proKey        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proEtag'
--
-- * 'proKind'
--
-- * 'proValue'
--
-- * 'proVisibility'
--
-- * 'proSelfLink'
--
-- * 'proKey'
property
    :: Property
property =
    Property
    { _proEtag = Nothing
    , _proKind = "drive#property"
    , _proValue = Nothing
    , _proVisibility = Nothing
    , _proSelfLink = Nothing
    , _proKey = Nothing
    }

-- | ETag of the property.
proEtag :: Lens' Property (Maybe Text)
proEtag = lens _proEtag (\ s a -> s{_proEtag = a})

-- | This is always drive#property.
proKind :: Lens' Property Text
proKind = lens _proKind (\ s a -> s{_proKind = a})

-- | The value of this property.
proValue :: Lens' Property (Maybe Text)
proValue = lens _proValue (\ s a -> s{_proValue = a})

-- | The visibility of this property.
proVisibility :: Lens' Property (Maybe Text)
proVisibility
  = lens _proVisibility
      (\ s a -> s{_proVisibility = a})

-- | The link back to this property.
proSelfLink :: Lens' Property (Maybe Text)
proSelfLink
  = lens _proSelfLink (\ s a -> s{_proSelfLink = a})

-- | The key of this property.
proKey :: Lens' Property (Maybe Text)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | A collection of properties, key-value pairs that are either public or
-- private to an application.
--
-- /See:/ 'propertyList' smart constructor.
data PropertyList = PropertyList
    { _pllEtag     :: !(Maybe Text)
    , _pllKind     :: !Text
    , _pllItems    :: !(Maybe [Maybe Property])
    , _pllSelfLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllEtag'
--
-- * 'pllKind'
--
-- * 'pllItems'
--
-- * 'pllSelfLink'
propertyList
    :: PropertyList
propertyList =
    PropertyList
    { _pllEtag = Nothing
    , _pllKind = "drive#propertyList"
    , _pllItems = Nothing
    , _pllSelfLink = Nothing
    }

-- | The ETag of the list.
pllEtag :: Lens' PropertyList (Maybe Text)
pllEtag = lens _pllEtag (\ s a -> s{_pllEtag = a})

-- | This is always drive#propertyList.
pllKind :: Lens' PropertyList Text
pllKind = lens _pllKind (\ s a -> s{_pllKind = a})

-- | The list of properties.
pllItems :: Lens' PropertyList [Maybe Property]
pllItems
  = lens _pllItems (\ s a -> s{_pllItems = a}) .
      _Default
      . _Coerce

-- | The link back to this list.
pllSelfLink :: Lens' PropertyList (Maybe Text)
pllSelfLink
  = lens _pllSelfLink (\ s a -> s{_pllSelfLink = a})

-- | A revision of a file.
--
-- /See:/ 'revision' smart constructor.
data Revision = Revision
    { _rEtag                   :: !(Maybe Text)
    , _rOriginalFilename       :: !(Maybe Text)
    , _rKind                   :: !Text
    , _rPublishedLink          :: !(Maybe Text)
    , _rPinned                 :: !(Maybe Bool)
    , _rPublished              :: !(Maybe Bool)
    , _rLastModifyingUser      :: !(Maybe (Maybe User))
    , _rFileSize               :: !(Maybe Int64)
    , _rPublishAuto            :: !(Maybe Bool)
    , _rMd5Checksum            :: !(Maybe Text)
    , _rMimeType               :: !(Maybe Text)
    , _rSelfLink               :: !(Maybe Text)
    , _rLastModifyingUserName  :: !(Maybe Text)
    , _rDownloadUrl            :: !(Maybe Text)
    , _rExportLinks            :: !(Maybe RevisionExportLinks)
    , _rPublishedOutsideDomain :: !(Maybe Bool)
    , _rId                     :: !(Maybe Text)
    , _rModifiedDate           :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Revision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEtag'
--
-- * 'rOriginalFilename'
--
-- * 'rKind'
--
-- * 'rPublishedLink'
--
-- * 'rPinned'
--
-- * 'rPublished'
--
-- * 'rLastModifyingUser'
--
-- * 'rFileSize'
--
-- * 'rPublishAuto'
--
-- * 'rMd5Checksum'
--
-- * 'rMimeType'
--
-- * 'rSelfLink'
--
-- * 'rLastModifyingUserName'
--
-- * 'rDownloadUrl'
--
-- * 'rExportLinks'
--
-- * 'rPublishedOutsideDomain'
--
-- * 'rId'
--
-- * 'rModifiedDate'
revision
    :: Revision
revision =
    Revision
    { _rEtag = Nothing
    , _rOriginalFilename = Nothing
    , _rKind = "drive#revision"
    , _rPublishedLink = Nothing
    , _rPinned = Nothing
    , _rPublished = Nothing
    , _rLastModifyingUser = Nothing
    , _rFileSize = Nothing
    , _rPublishAuto = Nothing
    , _rMd5Checksum = Nothing
    , _rMimeType = Nothing
    , _rSelfLink = Nothing
    , _rLastModifyingUserName = Nothing
    , _rDownloadUrl = Nothing
    , _rExportLinks = Nothing
    , _rPublishedOutsideDomain = Nothing
    , _rId = Nothing
    , _rModifiedDate = Nothing
    }

-- | The ETag of the revision.
rEtag :: Lens' Revision (Maybe Text)
rEtag = lens _rEtag (\ s a -> s{_rEtag = a})

-- | The original filename when this revision was created. This will only be
-- populated on files with content stored in Drive.
rOriginalFilename :: Lens' Revision (Maybe Text)
rOriginalFilename
  = lens _rOriginalFilename
      (\ s a -> s{_rOriginalFilename = a})

-- | This is always drive#revision.
rKind :: Lens' Revision Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | A link to the published revision.
rPublishedLink :: Lens' Revision (Maybe Text)
rPublishedLink
  = lens _rPublishedLink
      (\ s a -> s{_rPublishedLink = a})

-- | Whether this revision is pinned to prevent automatic purging. This will
-- only be populated and can only be modified on files with content stored
-- in Drive which are not Google Docs. Revisions can also be pinned when
-- they are created through the drive.files.insert\/update\/copy by using
-- the pinned query parameter.
rPinned :: Lens' Revision (Maybe Bool)
rPinned = lens _rPinned (\ s a -> s{_rPinned = a})

-- | Whether this revision is published. This is only populated and can only
-- be modified for Google Docs.
rPublished :: Lens' Revision (Maybe Bool)
rPublished
  = lens _rPublished (\ s a -> s{_rPublished = a})

-- | The last user to modify this revision.
rLastModifyingUser :: Lens' Revision (Maybe (Maybe User))
rLastModifyingUser
  = lens _rLastModifyingUser
      (\ s a -> s{_rLastModifyingUser = a})

-- | The size of the revision in bytes. This will only be populated on files
-- with content stored in Drive.
rFileSize :: Lens' Revision (Maybe Int64)
rFileSize
  = lens _rFileSize (\ s a -> s{_rFileSize = a})

-- | Whether subsequent revisions will be automatically republished. This is
-- only populated and can only be modified for Google Docs.
rPublishAuto :: Lens' Revision (Maybe Bool)
rPublishAuto
  = lens _rPublishAuto (\ s a -> s{_rPublishAuto = a})

-- | An MD5 checksum for the content of this revision. This will only be
-- populated on files with content stored in Drive.
rMd5Checksum :: Lens' Revision (Maybe Text)
rMd5Checksum
  = lens _rMd5Checksum (\ s a -> s{_rMd5Checksum = a})

-- | The MIME type of the revision.
rMimeType :: Lens' Revision (Maybe Text)
rMimeType
  = lens _rMimeType (\ s a -> s{_rMimeType = a})

-- | A link back to this revision.
rSelfLink :: Lens' Revision (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

-- | Name of the last user to modify this revision.
rLastModifyingUserName :: Lens' Revision (Maybe Text)
rLastModifyingUserName
  = lens _rLastModifyingUserName
      (\ s a -> s{_rLastModifyingUserName = a})

-- | Short term download URL for the file. This will only be populated on
-- files with content stored in Drive.
rDownloadUrl :: Lens' Revision (Maybe Text)
rDownloadUrl
  = lens _rDownloadUrl (\ s a -> s{_rDownloadUrl = a})

-- | Links for exporting Google Docs to specific formats.
rExportLinks :: Lens' Revision (Maybe RevisionExportLinks)
rExportLinks
  = lens _rExportLinks (\ s a -> s{_rExportLinks = a})

-- | Whether this revision is published outside the domain. This is only
-- populated and can only be modified for Google Docs.
rPublishedOutsideDomain :: Lens' Revision (Maybe Bool)
rPublishedOutsideDomain
  = lens _rPublishedOutsideDomain
      (\ s a -> s{_rPublishedOutsideDomain = a})

-- | The ID of the revision.
rId :: Lens' Revision (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | Last time this revision was modified (formatted RFC 3339 timestamp).
rModifiedDate :: Lens' Revision (Maybe UTCTime)
rModifiedDate
  = lens _rModifiedDate
      (\ s a -> s{_rModifiedDate = a})

-- | Links for exporting Google Docs to specific formats.
--
-- /See:/ 'revisionExportLinks' smart constructor.
data RevisionExportLinks =
    RevisionExportLinks
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionExportLinks' with the minimum fields required to make a request.
--
revisionExportLinks
    :: RevisionExportLinks
revisionExportLinks = RevisionExportLinks

-- | A list of revisions of a file.
--
-- /See:/ 'revisionList' smart constructor.
data RevisionList = RevisionList
    { _rlEtag     :: !(Maybe Text)
    , _rlKind     :: !Text
    , _rlItems    :: !(Maybe [Maybe Revision])
    , _rlSelfLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlEtag'
--
-- * 'rlKind'
--
-- * 'rlItems'
--
-- * 'rlSelfLink'
revisionList
    :: RevisionList
revisionList =
    RevisionList
    { _rlEtag = Nothing
    , _rlKind = "drive#revisionList"
    , _rlItems = Nothing
    , _rlSelfLink = Nothing
    }

-- | The ETag of the list.
rlEtag :: Lens' RevisionList (Maybe Text)
rlEtag = lens _rlEtag (\ s a -> s{_rlEtag = a})

-- | This is always drive#revisionList.
rlKind :: Lens' RevisionList Text
rlKind = lens _rlKind (\ s a -> s{_rlKind = a})

-- | The actual list of revisions.
rlItems :: Lens' RevisionList [Maybe Revision]
rlItems
  = lens _rlItems (\ s a -> s{_rlItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
rlSelfLink :: Lens' RevisionList (Maybe Text)
rlSelfLink
  = lens _rlSelfLink (\ s a -> s{_rlSelfLink = a})

-- | The JSON template for a user.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _uIsAuthenticatedUser :: !(Maybe Bool)
    , _uKind                :: !Text
    , _uPicture             :: !(Maybe UserPicture)
    , _uEmailAddress        :: !(Maybe Text)
    , _uDisplayName         :: !(Maybe Text)
    , _uPermissionId        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uIsAuthenticatedUser'
--
-- * 'uKind'
--
-- * 'uPicture'
--
-- * 'uEmailAddress'
--
-- * 'uDisplayName'
--
-- * 'uPermissionId'
user
    :: User
user =
    User
    { _uIsAuthenticatedUser = Nothing
    , _uKind = "drive#user"
    , _uPicture = Nothing
    , _uEmailAddress = Nothing
    , _uDisplayName = Nothing
    , _uPermissionId = Nothing
    }

-- | Whether this user is the same as the authenticated user for whom the
-- request was made.
uIsAuthenticatedUser :: Lens' User (Maybe Bool)
uIsAuthenticatedUser
  = lens _uIsAuthenticatedUser
      (\ s a -> s{_uIsAuthenticatedUser = a})

-- | This is always drive#user.
uKind :: Lens' User Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | The user\'s profile picture.
uPicture :: Lens' User (Maybe UserPicture)
uPicture = lens _uPicture (\ s a -> s{_uPicture = a})

-- | The email address of the user.
uEmailAddress :: Lens' User (Maybe Text)
uEmailAddress
  = lens _uEmailAddress
      (\ s a -> s{_uEmailAddress = a})

-- | A plain text displayable name for this user.
uDisplayName :: Lens' User (Maybe Text)
uDisplayName
  = lens _uDisplayName (\ s a -> s{_uDisplayName = a})

-- | The user\'s ID as visible in the permissions collection.
uPermissionId :: Lens' User (Maybe Text)
uPermissionId
  = lens _uPermissionId
      (\ s a -> s{_uPermissionId = a})

-- | The user\'s profile picture.
--
-- /See:/ 'userPicture' smart constructor.
newtype UserPicture = UserPicture
    { _upUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserPicture' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upUrl'
userPicture
    :: UserPicture
userPicture =
    UserPicture
    { _upUrl = Nothing
    }

-- | A URL that points to a profile picture of this user.
upUrl :: Lens' UserPicture (Maybe Text)
upUrl = lens _upUrl (\ s a -> s{_upUrl = a})
