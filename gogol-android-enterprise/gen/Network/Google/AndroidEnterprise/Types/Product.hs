{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidEnterprise.Types.Product where

import           Network.Google.AndroidEnterprise.Types.Sum
import           Network.Google.Prelude

-- | Group license objects allow you to keep track of licenses (called
-- entitlements) for both free and paid apps. For a free app, a group
-- license is created when an enterprise admin first approves the product
-- in Google Play or when the first entitlement for the product is created
-- for a user via the API. For a paid app, a group license object is only
-- created when an enterprise admin purchases the product in Google Play
-- for the first time. Use the API to query group licenses. A Grouplicenses
-- resource includes the total number of licenses purchased (paid apps
-- only) and the total number of licenses currently in use. In other words,
-- the total number of Entitlements that exist for the product. Only one
-- group license object is created per product and group license objects
-- are never deleted. If a product is unapproved, its group license
-- remains. This allows enterprise admins to keep track of any remaining
-- entitlements for the product.
--
-- /See:/ 'groupLicense' smart constructor.
data GroupLicense =
  GroupLicense'
    { _glKind            :: !Text
    , _glNumProvisioned  :: !(Maybe (Textual Int32))
    , _glNumPurchased    :: !(Maybe (Textual Int32))
    , _glApproval        :: !(Maybe Text)
    , _glPermissions     :: !(Maybe Text)
    , _glProductId       :: !(Maybe Text)
    , _glAcquisitionKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupLicense' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glKind'
--
-- * 'glNumProvisioned'
--
-- * 'glNumPurchased'
--
-- * 'glApproval'
--
-- * 'glPermissions'
--
-- * 'glProductId'
--
-- * 'glAcquisitionKind'
groupLicense
    :: GroupLicense
groupLicense =
  GroupLicense'
    { _glKind = "androidenterprise#groupLicense"
    , _glNumProvisioned = Nothing
    , _glNumPurchased = Nothing
    , _glApproval = Nothing
    , _glPermissions = Nothing
    , _glProductId = Nothing
    , _glAcquisitionKind = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#groupLicense\".
glKind :: Lens' GroupLicense Text
glKind = lens _glKind (\ s a -> s{_glKind = a})

-- | The total number of provisioned licenses for this product. Returned by
-- read operations, but ignored in write operations.
glNumProvisioned :: Lens' GroupLicense (Maybe Int32)
glNumProvisioned
  = lens _glNumProvisioned
      (\ s a -> s{_glNumProvisioned = a})
      . mapping _Coerce

-- | The number of purchased licenses (possibly in multiple purchases). If
-- this field is omitted, then there is no limit on the number of licenses
-- that can be provisioned (for example, if the acquisition kind is
-- \"free\").
glNumPurchased :: Lens' GroupLicense (Maybe Int32)
glNumPurchased
  = lens _glNumPurchased
      (\ s a -> s{_glNumPurchased = a})
      . mapping _Coerce

-- | Whether the product to which this group license relates is currently
-- approved by the enterprise. Products are approved when a group license
-- is first created, but this approval may be revoked by an enterprise
-- admin via Google Play. Unapproved products will not be visible to end
-- users in collections, and new entitlements to them should not normally
-- be created.
glApproval :: Lens' GroupLicense (Maybe Text)
glApproval
  = lens _glApproval (\ s a -> s{_glApproval = a})

-- | The permission approval status of the product. This field is only set if
-- the product is approved. Possible states are: - \"currentApproved\", the
-- current set of permissions is approved, but additional permissions will
-- require the administrator to reapprove the product (If the product was
-- approved without specifying the approved permissions setting, then this
-- is the default behavior.), - \"needsReapproval\", the product has
-- unapproved permissions. No additional product licenses can be assigned
-- until the product is reapproved, - \"allCurrentAndFutureApproved\", the
-- current permissions are approved and any future permission updates will
-- be automatically approved without administrator review.
glPermissions :: Lens' GroupLicense (Maybe Text)
glPermissions
  = lens _glPermissions
      (\ s a -> s{_glPermissions = a})

-- | The ID of the product that the license is for. For example,
-- \"app:com.google.android.gm\".
glProductId :: Lens' GroupLicense (Maybe Text)
glProductId
  = lens _glProductId (\ s a -> s{_glProductId = a})

-- | How this group license was acquired. \"bulkPurchase\" means that this
-- Grouplicenses resource was created because the enterprise purchased
-- licenses for this product; otherwise, the value is \"free\" (for free
-- products).
glAcquisitionKind :: Lens' GroupLicense (Maybe Text)
glAcquisitionKind
  = lens _glAcquisitionKind
      (\ s a -> s{_glAcquisitionKind = a})

instance FromJSON GroupLicense where
        parseJSON
          = withObject "GroupLicense"
              (\ o ->
                 GroupLicense' <$>
                   (o .:? "kind" .!= "androidenterprise#groupLicense")
                     <*> (o .:? "numProvisioned")
                     <*> (o .:? "numPurchased")
                     <*> (o .:? "approval")
                     <*> (o .:? "permissions")
                     <*> (o .:? "productId")
                     <*> (o .:? "acquisitionKind"))

instance ToJSON GroupLicense where
        toJSON GroupLicense'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _glKind),
                  ("numProvisioned" .=) <$> _glNumProvisioned,
                  ("numPurchased" .=) <$> _glNumPurchased,
                  ("approval" .=) <$> _glApproval,
                  ("permissions" .=) <$> _glPermissions,
                  ("productId" .=) <$> _glProductId,
                  ("acquisitionKind" .=) <$> _glAcquisitionKind])

-- | The store page resources for the enterprise.
--
-- /See:/ 'storeLayoutPagesListResponse' smart constructor.
data StoreLayoutPagesListResponse =
  StoreLayoutPagesListResponse'
    { _slplrKind :: !Text
    , _slplrPage :: !(Maybe [StorePage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StoreLayoutPagesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slplrKind'
--
-- * 'slplrPage'
storeLayoutPagesListResponse
    :: StoreLayoutPagesListResponse
storeLayoutPagesListResponse =
  StoreLayoutPagesListResponse'
    { _slplrKind = "androidenterprise#storeLayoutPagesListResponse"
    , _slplrPage = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#storeLayoutPagesListResponse\".
slplrKind :: Lens' StoreLayoutPagesListResponse Text
slplrKind
  = lens _slplrKind (\ s a -> s{_slplrKind = a})

-- | A store page of an enterprise.
slplrPage :: Lens' StoreLayoutPagesListResponse [StorePage]
slplrPage
  = lens _slplrPage (\ s a -> s{_slplrPage = a}) .
      _Default
      . _Coerce

instance FromJSON StoreLayoutPagesListResponse where
        parseJSON
          = withObject "StoreLayoutPagesListResponse"
              (\ o ->
                 StoreLayoutPagesListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#storeLayoutPagesListResponse")
                     <*> (o .:? "page" .!= mempty))

instance ToJSON StoreLayoutPagesListResponse where
        toJSON StoreLayoutPagesListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _slplrKind),
                  ("page" .=) <$> _slplrPage])

-- | A service account that can be used to authenticate as the enterprise to
-- API calls that require such authentication.
--
-- /See:/ 'enterpriseAccount' smart constructor.
data EnterpriseAccount =
  EnterpriseAccount'
    { _eaKind         :: !Text
    , _eaAccountEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterpriseAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaKind'
--
-- * 'eaAccountEmail'
enterpriseAccount
    :: EnterpriseAccount
enterpriseAccount =
  EnterpriseAccount'
    {_eaKind = "androidenterprise#enterpriseAccount", _eaAccountEmail = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#enterpriseAccount\".
eaKind :: Lens' EnterpriseAccount Text
eaKind = lens _eaKind (\ s a -> s{_eaKind = a})

-- | The email address of the service account.
eaAccountEmail :: Lens' EnterpriseAccount (Maybe Text)
eaAccountEmail
  = lens _eaAccountEmail
      (\ s a -> s{_eaAccountEmail = a})

instance FromJSON EnterpriseAccount where
        parseJSON
          = withObject "EnterpriseAccount"
              (\ o ->
                 EnterpriseAccount' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#enterpriseAccount")
                     <*> (o .:? "accountEmail"))

instance ToJSON EnterpriseAccount where
        toJSON EnterpriseAccount'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eaKind),
                  ("accountEmail" .=) <$> _eaAccountEmail])

-- | A typed value for the restriction.
--
-- /See:/ 'appRestrictionsSchemaRestrictionRestrictionValue' smart constructor.
data AppRestrictionsSchemaRestrictionRestrictionValue =
  AppRestrictionsSchemaRestrictionRestrictionValue'
    { _arsrrvValueMultiselect :: !(Maybe [Text])
    , _arsrrvValueBool        :: !(Maybe Bool)
    , _arsrrvValueInteger     :: !(Maybe (Textual Int32))
    , _arsrrvType             :: !(Maybe Text)
    , _arsrrvValueString      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppRestrictionsSchemaRestrictionRestrictionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsrrvValueMultiselect'
--
-- * 'arsrrvValueBool'
--
-- * 'arsrrvValueInteger'
--
-- * 'arsrrvType'
--
-- * 'arsrrvValueString'
appRestrictionsSchemaRestrictionRestrictionValue
    :: AppRestrictionsSchemaRestrictionRestrictionValue
appRestrictionsSchemaRestrictionRestrictionValue =
  AppRestrictionsSchemaRestrictionRestrictionValue'
    { _arsrrvValueMultiselect = Nothing
    , _arsrrvValueBool = Nothing
    , _arsrrvValueInteger = Nothing
    , _arsrrvType = Nothing
    , _arsrrvValueString = Nothing
    }

-- | The list of string values - this will only be present if type is
-- multiselect.
arsrrvValueMultiselect :: Lens' AppRestrictionsSchemaRestrictionRestrictionValue [Text]
arsrrvValueMultiselect
  = lens _arsrrvValueMultiselect
      (\ s a -> s{_arsrrvValueMultiselect = a})
      . _Default
      . _Coerce

-- | The boolean value - this will only be present if type is bool.
arsrrvValueBool :: Lens' AppRestrictionsSchemaRestrictionRestrictionValue (Maybe Bool)
arsrrvValueBool
  = lens _arsrrvValueBool
      (\ s a -> s{_arsrrvValueBool = a})

-- | The integer value - this will only be present if type is integer.
arsrrvValueInteger :: Lens' AppRestrictionsSchemaRestrictionRestrictionValue (Maybe Int32)
arsrrvValueInteger
  = lens _arsrrvValueInteger
      (\ s a -> s{_arsrrvValueInteger = a})
      . mapping _Coerce

-- | The type of the value being provided.
arsrrvType :: Lens' AppRestrictionsSchemaRestrictionRestrictionValue (Maybe Text)
arsrrvType
  = lens _arsrrvType (\ s a -> s{_arsrrvType = a})

-- | The string value - this will be present for types string, choice and
-- hidden.
arsrrvValueString :: Lens' AppRestrictionsSchemaRestrictionRestrictionValue (Maybe Text)
arsrrvValueString
  = lens _arsrrvValueString
      (\ s a -> s{_arsrrvValueString = a})

instance FromJSON
           AppRestrictionsSchemaRestrictionRestrictionValue
         where
        parseJSON
          = withObject
              "AppRestrictionsSchemaRestrictionRestrictionValue"
              (\ o ->
                 AppRestrictionsSchemaRestrictionRestrictionValue' <$>
                   (o .:? "valueMultiselect" .!= mempty) <*>
                     (o .:? "valueBool")
                     <*> (o .:? "valueInteger")
                     <*> (o .:? "type")
                     <*> (o .:? "valueString"))

instance ToJSON
           AppRestrictionsSchemaRestrictionRestrictionValue
         where
        toJSON
          AppRestrictionsSchemaRestrictionRestrictionValue'{..}
          = object
              (catMaybes
                 [("valueMultiselect" .=) <$> _arsrrvValueMultiselect,
                  ("valueBool" .=) <$> _arsrrvValueBool,
                  ("valueInteger" .=) <$> _arsrrvValueInteger,
                  ("type" .=) <$> _arsrrvType,
                  ("valueString" .=) <$> _arsrrvValueString])

--
-- /See:/ 'administratorWebTokenSpecPlaySearch' smart constructor.
data AdministratorWebTokenSpecPlaySearch =
  AdministratorWebTokenSpecPlaySearch'
    { _awtspsEnabled     :: !(Maybe Bool)
    , _awtspsApproveApps :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdministratorWebTokenSpecPlaySearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtspsEnabled'
--
-- * 'awtspsApproveApps'
administratorWebTokenSpecPlaySearch
    :: AdministratorWebTokenSpecPlaySearch
administratorWebTokenSpecPlaySearch =
  AdministratorWebTokenSpecPlaySearch'
    {_awtspsEnabled = Nothing, _awtspsApproveApps = Nothing}

-- | Whether the managed Play Search apps page is displayed. Default is true.
awtspsEnabled :: Lens' AdministratorWebTokenSpecPlaySearch (Maybe Bool)
awtspsEnabled
  = lens _awtspsEnabled
      (\ s a -> s{_awtspsEnabled = a})

-- | Allow access to the iframe in approve mode. Default is false.
awtspsApproveApps :: Lens' AdministratorWebTokenSpecPlaySearch (Maybe Bool)
awtspsApproveApps
  = lens _awtspsApproveApps
      (\ s a -> s{_awtspsApproveApps = a})

instance FromJSON AdministratorWebTokenSpecPlaySearch
         where
        parseJSON
          = withObject "AdministratorWebTokenSpecPlaySearch"
              (\ o ->
                 AdministratorWebTokenSpecPlaySearch' <$>
                   (o .:? "enabled") <*> (o .:? "approveApps"))

instance ToJSON AdministratorWebTokenSpecPlaySearch
         where
        toJSON AdministratorWebTokenSpecPlaySearch'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _awtspsEnabled,
                  ("approveApps" .=) <$> _awtspsApproveApps])

-- | The state of a user\'s device, as accessed by the getState and setState
-- methods on device resources.
--
-- /See:/ 'deviceState' smart constructor.
data DeviceState =
  DeviceState'
    { _dsKind         :: !Text
    , _dsAccountState :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsKind'
--
-- * 'dsAccountState'
deviceState
    :: DeviceState
deviceState =
  DeviceState'
    {_dsKind = "androidenterprise#deviceState", _dsAccountState = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#deviceState\".
dsKind :: Lens' DeviceState Text
dsKind = lens _dsKind (\ s a -> s{_dsKind = a})

-- | The state of the Google account on the device. \"enabled\" indicates
-- that the Google account on the device can be used to access Google
-- services (including Google Play), while \"disabled\" means that it
-- cannot. A new device is initially in the \"disabled\" state.
dsAccountState :: Lens' DeviceState (Maybe Text)
dsAccountState
  = lens _dsAccountState
      (\ s a -> s{_dsAccountState = a})

instance FromJSON DeviceState where
        parseJSON
          = withObject "DeviceState"
              (\ o ->
                 DeviceState' <$>
                   (o .:? "kind" .!= "androidenterprise#deviceState")
                     <*> (o .:? "accountState"))

instance ToJSON DeviceState where
        toJSON DeviceState'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dsKind),
                  ("accountState" .=) <$> _dsAccountState])

-- | The user resources for the group license.
--
-- /See:/ 'groupLicenseUsersListResponse' smart constructor.
data GroupLicenseUsersListResponse =
  GroupLicenseUsersListResponse'
    { _glulrKind :: !Text
    , _glulrUser :: !(Maybe [User])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupLicenseUsersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glulrKind'
--
-- * 'glulrUser'
groupLicenseUsersListResponse
    :: GroupLicenseUsersListResponse
groupLicenseUsersListResponse =
  GroupLicenseUsersListResponse'
    { _glulrKind = "androidenterprise#groupLicenseUsersListResponse"
    , _glulrUser = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#groupLicenseUsersListResponse\".
glulrKind :: Lens' GroupLicenseUsersListResponse Text
glulrKind
  = lens _glulrKind (\ s a -> s{_glulrKind = a})

-- | A user of an enterprise.
glulrUser :: Lens' GroupLicenseUsersListResponse [User]
glulrUser
  = lens _glulrUser (\ s a -> s{_glulrUser = a}) .
      _Default
      . _Coerce

instance FromJSON GroupLicenseUsersListResponse where
        parseJSON
          = withObject "GroupLicenseUsersListResponse"
              (\ o ->
                 GroupLicenseUsersListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#groupLicenseUsersListResponse")
                     <*> (o .:? "user" .!= mempty))

instance ToJSON GroupLicenseUsersListResponse where
        toJSON GroupLicenseUsersListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _glulrKind),
                  ("user" .=) <$> _glulrUser])

--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination =
  TokenPagination'
    { _tpNextPageToken     :: !(Maybe Text)
    , _tpPreviousPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
  TokenPagination' {_tpNextPageToken = Nothing, _tpPreviousPageToken = Nothing}

tpNextPageToken :: Lens' TokenPagination (Maybe Text)
tpNextPageToken
  = lens _tpNextPageToken
      (\ s a -> s{_tpNextPageToken = a})

tpPreviousPageToken :: Lens' TokenPagination (Maybe Text)
tpPreviousPageToken
  = lens _tpPreviousPageToken
      (\ s a -> s{_tpPreviousPageToken = a})

instance FromJSON TokenPagination where
        parseJSON
          = withObject "TokenPagination"
              (\ o ->
                 TokenPagination' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "previousPageToken"))

instance ToJSON TokenPagination where
        toJSON TokenPagination'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tpNextPageToken,
                  ("previousPageToken" .=) <$> _tpPreviousPageToken])

--
-- /See:/ 'administratorWebTokenSpecWebApps' smart constructor.
newtype AdministratorWebTokenSpecWebApps =
  AdministratorWebTokenSpecWebApps'
    { _awtswaEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdministratorWebTokenSpecWebApps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtswaEnabled'
administratorWebTokenSpecWebApps
    :: AdministratorWebTokenSpecWebApps
administratorWebTokenSpecWebApps =
  AdministratorWebTokenSpecWebApps' {_awtswaEnabled = Nothing}

-- | Whether the Web Apps page is displayed. Default is true.
awtswaEnabled :: Lens' AdministratorWebTokenSpecWebApps (Maybe Bool)
awtswaEnabled
  = lens _awtswaEnabled
      (\ s a -> s{_awtswaEnabled = a})

instance FromJSON AdministratorWebTokenSpecWebApps
         where
        parseJSON
          = withObject "AdministratorWebTokenSpecWebApps"
              (\ o ->
                 AdministratorWebTokenSpecWebApps' <$>
                   (o .:? "enabled"))

instance ToJSON AdministratorWebTokenSpecWebApps
         where
        toJSON AdministratorWebTokenSpecWebApps'{..}
          = object
              (catMaybes [("enabled" .=) <$> _awtswaEnabled])

-- | Information on an approval URL.
--
-- /See:/ 'approvalURLInfo' smart constructor.
data ApprovalURLInfo =
  ApprovalURLInfo'
    { _auiApprovalURL :: !(Maybe Text)
    , _auiKind        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApprovalURLInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auiApprovalURL'
--
-- * 'auiKind'
approvalURLInfo
    :: ApprovalURLInfo
approvalURLInfo =
  ApprovalURLInfo'
    {_auiApprovalURL = Nothing, _auiKind = "androidenterprise#approvalUrlInfo"}

-- | A URL that displays a product\'s permissions and that can also be used
-- to approve the product with the Products.approve call.
auiApprovalURL :: Lens' ApprovalURLInfo (Maybe Text)
auiApprovalURL
  = lens _auiApprovalURL
      (\ s a -> s{_auiApprovalURL = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#approvalUrlInfo\".
auiKind :: Lens' ApprovalURLInfo Text
auiKind = lens _auiKind (\ s a -> s{_auiKind = a})

instance FromJSON ApprovalURLInfo where
        parseJSON
          = withObject "ApprovalURLInfo"
              (\ o ->
                 ApprovalURLInfo' <$>
                   (o .:? "approvalUrl") <*>
                     (o .:? "kind" .!=
                        "androidenterprise#approvalUrlInfo"))

instance ToJSON ApprovalURLInfo where
        toJSON ApprovalURLInfo'{..}
          = object
              (catMaybes
                 [("approvalUrl" .=) <$> _auiApprovalURL,
                  Just ("kind" .= _auiKind)])

-- | The managed configurations settings for a product.
--
-- /See:/ 'managedConfigurationsSettingsListResponse' smart constructor.
data ManagedConfigurationsSettingsListResponse =
  ManagedConfigurationsSettingsListResponse'
    { _mcslrKind                          :: !Text
    , _mcslrManagedConfigurationsSettings :: !(Maybe [ManagedConfigurationsSettings])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationsSettingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcslrKind'
--
-- * 'mcslrManagedConfigurationsSettings'
managedConfigurationsSettingsListResponse
    :: ManagedConfigurationsSettingsListResponse
managedConfigurationsSettingsListResponse =
  ManagedConfigurationsSettingsListResponse'
    { _mcslrKind = "androidenterprise#managedConfigurationsSettingsListResponse"
    , _mcslrManagedConfigurationsSettings = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#managedConfigurationsSettingsListResponse\".
mcslrKind :: Lens' ManagedConfigurationsSettingsListResponse Text
mcslrKind
  = lens _mcslrKind (\ s a -> s{_mcslrKind = a})

-- | A managed configurations settings for an app that may be assigned to a
-- group of users in an enterprise.
mcslrManagedConfigurationsSettings :: Lens' ManagedConfigurationsSettingsListResponse [ManagedConfigurationsSettings]
mcslrManagedConfigurationsSettings
  = lens _mcslrManagedConfigurationsSettings
      (\ s a -> s{_mcslrManagedConfigurationsSettings = a})
      . _Default
      . _Coerce

instance FromJSON
           ManagedConfigurationsSettingsListResponse
         where
        parseJSON
          = withObject
              "ManagedConfigurationsSettingsListResponse"
              (\ o ->
                 ManagedConfigurationsSettingsListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#managedConfigurationsSettingsListResponse")
                     <*>
                     (o .:? "managedConfigurationsSettings" .!= mempty))

instance ToJSON
           ManagedConfigurationsSettingsListResponse
         where
        toJSON ManagedConfigurationsSettingsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mcslrKind),
                  ("managedConfigurationsSettings" .=) <$>
                    _mcslrManagedConfigurationsSettings])

-- | A managed property of a managed configuration. The property must match
-- one of the properties in the app restrictions schema of the product.
-- Exactly one of the value fields must be populated, and it must match the
-- property\'s type in the app restrictions schema.
--
-- /See:/ 'managedProperty' smart constructor.
data ManagedProperty =
  ManagedProperty'
    { _mpValueStringArray :: !(Maybe [Text])
    , _mpValueBool        :: !(Maybe Bool)
    , _mpKey              :: !(Maybe Text)
    , _mpValueBundle      :: !(Maybe ManagedPropertyBundle)
    , _mpValueInteger     :: !(Maybe (Textual Int32))
    , _mpValueBundleArray :: !(Maybe [ManagedPropertyBundle])
    , _mpValueString      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpValueStringArray'
--
-- * 'mpValueBool'
--
-- * 'mpKey'
--
-- * 'mpValueBundle'
--
-- * 'mpValueInteger'
--
-- * 'mpValueBundleArray'
--
-- * 'mpValueString'
managedProperty
    :: ManagedProperty
managedProperty =
  ManagedProperty'
    { _mpValueStringArray = Nothing
    , _mpValueBool = Nothing
    , _mpKey = Nothing
    , _mpValueBundle = Nothing
    , _mpValueInteger = Nothing
    , _mpValueBundleArray = Nothing
    , _mpValueString = Nothing
    }

-- | The list of string values - this will only be present if type of the
-- property is multiselect.
mpValueStringArray :: Lens' ManagedProperty [Text]
mpValueStringArray
  = lens _mpValueStringArray
      (\ s a -> s{_mpValueStringArray = a})
      . _Default
      . _Coerce

-- | The boolean value - this will only be present if type of the property is
-- bool.
mpValueBool :: Lens' ManagedProperty (Maybe Bool)
mpValueBool
  = lens _mpValueBool (\ s a -> s{_mpValueBool = a})

-- | The unique key that identifies the property.
mpKey :: Lens' ManagedProperty (Maybe Text)
mpKey = lens _mpKey (\ s a -> s{_mpKey = a})

-- | The bundle of managed properties - this will only be present if type of
-- the property is bundle.
mpValueBundle :: Lens' ManagedProperty (Maybe ManagedPropertyBundle)
mpValueBundle
  = lens _mpValueBundle
      (\ s a -> s{_mpValueBundle = a})

-- | The integer value - this will only be present if type of the property is
-- integer.
mpValueInteger :: Lens' ManagedProperty (Maybe Int32)
mpValueInteger
  = lens _mpValueInteger
      (\ s a -> s{_mpValueInteger = a})
      . mapping _Coerce

-- | The list of bundles of properties - this will only be present if type of
-- the property is bundle_array.
mpValueBundleArray :: Lens' ManagedProperty [ManagedPropertyBundle]
mpValueBundleArray
  = lens _mpValueBundleArray
      (\ s a -> s{_mpValueBundleArray = a})
      . _Default
      . _Coerce

-- | The string value - this will only be present if type of the property is
-- string, choice or hidden.
mpValueString :: Lens' ManagedProperty (Maybe Text)
mpValueString
  = lens _mpValueString
      (\ s a -> s{_mpValueString = a})

instance FromJSON ManagedProperty where
        parseJSON
          = withObject "ManagedProperty"
              (\ o ->
                 ManagedProperty' <$>
                   (o .:? "valueStringArray" .!= mempty) <*>
                     (o .:? "valueBool")
                     <*> (o .:? "key")
                     <*> (o .:? "valueBundle")
                     <*> (o .:? "valueInteger")
                     <*> (o .:? "valueBundleArray" .!= mempty)
                     <*> (o .:? "valueString"))

instance ToJSON ManagedProperty where
        toJSON ManagedProperty'{..}
          = object
              (catMaybes
                 [("valueStringArray" .=) <$> _mpValueStringArray,
                  ("valueBool" .=) <$> _mpValueBool,
                  ("key" .=) <$> _mpKey,
                  ("valueBundle" .=) <$> _mpValueBundle,
                  ("valueInteger" .=) <$> _mpValueInteger,
                  ("valueBundleArray" .=) <$> _mpValueBundleArray,
                  ("valueString" .=) <$> _mpValueString])

-- | The store page resources for the enterprise.
--
-- /See:/ 'storeLayoutClustersListResponse' smart constructor.
data StoreLayoutClustersListResponse =
  StoreLayoutClustersListResponse'
    { _slclrCluster :: !(Maybe [StoreCluster])
    , _slclrKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StoreLayoutClustersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slclrCluster'
--
-- * 'slclrKind'
storeLayoutClustersListResponse
    :: StoreLayoutClustersListResponse
storeLayoutClustersListResponse =
  StoreLayoutClustersListResponse'
    { _slclrCluster = Nothing
    , _slclrKind = "androidenterprise#storeLayoutClustersListResponse"
    }

-- | A store cluster of an enterprise.
slclrCluster :: Lens' StoreLayoutClustersListResponse [StoreCluster]
slclrCluster
  = lens _slclrCluster (\ s a -> s{_slclrCluster = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#storeLayoutClustersListResponse\".
slclrKind :: Lens' StoreLayoutClustersListResponse Text
slclrKind
  = lens _slclrKind (\ s a -> s{_slclrKind = a})

instance FromJSON StoreLayoutClustersListResponse
         where
        parseJSON
          = withObject "StoreLayoutClustersListResponse"
              (\ o ->
                 StoreLayoutClustersListResponse' <$>
                   (o .:? "cluster" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidenterprise#storeLayoutClustersListResponse"))

instance ToJSON StoreLayoutClustersListResponse where
        toJSON StoreLayoutClustersListResponse'{..}
          = object
              (catMaybes
                 [("cluster" .=) <$> _slclrCluster,
                  Just ("kind" .= _slclrKind)])

-- | A managed configuration resource contains the set of managed properties
-- defined by the app developer in the app\'s managed configurations
-- schema, as well as any configuration variables defined for the user.
--
-- /See:/ 'managedConfiguration' smart constructor.
data ManagedConfiguration =
  ManagedConfiguration'
    { _mcManagedProperty        :: !(Maybe [ManagedProperty])
    , _mcKind                   :: !Text
    , _mcConfigurationVariables :: !(Maybe ConfigurationVariables)
    , _mcProductId              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcManagedProperty'
--
-- * 'mcKind'
--
-- * 'mcConfigurationVariables'
--
-- * 'mcProductId'
managedConfiguration
    :: ManagedConfiguration
managedConfiguration =
  ManagedConfiguration'
    { _mcManagedProperty = Nothing
    , _mcKind = "androidenterprise#managedConfiguration"
    , _mcConfigurationVariables = Nothing
    , _mcProductId = Nothing
    }

-- | The set of managed properties for this configuration.
mcManagedProperty :: Lens' ManagedConfiguration [ManagedProperty]
mcManagedProperty
  = lens _mcManagedProperty
      (\ s a -> s{_mcManagedProperty = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#managedConfiguration\".
mcKind :: Lens' ManagedConfiguration Text
mcKind = lens _mcKind (\ s a -> s{_mcKind = a})

-- | Contains the ID of the managed configuration profile and the set of
-- configuration variables (if any) defined for the user.
mcConfigurationVariables :: Lens' ManagedConfiguration (Maybe ConfigurationVariables)
mcConfigurationVariables
  = lens _mcConfigurationVariables
      (\ s a -> s{_mcConfigurationVariables = a})

-- | The ID of the product that the managed configuration is for, e.g.
-- \"app:com.google.android.gm\".
mcProductId :: Lens' ManagedConfiguration (Maybe Text)
mcProductId
  = lens _mcProductId (\ s a -> s{_mcProductId = a})

instance FromJSON ManagedConfiguration where
        parseJSON
          = withObject "ManagedConfiguration"
              (\ o ->
                 ManagedConfiguration' <$>
                   (o .:? "managedProperty" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidenterprise#managedConfiguration")
                     <*> (o .:? "configurationVariables")
                     <*> (o .:? "productId"))

instance ToJSON ManagedConfiguration where
        toJSON ManagedConfiguration'{..}
          = object
              (catMaybes
                 [("managedProperty" .=) <$> _mcManagedProperty,
                  Just ("kind" .= _mcKind),
                  ("configurationVariables" .=) <$>
                    _mcConfigurationVariables,
                  ("productId" .=) <$> _mcProductId])

-- | Definition of a managed Google Play store cluster, a list of products
-- displayed as part of a store page.
--
-- /See:/ 'storeCluster' smart constructor.
data StoreCluster =
  StoreCluster'
    { _scKind        :: !Text
    , _scName        :: !(Maybe [LocalizedText])
    , _scOrderInPage :: !(Maybe Text)
    , _scId          :: !(Maybe Text)
    , _scProductId   :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StoreCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scKind'
--
-- * 'scName'
--
-- * 'scOrderInPage'
--
-- * 'scId'
--
-- * 'scProductId'
storeCluster
    :: StoreCluster
storeCluster =
  StoreCluster'
    { _scKind = "androidenterprise#storeCluster"
    , _scName = Nothing
    , _scOrderInPage = Nothing
    , _scId = Nothing
    , _scProductId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#storeCluster\".
scKind :: Lens' StoreCluster Text
scKind = lens _scKind (\ s a -> s{_scKind = a})

-- | Ordered list of localized strings giving the name of this page. The text
-- displayed is the one that best matches the user locale, or the first
-- entry if there is no good match. There needs to be at least one entry.
scName :: Lens' StoreCluster [LocalizedText]
scName
  = lens _scName (\ s a -> s{_scName = a}) . _Default .
      _Coerce

-- | String (US-ASCII only) used to determine order of this cluster within
-- the parent page\'s elements. Page elements are sorted in lexicographic
-- order of this field. Duplicated values are allowed, but ordering between
-- elements with duplicate order is undefined. The value of this field is
-- never visible to a user, it is used solely for the purpose of defining
-- an ordering. Maximum length is 256 characters.
scOrderInPage :: Lens' StoreCluster (Maybe Text)
scOrderInPage
  = lens _scOrderInPage
      (\ s a -> s{_scOrderInPage = a})

-- | Unique ID of this cluster. Assigned by the server. Immutable once
-- assigned.
scId :: Lens' StoreCluster (Maybe Text)
scId = lens _scId (\ s a -> s{_scId = a})

-- | List of products in the order they are displayed in the cluster. There
-- should not be duplicates within a cluster.
scProductId :: Lens' StoreCluster [Text]
scProductId
  = lens _scProductId (\ s a -> s{_scProductId = a}) .
      _Default
      . _Coerce

instance FromJSON StoreCluster where
        parseJSON
          = withObject "StoreCluster"
              (\ o ->
                 StoreCluster' <$>
                   (o .:? "kind" .!= "androidenterprise#storeCluster")
                     <*> (o .:? "name" .!= mempty)
                     <*> (o .:? "orderInPage")
                     <*> (o .:? "id")
                     <*> (o .:? "productId" .!= mempty))

instance ToJSON StoreCluster where
        toJSON StoreCluster'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _scKind), ("name" .=) <$> _scName,
                  ("orderInPage" .=) <$> _scOrderInPage,
                  ("id" .=) <$> _scId,
                  ("productId" .=) <$> _scProductId])

-- | Specification for a token used to generate iframes. The token specifies
-- what data the admin is allowed to modify and the URI the iframe is
-- allowed to communiate with.
--
-- /See:/ 'administratorWebTokenSpec' smart constructor.
data AdministratorWebTokenSpec =
  AdministratorWebTokenSpec'
    { _awtsParent                :: !(Maybe Text)
    , _awtsPrivateApps           :: !(Maybe AdministratorWebTokenSpecPrivateApps)
    , _awtsPlaySearch            :: !(Maybe AdministratorWebTokenSpecPlaySearch)
    , _awtsKind                  :: !Text
    , _awtsWebApps               :: !(Maybe AdministratorWebTokenSpecWebApps)
    , _awtsPermission            :: !(Maybe [Text])
    , _awtsStoreBuilder          :: !(Maybe AdministratorWebTokenSpecStoreBuilder)
    , _awtsManagedConfigurations :: !(Maybe AdministratorWebTokenSpecManagedConfigurations)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdministratorWebTokenSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtsParent'
--
-- * 'awtsPrivateApps'
--
-- * 'awtsPlaySearch'
--
-- * 'awtsKind'
--
-- * 'awtsWebApps'
--
-- * 'awtsPermission'
--
-- * 'awtsStoreBuilder'
--
-- * 'awtsManagedConfigurations'
administratorWebTokenSpec
    :: AdministratorWebTokenSpec
administratorWebTokenSpec =
  AdministratorWebTokenSpec'
    { _awtsParent = Nothing
    , _awtsPrivateApps = Nothing
    , _awtsPlaySearch = Nothing
    , _awtsKind = "androidenterprise#administratorWebTokenSpec"
    , _awtsWebApps = Nothing
    , _awtsPermission = Nothing
    , _awtsStoreBuilder = Nothing
    , _awtsManagedConfigurations = Nothing
    }

-- | The URI of the parent frame hosting the iframe. To prevent XSS, the
-- iframe may not be hosted at other URIs. This URI must be https.
awtsParent :: Lens' AdministratorWebTokenSpec (Maybe Text)
awtsParent
  = lens _awtsParent (\ s a -> s{_awtsParent = a})

-- | Options for displaying the Private Apps page.
awtsPrivateApps :: Lens' AdministratorWebTokenSpec (Maybe AdministratorWebTokenSpecPrivateApps)
awtsPrivateApps
  = lens _awtsPrivateApps
      (\ s a -> s{_awtsPrivateApps = a})

-- | Options for displaying the managed Play Search apps page.
awtsPlaySearch :: Lens' AdministratorWebTokenSpec (Maybe AdministratorWebTokenSpecPlaySearch)
awtsPlaySearch
  = lens _awtsPlaySearch
      (\ s a -> s{_awtsPlaySearch = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#administratorWebTokenSpec\".
awtsKind :: Lens' AdministratorWebTokenSpec Text
awtsKind = lens _awtsKind (\ s a -> s{_awtsKind = a})

-- | Options for displaying the Web Apps page.
awtsWebApps :: Lens' AdministratorWebTokenSpec (Maybe AdministratorWebTokenSpecWebApps)
awtsWebApps
  = lens _awtsWebApps (\ s a -> s{_awtsWebApps = a})

-- | Deprecated. Use PlaySearch.approveApps.
awtsPermission :: Lens' AdministratorWebTokenSpec [Text]
awtsPermission
  = lens _awtsPermission
      (\ s a -> s{_awtsPermission = a})
      . _Default
      . _Coerce

-- | Options for displaying the Organize apps page.
awtsStoreBuilder :: Lens' AdministratorWebTokenSpec (Maybe AdministratorWebTokenSpecStoreBuilder)
awtsStoreBuilder
  = lens _awtsStoreBuilder
      (\ s a -> s{_awtsStoreBuilder = a})

-- | Options for displaying the Managed Configuration page.
awtsManagedConfigurations :: Lens' AdministratorWebTokenSpec (Maybe AdministratorWebTokenSpecManagedConfigurations)
awtsManagedConfigurations
  = lens _awtsManagedConfigurations
      (\ s a -> s{_awtsManagedConfigurations = a})

instance FromJSON AdministratorWebTokenSpec where
        parseJSON
          = withObject "AdministratorWebTokenSpec"
              (\ o ->
                 AdministratorWebTokenSpec' <$>
                   (o .:? "parent") <*> (o .:? "privateApps") <*>
                     (o .:? "playSearch")
                     <*>
                     (o .:? "kind" .!=
                        "androidenterprise#administratorWebTokenSpec")
                     <*> (o .:? "webApps")
                     <*> (o .:? "permission" .!= mempty)
                     <*> (o .:? "storeBuilder")
                     <*> (o .:? "managedConfigurations"))

instance ToJSON AdministratorWebTokenSpec where
        toJSON AdministratorWebTokenSpec'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _awtsParent,
                  ("privateApps" .=) <$> _awtsPrivateApps,
                  ("playSearch" .=) <$> _awtsPlaySearch,
                  Just ("kind" .= _awtsKind),
                  ("webApps" .=) <$> _awtsWebApps,
                  ("permission" .=) <$> _awtsPermission,
                  ("storeBuilder" .=) <$> _awtsStoreBuilder,
                  ("managedConfigurations" .=) <$>
                    _awtsManagedConfigurations])

-- | A product to be made visible to a user.
--
-- /See:/ 'productVisibility' smart constructor.
data ProductVisibility =
  ProductVisibility'
    { _pvTracks    :: !(Maybe [Text])
    , _pvTrackIds  :: !(Maybe [Text])
    , _pvProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductVisibility' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvTracks'
--
-- * 'pvTrackIds'
--
-- * 'pvProductId'
productVisibility
    :: ProductVisibility
productVisibility =
  ProductVisibility'
    {_pvTracks = Nothing, _pvTrackIds = Nothing, _pvProductId = Nothing}

-- | Deprecated. Use trackIds instead.
pvTracks :: Lens' ProductVisibility [Text]
pvTracks
  = lens _pvTracks (\ s a -> s{_pvTracks = a}) .
      _Default
      . _Coerce

-- | Grants the user visibility to the specified product track(s), identified
-- by trackIds.
pvTrackIds :: Lens' ProductVisibility [Text]
pvTrackIds
  = lens _pvTrackIds (\ s a -> s{_pvTrackIds = a}) .
      _Default
      . _Coerce

-- | The product ID to make visible to the user. Required for each item in
-- the productVisibility list.
pvProductId :: Lens' ProductVisibility (Maybe Text)
pvProductId
  = lens _pvProductId (\ s a -> s{_pvProductId = a})

instance FromJSON ProductVisibility where
        parseJSON
          = withObject "ProductVisibility"
              (\ o ->
                 ProductVisibility' <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "trackIds" .!= mempty)
                     <*> (o .:? "productId"))

instance ToJSON ProductVisibility where
        toJSON ProductVisibility'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _pvTracks,
                  ("trackIds" .=) <$> _pvTrackIds,
                  ("productId" .=) <$> _pvProductId])

-- | A notification of one event relating to an enterprise.
--
-- /See:/ 'notification' smart constructor.
data Notification =
  Notification'
    { _nEnterpriseId                     :: !(Maybe Text)
    , _nNewPermissionsEvent              :: !(Maybe NewPermissionsEvent)
    , _nProductApprovalEvent             :: !(Maybe ProductApprovalEvent)
    , _nProductAvailabilityChangeEvent   :: !(Maybe ProductAvailabilityChangeEvent)
    , _nAppUpdateEvent                   :: !(Maybe AppUpdateEvent)
    , _nInstallFailureEvent              :: !(Maybe InstallFailureEvent)
    , _nNotificationType                 :: !(Maybe Text)
    , _nAppRestrictionsSchemaChangeEvent :: !(Maybe AppRestrictionsSchemaChangeEvent)
    , _nNewDeviceEvent                   :: !(Maybe NewDeviceEvent)
    , _nTimestampMillis                  :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nEnterpriseId'
--
-- * 'nNewPermissionsEvent'
--
-- * 'nProductApprovalEvent'
--
-- * 'nProductAvailabilityChangeEvent'
--
-- * 'nAppUpdateEvent'
--
-- * 'nInstallFailureEvent'
--
-- * 'nNotificationType'
--
-- * 'nAppRestrictionsSchemaChangeEvent'
--
-- * 'nNewDeviceEvent'
--
-- * 'nTimestampMillis'
notification
    :: Notification
notification =
  Notification'
    { _nEnterpriseId = Nothing
    , _nNewPermissionsEvent = Nothing
    , _nProductApprovalEvent = Nothing
    , _nProductAvailabilityChangeEvent = Nothing
    , _nAppUpdateEvent = Nothing
    , _nInstallFailureEvent = Nothing
    , _nNotificationType = Nothing
    , _nAppRestrictionsSchemaChangeEvent = Nothing
    , _nNewDeviceEvent = Nothing
    , _nTimestampMillis = Nothing
    }

-- | The ID of the enterprise for which the notification is sent. This will
-- always be present.
nEnterpriseId :: Lens' Notification (Maybe Text)
nEnterpriseId
  = lens _nEnterpriseId
      (\ s a -> s{_nEnterpriseId = a})

-- | Notifications about new app permissions.
nNewPermissionsEvent :: Lens' Notification (Maybe NewPermissionsEvent)
nNewPermissionsEvent
  = lens _nNewPermissionsEvent
      (\ s a -> s{_nNewPermissionsEvent = a})

-- | Notifications about changes to a product\'s approval status.
nProductApprovalEvent :: Lens' Notification (Maybe ProductApprovalEvent)
nProductApprovalEvent
  = lens _nProductApprovalEvent
      (\ s a -> s{_nProductApprovalEvent = a})

-- | Notifications about product availability changes.
nProductAvailabilityChangeEvent :: Lens' Notification (Maybe ProductAvailabilityChangeEvent)
nProductAvailabilityChangeEvent
  = lens _nProductAvailabilityChangeEvent
      (\ s a -> s{_nProductAvailabilityChangeEvent = a})

-- | Notifications about app updates.
nAppUpdateEvent :: Lens' Notification (Maybe AppUpdateEvent)
nAppUpdateEvent
  = lens _nAppUpdateEvent
      (\ s a -> s{_nAppUpdateEvent = a})

-- | Notifications about an app installation failure.
nInstallFailureEvent :: Lens' Notification (Maybe InstallFailureEvent)
nInstallFailureEvent
  = lens _nInstallFailureEvent
      (\ s a -> s{_nInstallFailureEvent = a})

-- | Type of the notification.
nNotificationType :: Lens' Notification (Maybe Text)
nNotificationType
  = lens _nNotificationType
      (\ s a -> s{_nNotificationType = a})

-- | Notifications about new app restrictions schema changes.
nAppRestrictionsSchemaChangeEvent :: Lens' Notification (Maybe AppRestrictionsSchemaChangeEvent)
nAppRestrictionsSchemaChangeEvent
  = lens _nAppRestrictionsSchemaChangeEvent
      (\ s a -> s{_nAppRestrictionsSchemaChangeEvent = a})

-- | Notifications about new devices.
nNewDeviceEvent :: Lens' Notification (Maybe NewDeviceEvent)
nNewDeviceEvent
  = lens _nNewDeviceEvent
      (\ s a -> s{_nNewDeviceEvent = a})

-- | The time when the notification was published in milliseconds since
-- 1970-01-01T00:00:00Z. This will always be present.
nTimestampMillis :: Lens' Notification (Maybe Int64)
nTimestampMillis
  = lens _nTimestampMillis
      (\ s a -> s{_nTimestampMillis = a})
      . mapping _Coerce

instance FromJSON Notification where
        parseJSON
          = withObject "Notification"
              (\ o ->
                 Notification' <$>
                   (o .:? "enterpriseId") <*>
                     (o .:? "newPermissionsEvent")
                     <*> (o .:? "productApprovalEvent")
                     <*> (o .:? "productAvailabilityChangeEvent")
                     <*> (o .:? "appUpdateEvent")
                     <*> (o .:? "installFailureEvent")
                     <*> (o .:? "notificationType")
                     <*> (o .:? "appRestrictionsSchemaChangeEvent")
                     <*> (o .:? "newDeviceEvent")
                     <*> (o .:? "timestampMillis"))

instance ToJSON Notification where
        toJSON Notification'{..}
          = object
              (catMaybes
                 [("enterpriseId" .=) <$> _nEnterpriseId,
                  ("newPermissionsEvent" .=) <$> _nNewPermissionsEvent,
                  ("productApprovalEvent" .=) <$>
                    _nProductApprovalEvent,
                  ("productAvailabilityChangeEvent" .=) <$>
                    _nProductAvailabilityChangeEvent,
                  ("appUpdateEvent" .=) <$> _nAppUpdateEvent,
                  ("installFailureEvent" .=) <$> _nInstallFailureEvent,
                  ("notificationType" .=) <$> _nNotificationType,
                  ("appRestrictionsSchemaChangeEvent" .=) <$>
                    _nAppRestrictionsSchemaChangeEvent,
                  ("newDeviceEvent" .=) <$> _nNewDeviceEvent,
                  ("timestampMillis" .=) <$> _nTimestampMillis])

--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo =
  PageInfo'
    { _piResultPerPage :: !(Maybe (Textual Int32))
    , _piTotalResults  :: !(Maybe (Textual Int32))
    , _piStartIndex    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
  PageInfo'
    { _piResultPerPage = Nothing
    , _piTotalResults = Nothing
    , _piStartIndex = Nothing
    }

piResultPerPage :: Lens' PageInfo (Maybe Int32)
piResultPerPage
  = lens _piResultPerPage
      (\ s a -> s{_piResultPerPage = a})
      . mapping _Coerce

piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})
      . mapping _Coerce

piStartIndex :: Lens' PageInfo (Maybe Int32)
piStartIndex
  = lens _piStartIndex (\ s a -> s{_piStartIndex = a})
      . mapping _Coerce

instance FromJSON PageInfo where
        parseJSON
          = withObject "PageInfo"
              (\ o ->
                 PageInfo' <$>
                   (o .:? "resultPerPage") <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex"))

instance ToJSON PageInfo where
        toJSON PageInfo'{..}
          = object
              (catMaybes
                 [("resultPerPage" .=) <$> _piResultPerPage,
                  ("totalResults" .=) <$> _piTotalResults,
                  ("startIndex" .=) <$> _piStartIndex])

-- | A product permissions resource represents the set of permissions
-- required by a specific app and whether or not they have been accepted by
-- an enterprise admin. The API can be used to read the set of permissions,
-- and also to update the set to indicate that permissions have been
-- accepted.
--
-- /See:/ 'productPermission' smart constructor.
data ProductPermission =
  ProductPermission'
    { _ppState        :: !(Maybe Text)
    , _ppPermissionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppState'
--
-- * 'ppPermissionId'
productPermission
    :: ProductPermission
productPermission =
  ProductPermission' {_ppState = Nothing, _ppPermissionId = Nothing}

-- | Whether the permission has been accepted or not.
ppState :: Lens' ProductPermission (Maybe Text)
ppState = lens _ppState (\ s a -> s{_ppState = a})

-- | An opaque string uniquely identifying the permission.
ppPermissionId :: Lens' ProductPermission (Maybe Text)
ppPermissionId
  = lens _ppPermissionId
      (\ s a -> s{_ppPermissionId = a})

instance FromJSON ProductPermission where
        parseJSON
          = withObject "ProductPermission"
              (\ o ->
                 ProductPermission' <$>
                   (o .:? "state") <*> (o .:? "permissionId"))

instance ToJSON ProductPermission where
        toJSON ProductPermission'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _ppState,
                  ("permissionId" .=) <$> _ppPermissionId])

-- | An event generated when new permissions are added to an app.
--
-- /See:/ 'newPermissionsEvent' smart constructor.
data NewPermissionsEvent =
  NewPermissionsEvent'
    { _npeRequestedPermissions :: !(Maybe [Text])
    , _npeApprovedPermissions  :: !(Maybe [Text])
    , _npeProductId            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NewPermissionsEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npeRequestedPermissions'
--
-- * 'npeApprovedPermissions'
--
-- * 'npeProductId'
newPermissionsEvent
    :: NewPermissionsEvent
newPermissionsEvent =
  NewPermissionsEvent'
    { _npeRequestedPermissions = Nothing
    , _npeApprovedPermissions = Nothing
    , _npeProductId = Nothing
    }

-- | The set of permissions that the app is currently requesting. Use
-- Permissions.Get on the EMM API to retrieve details about these
-- permissions.
npeRequestedPermissions :: Lens' NewPermissionsEvent [Text]
npeRequestedPermissions
  = lens _npeRequestedPermissions
      (\ s a -> s{_npeRequestedPermissions = a})
      . _Default
      . _Coerce

-- | The set of permissions that the enterprise admin has already approved
-- for this application. Use Permissions.Get on the EMM API to retrieve
-- details about these permissions.
npeApprovedPermissions :: Lens' NewPermissionsEvent [Text]
npeApprovedPermissions
  = lens _npeApprovedPermissions
      (\ s a -> s{_npeApprovedPermissions = a})
      . _Default
      . _Coerce

-- | The id of the product (e.g. \"app:com.google.android.gm\") for which new
-- permissions were added. This field will always be present.
npeProductId :: Lens' NewPermissionsEvent (Maybe Text)
npeProductId
  = lens _npeProductId (\ s a -> s{_npeProductId = a})

instance FromJSON NewPermissionsEvent where
        parseJSON
          = withObject "NewPermissionsEvent"
              (\ o ->
                 NewPermissionsEvent' <$>
                   (o .:? "requestedPermissions" .!= mempty) <*>
                     (o .:? "approvedPermissions" .!= mempty)
                     <*> (o .:? "productId"))

instance ToJSON NewPermissionsEvent where
        toJSON NewPermissionsEvent'{..}
          = object
              (catMaybes
                 [("requestedPermissions" .=) <$>
                    _npeRequestedPermissions,
                  ("approvedPermissions" .=) <$>
                    _npeApprovedPermissions,
                  ("productId" .=) <$> _npeProductId])

-- | An event generated whenever a product\'s availability changes.
--
-- /See:/ 'productAvailabilityChangeEvent' smart constructor.
data ProductAvailabilityChangeEvent =
  ProductAvailabilityChangeEvent'
    { _paceAvailabilityStatus :: !(Maybe Text)
    , _paceProductId          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductAvailabilityChangeEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paceAvailabilityStatus'
--
-- * 'paceProductId'
productAvailabilityChangeEvent
    :: ProductAvailabilityChangeEvent
productAvailabilityChangeEvent =
  ProductAvailabilityChangeEvent'
    {_paceAvailabilityStatus = Nothing, _paceProductId = Nothing}

-- | The new state of the product. This field will always be present.
paceAvailabilityStatus :: Lens' ProductAvailabilityChangeEvent (Maybe Text)
paceAvailabilityStatus
  = lens _paceAvailabilityStatus
      (\ s a -> s{_paceAvailabilityStatus = a})

-- | The id of the product (e.g. \"app:com.google.android.gm\") for which the
-- product availability changed. This field will always be present.
paceProductId :: Lens' ProductAvailabilityChangeEvent (Maybe Text)
paceProductId
  = lens _paceProductId
      (\ s a -> s{_paceProductId = a})

instance FromJSON ProductAvailabilityChangeEvent
         where
        parseJSON
          = withObject "ProductAvailabilityChangeEvent"
              (\ o ->
                 ProductAvailabilityChangeEvent' <$>
                   (o .:? "availabilityStatus") <*> (o .:? "productId"))

instance ToJSON ProductAvailabilityChangeEvent where
        toJSON ProductAvailabilityChangeEvent'{..}
          = object
              (catMaybes
                 [("availabilityStatus" .=) <$>
                    _paceAvailabilityStatus,
                  ("productId" .=) <$> _paceProductId])

-- | An event generated when a product\'s approval status is changed.
--
-- /See:/ 'productApprovalEvent' smart constructor.
data ProductApprovalEvent =
  ProductApprovalEvent'
    { _paeApproved  :: !(Maybe Text)
    , _paeProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductApprovalEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paeApproved'
--
-- * 'paeProductId'
productApprovalEvent
    :: ProductApprovalEvent
productApprovalEvent =
  ProductApprovalEvent' {_paeApproved = Nothing, _paeProductId = Nothing}

-- | Whether the product was approved or unapproved. This field will always
-- be present.
paeApproved :: Lens' ProductApprovalEvent (Maybe Text)
paeApproved
  = lens _paeApproved (\ s a -> s{_paeApproved = a})

-- | The id of the product (e.g. \"app:com.google.android.gm\") for which the
-- approval status has changed. This field will always be present.
paeProductId :: Lens' ProductApprovalEvent (Maybe Text)
paeProductId
  = lens _paeProductId (\ s a -> s{_paeProductId = a})

instance FromJSON ProductApprovalEvent where
        parseJSON
          = withObject "ProductApprovalEvent"
              (\ o ->
                 ProductApprovalEvent' <$>
                   (o .:? "approved") <*> (o .:? "productId"))

instance ToJSON ProductApprovalEvent where
        toJSON ProductApprovalEvent'{..}
          = object
              (catMaybes
                 [("approved" .=) <$> _paeApproved,
                  ("productId" .=) <$> _paeProductId])

-- | A Devices resource represents a mobile device managed by the EMM and
-- belonging to a specific enterprise user.
--
-- /See:/ 'device' smart constructor.
data Device =
  Device'
    { _dKind           :: !Text
    , _dPolicy         :: !(Maybe Policy)
    , _dManagementType :: !(Maybe Text)
    , _dAndroidId      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
--
-- * 'dPolicy'
--
-- * 'dManagementType'
--
-- * 'dAndroidId'
device
    :: Device
device =
  Device'
    { _dKind = "androidenterprise#device"
    , _dPolicy = Nothing
    , _dManagementType = Nothing
    , _dAndroidId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#device\".
dKind :: Lens' Device Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | The policy enforced on the device.
dPolicy :: Lens' Device (Maybe Policy)
dPolicy = lens _dPolicy (\ s a -> s{_dPolicy = a})

-- | Identifies the extent to which the device is controlled by a managed
-- Google Play EMM in various deployment configurations. Possible values
-- include: - \"managedDevice\", a device that has the EMM\'s device policy
-- controller (DPC) as the device owner. - \"managedProfile\", a device
-- that has a profile managed by the DPC (DPC is profile owner) in addition
-- to a separate, personal profile that is unavailable to the DPC. -
-- \"containerApp\", no longer used (deprecated). - \"unmanagedProfile\", a
-- device that has been allowed (by the domain\'s admin, using the Admin
-- Console to enable the privilege) to use managed Google Play, but the
-- profile is itself not owned by a DPC.
dManagementType :: Lens' Device (Maybe Text)
dManagementType
  = lens _dManagementType
      (\ s a -> s{_dManagementType = a})

-- | The Google Play Services Android ID for the device encoded as a
-- lowercase hex string. For example, \"123456789abcdef0\".
dAndroidId :: Lens' Device (Maybe Text)
dAndroidId
  = lens _dAndroidId (\ s a -> s{_dAndroidId = a})

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ o ->
                 Device' <$>
                   (o .:? "kind" .!= "androidenterprise#device") <*>
                     (o .:? "policy")
                     <*> (o .:? "managementType")
                     <*> (o .:? "androidId"))

instance ToJSON Device where
        toJSON Device'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dKind), ("policy" .=) <$> _dPolicy,
                  ("managementType" .=) <$> _dManagementType,
                  ("androidId" .=) <$> _dAndroidId])

-- | The auto-install constraint. Defines a set of restrictions for
-- installation. At least one of the fields must be set.
--
-- /See:/ 'autoInstallConstraint' smart constructor.
data AutoInstallConstraint =
  AutoInstallConstraint'
    { _aicChargingStateConstraint   :: !(Maybe Text)
    , _aicDeviceIdleStateConstraint :: !(Maybe Text)
    , _aicNetworkTypeConstraint     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoInstallConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aicChargingStateConstraint'
--
-- * 'aicDeviceIdleStateConstraint'
--
-- * 'aicNetworkTypeConstraint'
autoInstallConstraint
    :: AutoInstallConstraint
autoInstallConstraint =
  AutoInstallConstraint'
    { _aicChargingStateConstraint = Nothing
    , _aicDeviceIdleStateConstraint = Nothing
    , _aicNetworkTypeConstraint = Nothing
    }

-- | Charging state constraint.
aicChargingStateConstraint :: Lens' AutoInstallConstraint (Maybe Text)
aicChargingStateConstraint
  = lens _aicChargingStateConstraint
      (\ s a -> s{_aicChargingStateConstraint = a})

-- | Device idle state constraint.
aicDeviceIdleStateConstraint :: Lens' AutoInstallConstraint (Maybe Text)
aicDeviceIdleStateConstraint
  = lens _aicDeviceIdleStateConstraint
      (\ s a -> s{_aicDeviceIdleStateConstraint = a})

-- | Network type constraint.
aicNetworkTypeConstraint :: Lens' AutoInstallConstraint (Maybe Text)
aicNetworkTypeConstraint
  = lens _aicNetworkTypeConstraint
      (\ s a -> s{_aicNetworkTypeConstraint = a})

instance FromJSON AutoInstallConstraint where
        parseJSON
          = withObject "AutoInstallConstraint"
              (\ o ->
                 AutoInstallConstraint' <$>
                   (o .:? "chargingStateConstraint") <*>
                     (o .:? "deviceIdleStateConstraint")
                     <*> (o .:? "networkTypeConstraint"))

instance ToJSON AutoInstallConstraint where
        toJSON AutoInstallConstraint'{..}
          = object
              (catMaybes
                 [("chargingStateConstraint" .=) <$>
                    _aicChargingStateConstraint,
                  ("deviceIdleStateConstraint" .=) <$>
                    _aicDeviceIdleStateConstraint,
                  ("networkTypeConstraint" .=) <$>
                    _aicNetworkTypeConstraint])

-- | Credentials that can be used to authenticate as a service account.
--
-- /See:/ 'serviceAccountKey' smart constructor.
data ServiceAccountKey =
  ServiceAccountKey'
    { _sakKind       :: !Text
    , _sakData       :: !(Maybe Text)
    , _sakId         :: !(Maybe Text)
    , _sakType       :: !(Maybe Text)
    , _sakPublicData :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceAccountKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sakKind'
--
-- * 'sakData'
--
-- * 'sakId'
--
-- * 'sakType'
--
-- * 'sakPublicData'
serviceAccountKey
    :: ServiceAccountKey
serviceAccountKey =
  ServiceAccountKey'
    { _sakKind = "androidenterprise#serviceAccountKey"
    , _sakData = Nothing
    , _sakId = Nothing
    , _sakType = Nothing
    , _sakPublicData = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#serviceAccountKey\".
sakKind :: Lens' ServiceAccountKey Text
sakKind = lens _sakKind (\ s a -> s{_sakKind = a})

-- | The body of the private key credentials file, in string format. This is
-- only populated when the ServiceAccountKey is created, and is not stored
-- by Google.
sakData :: Lens' ServiceAccountKey (Maybe Text)
sakData = lens _sakData (\ s a -> s{_sakData = a})

-- | An opaque, unique identifier for this ServiceAccountKey. Assigned by the
-- server.
sakId :: Lens' ServiceAccountKey (Maybe Text)
sakId = lens _sakId (\ s a -> s{_sakId = a})

-- | The file format of the generated key data.
sakType :: Lens' ServiceAccountKey (Maybe Text)
sakType = lens _sakType (\ s a -> s{_sakType = a})

-- | Public key data for the credentials file. This is an X.509 cert. If you
-- are using the googleCredentials key type, this is identical to the cert
-- that can be retrieved by using the X.509 cert url inside of the
-- credentials file.
sakPublicData :: Lens' ServiceAccountKey (Maybe Text)
sakPublicData
  = lens _sakPublicData
      (\ s a -> s{_sakPublicData = a})

instance FromJSON ServiceAccountKey where
        parseJSON
          = withObject "ServiceAccountKey"
              (\ o ->
                 ServiceAccountKey' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#serviceAccountKey")
                     <*> (o .:? "data")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "publicData"))

instance ToJSON ServiceAccountKey where
        toJSON ServiceAccountKey'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sakKind), ("data" .=) <$> _sakData,
                  ("id" .=) <$> _sakId, ("type" .=) <$> _sakType,
                  ("publicData" .=) <$> _sakPublicData])

-- | The install resources for the device.
--
-- /See:/ 'installsListResponse' smart constructor.
data InstallsListResponse =
  InstallsListResponse'
    { _ilrKind    :: !Text
    , _ilrInstall :: !(Maybe [Install])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstallsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrKind'
--
-- * 'ilrInstall'
installsListResponse
    :: InstallsListResponse
installsListResponse =
  InstallsListResponse'
    {_ilrKind = "androidenterprise#installsListResponse", _ilrInstall = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#installsListResponse\".
ilrKind :: Lens' InstallsListResponse Text
ilrKind = lens _ilrKind (\ s a -> s{_ilrKind = a})

-- | An installation of an app for a user on a specific device. The existence
-- of an install implies that the user must have an entitlement to the app.
ilrInstall :: Lens' InstallsListResponse [Install]
ilrInstall
  = lens _ilrInstall (\ s a -> s{_ilrInstall = a}) .
      _Default
      . _Coerce

instance FromJSON InstallsListResponse where
        parseJSON
          = withObject "InstallsListResponse"
              (\ o ->
                 InstallsListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#installsListResponse")
                     <*> (o .:? "install" .!= mempty))

instance ToJSON InstallsListResponse where
        toJSON InstallsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ilrKind),
                  ("install" .=) <$> _ilrInstall])

-- | A restriction in the App Restriction Schema represents a piece of
-- configuration that may be pre-applied.
--
-- /See:/ 'appRestrictionsSchemaRestriction' smart constructor.
data AppRestrictionsSchemaRestriction =
  AppRestrictionsSchemaRestriction'
    { _arsrRestrictionType   :: !(Maybe Text)
    , _arsrEntry             :: !(Maybe [Text])
    , _arsrKey               :: !(Maybe Text)
    , _arsrEntryValue        :: !(Maybe [Text])
    , _arsrDefaultValue      :: !(Maybe AppRestrictionsSchemaRestrictionRestrictionValue)
    , _arsrTitle             :: !(Maybe Text)
    , _arsrDescription       :: !(Maybe Text)
    , _arsrNestedRestriction :: !(Maybe [AppRestrictionsSchemaRestriction])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppRestrictionsSchemaRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsrRestrictionType'
--
-- * 'arsrEntry'
--
-- * 'arsrKey'
--
-- * 'arsrEntryValue'
--
-- * 'arsrDefaultValue'
--
-- * 'arsrTitle'
--
-- * 'arsrDescription'
--
-- * 'arsrNestedRestriction'
appRestrictionsSchemaRestriction
    :: AppRestrictionsSchemaRestriction
appRestrictionsSchemaRestriction =
  AppRestrictionsSchemaRestriction'
    { _arsrRestrictionType = Nothing
    , _arsrEntry = Nothing
    , _arsrKey = Nothing
    , _arsrEntryValue = Nothing
    , _arsrDefaultValue = Nothing
    , _arsrTitle = Nothing
    , _arsrDescription = Nothing
    , _arsrNestedRestriction = Nothing
    }

-- | The type of the restriction.
arsrRestrictionType :: Lens' AppRestrictionsSchemaRestriction (Maybe Text)
arsrRestrictionType
  = lens _arsrRestrictionType
      (\ s a -> s{_arsrRestrictionType = a})

-- | For choice or multiselect restrictions, the list of possible entries\'
-- human-readable names.
arsrEntry :: Lens' AppRestrictionsSchemaRestriction [Text]
arsrEntry
  = lens _arsrEntry (\ s a -> s{_arsrEntry = a}) .
      _Default
      . _Coerce

-- | The unique key that the product uses to identify the restriction, e.g.
-- \"com.google.android.gm.fieldname\".
arsrKey :: Lens' AppRestrictionsSchemaRestriction (Maybe Text)
arsrKey = lens _arsrKey (\ s a -> s{_arsrKey = a})

-- | For choice or multiselect restrictions, the list of possible entries\'
-- machine-readable values. These values should be used in the
-- configuration, either as a single string value for a choice restriction
-- or in a stringArray for a multiselect restriction.
arsrEntryValue :: Lens' AppRestrictionsSchemaRestriction [Text]
arsrEntryValue
  = lens _arsrEntryValue
      (\ s a -> s{_arsrEntryValue = a})
      . _Default
      . _Coerce

-- | The default value of the restriction. bundle and bundleArray
-- restrictions never have a default value.
arsrDefaultValue :: Lens' AppRestrictionsSchemaRestriction (Maybe AppRestrictionsSchemaRestrictionRestrictionValue)
arsrDefaultValue
  = lens _arsrDefaultValue
      (\ s a -> s{_arsrDefaultValue = a})

-- | The name of the restriction.
arsrTitle :: Lens' AppRestrictionsSchemaRestriction (Maybe Text)
arsrTitle
  = lens _arsrTitle (\ s a -> s{_arsrTitle = a})

-- | A longer description of the restriction, giving more detail of what it
-- affects.
arsrDescription :: Lens' AppRestrictionsSchemaRestriction (Maybe Text)
arsrDescription
  = lens _arsrDescription
      (\ s a -> s{_arsrDescription = a})

-- | For bundle or bundleArray restrictions, the list of nested restrictions.
-- A bundle restriction is always nested within a bundleArray restriction,
-- and a bundleArray restriction is at most two levels deep.
arsrNestedRestriction :: Lens' AppRestrictionsSchemaRestriction [AppRestrictionsSchemaRestriction]
arsrNestedRestriction
  = lens _arsrNestedRestriction
      (\ s a -> s{_arsrNestedRestriction = a})
      . _Default
      . _Coerce

instance FromJSON AppRestrictionsSchemaRestriction
         where
        parseJSON
          = withObject "AppRestrictionsSchemaRestriction"
              (\ o ->
                 AppRestrictionsSchemaRestriction' <$>
                   (o .:? "restrictionType") <*>
                     (o .:? "entry" .!= mempty)
                     <*> (o .:? "key")
                     <*> (o .:? "entryValue" .!= mempty)
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "nestedRestriction" .!= mempty))

instance ToJSON AppRestrictionsSchemaRestriction
         where
        toJSON AppRestrictionsSchemaRestriction'{..}
          = object
              (catMaybes
                 [("restrictionType" .=) <$> _arsrRestrictionType,
                  ("entry" .=) <$> _arsrEntry, ("key" .=) <$> _arsrKey,
                  ("entryValue" .=) <$> _arsrEntryValue,
                  ("defaultValue" .=) <$> _arsrDefaultValue,
                  ("title" .=) <$> _arsrTitle,
                  ("description" .=) <$> _arsrDescription,
                  ("nestedRestriction" .=) <$> _arsrNestedRestriction])

-- | The policy for a product.
--
-- /See:/ 'productPolicy' smart constructor.
data ProductPolicy =
  ProductPolicy'
    { _ppTracks            :: !(Maybe [Text])
    , _ppTrackIds          :: !(Maybe [Text])
    , _ppAutoInstallPolicy :: !(Maybe AutoInstallPolicy)
    , _ppProductId         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppTracks'
--
-- * 'ppTrackIds'
--
-- * 'ppAutoInstallPolicy'
--
-- * 'ppProductId'
productPolicy
    :: ProductPolicy
productPolicy =
  ProductPolicy'
    { _ppTracks = Nothing
    , _ppTrackIds = Nothing
    , _ppAutoInstallPolicy = Nothing
    , _ppProductId = Nothing
    }

-- | Deprecated. Use trackIds instead.
ppTracks :: Lens' ProductPolicy [Text]
ppTracks
  = lens _ppTracks (\ s a -> s{_ppTracks = a}) .
      _Default
      . _Coerce

-- | Grants the device visibility to the specified product release track(s),
-- identified by trackIds. The list of release tracks of a product can be
-- obtained by calling Products.Get.
ppTrackIds :: Lens' ProductPolicy [Text]
ppTrackIds
  = lens _ppTrackIds (\ s a -> s{_ppTrackIds = a}) .
      _Default
      . _Coerce

-- | The auto-install policy for the product.
ppAutoInstallPolicy :: Lens' ProductPolicy (Maybe AutoInstallPolicy)
ppAutoInstallPolicy
  = lens _ppAutoInstallPolicy
      (\ s a -> s{_ppAutoInstallPolicy = a})

-- | The ID of the product. For example, \"app:com.google.android.gm\".
ppProductId :: Lens' ProductPolicy (Maybe Text)
ppProductId
  = lens _ppProductId (\ s a -> s{_ppProductId = a})

instance FromJSON ProductPolicy where
        parseJSON
          = withObject "ProductPolicy"
              (\ o ->
                 ProductPolicy' <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "trackIds" .!= mempty)
                     <*> (o .:? "autoInstallPolicy")
                     <*> (o .:? "productId"))

instance ToJSON ProductPolicy where
        toJSON ProductPolicy'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _ppTracks,
                  ("trackIds" .=) <$> _ppTrackIds,
                  ("autoInstallPolicy" .=) <$> _ppAutoInstallPolicy,
                  ("productId" .=) <$> _ppProductId])

-- | This represents an enterprise admin who can manage the enterprise in the
-- managed Google Play store.
--
-- /See:/ 'administrator' smart constructor.
newtype Administrator =
  Administrator'
    { _aEmail :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Administrator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEmail'
administrator
    :: Administrator
administrator = Administrator' {_aEmail = Nothing}

-- | The admin\'s email address.
aEmail :: Lens' Administrator (Maybe Text)
aEmail = lens _aEmail (\ s a -> s{_aEmail = a})

instance FromJSON Administrator where
        parseJSON
          = withObject "Administrator"
              (\ o -> Administrator' <$> (o .:? "email"))

instance ToJSON Administrator where
        toJSON Administrator'{..}
          = object (catMaybes [("email" .=) <$> _aEmail])

-- | The matching user resources.
--
-- /See:/ 'usersListResponse' smart constructor.
data UsersListResponse =
  UsersListResponse'
    { _ulrKind :: !Text
    , _ulrUser :: !(Maybe [User])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulrKind'
--
-- * 'ulrUser'
usersListResponse
    :: UsersListResponse
usersListResponse =
  UsersListResponse'
    {_ulrKind = "androidenterprise#usersListResponse", _ulrUser = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#usersListResponse\".
ulrKind :: Lens' UsersListResponse Text
ulrKind = lens _ulrKind (\ s a -> s{_ulrKind = a})

-- | A user of an enterprise.
ulrUser :: Lens' UsersListResponse [User]
ulrUser
  = lens _ulrUser (\ s a -> s{_ulrUser = a}) . _Default
      . _Coerce

instance FromJSON UsersListResponse where
        parseJSON
          = withObject "UsersListResponse"
              (\ o ->
                 UsersListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#usersListResponse")
                     <*> (o .:? "user" .!= mempty))

instance ToJSON UsersListResponse where
        toJSON UsersListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ulrKind),
                  ("user" .=) <$> _ulrUser])

--
-- /See:/ 'administratorWebTokenSpecStoreBuilder' smart constructor.
newtype AdministratorWebTokenSpecStoreBuilder =
  AdministratorWebTokenSpecStoreBuilder'
    { _awtssbEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdministratorWebTokenSpecStoreBuilder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtssbEnabled'
administratorWebTokenSpecStoreBuilder
    :: AdministratorWebTokenSpecStoreBuilder
administratorWebTokenSpecStoreBuilder =
  AdministratorWebTokenSpecStoreBuilder' {_awtssbEnabled = Nothing}

-- | Whether the Organize apps page is displayed. Default is true.
awtssbEnabled :: Lens' AdministratorWebTokenSpecStoreBuilder (Maybe Bool)
awtssbEnabled
  = lens _awtssbEnabled
      (\ s a -> s{_awtssbEnabled = a})

instance FromJSON
           AdministratorWebTokenSpecStoreBuilder
         where
        parseJSON
          = withObject "AdministratorWebTokenSpecStoreBuilder"
              (\ o ->
                 AdministratorWebTokenSpecStoreBuilder' <$>
                   (o .:? "enabled"))

instance ToJSON AdministratorWebTokenSpecStoreBuilder
         where
        toJSON AdministratorWebTokenSpecStoreBuilder'{..}
          = object
              (catMaybes [("enabled" .=) <$> _awtssbEnabled])

-- | An AuthenticationToken is used by the EMM\'s device policy client on a
-- device to provision the given EMM-managed user on that device.
--
-- /See:/ 'authenticationToken' smart constructor.
data AuthenticationToken =
  AuthenticationToken'
    { _atKind  :: !Text
    , _atToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AuthenticationToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atKind'
--
-- * 'atToken'
authenticationToken
    :: AuthenticationToken
authenticationToken =
  AuthenticationToken'
    {_atKind = "androidenterprise#authenticationToken", _atToken = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#authenticationToken\".
atKind :: Lens' AuthenticationToken Text
atKind = lens _atKind (\ s a -> s{_atKind = a})

-- | The authentication token to be passed to the device policy client on the
-- device where it can be used to provision the account for which this
-- token was generated.
atToken :: Lens' AuthenticationToken (Maybe Text)
atToken = lens _atToken (\ s a -> s{_atToken = a})

instance FromJSON AuthenticationToken where
        parseJSON
          = withObject "AuthenticationToken"
              (\ o ->
                 AuthenticationToken' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#authenticationToken")
                     <*> (o .:? "token"))

instance ToJSON AuthenticationToken where
        toJSON AuthenticationToken'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _atKind),
                  ("token" .=) <$> _atToken])

-- | A managed configurations settings resource contains the set of managed
-- properties that have been configured for an Android app to be applied to
-- a set of users. The app\'s developer would have defined configurable
-- properties in the managed configurations schema.
--
-- /See:/ 'managedConfigurationsSettings' smart constructor.
data ManagedConfigurationsSettings =
  ManagedConfigurationsSettings'
    { _mcsLastUpdatedTimestampMillis :: !(Maybe (Textual Int64))
    , _mcsManagedProperty            :: !(Maybe [ManagedProperty])
    , _mcsKind                       :: !Text
    , _mcsMcmId                      :: !(Maybe Text)
    , _mcsName                       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsLastUpdatedTimestampMillis'
--
-- * 'mcsManagedProperty'
--
-- * 'mcsKind'
--
-- * 'mcsMcmId'
--
-- * 'mcsName'
managedConfigurationsSettings
    :: ManagedConfigurationsSettings
managedConfigurationsSettings =
  ManagedConfigurationsSettings'
    { _mcsLastUpdatedTimestampMillis = Nothing
    , _mcsManagedProperty = Nothing
    , _mcsKind = "androidenterprise#managedConfigurationsSettings"
    , _mcsMcmId = Nothing
    , _mcsName = Nothing
    }

-- | The last updated time of the managed configuration settings in
-- milliseconds since 1970-01-01T00:00:00Z.
mcsLastUpdatedTimestampMillis :: Lens' ManagedConfigurationsSettings (Maybe Int64)
mcsLastUpdatedTimestampMillis
  = lens _mcsLastUpdatedTimestampMillis
      (\ s a -> s{_mcsLastUpdatedTimestampMillis = a})
      . mapping _Coerce

-- | The set of managed properties for this configuration.
mcsManagedProperty :: Lens' ManagedConfigurationsSettings [ManagedProperty]
mcsManagedProperty
  = lens _mcsManagedProperty
      (\ s a -> s{_mcsManagedProperty = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#managedConfigurationsSettings\".
mcsKind :: Lens' ManagedConfigurationsSettings Text
mcsKind = lens _mcsKind (\ s a -> s{_mcsKind = a})

-- | The ID of the managed configurations settings.
mcsMcmId :: Lens' ManagedConfigurationsSettings (Maybe Text)
mcsMcmId = lens _mcsMcmId (\ s a -> s{_mcsMcmId = a})

-- | The name of the managed configurations settings.
mcsName :: Lens' ManagedConfigurationsSettings (Maybe Text)
mcsName = lens _mcsName (\ s a -> s{_mcsName = a})

instance FromJSON ManagedConfigurationsSettings where
        parseJSON
          = withObject "ManagedConfigurationsSettings"
              (\ o ->
                 ManagedConfigurationsSettings' <$>
                   (o .:? "lastUpdatedTimestampMillis") <*>
                     (o .:? "managedProperty" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "androidenterprise#managedConfigurationsSettings")
                     <*> (o .:? "mcmId")
                     <*> (o .:? "name"))

instance ToJSON ManagedConfigurationsSettings where
        toJSON ManagedConfigurationsSettings'{..}
          = object
              (catMaybes
                 [("lastUpdatedTimestampMillis" .=) <$>
                    _mcsLastUpdatedTimestampMillis,
                  ("managedProperty" .=) <$> _mcsManagedProperty,
                  Just ("kind" .= _mcsKind),
                  ("mcmId" .=) <$> _mcsMcmId,
                  ("name" .=) <$> _mcsName])

-- | This represents a single version of the app.
--
-- /See:/ 'appVersion' smart constructor.
data AppVersion =
  AppVersion'
    { _avTrack         :: !(Maybe Text)
    , _avVersionCode   :: !(Maybe (Textual Int32))
    , _avVersionString :: !(Maybe Text)
    , _avTrackId       :: !(Maybe [Text])
    , _avIsProduction  :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avTrack'
--
-- * 'avVersionCode'
--
-- * 'avVersionString'
--
-- * 'avTrackId'
--
-- * 'avIsProduction'
appVersion
    :: AppVersion
appVersion =
  AppVersion'
    { _avTrack = Nothing
    , _avVersionCode = Nothing
    , _avVersionString = Nothing
    , _avTrackId = Nothing
    , _avIsProduction = Nothing
    }

-- | Deprecated, use trackId instead.
avTrack :: Lens' AppVersion (Maybe Text)
avTrack = lens _avTrack (\ s a -> s{_avTrack = a})

-- | Unique increasing identifier for the app version.
avVersionCode :: Lens' AppVersion (Maybe Int32)
avVersionCode
  = lens _avVersionCode
      (\ s a -> s{_avVersionCode = a})
      . mapping _Coerce

-- | The string used in the Play store by the app developer to identify the
-- version. The string is not necessarily unique or localized (for example,
-- the string could be \"1.4\").
avVersionString :: Lens' AppVersion (Maybe Text)
avVersionString
  = lens _avVersionString
      (\ s a -> s{_avVersionString = a})

-- | Track ids that the app version is published in. Replaces the track field
-- (deprecated), but doesn\'t include the production track (see
-- isProduction instead).
avTrackId :: Lens' AppVersion [Text]
avTrackId
  = lens _avTrackId (\ s a -> s{_avTrackId = a}) .
      _Default
      . _Coerce

-- | True if this version is a production APK.
avIsProduction :: Lens' AppVersion (Maybe Bool)
avIsProduction
  = lens _avIsProduction
      (\ s a -> s{_avIsProduction = a})

instance FromJSON AppVersion where
        parseJSON
          = withObject "AppVersion"
              (\ o ->
                 AppVersion' <$>
                   (o .:? "track") <*> (o .:? "versionCode") <*>
                     (o .:? "versionString")
                     <*> (o .:? "trackId" .!= mempty)
                     <*> (o .:? "isProduction"))

instance ToJSON AppVersion where
        toJSON AppVersion'{..}
          = object
              (catMaybes
                 [("track" .=) <$> _avTrack,
                  ("versionCode" .=) <$> _avVersionCode,
                  ("versionString" .=) <$> _avVersionString,
                  ("trackId" .=) <$> _avTrackId,
                  ("isProduction" .=) <$> _avIsProduction])

-- | A bundle of managed properties.
--
-- /See:/ 'managedPropertyBundle' smart constructor.
newtype ManagedPropertyBundle =
  ManagedPropertyBundle'
    { _mpbManagedProperty :: Maybe [ManagedProperty]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedPropertyBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbManagedProperty'
managedPropertyBundle
    :: ManagedPropertyBundle
managedPropertyBundle = ManagedPropertyBundle' {_mpbManagedProperty = Nothing}

-- | The list of managed properties.
mpbManagedProperty :: Lens' ManagedPropertyBundle [ManagedProperty]
mpbManagedProperty
  = lens _mpbManagedProperty
      (\ s a -> s{_mpbManagedProperty = a})
      . _Default
      . _Coerce

instance FromJSON ManagedPropertyBundle where
        parseJSON
          = withObject "ManagedPropertyBundle"
              (\ o ->
                 ManagedPropertyBundle' <$>
                   (o .:? "managedProperty" .!= mempty))

instance ToJSON ManagedPropertyBundle where
        toJSON ManagedPropertyBundle'{..}
          = object
              (catMaybes
                 [("managedProperty" .=) <$> _mpbManagedProperty])

-- | The grouplicense resources for the enterprise.
--
-- /See:/ 'groupLicensesListResponse' smart constructor.
data GroupLicensesListResponse =
  GroupLicensesListResponse'
    { _gllrGroupLicense :: !(Maybe [GroupLicense])
    , _gllrKind         :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupLicensesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gllrGroupLicense'
--
-- * 'gllrKind'
groupLicensesListResponse
    :: GroupLicensesListResponse
groupLicensesListResponse =
  GroupLicensesListResponse'
    { _gllrGroupLicense = Nothing
    , _gllrKind = "androidenterprise#groupLicensesListResponse"
    }

-- | A group license for a product approved for use in the enterprise.
gllrGroupLicense :: Lens' GroupLicensesListResponse [GroupLicense]
gllrGroupLicense
  = lens _gllrGroupLicense
      (\ s a -> s{_gllrGroupLicense = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#groupLicensesListResponse\".
gllrKind :: Lens' GroupLicensesListResponse Text
gllrKind = lens _gllrKind (\ s a -> s{_gllrKind = a})

instance FromJSON GroupLicensesListResponse where
        parseJSON
          = withObject "GroupLicensesListResponse"
              (\ o ->
                 GroupLicensesListResponse' <$>
                   (o .:? "groupLicense" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidenterprise#groupLicensesListResponse"))

instance ToJSON GroupLicensesListResponse where
        toJSON GroupLicensesListResponse'{..}
          = object
              (catMaybes
                 [("groupLicense" .=) <$> _gllrGroupLicense,
                  Just ("kind" .= _gllrKind)])

-- | Deprecated and unused.
--
-- /See:/ 'androidDevicePolicyConfig' smart constructor.
data AndroidDevicePolicyConfig =
  AndroidDevicePolicyConfig'
    { _adpcState :: !(Maybe Text)
    , _adpcKind  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AndroidDevicePolicyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adpcState'
--
-- * 'adpcKind'
androidDevicePolicyConfig
    :: AndroidDevicePolicyConfig
androidDevicePolicyConfig =
  AndroidDevicePolicyConfig'
    { _adpcState = Nothing
    , _adpcKind = "androidenterprise#androidDevicePolicyConfig"
    }

-- | Deprecated and unused.
adpcState :: Lens' AndroidDevicePolicyConfig (Maybe Text)
adpcState
  = lens _adpcState (\ s a -> s{_adpcState = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#androidDevicePolicyConfig\".
adpcKind :: Lens' AndroidDevicePolicyConfig Text
adpcKind = lens _adpcKind (\ s a -> s{_adpcKind = a})

instance FromJSON AndroidDevicePolicyConfig where
        parseJSON
          = withObject "AndroidDevicePolicyConfig"
              (\ o ->
                 AndroidDevicePolicyConfig' <$>
                   (o .:? "state") <*>
                     (o .:? "kind" .!=
                        "androidenterprise#androidDevicePolicyConfig"))

instance ToJSON AndroidDevicePolicyConfig where
        toJSON AndroidDevicePolicyConfig'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _adpcState,
                  Just ("kind" .= _adpcKind)])

-- | A set of products.
--
-- /See:/ 'productSet' smart constructor.
data ProductSet =
  ProductSet'
    { _psProductVisibility  :: !(Maybe [ProductVisibility])
    , _psKind               :: !Text
    , _psProductSetBehavior :: !(Maybe Text)
    , _psProductId          :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psProductVisibility'
--
-- * 'psKind'
--
-- * 'psProductSetBehavior'
--
-- * 'psProductId'
productSet
    :: ProductSet
productSet =
  ProductSet'
    { _psProductVisibility = Nothing
    , _psKind = "androidenterprise#productSet"
    , _psProductSetBehavior = Nothing
    , _psProductId = Nothing
    }

-- | Additional list of product IDs making up the product set. Unlike the
-- productID array, in this list It\'s possible to specify which tracks
-- (alpha, beta, production) of a product are visible to the user. See
-- ProductVisibility and its fields for more information. Specifying the
-- same product ID both here and in the productId array is not allowed and
-- it will result in an error.
psProductVisibility :: Lens' ProductSet [ProductVisibility]
psProductVisibility
  = lens _psProductVisibility
      (\ s a -> s{_psProductVisibility = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#productSet\".
psKind :: Lens' ProductSet Text
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | The interpretation of this product set. \"unknown\" should never be sent
-- and is ignored if received. \"whitelist\" means that the user is
-- entitled to access the product set. \"includeAll\" means that all
-- products are accessible, including products that are approved, products
-- with revoked approval, and products that have never been approved.
-- \"allApproved\" means that the user is entitled to access all products
-- that are approved for the enterprise. If the value is \"allApproved\" or
-- \"includeAll\", the productId field is ignored. If no value is provided,
-- it is interpreted as \"whitelist\" for backwards compatibility. Further
-- \"allApproved\" or \"includeAll\" does not enable automatic visibility
-- of \"alpha\" or \"beta\" tracks for Android app. Use ProductVisibility
-- to enable \"alpha\" or \"beta\" tracks per user.
psProductSetBehavior :: Lens' ProductSet (Maybe Text)
psProductSetBehavior
  = lens _psProductSetBehavior
      (\ s a -> s{_psProductSetBehavior = a})

-- | The list of product IDs making up the set of products.
psProductId :: Lens' ProductSet [Text]
psProductId
  = lens _psProductId (\ s a -> s{_psProductId = a}) .
      _Default
      . _Coerce

instance FromJSON ProductSet where
        parseJSON
          = withObject "ProductSet"
              (\ o ->
                 ProductSet' <$>
                   (o .:? "productVisibility" .!= mempty) <*>
                     (o .:? "kind" .!= "androidenterprise#productSet")
                     <*> (o .:? "productSetBehavior")
                     <*> (o .:? "productId" .!= mempty))

instance ToJSON ProductSet where
        toJSON ProductSet'{..}
          = object
              (catMaybes
                 [("productVisibility" .=) <$> _psProductVisibility,
                  Just ("kind" .= _psKind),
                  ("productSetBehavior" .=) <$> _psProductSetBehavior,
                  ("productId" .=) <$> _psProductId])

-- | The existence of an Installs resource indicates that an app is installed
-- on a particular device (or that an install is pending). The API can be
-- used to create an install resource using the update method. This
-- triggers the actual install of the app on the device. If the user does
-- not already have an entitlement for the app, then an attempt is made to
-- create one. If this fails (for example, because the app is not free and
-- there is no available license), then the creation of the install fails.
-- The API can also be used to update an installed app. If
-- the update method is used on an existing install, then the app will be
-- updated to the latest available version. Note that it is not possible to
-- force the installation of a specific version of an app: the version code
-- is read-only. If a user installs an app themselves (as permitted by the
-- enterprise), then again an install resource and possibly an entitlement
-- resource are automatically created. The API can also be used to delete
-- an install resource, which triggers the removal of the app from the
-- device. Note that deleting an install does not automatically remove the
-- corresponding entitlement, even if there are no remaining installs. The
-- install resource will also be deleted if the user uninstalls the app
-- themselves.
--
-- /See:/ 'install' smart constructor.
data Install =
  Install'
    { _iVersionCode  :: !(Maybe (Textual Int32))
    , _iKind         :: !Text
    , _iInstallState :: !(Maybe Text)
    , _iProductId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Install' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iVersionCode'
--
-- * 'iKind'
--
-- * 'iInstallState'
--
-- * 'iProductId'
install
    :: Install
install =
  Install'
    { _iVersionCode = Nothing
    , _iKind = "androidenterprise#install"
    , _iInstallState = Nothing
    , _iProductId = Nothing
    }

-- | The version of the installed product. Guaranteed to be set only if the
-- install state is \"installed\".
iVersionCode :: Lens' Install (Maybe Int32)
iVersionCode
  = lens _iVersionCode (\ s a -> s{_iVersionCode = a})
      . mapping _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#install\".
iKind :: Lens' Install Text
iKind = lens _iKind (\ s a -> s{_iKind = a})

-- | Install state. The state \"installPending\" means that an install
-- request has recently been made and download to the device is in
-- progress. The state \"installed\" means that the app has been installed.
-- This field is read-only.
iInstallState :: Lens' Install (Maybe Text)
iInstallState
  = lens _iInstallState
      (\ s a -> s{_iInstallState = a})

-- | The ID of the product that the install is for. For example,
-- \"app:com.google.android.gm\".
iProductId :: Lens' Install (Maybe Text)
iProductId
  = lens _iProductId (\ s a -> s{_iProductId = a})

instance FromJSON Install where
        parseJSON
          = withObject "Install"
              (\ o ->
                 Install' <$>
                   (o .:? "versionCode") <*>
                     (o .:? "kind" .!= "androidenterprise#install")
                     <*> (o .:? "installState")
                     <*> (o .:? "productId"))

instance ToJSON Install where
        toJSON Install'{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _iVersionCode,
                  Just ("kind" .= _iKind),
                  ("installState" .=) <$> _iInstallState,
                  ("productId" .=) <$> _iProductId])

-- | Maintenance window for managed Google Play Accounts. This allows Play
-- store to update the apps on the foreground in the designated window.
--
-- /See:/ 'maintenanceWindow' smart constructor.
data MaintenanceWindow =
  MaintenanceWindow'
    { _mwDurationMs               :: !(Maybe (Textual Int64))
    , _mwStartTimeAfterMidnightMs :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwDurationMs'
--
-- * 'mwStartTimeAfterMidnightMs'
maintenanceWindow
    :: MaintenanceWindow
maintenanceWindow =
  MaintenanceWindow'
    {_mwDurationMs = Nothing, _mwStartTimeAfterMidnightMs = Nothing}

-- | Duration of the maintenance window, in milliseconds. The duration must
-- be between 30 minutes and 24 hours (inclusive).
mwDurationMs :: Lens' MaintenanceWindow (Maybe Int64)
mwDurationMs
  = lens _mwDurationMs (\ s a -> s{_mwDurationMs = a})
      . mapping _Coerce

-- | Start time of the maintenance window, in milliseconds after midnight on
-- the device. Windows can span midnight.
mwStartTimeAfterMidnightMs :: Lens' MaintenanceWindow (Maybe Int64)
mwStartTimeAfterMidnightMs
  = lens _mwStartTimeAfterMidnightMs
      (\ s a -> s{_mwStartTimeAfterMidnightMs = a})
      . mapping _Coerce

instance FromJSON MaintenanceWindow where
        parseJSON
          = withObject "MaintenanceWindow"
              (\ o ->
                 MaintenanceWindow' <$>
                   (o .:? "durationMs") <*>
                     (o .:? "startTimeAfterMidnightMs"))

instance ToJSON MaintenanceWindow where
        toJSON MaintenanceWindow'{..}
          = object
              (catMaybes
                 [("durationMs" .=) <$> _mwDurationMs,
                  ("startTimeAfterMidnightMs" .=) <$>
                    _mwStartTimeAfterMidnightMs])

--
-- /See:/ 'serviceAccountKeysListResponse' smart constructor.
newtype ServiceAccountKeysListResponse =
  ServiceAccountKeysListResponse'
    { _saklrServiceAccountKey :: Maybe [ServiceAccountKey]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceAccountKeysListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saklrServiceAccountKey'
serviceAccountKeysListResponse
    :: ServiceAccountKeysListResponse
serviceAccountKeysListResponse =
  ServiceAccountKeysListResponse' {_saklrServiceAccountKey = Nothing}

-- | The service account credentials.
saklrServiceAccountKey :: Lens' ServiceAccountKeysListResponse [ServiceAccountKey]
saklrServiceAccountKey
  = lens _saklrServiceAccountKey
      (\ s a -> s{_saklrServiceAccountKey = a})
      . _Default
      . _Coerce

instance FromJSON ServiceAccountKeysListResponse
         where
        parseJSON
          = withObject "ServiceAccountKeysListResponse"
              (\ o ->
                 ServiceAccountKeysListResponse' <$>
                   (o .:? "serviceAccountKey" .!= mempty))

instance ToJSON ServiceAccountKeysListResponse where
        toJSON ServiceAccountKeysListResponse'{..}
          = object
              (catMaybes
                 [("serviceAccountKey" .=) <$>
                    _saklrServiceAccountKey])

-- | Id to name association of a track.
--
-- /See:/ 'trackInfo' smart constructor.
data TrackInfo =
  TrackInfo'
    { _tiTrackAlias :: !(Maybe Text)
    , _tiTrackId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrackInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiTrackAlias'
--
-- * 'tiTrackId'
trackInfo
    :: TrackInfo
trackInfo = TrackInfo' {_tiTrackAlias = Nothing, _tiTrackId = Nothing}

-- | A modifiable name for a track. This is the visible name in the play
-- developer console.
tiTrackAlias :: Lens' TrackInfo (Maybe Text)
tiTrackAlias
  = lens _tiTrackAlias (\ s a -> s{_tiTrackAlias = a})

-- | Unmodifiable, unique track identifier. This identifier is the
-- releaseTrackId in the url of the play developer console page that
-- displays the track information.
tiTrackId :: Lens' TrackInfo (Maybe Text)
tiTrackId
  = lens _tiTrackId (\ s a -> s{_tiTrackId = a})

instance FromJSON TrackInfo where
        parseJSON
          = withObject "TrackInfo"
              (\ o ->
                 TrackInfo' <$>
                   (o .:? "trackAlias") <*> (o .:? "trackId"))

instance ToJSON TrackInfo where
        toJSON TrackInfo'{..}
          = object
              (catMaybes
                 [("trackAlias" .=) <$> _tiTrackAlias,
                  ("trackId" .=) <$> _tiTrackId])

-- | A Users resource represents an account associated with an enterprise.
-- The account may be specific to a device or to an individual user (who
-- can then use the account across multiple devices). The account may
-- provide access to managed Google Play only, or to other Google services,
-- depending on the identity model: - The Google managed domain identity
-- model requires synchronization to Google account sources (via
-- primaryEmail). - The managed Google Play Accounts identity model
-- provides a dynamic means for enterprises to create user or device
-- accounts as needed. These accounts provide access to managed Google
-- Play.
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _uAccountIdentifier :: !(Maybe Text)
    , _uKind              :: !Text
    , _uDisplayName       :: !(Maybe Text)
    , _uId                :: !(Maybe Text)
    , _uPrimaryEmail      :: !(Maybe Text)
    , _uManagementType    :: !(Maybe Text)
    , _uAccountType       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uAccountIdentifier'
--
-- * 'uKind'
--
-- * 'uDisplayName'
--
-- * 'uId'
--
-- * 'uPrimaryEmail'
--
-- * 'uManagementType'
--
-- * 'uAccountType'
user
    :: User
user =
  User'
    { _uAccountIdentifier = Nothing
    , _uKind = "androidenterprise#user"
    , _uDisplayName = Nothing
    , _uId = Nothing
    , _uPrimaryEmail = Nothing
    , _uManagementType = Nothing
    , _uAccountType = Nothing
    }

-- | A unique identifier you create for this user, such as \"user342\" or
-- \"asset#44418\". Do not use personally identifiable information (PII)
-- for this property. Must always be set for EMM-managed users. Not set for
-- Google-managed users.
uAccountIdentifier :: Lens' User (Maybe Text)
uAccountIdentifier
  = lens _uAccountIdentifier
      (\ s a -> s{_uAccountIdentifier = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#user\".
uKind :: Lens' User Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | The name that will appear in user interfaces. Setting this property is
-- optional when creating EMM-managed users. If you do set this property,
-- use something generic about the organization (such as \"Example, Inc.\")
-- or your name (as EMM). Not used for Google-managed user accounts.
uDisplayName :: Lens' User (Maybe Text)
uDisplayName
  = lens _uDisplayName (\ s a -> s{_uDisplayName = a})

-- | The unique ID for the user.
uId :: Lens' User (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

-- | The user\'s primary email address, for example, \"jsmith\'example.com\".
-- Will always be set for Google managed users and not set for EMM managed
-- users.
uPrimaryEmail :: Lens' User (Maybe Text)
uPrimaryEmail
  = lens _uPrimaryEmail
      (\ s a -> s{_uPrimaryEmail = a})

-- | The entity that manages the user. With googleManaged users, the source
-- of truth is Google so EMMs have to make sure a Google Account exists for
-- the user. With emmManaged users, the EMM is in charge.
uManagementType :: Lens' User (Maybe Text)
uManagementType
  = lens _uManagementType
      (\ s a -> s{_uManagementType = a})

-- | The type of account that this user represents. A userAccount can be
-- installed on multiple devices, but a deviceAccount is specific to a
-- single device. An EMM-managed user (emmManaged) can be either type
-- (userAccount, deviceAccount), but a Google-managed user (googleManaged)
-- is always a userAccount.
uAccountType :: Lens' User (Maybe Text)
uAccountType
  = lens _uAccountType (\ s a -> s{_uAccountType = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "accountIdentifier") <*>
                     (o .:? "kind" .!= "androidenterprise#user")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "primaryEmail")
                     <*> (o .:? "managementType")
                     <*> (o .:? "accountType"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("accountIdentifier" .=) <$> _uAccountIdentifier,
                  Just ("kind" .= _uKind),
                  ("displayName" .=) <$> _uDisplayName,
                  ("id" .=) <$> _uId,
                  ("primaryEmail" .=) <$> _uPrimaryEmail,
                  ("managementType" .=) <$> _uManagementType,
                  ("accountType" .=) <$> _uAccountType])

-- | The managed configuration resources for the device.
--
-- /See:/ 'managedConfigurationsForDeviceListResponse' smart constructor.
data ManagedConfigurationsForDeviceListResponse =
  ManagedConfigurationsForDeviceListResponse'
    { _mcfdlrKind                          :: !Text
    , _mcfdlrManagedConfigurationForDevice :: !(Maybe [ManagedConfiguration])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationsForDeviceListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcfdlrKind'
--
-- * 'mcfdlrManagedConfigurationForDevice'
managedConfigurationsForDeviceListResponse
    :: ManagedConfigurationsForDeviceListResponse
managedConfigurationsForDeviceListResponse =
  ManagedConfigurationsForDeviceListResponse'
    { _mcfdlrKind =
        "androidenterprise#managedConfigurationsForDeviceListResponse"
    , _mcfdlrManagedConfigurationForDevice = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#managedConfigurationsForDeviceListResponse\".
mcfdlrKind :: Lens' ManagedConfigurationsForDeviceListResponse Text
mcfdlrKind
  = lens _mcfdlrKind (\ s a -> s{_mcfdlrKind = a})

-- | A managed configuration for an app on a specific device.
mcfdlrManagedConfigurationForDevice :: Lens' ManagedConfigurationsForDeviceListResponse [ManagedConfiguration]
mcfdlrManagedConfigurationForDevice
  = lens _mcfdlrManagedConfigurationForDevice
      (\ s a ->
         s{_mcfdlrManagedConfigurationForDevice = a})
      . _Default
      . _Coerce

instance FromJSON
           ManagedConfigurationsForDeviceListResponse
         where
        parseJSON
          = withObject
              "ManagedConfigurationsForDeviceListResponse"
              (\ o ->
                 ManagedConfigurationsForDeviceListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#managedConfigurationsForDeviceListResponse")
                     <*>
                     (o .:? "managedConfigurationForDevice" .!= mempty))

instance ToJSON
           ManagedConfigurationsForDeviceListResponse
         where
        toJSON
          ManagedConfigurationsForDeviceListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mcfdlrKind),
                  ("managedConfigurationForDevice" .=) <$>
                    _mcfdlrManagedConfigurationForDevice])

--
-- /See:/ 'productsGenerateApprovalURLResponse' smart constructor.
newtype ProductsGenerateApprovalURLResponse =
  ProductsGenerateApprovalURLResponse'
    { _pgaurURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsGenerateApprovalURLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgaurURL'
productsGenerateApprovalURLResponse
    :: ProductsGenerateApprovalURLResponse
productsGenerateApprovalURLResponse =
  ProductsGenerateApprovalURLResponse' {_pgaurURL = Nothing}

-- | A URL that can be rendered in an iframe to display the permissions (if
-- any) of a product. This URL can be used to approve the product only once
-- and only within 24 hours of being generated, using the Products.approve
-- call. If the product is currently unapproved and has no permissions,
-- this URL will point to an empty page. If the product is currently
-- approved, a URL will only be generated if that product has added
-- permissions since it was last approved, and the URL will only display
-- those new permissions that have not yet been accepted.
pgaurURL :: Lens' ProductsGenerateApprovalURLResponse (Maybe Text)
pgaurURL = lens _pgaurURL (\ s a -> s{_pgaurURL = a})

instance FromJSON ProductsGenerateApprovalURLResponse
         where
        parseJSON
          = withObject "ProductsGenerateApprovalURLResponse"
              (\ o ->
                 ProductsGenerateApprovalURLResponse' <$>
                   (o .:? "url"))

instance ToJSON ProductsGenerateApprovalURLResponse
         where
        toJSON ProductsGenerateApprovalURLResponse'{..}
          = object (catMaybes [("url" .=) <$> _pgaurURL])

-- | Definition of a managed Google Play store page, made of a localized name
-- and links to other pages. A page also contains clusters defined as a
-- subcollection.
--
-- /See:/ 'storePage' smart constructor.
data StorePage =
  StorePage'
    { _spKind :: !Text
    , _spLink :: !(Maybe [Text])
    , _spName :: !(Maybe [LocalizedText])
    , _spId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StorePage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spKind'
--
-- * 'spLink'
--
-- * 'spName'
--
-- * 'spId'
storePage
    :: StorePage
storePage =
  StorePage'
    { _spKind = "androidenterprise#storePage"
    , _spLink = Nothing
    , _spName = Nothing
    , _spId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#storePage\".
spKind :: Lens' StorePage Text
spKind = lens _spKind (\ s a -> s{_spKind = a})

-- | Ordered list of pages a user should be able to reach from this page. The
-- list can\'t include this page. It is recommended that the basic pages
-- are created first, before adding the links between pages. The API
-- doesn\'t verify that the pages exist or the pages are reachable.
spLink :: Lens' StorePage [Text]
spLink
  = lens _spLink (\ s a -> s{_spLink = a}) . _Default .
      _Coerce

-- | Ordered list of localized strings giving the name of this page. The text
-- displayed is the one that best matches the user locale, or the first
-- entry if there is no good match. There needs to be at least one entry.
spName :: Lens' StorePage [LocalizedText]
spName
  = lens _spName (\ s a -> s{_spName = a}) . _Default .
      _Coerce

-- | Unique ID of this page. Assigned by the server. Immutable once assigned.
spId :: Lens' StorePage (Maybe Text)
spId = lens _spId (\ s a -> s{_spId = a})

instance FromJSON StorePage where
        parseJSON
          = withObject "StorePage"
              (\ o ->
                 StorePage' <$>
                   (o .:? "kind" .!= "androidenterprise#storePage") <*>
                     (o .:? "link" .!= mempty)
                     <*> (o .:? "name" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON StorePage where
        toJSON StorePage'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _spKind), ("link" .=) <$> _spLink,
                  ("name" .=) <$> _spName, ("id" .=) <$> _spId])

--
-- /See:/ 'enterprisesSendTestPushNotificationResponse' smart constructor.
data EnterprisesSendTestPushNotificationResponse =
  EnterprisesSendTestPushNotificationResponse'
    { _estpnrTopicName :: !(Maybe Text)
    , _estpnrMessageId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterprisesSendTestPushNotificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'estpnrTopicName'
--
-- * 'estpnrMessageId'
enterprisesSendTestPushNotificationResponse
    :: EnterprisesSendTestPushNotificationResponse
enterprisesSendTestPushNotificationResponse =
  EnterprisesSendTestPushNotificationResponse'
    {_estpnrTopicName = Nothing, _estpnrMessageId = Nothing}

-- | The name of the Cloud Pub\/Sub topic to which notifications for this
-- enterprise\'s enrolled account will be sent.
estpnrTopicName :: Lens' EnterprisesSendTestPushNotificationResponse (Maybe Text)
estpnrTopicName
  = lens _estpnrTopicName
      (\ s a -> s{_estpnrTopicName = a})

-- | The message ID of the test push notification that was sent.
estpnrMessageId :: Lens' EnterprisesSendTestPushNotificationResponse (Maybe Text)
estpnrMessageId
  = lens _estpnrMessageId
      (\ s a -> s{_estpnrMessageId = a})

instance FromJSON
           EnterprisesSendTestPushNotificationResponse
         where
        parseJSON
          = withObject
              "EnterprisesSendTestPushNotificationResponse"
              (\ o ->
                 EnterprisesSendTestPushNotificationResponse' <$>
                   (o .:? "topicName") <*> (o .:? "messageId"))

instance ToJSON
           EnterprisesSendTestPushNotificationResponse
         where
        toJSON
          EnterprisesSendTestPushNotificationResponse'{..}
          = object
              (catMaybes
                 [("topicName" .=) <$> _estpnrTopicName,
                  ("messageId" .=) <$> _estpnrMessageId])

-- | A service account identity, including the name and credentials that can
-- be used to authenticate as the service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount =
  ServiceAccount'
    { _saKind :: !Text
    , _saKey  :: !(Maybe ServiceAccountKey)
    , _saName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saKind'
--
-- * 'saKey'
--
-- * 'saName'
serviceAccount
    :: ServiceAccount
serviceAccount =
  ServiceAccount'
    { _saKind = "androidenterprise#serviceAccount"
    , _saKey = Nothing
    , _saName = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#serviceAccount\".
saKind :: Lens' ServiceAccount Text
saKind = lens _saKind (\ s a -> s{_saKind = a})

-- | Credentials that can be used to authenticate as this ServiceAccount.
saKey :: Lens' ServiceAccount (Maybe ServiceAccountKey)
saKey = lens _saKey (\ s a -> s{_saKey = a})

-- | The account name of the service account, in the form of an email
-- address. Assigned by the server.
saName :: Lens' ServiceAccount (Maybe Text)
saName = lens _saName (\ s a -> s{_saName = a})

instance FromJSON ServiceAccount where
        parseJSON
          = withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount' <$>
                   (o .:? "kind" .!= "androidenterprise#serviceAccount")
                     <*> (o .:? "key")
                     <*> (o .:? "name"))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _saKind), ("key" .=) <$> _saKey,
                  ("name" .=) <$> _saName])

-- | A variable set is a key-value pair of EMM-provided placeholders and its
-- corresponding value, which is attributed to a user. For example,
-- $FIRSTNAME could be a placeholder, and its value could be Alice.
-- Placeholders should start with a \'$\' sign and should be alphanumeric
-- only.
--
-- /See:/ 'variableSet' smart constructor.
data VariableSet =
  VariableSet'
    { _vsKind        :: !Text
    , _vsUserValue   :: !(Maybe Text)
    , _vsPlaceholder :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'VariableSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsKind'
--
-- * 'vsUserValue'
--
-- * 'vsPlaceholder'
variableSet
    :: VariableSet
variableSet =
  VariableSet'
    { _vsKind = "androidenterprise#variableSet"
    , _vsUserValue = Nothing
    , _vsPlaceholder = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#variableSet\".
vsKind :: Lens' VariableSet Text
vsKind = lens _vsKind (\ s a -> s{_vsKind = a})

-- | The value of the placeholder, specific to the user.
vsUserValue :: Lens' VariableSet (Maybe Text)
vsUserValue
  = lens _vsUserValue (\ s a -> s{_vsUserValue = a})

-- | The placeholder string; defined by EMM.
vsPlaceholder :: Lens' VariableSet (Maybe Text)
vsPlaceholder
  = lens _vsPlaceholder
      (\ s a -> s{_vsPlaceholder = a})

instance FromJSON VariableSet where
        parseJSON
          = withObject "VariableSet"
              (\ o ->
                 VariableSet' <$>
                   (o .:? "kind" .!= "androidenterprise#variableSet")
                     <*> (o .:? "userValue")
                     <*> (o .:? "placeholder"))

instance ToJSON VariableSet where
        toJSON VariableSet'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _vsKind),
                  ("userValue" .=) <$> _vsUserValue,
                  ("placeholder" .=) <$> _vsPlaceholder])

-- | An event generated when a new version of an app is uploaded to Google
-- Play. Notifications are sent for new public versions only: alpha, beta,
-- or canary versions do not generate this event. To fetch up-to-date
-- version history for an app, use Products.Get on the EMM API.
--
-- /See:/ 'appUpdateEvent' smart constructor.
newtype AppUpdateEvent =
  AppUpdateEvent'
    { _aueProductId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppUpdateEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aueProductId'
appUpdateEvent
    :: AppUpdateEvent
appUpdateEvent = AppUpdateEvent' {_aueProductId = Nothing}

-- | The id of the product (e.g. \"app:com.google.android.gm\") that was
-- updated. This field will always be present.
aueProductId :: Lens' AppUpdateEvent (Maybe Text)
aueProductId
  = lens _aueProductId (\ s a -> s{_aueProductId = a})

instance FromJSON AppUpdateEvent where
        parseJSON
          = withObject "AppUpdateEvent"
              (\ o -> AppUpdateEvent' <$> (o .:? "productId"))

instance ToJSON AppUpdateEvent where
        toJSON AppUpdateEvent'{..}
          = object
              (catMaybes [("productId" .=) <$> _aueProductId])

-- | The matching enterprise resources.
--
-- /See:/ 'enterprisesListResponse' smart constructor.
data EnterprisesListResponse =
  EnterprisesListResponse'
    { _elrKind       :: !Text
    , _elrEnterprise :: !(Maybe [Enterprise])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterprisesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elrKind'
--
-- * 'elrEnterprise'
enterprisesListResponse
    :: EnterprisesListResponse
enterprisesListResponse =
  EnterprisesListResponse'
    { _elrKind = "androidenterprise#enterprisesListResponse"
    , _elrEnterprise = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#enterprisesListResponse\".
elrKind :: Lens' EnterprisesListResponse Text
elrKind = lens _elrKind (\ s a -> s{_elrKind = a})

-- | An enterprise.
elrEnterprise :: Lens' EnterprisesListResponse [Enterprise]
elrEnterprise
  = lens _elrEnterprise
      (\ s a -> s{_elrEnterprise = a})
      . _Default
      . _Coerce

instance FromJSON EnterprisesListResponse where
        parseJSON
          = withObject "EnterprisesListResponse"
              (\ o ->
                 EnterprisesListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#enterprisesListResponse")
                     <*> (o .:? "enterprise" .!= mempty))

instance ToJSON EnterprisesListResponse where
        toJSON EnterprisesListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _elrKind),
                  ("enterprise" .=) <$> _elrEnterprise])

-- | A resource returned by the PullNotificationSet API, which contains a
-- collection of notifications for enterprises associated with the service
-- account authenticated for the request.
--
-- /See:/ 'notificationSet' smart constructor.
data NotificationSet =
  NotificationSet'
    { _nsNotificationSetId :: !(Maybe Text)
    , _nsNotification      :: !(Maybe [Notification])
    , _nsKind              :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotificationSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsNotificationSetId'
--
-- * 'nsNotification'
--
-- * 'nsKind'
notificationSet
    :: NotificationSet
notificationSet =
  NotificationSet'
    { _nsNotificationSetId = Nothing
    , _nsNotification = Nothing
    , _nsKind = "androidenterprise#notificationSet"
    }

-- | The notification set ID, required to mark the notification as received
-- with the Enterprises.AcknowledgeNotification API. This will be omitted
-- if no notifications are present.
nsNotificationSetId :: Lens' NotificationSet (Maybe Text)
nsNotificationSetId
  = lens _nsNotificationSetId
      (\ s a -> s{_nsNotificationSetId = a})

-- | The notifications received, or empty if no notifications are present.
nsNotification :: Lens' NotificationSet [Notification]
nsNotification
  = lens _nsNotification
      (\ s a -> s{_nsNotification = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#notificationSet\".
nsKind :: Lens' NotificationSet Text
nsKind = lens _nsKind (\ s a -> s{_nsKind = a})

instance FromJSON NotificationSet where
        parseJSON
          = withObject "NotificationSet"
              (\ o ->
                 NotificationSet' <$>
                   (o .:? "notificationSetId") <*>
                     (o .:? "notification" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "androidenterprise#notificationSet"))

instance ToJSON NotificationSet where
        toJSON NotificationSet'{..}
          = object
              (catMaybes
                 [("notificationSetId" .=) <$> _nsNotificationSetId,
                  ("notification" .=) <$> _nsNotification,
                  Just ("kind" .= _nsKind)])

-- | Represents the list of app restrictions available to be pre-configured
-- for the product.
--
-- /See:/ 'appRestrictionsSchema' smart constructor.
data AppRestrictionsSchema =
  AppRestrictionsSchema'
    { _arsKind         :: !Text
    , _arsRestrictions :: !(Maybe [AppRestrictionsSchemaRestriction])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppRestrictionsSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsKind'
--
-- * 'arsRestrictions'
appRestrictionsSchema
    :: AppRestrictionsSchema
appRestrictionsSchema =
  AppRestrictionsSchema'
    { _arsKind = "androidenterprise#appRestrictionsSchema"
    , _arsRestrictions = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#appRestrictionsSchema\".
arsKind :: Lens' AppRestrictionsSchema Text
arsKind = lens _arsKind (\ s a -> s{_arsKind = a})

-- | The set of restrictions that make up this schema.
arsRestrictions :: Lens' AppRestrictionsSchema [AppRestrictionsSchemaRestriction]
arsRestrictions
  = lens _arsRestrictions
      (\ s a -> s{_arsRestrictions = a})
      . _Default
      . _Coerce

instance FromJSON AppRestrictionsSchema where
        parseJSON
          = withObject "AppRestrictionsSchema"
              (\ o ->
                 AppRestrictionsSchema' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#appRestrictionsSchema")
                     <*> (o .:? "restrictions" .!= mempty))

instance ToJSON AppRestrictionsSchema where
        toJSON AppRestrictionsSchema'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _arsKind),
                  ("restrictions" .=) <$> _arsRestrictions])

-- | Icon for a web app.
--
-- /See:/ 'webAppIcon' smart constructor.
newtype WebAppIcon =
  WebAppIcon'
    { _waiImageData :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebAppIcon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waiImageData'
webAppIcon
    :: WebAppIcon
webAppIcon = WebAppIcon' {_waiImageData = Nothing}

-- | The actual bytes of the image in a base64url encoded string (c.f.
-- RFC4648, section 5 \"Base 64 Encoding with URL and Filename Safe
-- Alphabet\"). - The image type can be png or jpg. - The image should
-- ideally be square. - The image should ideally have a size of 512x512.
waiImageData :: Lens' WebAppIcon (Maybe Text)
waiImageData
  = lens _waiImageData (\ s a -> s{_waiImageData = a})

instance FromJSON WebAppIcon where
        parseJSON
          = withObject "WebAppIcon"
              (\ o -> WebAppIcon' <$> (o .:? "imageData"))

instance ToJSON WebAppIcon where
        toJSON WebAppIcon'{..}
          = object
              (catMaybes [("imageData" .=) <$> _waiImageData])

-- | A localized string with its locale.
--
-- /See:/ 'localizedText' smart constructor.
data LocalizedText =
  LocalizedText'
    { _ltText   :: !(Maybe Text)
    , _ltLocale :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LocalizedText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltText'
--
-- * 'ltLocale'
localizedText
    :: LocalizedText
localizedText = LocalizedText' {_ltText = Nothing, _ltLocale = Nothing}

-- | The text localized in the associated locale.
ltText :: Lens' LocalizedText (Maybe Text)
ltText = lens _ltText (\ s a -> s{_ltText = a})

-- | The BCP47 tag for a locale. (e.g. \"en-US\", \"de\").
ltLocale :: Lens' LocalizedText (Maybe Text)
ltLocale = lens _ltLocale (\ s a -> s{_ltLocale = a})

instance FromJSON LocalizedText where
        parseJSON
          = withObject "LocalizedText"
              (\ o ->
                 LocalizedText' <$>
                   (o .:? "text") <*> (o .:? "locale"))

instance ToJSON LocalizedText where
        toJSON LocalizedText'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ltText,
                  ("locale" .=) <$> _ltLocale])

-- | A UserToken is used by a user when setting up a managed device or
-- profile with their managed Google Play account on a device. When the
-- user enters their email address and token (activation code) the
-- appropriate EMM app can be automatically downloaded.
--
-- /See:/ 'userToken' smart constructor.
data UserToken =
  UserToken'
    { _utKind   :: !Text
    , _utToken  :: !(Maybe Text)
    , _utUserId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utKind'
--
-- * 'utToken'
--
-- * 'utUserId'
userToken
    :: UserToken
userToken =
  UserToken'
    { _utKind = "androidenterprise#userToken"
    , _utToken = Nothing
    , _utUserId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#userToken\".
utKind :: Lens' UserToken Text
utKind = lens _utKind (\ s a -> s{_utKind = a})

-- | The token (activation code) to be entered by the user. This consists of
-- a sequence of decimal digits. Note that the leading digit may be 0.
utToken :: Lens' UserToken (Maybe Text)
utToken = lens _utToken (\ s a -> s{_utToken = a})

-- | The unique ID for the user.
utUserId :: Lens' UserToken (Maybe Text)
utUserId = lens _utUserId (\ s a -> s{_utUserId = a})

instance FromJSON UserToken where
        parseJSON
          = withObject "UserToken"
              (\ o ->
                 UserToken' <$>
                   (o .:? "kind" .!= "androidenterprise#userToken") <*>
                     (o .:? "token")
                     <*> (o .:? "userId"))

instance ToJSON UserToken where
        toJSON UserToken'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _utKind), ("token" .=) <$> _utToken,
                  ("userId" .=) <$> _utUserId])

--
-- /See:/ 'administratorWebTokenSpecPrivateApps' smart constructor.
newtype AdministratorWebTokenSpecPrivateApps =
  AdministratorWebTokenSpecPrivateApps'
    { _awtspaEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdministratorWebTokenSpecPrivateApps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtspaEnabled'
administratorWebTokenSpecPrivateApps
    :: AdministratorWebTokenSpecPrivateApps
administratorWebTokenSpecPrivateApps =
  AdministratorWebTokenSpecPrivateApps' {_awtspaEnabled = Nothing}

-- | Whether the Private Apps page is displayed. Default is true.
awtspaEnabled :: Lens' AdministratorWebTokenSpecPrivateApps (Maybe Bool)
awtspaEnabled
  = lens _awtspaEnabled
      (\ s a -> s{_awtspaEnabled = a})

instance FromJSON
           AdministratorWebTokenSpecPrivateApps
         where
        parseJSON
          = withObject "AdministratorWebTokenSpecPrivateApps"
              (\ o ->
                 AdministratorWebTokenSpecPrivateApps' <$>
                   (o .:? "enabled"))

instance ToJSON AdministratorWebTokenSpecPrivateApps
         where
        toJSON AdministratorWebTokenSpecPrivateApps'{..}
          = object
              (catMaybes [("enabled" .=) <$> _awtspaEnabled])

-- | The device resources for the user.
--
-- /See:/ 'devicesListResponse' smart constructor.
data DevicesListResponse =
  DevicesListResponse'
    { _dlrKind   :: !Text
    , _dlrDevice :: !(Maybe [Device])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DevicesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrKind'
--
-- * 'dlrDevice'
devicesListResponse
    :: DevicesListResponse
devicesListResponse =
  DevicesListResponse'
    {_dlrKind = "androidenterprise#devicesListResponse", _dlrDevice = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#devicesListResponse\".
dlrKind :: Lens' DevicesListResponse Text
dlrKind = lens _dlrKind (\ s a -> s{_dlrKind = a})

-- | A managed device.
dlrDevice :: Lens' DevicesListResponse [Device]
dlrDevice
  = lens _dlrDevice (\ s a -> s{_dlrDevice = a}) .
      _Default
      . _Coerce

instance FromJSON DevicesListResponse where
        parseJSON
          = withObject "DevicesListResponse"
              (\ o ->
                 DevicesListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#devicesListResponse")
                     <*> (o .:? "device" .!= mempty))

instance ToJSON DevicesListResponse where
        toJSON DevicesListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dlrKind),
                  ("device" .=) <$> _dlrDevice])

--
-- /See:/ 'productSigningCertificate' smart constructor.
data ProductSigningCertificate =
  ProductSigningCertificate'
    { _pscCertificateHashSha256 :: !(Maybe Text)
    , _pscCertificateHashSha1   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductSigningCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscCertificateHashSha256'
--
-- * 'pscCertificateHashSha1'
productSigningCertificate
    :: ProductSigningCertificate
productSigningCertificate =
  ProductSigningCertificate'
    {_pscCertificateHashSha256 = Nothing, _pscCertificateHashSha1 = Nothing}

-- | The base64 urlsafe encoded SHA2-256 hash of the certificate.
pscCertificateHashSha256 :: Lens' ProductSigningCertificate (Maybe Text)
pscCertificateHashSha256
  = lens _pscCertificateHashSha256
      (\ s a -> s{_pscCertificateHashSha256 = a})

-- | The base64 urlsafe encoded SHA1 hash of the certificate. (This field is
-- deprecated in favor of SHA2-256. It should not be used and may be
-- removed at any time.)
pscCertificateHashSha1 :: Lens' ProductSigningCertificate (Maybe Text)
pscCertificateHashSha1
  = lens _pscCertificateHashSha1
      (\ s a -> s{_pscCertificateHashSha1 = a})

instance FromJSON ProductSigningCertificate where
        parseJSON
          = withObject "ProductSigningCertificate"
              (\ o ->
                 ProductSigningCertificate' <$>
                   (o .:? "certificateHashSha256") <*>
                     (o .:? "certificateHashSha1"))

instance ToJSON ProductSigningCertificate where
        toJSON ProductSigningCertificate'{..}
          = object
              (catMaybes
                 [("certificateHashSha256" .=) <$>
                    _pscCertificateHashSha256,
                  ("certificateHashSha1" .=) <$>
                    _pscCertificateHashSha1])

-- | An Enterprises resource represents the binding between an EMM and a
-- specific organization. That binding can be instantiated in one of two
-- different ways using this API as follows: - For Google managed domain
-- customers, the process involves using Enterprises.enroll and
-- Enterprises.setAccount (in conjunction with artifacts obtained from the
-- Admin console and the Google API Console) and submitted to the EMM
-- through a more-or-less manual process. - For managed Google Play
-- Accounts customers, the process involves using
-- Enterprises.generateSignupUrl and Enterprises.completeSignup in
-- conjunction with the managed Google Play sign-up UI (Google-provided
-- mechanism) to create the binding without manual steps. As an EMM, you
-- can support either or both approaches in your EMM console. See Create an
-- Enterprise for details.
--
-- /See:/ 'enterprise' smart constructor.
data Enterprise =
  Enterprise'
    { _eKind          :: !Text
    , _eAdministrator :: !(Maybe [Administrator])
    , _ePrimaryDomain :: !(Maybe Text)
    , _eName          :: !(Maybe Text)
    , _eId            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Enterprise' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eKind'
--
-- * 'eAdministrator'
--
-- * 'ePrimaryDomain'
--
-- * 'eName'
--
-- * 'eId'
enterprise
    :: Enterprise
enterprise =
  Enterprise'
    { _eKind = "androidenterprise#enterprise"
    , _eAdministrator = Nothing
    , _ePrimaryDomain = Nothing
    , _eName = Nothing
    , _eId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#enterprise\".
eKind :: Lens' Enterprise Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | Admins of the enterprise. This is only supported for enterprises created
-- via the EMM-initiated flow.
eAdministrator :: Lens' Enterprise [Administrator]
eAdministrator
  = lens _eAdministrator
      (\ s a -> s{_eAdministrator = a})
      . _Default
      . _Coerce

-- | The enterprise\'s primary domain, such as \"example.com\".
ePrimaryDomain :: Lens' Enterprise (Maybe Text)
ePrimaryDomain
  = lens _ePrimaryDomain
      (\ s a -> s{_ePrimaryDomain = a})

-- | The name of the enterprise, for example, \"Example, Inc\".
eName :: Lens' Enterprise (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | The unique ID for the enterprise.
eId :: Lens' Enterprise (Maybe Text)
eId = lens _eId (\ s a -> s{_eId = a})

instance FromJSON Enterprise where
        parseJSON
          = withObject "Enterprise"
              (\ o ->
                 Enterprise' <$>
                   (o .:? "kind" .!= "androidenterprise#enterprise") <*>
                     (o .:? "administrator" .!= mempty)
                     <*> (o .:? "primaryDomain")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Enterprise where
        toJSON Enterprise'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eKind),
                  ("administrator" .=) <$> _eAdministrator,
                  ("primaryDomain" .=) <$> _ePrimaryDomain,
                  ("name" .=) <$> _eName, ("id" .=) <$> _eId])

-- | An event generated when an app installation failed on a device
--
-- /See:/ 'installFailureEvent' smart constructor.
data InstallFailureEvent =
  InstallFailureEvent'
    { _ifeFailureReason  :: !(Maybe Text)
    , _ifeFailureDetails :: !(Maybe Text)
    , _ifeUserId         :: !(Maybe Text)
    , _ifeDeviceId       :: !(Maybe Text)
    , _ifeProductId      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstallFailureEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifeFailureReason'
--
-- * 'ifeFailureDetails'
--
-- * 'ifeUserId'
--
-- * 'ifeDeviceId'
--
-- * 'ifeProductId'
installFailureEvent
    :: InstallFailureEvent
installFailureEvent =
  InstallFailureEvent'
    { _ifeFailureReason = Nothing
    , _ifeFailureDetails = Nothing
    , _ifeUserId = Nothing
    , _ifeDeviceId = Nothing
    , _ifeProductId = Nothing
    }

-- | The reason for the installation failure. This field will always be
-- present.
ifeFailureReason :: Lens' InstallFailureEvent (Maybe Text)
ifeFailureReason
  = lens _ifeFailureReason
      (\ s a -> s{_ifeFailureReason = a})

-- | Additional details on the failure if applicable.
ifeFailureDetails :: Lens' InstallFailureEvent (Maybe Text)
ifeFailureDetails
  = lens _ifeFailureDetails
      (\ s a -> s{_ifeFailureDetails = a})

-- | The ID of the user. This field will always be present.
ifeUserId :: Lens' InstallFailureEvent (Maybe Text)
ifeUserId
  = lens _ifeUserId (\ s a -> s{_ifeUserId = a})

-- | The Android ID of the device. This field will always be present.
ifeDeviceId :: Lens' InstallFailureEvent (Maybe Text)
ifeDeviceId
  = lens _ifeDeviceId (\ s a -> s{_ifeDeviceId = a})

-- | The id of the product (e.g. \"app:com.google.android.gm\") for which the
-- install failure event occured. This field will always be present.
ifeProductId :: Lens' InstallFailureEvent (Maybe Text)
ifeProductId
  = lens _ifeProductId (\ s a -> s{_ifeProductId = a})

instance FromJSON InstallFailureEvent where
        parseJSON
          = withObject "InstallFailureEvent"
              (\ o ->
                 InstallFailureEvent' <$>
                   (o .:? "failureReason") <*> (o .:? "failureDetails")
                     <*> (o .:? "userId")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "productId"))

instance ToJSON InstallFailureEvent where
        toJSON InstallFailureEvent'{..}
          = object
              (catMaybes
                 [("failureReason" .=) <$> _ifeFailureReason,
                  ("failureDetails" .=) <$> _ifeFailureDetails,
                  ("userId" .=) <$> _ifeUserId,
                  ("deviceId" .=) <$> _ifeDeviceId,
                  ("productId" .=) <$> _ifeProductId])

-- | The managed configuration resources for the user.
--
-- /See:/ 'managedConfigurationsForUserListResponse' smart constructor.
data ManagedConfigurationsForUserListResponse =
  ManagedConfigurationsForUserListResponse'
    { _mcfulrManagedConfigurationForUser :: !(Maybe [ManagedConfiguration])
    , _mcfulrKind                        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationsForUserListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcfulrManagedConfigurationForUser'
--
-- * 'mcfulrKind'
managedConfigurationsForUserListResponse
    :: ManagedConfigurationsForUserListResponse
managedConfigurationsForUserListResponse =
  ManagedConfigurationsForUserListResponse'
    { _mcfulrManagedConfigurationForUser = Nothing
    , _mcfulrKind = "androidenterprise#managedConfigurationsForUserListResponse"
    }

-- | A managed configuration for an app for a specific user.
mcfulrManagedConfigurationForUser :: Lens' ManagedConfigurationsForUserListResponse [ManagedConfiguration]
mcfulrManagedConfigurationForUser
  = lens _mcfulrManagedConfigurationForUser
      (\ s a -> s{_mcfulrManagedConfigurationForUser = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#managedConfigurationsForUserListResponse\".
mcfulrKind :: Lens' ManagedConfigurationsForUserListResponse Text
mcfulrKind
  = lens _mcfulrKind (\ s a -> s{_mcfulrKind = a})

instance FromJSON
           ManagedConfigurationsForUserListResponse
         where
        parseJSON
          = withObject
              "ManagedConfigurationsForUserListResponse"
              (\ o ->
                 ManagedConfigurationsForUserListResponse' <$>
                   (o .:? "managedConfigurationForUser" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidenterprise#managedConfigurationsForUserListResponse"))

instance ToJSON
           ManagedConfigurationsForUserListResponse
         where
        toJSON ManagedConfigurationsForUserListResponse'{..}
          = object
              (catMaybes
                 [("managedConfigurationForUser" .=) <$>
                    _mcfulrManagedConfigurationForUser,
                  Just ("kind" .= _mcfulrKind)])

-- | A configuration variables resource contains the managed configuration
-- settings ID to be applied to a single user, as well as the variable set
-- that is attributed to the user. The variable set will be used to replace
-- placeholders in the managed configuration settings.
--
-- /See:/ 'configurationVariables' smart constructor.
data ConfigurationVariables =
  ConfigurationVariables'
    { _cvKind        :: !Text
    , _cvMcmId       :: !(Maybe Text)
    , _cvVariableSet :: !(Maybe [VariableSet])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConfigurationVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvKind'
--
-- * 'cvMcmId'
--
-- * 'cvVariableSet'
configurationVariables
    :: ConfigurationVariables
configurationVariables =
  ConfigurationVariables'
    { _cvKind = "androidenterprise#configurationVariables"
    , _cvMcmId = Nothing
    , _cvVariableSet = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#configurationVariables\".
cvKind :: Lens' ConfigurationVariables Text
cvKind = lens _cvKind (\ s a -> s{_cvKind = a})

-- | The ID of the managed configurations settings.
cvMcmId :: Lens' ConfigurationVariables (Maybe Text)
cvMcmId = lens _cvMcmId (\ s a -> s{_cvMcmId = a})

-- | The variable set that is attributed to the user.
cvVariableSet :: Lens' ConfigurationVariables [VariableSet]
cvVariableSet
  = lens _cvVariableSet
      (\ s a -> s{_cvVariableSet = a})
      . _Default
      . _Coerce

instance FromJSON ConfigurationVariables where
        parseJSON
          = withObject "ConfigurationVariables"
              (\ o ->
                 ConfigurationVariables' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#configurationVariables")
                     <*> (o .:? "mcmId")
                     <*> (o .:? "variableSet" .!= mempty))

instance ToJSON ConfigurationVariables where
        toJSON ConfigurationVariables'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cvKind), ("mcmId" .=) <$> _cvMcmId,
                  ("variableSet" .=) <$> _cvVariableSet])

-- | General setting for the managed Google Play store layout, currently only
-- specifying the page to display the first time the store is opened.
--
-- /See:/ 'storeLayout' smart constructor.
data StoreLayout =
  StoreLayout'
    { _slStoreLayoutType :: !(Maybe Text)
    , _slKind            :: !Text
    , _slHomepageId      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StoreLayout' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slStoreLayoutType'
--
-- * 'slKind'
--
-- * 'slHomepageId'
storeLayout
    :: StoreLayout
storeLayout =
  StoreLayout'
    { _slStoreLayoutType = Nothing
    , _slKind = "androidenterprise#storeLayout"
    , _slHomepageId = Nothing
    }

-- | The store layout type. By default, this value is set to \"basic\" if the
-- homepageId field is not set, and to \"custom\" otherwise. If set to
-- \"basic\", the layout will consist of all approved apps that have been
-- whitelisted for the user.
slStoreLayoutType :: Lens' StoreLayout (Maybe Text)
slStoreLayoutType
  = lens _slStoreLayoutType
      (\ s a -> s{_slStoreLayoutType = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#storeLayout\".
slKind :: Lens' StoreLayout Text
slKind = lens _slKind (\ s a -> s{_slKind = a})

-- | The ID of the store page to be used as the homepage. The homepage is the
-- first page shown in the managed Google Play Store. Not specifying a
-- homepage is equivalent to setting the store layout type to \"basic\".
slHomepageId :: Lens' StoreLayout (Maybe Text)
slHomepageId
  = lens _slHomepageId (\ s a -> s{_slHomepageId = a})

instance FromJSON StoreLayout where
        parseJSON
          = withObject "StoreLayout"
              (\ o ->
                 StoreLayout' <$>
                   (o .:? "storeLayoutType") <*>
                     (o .:? "kind" .!= "androidenterprise#storeLayout")
                     <*> (o .:? "homepageId"))

instance ToJSON StoreLayout where
        toJSON StoreLayout'{..}
          = object
              (catMaybes
                 [("storeLayoutType" .=) <$> _slStoreLayoutType,
                  Just ("kind" .= _slKind),
                  ("homepageId" .=) <$> _slHomepageId])

-- | An event generated when a new app version is uploaded to Google Play and
-- its app restrictions schema changed. To fetch the app restrictions
-- schema for an app, use Products.getAppRestrictionsSchema on the EMM API.
--
-- /See:/ 'appRestrictionsSchemaChangeEvent' smart constructor.
newtype AppRestrictionsSchemaChangeEvent =
  AppRestrictionsSchemaChangeEvent'
    { _arsceProductId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppRestrictionsSchemaChangeEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsceProductId'
appRestrictionsSchemaChangeEvent
    :: AppRestrictionsSchemaChangeEvent
appRestrictionsSchemaChangeEvent =
  AppRestrictionsSchemaChangeEvent' {_arsceProductId = Nothing}

-- | The id of the product (e.g. \"app:com.google.android.gm\") for which the
-- app restriction schema changed. This field will always be present.
arsceProductId :: Lens' AppRestrictionsSchemaChangeEvent (Maybe Text)
arsceProductId
  = lens _arsceProductId
      (\ s a -> s{_arsceProductId = a})

instance FromJSON AppRestrictionsSchemaChangeEvent
         where
        parseJSON
          = withObject "AppRestrictionsSchemaChangeEvent"
              (\ o ->
                 AppRestrictionsSchemaChangeEvent' <$>
                   (o .:? "productId"))

instance ToJSON AppRestrictionsSchemaChangeEvent
         where
        toJSON AppRestrictionsSchemaChangeEvent'{..}
          = object
              (catMaybes [("productId" .=) <$> _arsceProductId])

-- | An event generated when a new device is ready to be managed.
--
-- /See:/ 'newDeviceEvent' smart constructor.
data NewDeviceEvent =
  NewDeviceEvent'
    { _ndeUserId         :: !(Maybe Text)
    , _ndeDpcPackageName :: !(Maybe Text)
    , _ndeDeviceId       :: !(Maybe Text)
    , _ndeManagementType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NewDeviceEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndeUserId'
--
-- * 'ndeDpcPackageName'
--
-- * 'ndeDeviceId'
--
-- * 'ndeManagementType'
newDeviceEvent
    :: NewDeviceEvent
newDeviceEvent =
  NewDeviceEvent'
    { _ndeUserId = Nothing
    , _ndeDpcPackageName = Nothing
    , _ndeDeviceId = Nothing
    , _ndeManagementType = Nothing
    }

-- | The ID of the user. This field will always be present.
ndeUserId :: Lens' NewDeviceEvent (Maybe Text)
ndeUserId
  = lens _ndeUserId (\ s a -> s{_ndeUserId = a})

-- | Policy app on the device.
ndeDpcPackageName :: Lens' NewDeviceEvent (Maybe Text)
ndeDpcPackageName
  = lens _ndeDpcPackageName
      (\ s a -> s{_ndeDpcPackageName = a})

-- | The Android ID of the device. This field will always be present.
ndeDeviceId :: Lens' NewDeviceEvent (Maybe Text)
ndeDeviceId
  = lens _ndeDeviceId (\ s a -> s{_ndeDeviceId = a})

-- | Identifies the extent to which the device is controlled by an Android
-- EMM in various deployment configurations. Possible values include: -
-- \"managedDevice\", a device where the DPC is set as device owner, -
-- \"managedProfile\", a device where the DPC is set as profile owner.
ndeManagementType :: Lens' NewDeviceEvent (Maybe Text)
ndeManagementType
  = lens _ndeManagementType
      (\ s a -> s{_ndeManagementType = a})

instance FromJSON NewDeviceEvent where
        parseJSON
          = withObject "NewDeviceEvent"
              (\ o ->
                 NewDeviceEvent' <$>
                   (o .:? "userId") <*> (o .:? "dpcPackageName") <*>
                     (o .:? "deviceId")
                     <*> (o .:? "managementType"))

instance ToJSON NewDeviceEvent where
        toJSON NewDeviceEvent'{..}
          = object
              (catMaybes
                 [("userId" .=) <$> _ndeUserId,
                  ("dpcPackageName" .=) <$> _ndeDpcPackageName,
                  ("deviceId" .=) <$> _ndeDeviceId,
                  ("managementType" .=) <$> _ndeManagementType])

-- | The device policy for a given managed device.
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pProductAvailabilityPolicy :: !(Maybe Text)
    , _pProductPolicy             :: !(Maybe [ProductPolicy])
    , _pMaintenanceWindow         :: !(Maybe MaintenanceWindow)
    , _pAutoUpdatePolicy          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pProductAvailabilityPolicy'
--
-- * 'pProductPolicy'
--
-- * 'pMaintenanceWindow'
--
-- * 'pAutoUpdatePolicy'
policy
    :: Policy
policy =
  Policy'
    { _pProductAvailabilityPolicy = Nothing
    , _pProductPolicy = Nothing
    , _pMaintenanceWindow = Nothing
    , _pAutoUpdatePolicy = Nothing
    }

-- | The availability granted to the device for the specified products.
-- \"all\" gives the device access to all products, regardless of approval
-- status. \"all\" does not enable automatic visibility of \"alpha\" or
-- \"beta\" tracks. \"whitelist\" grants the device access the products
-- specified in productPolicy[]. Only products that are approved or
-- products that were previously approved (products with revoked approval)
-- by the enterprise can be whitelisted. If no value is provided, the
-- availability set at the user level is applied by default.
pProductAvailabilityPolicy :: Lens' Policy (Maybe Text)
pProductAvailabilityPolicy
  = lens _pProductAvailabilityPolicy
      (\ s a -> s{_pProductAvailabilityPolicy = a})

-- | The list of product policies.
pProductPolicy :: Lens' Policy [ProductPolicy]
pProductPolicy
  = lens _pProductPolicy
      (\ s a -> s{_pProductPolicy = a})
      . _Default
      . _Coerce

-- | The maintenance window defining when apps running in the foreground
-- should be updated.
pMaintenanceWindow :: Lens' Policy (Maybe MaintenanceWindow)
pMaintenanceWindow
  = lens _pMaintenanceWindow
      (\ s a -> s{_pMaintenanceWindow = a})

-- | The auto-update policy for apps installed on the device.
-- \"choiceToTheUser\" allows the device\'s user to configure the app
-- update policy. \"always\" enables auto updates. \"never\" disables auto
-- updates. \"wifiOnly\" enables auto updates only when the device is
-- connected to wifi.
pAutoUpdatePolicy :: Lens' Policy (Maybe Text)
pAutoUpdatePolicy
  = lens _pAutoUpdatePolicy
      (\ s a -> s{_pAutoUpdatePolicy = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "productAvailabilityPolicy") <*>
                     (o .:? "productPolicy" .!= mempty)
                     <*> (o .:? "maintenanceWindow")
                     <*> (o .:? "autoUpdatePolicy"))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("productAvailabilityPolicy" .=) <$>
                    _pProductAvailabilityPolicy,
                  ("productPolicy" .=) <$> _pProductPolicy,
                  ("maintenanceWindow" .=) <$> _pMaintenanceWindow,
                  ("autoUpdatePolicy" .=) <$> _pAutoUpdatePolicy])

-- | A token authorizing an admin to access an iframe.
--
-- /See:/ 'administratorWebToken' smart constructor.
data AdministratorWebToken =
  AdministratorWebToken'
    { _awtKind  :: !Text
    , _awtToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdministratorWebToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtKind'
--
-- * 'awtToken'
administratorWebToken
    :: AdministratorWebToken
administratorWebToken =
  AdministratorWebToken'
    {_awtKind = "androidenterprise#administratorWebToken", _awtToken = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#administratorWebToken\".
awtKind :: Lens' AdministratorWebToken Text
awtKind = lens _awtKind (\ s a -> s{_awtKind = a})

-- | An opaque token to be passed to the Play front-end to generate an
-- iframe.
awtToken :: Lens' AdministratorWebToken (Maybe Text)
awtToken = lens _awtToken (\ s a -> s{_awtToken = a})

instance FromJSON AdministratorWebToken where
        parseJSON
          = withObject "AdministratorWebToken"
              (\ o ->
                 AdministratorWebToken' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#administratorWebToken")
                     <*> (o .:? "token"))

instance ToJSON AdministratorWebToken where
        toJSON AdministratorWebToken'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _awtKind),
                  ("token" .=) <$> _awtToken])

-- | A resource returned by the GenerateSignupUrl API, which contains the
-- Signup URL and Completion Token.
--
-- /See:/ 'signupInfo' smart constructor.
data SignupInfo =
  SignupInfo'
    { _siCompletionToken :: !(Maybe Text)
    , _siKind            :: !Text
    , _siURL             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SignupInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siCompletionToken'
--
-- * 'siKind'
--
-- * 'siURL'
signupInfo
    :: SignupInfo
signupInfo =
  SignupInfo'
    { _siCompletionToken = Nothing
    , _siKind = "androidenterprise#signupInfo"
    , _siURL = Nothing
    }

-- | An opaque token that will be required, along with the Enterprise Token,
-- for obtaining the enterprise resource from CompleteSignup.
siCompletionToken :: Lens' SignupInfo (Maybe Text)
siCompletionToken
  = lens _siCompletionToken
      (\ s a -> s{_siCompletionToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#signupInfo\".
siKind :: Lens' SignupInfo Text
siKind = lens _siKind (\ s a -> s{_siKind = a})

-- | A URL under which the Admin can sign up for an enterprise. The page
-- pointed to cannot be rendered in an iframe.
siURL :: Lens' SignupInfo (Maybe Text)
siURL = lens _siURL (\ s a -> s{_siURL = a})

instance FromJSON SignupInfo where
        parseJSON
          = withObject "SignupInfo"
              (\ o ->
                 SignupInfo' <$>
                   (o .:? "completionToken") <*>
                     (o .:? "kind" .!= "androidenterprise#signupInfo")
                     <*> (o .:? "url"))

instance ToJSON SignupInfo where
        toJSON SignupInfo'{..}
          = object
              (catMaybes
                 [("completionToken" .=) <$> _siCompletionToken,
                  Just ("kind" .= _siKind), ("url" .=) <$> _siURL])

-- | A Products resource represents an app in the Google Play store that is
-- available to at least some users in the enterprise. (Some apps are
-- restricted to a single enterprise, and no information about them is made
-- available outside that enterprise.) The information provided for each
-- product (localized name, icon, link to the full Google Play details
-- page) is intended to allow a basic representation of the product within
-- an EMM user interface.
--
-- /See:/ 'product' smart constructor.
data Product =
  Product'
    { _pScreenshotURLs             :: !(Maybe [Text])
    , _pLastUpdatedTimestampMillis :: !(Maybe (Textual Int64))
    , _pSmallIconURL               :: !(Maybe Text)
    , _pAuthorName                 :: !(Maybe Text)
    , _pAppTracks                  :: !(Maybe [TrackInfo])
    , _pKind                       :: !Text
    , _pWorkDetailsURL             :: !(Maybe Text)
    , _pRequiresContainerApp       :: !(Maybe Bool)
    , _pCategory                   :: !(Maybe Text)
    , _pAppVersion                 :: !(Maybe [AppVersion])
    , _pProductPricing             :: !(Maybe Text)
    , _pDistributionChannel        :: !(Maybe Text)
    , _pMinAndroidSdkVersion       :: !(Maybe (Textual Int32))
    , _pAvailableCountries         :: !(Maybe [Text])
    , _pAvailableTracks            :: !(Maybe [Text])
    , _pIconURL                    :: !(Maybe Text)
    , _pPermissions                :: !(Maybe [ProductPermission])
    , _pTitle                      :: !(Maybe Text)
    , _pSigningCertificate         :: !(Maybe ProductSigningCertificate)
    , _pContentRating              :: !(Maybe Text)
    , _pProductId                  :: !(Maybe Text)
    , _pRecentChanges              :: !(Maybe Text)
    , _pDescription                :: !(Maybe Text)
    , _pDetailsURL                 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pScreenshotURLs'
--
-- * 'pLastUpdatedTimestampMillis'
--
-- * 'pSmallIconURL'
--
-- * 'pAuthorName'
--
-- * 'pAppTracks'
--
-- * 'pKind'
--
-- * 'pWorkDetailsURL'
--
-- * 'pRequiresContainerApp'
--
-- * 'pCategory'
--
-- * 'pAppVersion'
--
-- * 'pProductPricing'
--
-- * 'pDistributionChannel'
--
-- * 'pMinAndroidSdkVersion'
--
-- * 'pAvailableCountries'
--
-- * 'pAvailableTracks'
--
-- * 'pIconURL'
--
-- * 'pPermissions'
--
-- * 'pTitle'
--
-- * 'pSigningCertificate'
--
-- * 'pContentRating'
--
-- * 'pProductId'
--
-- * 'pRecentChanges'
--
-- * 'pDescription'
--
-- * 'pDetailsURL'
product
    :: Product
product =
  Product'
    { _pScreenshotURLs = Nothing
    , _pLastUpdatedTimestampMillis = Nothing
    , _pSmallIconURL = Nothing
    , _pAuthorName = Nothing
    , _pAppTracks = Nothing
    , _pKind = "androidenterprise#product"
    , _pWorkDetailsURL = Nothing
    , _pRequiresContainerApp = Nothing
    , _pCategory = Nothing
    , _pAppVersion = Nothing
    , _pProductPricing = Nothing
    , _pDistributionChannel = Nothing
    , _pMinAndroidSdkVersion = Nothing
    , _pAvailableCountries = Nothing
    , _pAvailableTracks = Nothing
    , _pIconURL = Nothing
    , _pPermissions = Nothing
    , _pTitle = Nothing
    , _pSigningCertificate = Nothing
    , _pContentRating = Nothing
    , _pProductId = Nothing
    , _pRecentChanges = Nothing
    , _pDescription = Nothing
    , _pDetailsURL = Nothing
    }

-- | A list of screenshot links representing the app.
pScreenshotURLs :: Lens' Product [Text]
pScreenshotURLs
  = lens _pScreenshotURLs
      (\ s a -> s{_pScreenshotURLs = a})
      . _Default
      . _Coerce

-- | The approximate time (within 7 days) the app was last published,
-- expressed in milliseconds since epoch.
pLastUpdatedTimestampMillis :: Lens' Product (Maybe Int64)
pLastUpdatedTimestampMillis
  = lens _pLastUpdatedTimestampMillis
      (\ s a -> s{_pLastUpdatedTimestampMillis = a})
      . mapping _Coerce

-- | A link to a smaller image that can be used as an icon for the product.
-- This image is suitable for use at up to 128px x 128px.
pSmallIconURL :: Lens' Product (Maybe Text)
pSmallIconURL
  = lens _pSmallIconURL
      (\ s a -> s{_pSmallIconURL = a})

-- | The name of the author of the product (for example, the app developer).
pAuthorName :: Lens' Product (Maybe Text)
pAuthorName
  = lens _pAuthorName (\ s a -> s{_pAuthorName = a})

-- | The tracks visible to the enterprise.
pAppTracks :: Lens' Product [TrackInfo]
pAppTracks
  = lens _pAppTracks (\ s a -> s{_pAppTracks = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#product\".
pKind :: Lens' Product Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | A link to the managed Google Play details page for the product, for use
-- by an Enterprise admin.
pWorkDetailsURL :: Lens' Product (Maybe Text)
pWorkDetailsURL
  = lens _pWorkDetailsURL
      (\ s a -> s{_pWorkDetailsURL = a})

-- | Deprecated.
pRequiresContainerApp :: Lens' Product (Maybe Bool)
pRequiresContainerApp
  = lens _pRequiresContainerApp
      (\ s a -> s{_pRequiresContainerApp = a})

-- | The app category (e.g. RACING, SOCIAL, etc.)
pCategory :: Lens' Product (Maybe Text)
pCategory
  = lens _pCategory (\ s a -> s{_pCategory = a})

-- | App versions currently available for this product.
pAppVersion :: Lens' Product [AppVersion]
pAppVersion
  = lens _pAppVersion (\ s a -> s{_pAppVersion = a}) .
      _Default
      . _Coerce

-- | Whether this product is free, free with in-app purchases, or paid. If
-- the pricing is unknown, this means the product is not generally
-- available anymore (even though it might still be available to people who
-- own it).
pProductPricing :: Lens' Product (Maybe Text)
pProductPricing
  = lens _pProductPricing
      (\ s a -> s{_pProductPricing = a})

-- | How and to whom the package is made available. The value
-- publicGoogleHosted means that the package is available through the Play
-- store and not restricted to a specific enterprise. The value
-- privateGoogleHosted means that the package is a private app (restricted
-- to an enterprise) but hosted by Google. The value privateSelfHosted
-- means that the package is a private app (restricted to an enterprise)
-- and is privately hosted.
pDistributionChannel :: Lens' Product (Maybe Text)
pDistributionChannel
  = lens _pDistributionChannel
      (\ s a -> s{_pDistributionChannel = a})

-- | The minimum Android SDK necessary to run the app.
pMinAndroidSdkVersion :: Lens' Product (Maybe Int32)
pMinAndroidSdkVersion
  = lens _pMinAndroidSdkVersion
      (\ s a -> s{_pMinAndroidSdkVersion = a})
      . mapping _Coerce

-- | The countries which this app is available in.
pAvailableCountries :: Lens' Product [Text]
pAvailableCountries
  = lens _pAvailableCountries
      (\ s a -> s{_pAvailableCountries = a})
      . _Default
      . _Coerce

-- | Deprecated, use appTracks instead.
pAvailableTracks :: Lens' Product [Text]
pAvailableTracks
  = lens _pAvailableTracks
      (\ s a -> s{_pAvailableTracks = a})
      . _Default
      . _Coerce

-- | A link to an image that can be used as an icon for the product. This
-- image is suitable for use at up to 512px x 512px.
pIconURL :: Lens' Product (Maybe Text)
pIconURL = lens _pIconURL (\ s a -> s{_pIconURL = a})

-- | A list of permissions required by the app.
pPermissions :: Lens' Product [ProductPermission]
pPermissions
  = lens _pPermissions (\ s a -> s{_pPermissions = a})
      . _Default
      . _Coerce

-- | The name of the product.
pTitle :: Lens' Product (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

-- | The certificate used to sign this product.
pSigningCertificate :: Lens' Product (Maybe ProductSigningCertificate)
pSigningCertificate
  = lens _pSigningCertificate
      (\ s a -> s{_pSigningCertificate = a})

-- | The content rating for this app.
pContentRating :: Lens' Product (Maybe Text)
pContentRating
  = lens _pContentRating
      (\ s a -> s{_pContentRating = a})

-- | A string of the form app:. For example, app:com.google.android.gm
-- represents the Gmail app.
pProductId :: Lens' Product (Maybe Text)
pProductId
  = lens _pProductId (\ s a -> s{_pProductId = a})

-- | A description of the recent changes made to the app.
pRecentChanges :: Lens' Product (Maybe Text)
pRecentChanges
  = lens _pRecentChanges
      (\ s a -> s{_pRecentChanges = a})

-- | The localized promotional description, if available.
pDescription :: Lens' Product (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

-- | A link to the (consumer) Google Play details page for the product.
pDetailsURL :: Lens' Product (Maybe Text)
pDetailsURL
  = lens _pDetailsURL (\ s a -> s{_pDetailsURL = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "screenshotUrls" .!= mempty) <*>
                     (o .:? "lastUpdatedTimestampMillis")
                     <*> (o .:? "smallIconUrl")
                     <*> (o .:? "authorName")
                     <*> (o .:? "appTracks" .!= mempty)
                     <*> (o .:? "kind" .!= "androidenterprise#product")
                     <*> (o .:? "workDetailsUrl")
                     <*> (o .:? "requiresContainerApp")
                     <*> (o .:? "category")
                     <*> (o .:? "appVersion" .!= mempty)
                     <*> (o .:? "productPricing")
                     <*> (o .:? "distributionChannel")
                     <*> (o .:? "minAndroidSdkVersion")
                     <*> (o .:? "availableCountries" .!= mempty)
                     <*> (o .:? "availableTracks" .!= mempty)
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "permissions" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "signingCertificate")
                     <*> (o .:? "contentRating")
                     <*> (o .:? "productId")
                     <*> (o .:? "recentChanges")
                     <*> (o .:? "description")
                     <*> (o .:? "detailsUrl"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("screenshotUrls" .=) <$> _pScreenshotURLs,
                  ("lastUpdatedTimestampMillis" .=) <$>
                    _pLastUpdatedTimestampMillis,
                  ("smallIconUrl" .=) <$> _pSmallIconURL,
                  ("authorName" .=) <$> _pAuthorName,
                  ("appTracks" .=) <$> _pAppTracks,
                  Just ("kind" .= _pKind),
                  ("workDetailsUrl" .=) <$> _pWorkDetailsURL,
                  ("requiresContainerApp" .=) <$>
                    _pRequiresContainerApp,
                  ("category" .=) <$> _pCategory,
                  ("appVersion" .=) <$> _pAppVersion,
                  ("productPricing" .=) <$> _pProductPricing,
                  ("distributionChannel" .=) <$> _pDistributionChannel,
                  ("minAndroidSdkVersion" .=) <$>
                    _pMinAndroidSdkVersion,
                  ("availableCountries" .=) <$> _pAvailableCountries,
                  ("availableTracks" .=) <$> _pAvailableTracks,
                  ("iconUrl" .=) <$> _pIconURL,
                  ("permissions" .=) <$> _pPermissions,
                  ("title" .=) <$> _pTitle,
                  ("signingCertificate" .=) <$> _pSigningCertificate,
                  ("contentRating" .=) <$> _pContentRating,
                  ("productId" .=) <$> _pProductId,
                  ("recentChanges" .=) <$> _pRecentChanges,
                  ("description" .=) <$> _pDescription,
                  ("detailsUrl" .=) <$> _pDetailsURL])

-- | The entitlement resources for the user.
--
-- /See:/ 'entitlementsListResponse' smart constructor.
data EntitlementsListResponse =
  EntitlementsListResponse'
    { _entKind        :: !Text
    , _entEntitlement :: !(Maybe [Entitlement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EntitlementsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entKind'
--
-- * 'entEntitlement'
entitlementsListResponse
    :: EntitlementsListResponse
entitlementsListResponse =
  EntitlementsListResponse'
    { _entKind = "androidenterprise#entitlementsListResponse"
    , _entEntitlement = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#entitlementsListResponse\".
entKind :: Lens' EntitlementsListResponse Text
entKind = lens _entKind (\ s a -> s{_entKind = a})

-- | An entitlement of a user to a product (e.g. an app). For example, a free
-- app that they have installed, or a paid app that they have been
-- allocated a license to.
entEntitlement :: Lens' EntitlementsListResponse [Entitlement]
entEntitlement
  = lens _entEntitlement
      (\ s a -> s{_entEntitlement = a})
      . _Default
      . _Coerce

instance FromJSON EntitlementsListResponse where
        parseJSON
          = withObject "EntitlementsListResponse"
              (\ o ->
                 EntitlementsListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#entitlementsListResponse")
                     <*> (o .:? "entitlement" .!= mempty))

instance ToJSON EntitlementsListResponse where
        toJSON EntitlementsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _entKind),
                  ("entitlement" .=) <$> _entEntitlement])

-- | Information about the permissions required by a specific app and whether
-- they have been accepted by the enterprise.
--
-- /See:/ 'productPermissions' smart constructor.
data ProductPermissions =
  ProductPermissions'
    { _ppsKind       :: !Text
    , _ppsPermission :: !(Maybe [ProductPermission])
    , _ppsProductId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppsKind'
--
-- * 'ppsPermission'
--
-- * 'ppsProductId'
productPermissions
    :: ProductPermissions
productPermissions =
  ProductPermissions'
    { _ppsKind = "androidenterprise#productPermissions"
    , _ppsPermission = Nothing
    , _ppsProductId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#productPermissions\".
ppsKind :: Lens' ProductPermissions Text
ppsKind = lens _ppsKind (\ s a -> s{_ppsKind = a})

-- | The permissions required by the app.
ppsPermission :: Lens' ProductPermissions [ProductPermission]
ppsPermission
  = lens _ppsPermission
      (\ s a -> s{_ppsPermission = a})
      . _Default
      . _Coerce

-- | The ID of the app that the permissions relate to, e.g.
-- \"app:com.google.android.gm\".
ppsProductId :: Lens' ProductPermissions (Maybe Text)
ppsProductId
  = lens _ppsProductId (\ s a -> s{_ppsProductId = a})

instance FromJSON ProductPermissions where
        parseJSON
          = withObject "ProductPermissions"
              (\ o ->
                 ProductPermissions' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#productPermissions")
                     <*> (o .:? "permission" .!= mempty)
                     <*> (o .:? "productId"))

instance ToJSON ProductPermissions where
        toJSON ProductPermissions'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ppsKind),
                  ("permission" .=) <$> _ppsPermission,
                  ("productId" .=) <$> _ppsProductId])

--
-- /See:/ 'administratorWebTokenSpecManagedConfigurations' smart constructor.
newtype AdministratorWebTokenSpecManagedConfigurations =
  AdministratorWebTokenSpecManagedConfigurations'
    { _awtsmcEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdministratorWebTokenSpecManagedConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtsmcEnabled'
administratorWebTokenSpecManagedConfigurations
    :: AdministratorWebTokenSpecManagedConfigurations
administratorWebTokenSpecManagedConfigurations =
  AdministratorWebTokenSpecManagedConfigurations' {_awtsmcEnabled = Nothing}

-- | Whether the Managed Configuration page is displayed. Default is true.
awtsmcEnabled :: Lens' AdministratorWebTokenSpecManagedConfigurations (Maybe Bool)
awtsmcEnabled
  = lens _awtsmcEnabled
      (\ s a -> s{_awtsmcEnabled = a})

instance FromJSON
           AdministratorWebTokenSpecManagedConfigurations
         where
        parseJSON
          = withObject
              "AdministratorWebTokenSpecManagedConfigurations"
              (\ o ->
                 AdministratorWebTokenSpecManagedConfigurations' <$>
                   (o .:? "enabled"))

instance ToJSON
           AdministratorWebTokenSpecManagedConfigurations
         where
        toJSON
          AdministratorWebTokenSpecManagedConfigurations'{..}
          = object
              (catMaybes [("enabled" .=) <$> _awtsmcEnabled])

-- | A Permissions resource represents some extra capability, to be granted
-- to an Android app, which requires explicit consent. An enterprise admin
-- must consent to these permissions on behalf of their users before an
-- entitlement for the app can be created. The permissions collection is
-- read-only. The information provided for each permission (localized name
-- and description) is intended to be used in the MDM user interface when
-- obtaining consent from the enterprise.
--
-- /See:/ 'permission' smart constructor.
data Permission =
  Permission'
    { _perKind         :: !Text
    , _perName         :: !(Maybe Text)
    , _perDescription  :: !(Maybe Text)
    , _perPermissionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perKind'
--
-- * 'perName'
--
-- * 'perDescription'
--
-- * 'perPermissionId'
permission
    :: Permission
permission =
  Permission'
    { _perKind = "androidenterprise#permission"
    , _perName = Nothing
    , _perDescription = Nothing
    , _perPermissionId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#permission\".
perKind :: Lens' Permission Text
perKind = lens _perKind (\ s a -> s{_perKind = a})

-- | The name of the permission.
perName :: Lens' Permission (Maybe Text)
perName = lens _perName (\ s a -> s{_perName = a})

-- | A longer description of the Permissions resource, giving more details of
-- what it affects.
perDescription :: Lens' Permission (Maybe Text)
perDescription
  = lens _perDescription
      (\ s a -> s{_perDescription = a})

-- | An opaque string uniquely identifying the permission.
perPermissionId :: Lens' Permission (Maybe Text)
perPermissionId
  = lens _perPermissionId
      (\ s a -> s{_perPermissionId = a})

instance FromJSON Permission where
        parseJSON
          = withObject "Permission"
              (\ o ->
                 Permission' <$>
                   (o .:? "kind" .!= "androidenterprise#permission") <*>
                     (o .:? "name")
                     <*> (o .:? "description")
                     <*> (o .:? "permissionId"))

instance ToJSON Permission where
        toJSON Permission'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _perKind), ("name" .=) <$> _perName,
                  ("description" .=) <$> _perDescription,
                  ("permissionId" .=) <$> _perPermissionId])

-- | The web app details for an enterprise.
--
-- /See:/ 'webAppsListResponse' smart constructor.
data WebAppsListResponse =
  WebAppsListResponse'
    { _walrKind   :: !Text
    , _walrWebApp :: !(Maybe [WebApp])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebAppsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'walrKind'
--
-- * 'walrWebApp'
webAppsListResponse
    :: WebAppsListResponse
webAppsListResponse =
  WebAppsListResponse'
    {_walrKind = "androidenterprise#webAppsListResponse", _walrWebApp = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#webAppsListResponse\".
walrKind :: Lens' WebAppsListResponse Text
walrKind = lens _walrKind (\ s a -> s{_walrKind = a})

-- | The manifest describing a web app.
walrWebApp :: Lens' WebAppsListResponse [WebApp]
walrWebApp
  = lens _walrWebApp (\ s a -> s{_walrWebApp = a}) .
      _Default
      . _Coerce

instance FromJSON WebAppsListResponse where
        parseJSON
          = withObject "WebAppsListResponse"
              (\ o ->
                 WebAppsListResponse' <$>
                   (o .:? "kind" .!=
                      "androidenterprise#webAppsListResponse")
                     <*> (o .:? "webApp" .!= mempty))

instance ToJSON WebAppsListResponse where
        toJSON WebAppsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _walrKind),
                  ("webApp" .=) <$> _walrWebApp])

--
-- /See:/ 'productsApproveRequest' smart constructor.
data ProductsApproveRequest =
  ProductsApproveRequest'
    { _parApprovalURLInfo     :: !(Maybe ApprovalURLInfo)
    , _parApprovedPermissions :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsApproveRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parApprovalURLInfo'
--
-- * 'parApprovedPermissions'
productsApproveRequest
    :: ProductsApproveRequest
productsApproveRequest =
  ProductsApproveRequest'
    {_parApprovalURLInfo = Nothing, _parApprovedPermissions = Nothing}

-- | The approval URL that was shown to the user. Only the permissions shown
-- to the user with that URL will be accepted, which may not be the
-- product\'s entire set of permissions. For example, the URL may only
-- display new permissions from an update after the product was approved,
-- or not include new permissions if the product was updated since the URL
-- was generated.
parApprovalURLInfo :: Lens' ProductsApproveRequest (Maybe ApprovalURLInfo)
parApprovalURLInfo
  = lens _parApprovalURLInfo
      (\ s a -> s{_parApprovalURLInfo = a})

-- | Sets how new permission requests for the product are handled.
-- \"allPermissions\" automatically approves all current and future
-- permissions for the product. \"currentPermissionsOnly\" approves the
-- current set of permissions for the product, but any future permissions
-- added through updates will require manual reapproval. If not specified,
-- only the current set of permissions will be approved.
parApprovedPermissions :: Lens' ProductsApproveRequest (Maybe Text)
parApprovedPermissions
  = lens _parApprovedPermissions
      (\ s a -> s{_parApprovedPermissions = a})

instance FromJSON ProductsApproveRequest where
        parseJSON
          = withObject "ProductsApproveRequest"
              (\ o ->
                 ProductsApproveRequest' <$>
                   (o .:? "approvalUrlInfo") <*>
                     (o .:? "approvedPermissions"))

instance ToJSON ProductsApproveRequest where
        toJSON ProductsApproveRequest'{..}
          = object
              (catMaybes
                 [("approvalUrlInfo" .=) <$> _parApprovalURLInfo,
                  ("approvedPermissions" .=) <$>
                    _parApprovedPermissions])

--
-- /See:/ 'autoInstallPolicy' smart constructor.
data AutoInstallPolicy =
  AutoInstallPolicy'
    { _aipAutoInstallConstraint :: !(Maybe [AutoInstallConstraint])
    , _aipAutoInstallPriority   :: !(Maybe (Textual Int32))
    , _aipAutoInstallMode       :: !(Maybe Text)
    , _aipMinimumVersionCode    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoInstallPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aipAutoInstallConstraint'
--
-- * 'aipAutoInstallPriority'
--
-- * 'aipAutoInstallMode'
--
-- * 'aipMinimumVersionCode'
autoInstallPolicy
    :: AutoInstallPolicy
autoInstallPolicy =
  AutoInstallPolicy'
    { _aipAutoInstallConstraint = Nothing
    , _aipAutoInstallPriority = Nothing
    , _aipAutoInstallMode = Nothing
    , _aipMinimumVersionCode = Nothing
    }

-- | The constraints for auto-installing the app. You can specify a maximum
-- of one constraint.
aipAutoInstallConstraint :: Lens' AutoInstallPolicy [AutoInstallConstraint]
aipAutoInstallConstraint
  = lens _aipAutoInstallConstraint
      (\ s a -> s{_aipAutoInstallConstraint = a})
      . _Default
      . _Coerce

-- | The priority of the install, as an unsigned integer. A lower number
-- means higher priority.
aipAutoInstallPriority :: Lens' AutoInstallPolicy (Maybe Int32)
aipAutoInstallPriority
  = lens _aipAutoInstallPriority
      (\ s a -> s{_aipAutoInstallPriority = a})
      . mapping _Coerce

-- | The auto-install mode. If unset defaults to \"doNotAutoInstall\".
aipAutoInstallMode :: Lens' AutoInstallPolicy (Maybe Text)
aipAutoInstallMode
  = lens _aipAutoInstallMode
      (\ s a -> s{_aipAutoInstallMode = a})

-- | The minimum version of the app. If a lower version of the app is
-- installed, then the app will be auto-updated according to the
-- auto-install constraints, instead of waiting for the regular
-- auto-update.
aipMinimumVersionCode :: Lens' AutoInstallPolicy (Maybe Int32)
aipMinimumVersionCode
  = lens _aipMinimumVersionCode
      (\ s a -> s{_aipMinimumVersionCode = a})
      . mapping _Coerce

instance FromJSON AutoInstallPolicy where
        parseJSON
          = withObject "AutoInstallPolicy"
              (\ o ->
                 AutoInstallPolicy' <$>
                   (o .:? "autoInstallConstraint" .!= mempty) <*>
                     (o .:? "autoInstallPriority")
                     <*> (o .:? "autoInstallMode")
                     <*> (o .:? "minimumVersionCode"))

instance ToJSON AutoInstallPolicy where
        toJSON AutoInstallPolicy'{..}
          = object
              (catMaybes
                 [("autoInstallConstraint" .=) <$>
                    _aipAutoInstallConstraint,
                  ("autoInstallPriority" .=) <$>
                    _aipAutoInstallPriority,
                  ("autoInstallMode" .=) <$> _aipAutoInstallMode,
                  ("minimumVersionCode" .=) <$>
                    _aipMinimumVersionCode])

-- | The presence of an Entitlements resource indicates that a user has the
-- right to use a particular app. Entitlements are user specific, not
-- device specific. This allows a user with an entitlement to an app to
-- install the app on all their devices. It\'s also possible for a user to
-- hold an entitlement to an app without installing the app on any device.
-- The API can be used to create an entitlement. As an option, you can also
-- use the API to trigger the installation of an app on all a user\'s
-- managed devices at the same time the entitlement is created. If the app
-- is free, creating the entitlement also creates a group license for that
-- app. For paid apps, creating the entitlement consumes one license, and
-- that license remains consumed until the entitlement is removed. If the
-- enterprise hasn\'t purchased enough licenses, then no entitlement is
-- created and the installation fails. An entitlement is also not created
-- for an app if the app requires permissions that the enterprise hasn\'t
-- accepted. If an entitlement is deleted, the app may be uninstalled from
-- a user\'s device. As a best practice, uninstall the app by calling
-- Installs.delete() before deleting the entitlement. Entitlements for apps
-- that a user pays for on an unmanaged profile have \"userPurchase\" as
-- the entitlement reason. These entitlements cannot be removed via the
-- API.
--
-- /See:/ 'entitlement' smart constructor.
data Entitlement =
  Entitlement'
    { _eeKind      :: !Text
    , _eeReason    :: !(Maybe Text)
    , _eeProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Entitlement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeKind'
--
-- * 'eeReason'
--
-- * 'eeProductId'
entitlement
    :: Entitlement
entitlement =
  Entitlement'
    { _eeKind = "androidenterprise#entitlement"
    , _eeReason = Nothing
    , _eeProductId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#entitlement\".
eeKind :: Lens' Entitlement Text
eeKind = lens _eeKind (\ s a -> s{_eeKind = a})

-- | The reason for the entitlement. For example, \"free\" for free apps.
-- This property is temporary: it will be replaced by the acquisition kind
-- field of group licenses.
eeReason :: Lens' Entitlement (Maybe Text)
eeReason = lens _eeReason (\ s a -> s{_eeReason = a})

-- | The ID of the product that the entitlement is for. For example,
-- \"app:com.google.android.gm\".
eeProductId :: Lens' Entitlement (Maybe Text)
eeProductId
  = lens _eeProductId (\ s a -> s{_eeProductId = a})

instance FromJSON Entitlement where
        parseJSON
          = withObject "Entitlement"
              (\ o ->
                 Entitlement' <$>
                   (o .:? "kind" .!= "androidenterprise#entitlement")
                     <*> (o .:? "reason")
                     <*> (o .:? "productId"))

instance ToJSON Entitlement where
        toJSON Entitlement'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eeKind),
                  ("reason" .=) <$> _eeReason,
                  ("productId" .=) <$> _eeProductId])

-- | The matching products.
--
-- /See:/ 'productsListResponse' smart constructor.
data ProductsListResponse =
  ProductsListResponse'
    { _plrTokenPagination :: !(Maybe TokenPagination)
    , _plrPageInfo        :: !(Maybe PageInfo)
    , _plrKind            :: !Text
    , _plrProduct         :: !(Maybe [Product])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrTokenPagination'
--
-- * 'plrPageInfo'
--
-- * 'plrKind'
--
-- * 'plrProduct'
productsListResponse
    :: ProductsListResponse
productsListResponse =
  ProductsListResponse'
    { _plrTokenPagination = Nothing
    , _plrPageInfo = Nothing
    , _plrKind = "androidenterprise#productsListResponse"
    , _plrProduct = Nothing
    }

-- | Pagination information for token pagination.
plrTokenPagination :: Lens' ProductsListResponse (Maybe TokenPagination)
plrTokenPagination
  = lens _plrTokenPagination
      (\ s a -> s{_plrTokenPagination = a})

-- | General pagination information.
plrPageInfo :: Lens' ProductsListResponse (Maybe PageInfo)
plrPageInfo
  = lens _plrPageInfo (\ s a -> s{_plrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#productsListResponse\".
plrKind :: Lens' ProductsListResponse Text
plrKind = lens _plrKind (\ s a -> s{_plrKind = a})

-- | Information about a product (e.g. an app) in the Google Play store, for
-- display to an enterprise admin.
plrProduct :: Lens' ProductsListResponse [Product]
plrProduct
  = lens _plrProduct (\ s a -> s{_plrProduct = a}) .
      _Default
      . _Coerce

instance FromJSON ProductsListResponse where
        parseJSON
          = withObject "ProductsListResponse"
              (\ o ->
                 ProductsListResponse' <$>
                   (o .:? "tokenPagination") <*> (o .:? "pageInfo") <*>
                     (o .:? "kind" .!=
                        "androidenterprise#productsListResponse")
                     <*> (o .:? "product" .!= mempty))

instance ToJSON ProductsListResponse where
        toJSON ProductsListResponse'{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _plrTokenPagination,
                  ("pageInfo" .=) <$> _plrPageInfo,
                  Just ("kind" .= _plrKind),
                  ("product" .=) <$> _plrProduct])

-- | WebApp resource info.
--
-- /See:/ 'webApp' smart constructor.
data WebApp =
  WebApp'
    { _waWebAppId    :: !(Maybe Text)
    , _waVersionCode :: !(Maybe (Textual Int64))
    , _waIcons       :: !(Maybe [WebAppIcon])
    , _waStartURL    :: !(Maybe Text)
    , _waDisplayMode :: !(Maybe Text)
    , _waIsPublished :: !(Maybe Bool)
    , _waTitle       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waWebAppId'
--
-- * 'waVersionCode'
--
-- * 'waIcons'
--
-- * 'waStartURL'
--
-- * 'waDisplayMode'
--
-- * 'waIsPublished'
--
-- * 'waTitle'
webApp
    :: WebApp
webApp =
  WebApp'
    { _waWebAppId = Nothing
    , _waVersionCode = Nothing
    , _waIcons = Nothing
    , _waStartURL = Nothing
    , _waDisplayMode = Nothing
    , _waIsPublished = Nothing
    , _waTitle = Nothing
    }

-- | The ID of the application.
waWebAppId :: Lens' WebApp (Maybe Text)
waWebAppId
  = lens _waWebAppId (\ s a -> s{_waWebAppId = a})

-- | The current version of the app. Note that the version can automatically
-- increase during the lifetime of the web app, while Google does internal
-- housekeeping to keep the web app up-to-date.
waVersionCode :: Lens' WebApp (Maybe Int64)
waVersionCode
  = lens _waVersionCode
      (\ s a -> s{_waVersionCode = a})
      . mapping _Coerce

-- | A list of icons representing this website. If absent, a default icon
-- (for create) or the current icon (for update) will be used.
waIcons :: Lens' WebApp [WebAppIcon]
waIcons
  = lens _waIcons (\ s a -> s{_waIcons = a}) . _Default
      . _Coerce

-- | The start URL, i.e. the URL that should load when the user opens the
-- application.
waStartURL :: Lens' WebApp (Maybe Text)
waStartURL
  = lens _waStartURL (\ s a -> s{_waStartURL = a})

-- | The display mode of the web app.
waDisplayMode :: Lens' WebApp (Maybe Text)
waDisplayMode
  = lens _waDisplayMode
      (\ s a -> s{_waDisplayMode = a})

-- | A flag whether the app has been published to the Play store yet.
waIsPublished :: Lens' WebApp (Maybe Bool)
waIsPublished
  = lens _waIsPublished
      (\ s a -> s{_waIsPublished = a})

-- | The title of the web application as displayed to the user (e.g., amongst
-- a list of other applications, or as a label for an icon).
waTitle :: Lens' WebApp (Maybe Text)
waTitle = lens _waTitle (\ s a -> s{_waTitle = a})

instance FromJSON WebApp where
        parseJSON
          = withObject "WebApp"
              (\ o ->
                 WebApp' <$>
                   (o .:? "webAppId") <*> (o .:? "versionCode") <*>
                     (o .:? "icons" .!= mempty)
                     <*> (o .:? "startUrl")
                     <*> (o .:? "displayMode")
                     <*> (o .:? "isPublished")
                     <*> (o .:? "title"))

instance ToJSON WebApp where
        toJSON WebApp'{..}
          = object
              (catMaybes
                 [("webAppId" .=) <$> _waWebAppId,
                  ("versionCode" .=) <$> _waVersionCode,
                  ("icons" .=) <$> _waIcons,
                  ("startUrl" .=) <$> _waStartURL,
                  ("displayMode" .=) <$> _waDisplayMode,
                  ("isPublished" .=) <$> _waIsPublished,
                  ("title" .=) <$> _waTitle])
