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

-- | A group license object indicates a product that an enterprise admin has
-- approved for use in the enterprise. The product may be free or paid. For
-- free products, a group license object is created in these cases: if the
-- enterprise admin approves a product in Google Play, if the product is
-- added to a collection, or if an entitlement for the product is created
-- for a user via the API. For paid products, a group license object is
-- only created as part of the first bulk purchase of that product in
-- Google Play by the enterprise admin. The API can be used to query group
-- licenses; the available information includes the total number of
-- licenses purchased (for paid products) and the total number of licenses
-- that have been provisioned, that is, the total number of user
-- entitlements in existence for the product. Group license objects are
-- never deleted. If, for example, a free app is added to a collection and
-- then removed, the group license will remain, allowing the enterprise
-- admin to keep track of any remaining entitlements. An enterprise admin
-- may indicate they are no longer interested in the group license by
-- marking it as unapproved in Google Play.
--
-- /See:/ 'groupLicense' smart constructor.
data GroupLicense = GroupLicense'
    { _glKind            :: !Text
    , _glNumProvisioned  :: !(Maybe (Textual Int32))
    , _glNumPurchased    :: !(Maybe (Textual Int32))
    , _glApproval        :: !(Maybe Text)
    , _glProductId       :: !(Maybe Text)
    , _glAcquisitionKind :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- this field is omitted then there is no limit on the number of licenses
-- that can be provisioned (e.g. if the acquisition kind is \"free\").
glNumPurchased :: Lens' GroupLicense (Maybe Int32)
glNumPurchased
  = lens _glNumPurchased
      (\ s a -> s{_glNumPurchased = a})
      . mapping _Coerce

-- | Whether the product to which this group license relates is currently
-- approved by the enterprise, as either \"approved\" or \"unapproved\".
-- Products are approved when a group license is first created, but this
-- approval may be revoked by an enterprise admin via Google Play.
-- Unapproved products will not be visible to end users in collections and
-- new entitlements to them should not normally be created.
glApproval :: Lens' GroupLicense (Maybe Text)
glApproval
  = lens _glApproval (\ s a -> s{_glApproval = a})

-- | The ID of the product that the license is for, e.g.
-- \"app:com.google.android.gm\".
glProductId :: Lens' GroupLicense (Maybe Text)
glProductId
  = lens _glProductId (\ s a -> s{_glProductId = a})

-- | How this group license was acquired. \"bulkPurchase\" means that this
-- group license object was created because the enterprise purchased
-- licenses for this product; this is \"free\" otherwise (for free
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
                  ("productId" .=) <$> _glProductId,
                  ("acquisitionKind" .=) <$> _glAcquisitionKind])

-- | The store page resources for the enterprise.
--
-- /See:/ 'storeLayoutPagesListResponse' smart constructor.
data StoreLayoutPagesListResponse = StoreLayoutPagesListResponse'
    { _slplrKind :: !Text
    , _slplrPage :: !(Maybe [StorePage])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data EnterpriseAccount = EnterpriseAccount'
    { _eaKind         :: !Text
    , _eaAccountEmail :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _eaKind = "androidenterprise#enterpriseAccount"
    , _eaAccountEmail = Nothing
    }

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
data AppRestrictionsSchemaRestrictionRestrictionValue = AppRestrictionsSchemaRestrictionRestrictionValue'
    { _arsrrvValueMultiselect :: !(Maybe [Text])
    , _arsrrvValueBool        :: !(Maybe Bool)
    , _arsrrvValueInteger     :: !(Maybe (Textual Int32))
    , _arsrrvType             :: !(Maybe Text)
    , _arsrrvValueString      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The state of a user\'s device, as accessed by the getState and setState
-- methods on device resources.
--
-- /See:/ 'deviceState' smart constructor.
data DeviceState = DeviceState'
    { _dsKind         :: !Text
    , _dsAccountState :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _dsKind = "androidenterprise#deviceState"
    , _dsAccountState = Nothing
    }

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
data GroupLicenseUsersListResponse = GroupLicenseUsersListResponse'
    { _glulrKind :: !Text
    , _glulrUser :: !(Maybe [User])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data TokenPagination = TokenPagination'
    { _tpNextPageToken     :: !(Maybe Text)
    , _tpPreviousPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TokenPagination'
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

-- | Information on an approval URL.
--
-- /See:/ 'approvalURLInfo' smart constructor.
data ApprovalURLInfo = ApprovalURLInfo'
    { _auiApprovalURL :: !(Maybe Text)
    , _auiKind        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _auiApprovalURL = Nothing
    , _auiKind = "androidenterprise#approvalUrlInfo"
    }

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

-- | A managed property of a managed configuration. The property must match
-- one of the properties in the app restrictions schema of the product.
-- Exactly one of the value fields must be populated, and it must match the
-- property\'s type in the app restrictions schema.
--
-- /See:/ 'managedProperty' smart constructor.
data ManagedProperty = ManagedProperty'
    { _mpValueStringArray :: !(Maybe [Text])
    , _mpValueBool        :: !(Maybe Bool)
    , _mpKey              :: !(Maybe Text)
    , _mpValueBundle      :: !(Maybe ManagedPropertyBundle)
    , _mpValueInteger     :: !(Maybe (Textual Int32))
    , _mpValueBundleArray :: !(Maybe [ManagedPropertyBundle])
    , _mpValueString      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data StoreLayoutClustersListResponse = StoreLayoutClustersListResponse'
    { _slclrCluster :: !(Maybe [StoreCluster])
    , _slclrKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- that have been configured for an Android app. The app\'s developer would
-- have defined configurable properties in the managed configurations
-- schema.
--
-- /See:/ 'managedConfiguration' smart constructor.
data ManagedConfiguration = ManagedConfiguration'
    { _mcManagedProperty :: !(Maybe [ManagedProperty])
    , _mcKind            :: !Text
    , _mcProductId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcManagedProperty'
--
-- * 'mcKind'
--
-- * 'mcProductId'
managedConfiguration
    :: ManagedConfiguration
managedConfiguration =
    ManagedConfiguration'
    { _mcManagedProperty = Nothing
    , _mcKind = "androidenterprise#managedConfiguration"
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
                     <*> (o .:? "productId"))

instance ToJSON ManagedConfiguration where
        toJSON ManagedConfiguration'{..}
          = object
              (catMaybes
                 [("managedProperty" .=) <$> _mcManagedProperty,
                  Just ("kind" .= _mcKind),
                  ("productId" .=) <$> _mcProductId])

-- | Definition of a managed Google Play store cluster, a list of products
-- displayed as part of a store page.
--
-- /See:/ 'storeCluster' smart constructor.
data StoreCluster = StoreCluster'
    { _scKind        :: !Text
    , _scName        :: !(Maybe [LocalizedText])
    , _scOrderInPage :: !(Maybe Text)
    , _scId          :: !(Maybe Text)
    , _scProductId   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data AdministratorWebTokenSpec = AdministratorWebTokenSpec'
    { _awtsParent     :: !(Maybe Text)
    , _awtsKind       :: !Text
    , _awtsPermission :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdministratorWebTokenSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awtsParent'
--
-- * 'awtsKind'
--
-- * 'awtsPermission'
administratorWebTokenSpec
    :: AdministratorWebTokenSpec
administratorWebTokenSpec =
    AdministratorWebTokenSpec'
    { _awtsParent = Nothing
    , _awtsKind = "androidenterprise#administratorWebTokenSpec"
    , _awtsPermission = Nothing
    }

-- | The URI of the parent frame hosting the iframe. To prevent XSS, the
-- iframe may not be hosted at other URIs. This URI must be https.
awtsParent :: Lens' AdministratorWebTokenSpec (Maybe Text)
awtsParent
  = lens _awtsParent (\ s a -> s{_awtsParent = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#administratorWebTokenSpec\".
awtsKind :: Lens' AdministratorWebTokenSpec Text
awtsKind = lens _awtsKind (\ s a -> s{_awtsKind = a})

-- | The list of permissions the admin is granted within the iframe. The
-- admin will only be allowed to view an iframe if they have all of the
-- permissions associated with it. The only valid value is \"approveApps\"
-- that will allow the admin to access the iframe in \"approve\" mode.
awtsPermission :: Lens' AdministratorWebTokenSpec [Text]
awtsPermission
  = lens _awtsPermission
      (\ s a -> s{_awtsPermission = a})
      . _Default
      . _Coerce

instance FromJSON AdministratorWebTokenSpec where
        parseJSON
          = withObject "AdministratorWebTokenSpec"
              (\ o ->
                 AdministratorWebTokenSpec' <$>
                   (o .:? "parent") <*>
                     (o .:? "kind" .!=
                        "androidenterprise#administratorWebTokenSpec")
                     <*> (o .:? "permission" .!= mempty))

instance ToJSON AdministratorWebTokenSpec where
        toJSON AdministratorWebTokenSpec'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _awtsParent,
                  Just ("kind" .= _awtsKind),
                  ("permission" .=) <$> _awtsPermission])

-- | A notification of one event relating to an enterprise.
--
-- /See:/ 'notification' smart constructor.
data Notification = Notification'
    { _nEnterpriseId                     :: !(Maybe Text)
    , _nNewPermissionsEvent              :: !(Maybe NewPermissionsEvent)
    , _nProductApprovalEvent             :: !(Maybe ProductApprovalEvent)
    , _nProductAvailabilityChangeEvent   :: !(Maybe ProductAvailabilityChangeEvent)
    , _nAppUpdateEvent                   :: !(Maybe AppUpdateEvent)
    , _nInstallFailureEvent              :: !(Maybe InstallFailureEvent)
    , _nAppRestrictionsSchemaChangeEvent :: !(Maybe AppRestrictionsSchemaChangeEvent)
    , _nNewDeviceEvent                   :: !(Maybe NewDeviceEvent)
    , _nTimestampMillis                  :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
                  ("appRestrictionsSchemaChangeEvent" .=) <$>
                    _nAppRestrictionsSchemaChangeEvent,
                  ("newDeviceEvent" .=) <$> _nNewDeviceEvent,
                  ("timestampMillis" .=) <$> _nTimestampMillis])

--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo = PageInfo'
    { _piResultPerPage :: !(Maybe (Textual Int32))
    , _piTotalResults  :: !(Maybe (Textual Int32))
    , _piStartIndex    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data ProductPermission = ProductPermission'
    { _ppState        :: !(Maybe Text)
    , _ppPermissionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductPermission'
    { _ppState = Nothing
    , _ppPermissionId = Nothing
    }

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
data NewPermissionsEvent = NewPermissionsEvent'
    { _npeRequestedPermissions :: !(Maybe [Text])
    , _npeApprovedPermissions  :: !(Maybe [Text])
    , _npeProductId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data ProductAvailabilityChangeEvent = ProductAvailabilityChangeEvent'
    { _paceAvailabilityStatus :: !(Maybe Text)
    , _paceProductId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _paceAvailabilityStatus = Nothing
    , _paceProductId = Nothing
    }

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
data ProductApprovalEvent = ProductApprovalEvent'
    { _paeApproved  :: !(Maybe Text)
    , _paeProductId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductApprovalEvent'
    { _paeApproved = Nothing
    , _paeProductId = Nothing
    }

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

-- | A device resource represents a mobile device managed by the EMM and
-- belonging to a specific enterprise user. This collection cannot be
-- modified via the API; it is automatically populated as devices are set
-- up to be managed.
--
-- /See:/ 'device' smart constructor.
data Device = Device'
    { _dKind           :: !Text
    , _dManagementType :: !(Maybe Text)
    , _dAndroidId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
--
-- * 'dManagementType'
--
-- * 'dAndroidId'
device
    :: Device
device =
    Device'
    { _dKind = "androidenterprise#device"
    , _dManagementType = Nothing
    , _dAndroidId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#device\".
dKind :: Lens' Device Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | Identifies the extent to which the device is controlled by a managed
-- Google Play EMM in various deployment configurations. Possible values
-- include: - \"managedDevice\", a device that has the EMM\'s device policy
-- controller (DPC) as the device owner, - \"managedProfile\", a device
-- that has a profile managed by the DPC (DPC is profile owner) in addition
-- to a separate, personal profile that is unavailable to the DPC, -
-- \"containerApp\", a device running the container App. The container App
-- is managed by the DPC, - \"unmanagedProfile\", a device that has been
-- allowed (by the domain\'s admin, using the Admin Console to enable the
-- privilege) to use managed Google Play, but the profile is itself not
-- owned by a DPC.
dManagementType :: Lens' Device (Maybe Text)
dManagementType
  = lens _dManagementType
      (\ s a -> s{_dManagementType = a})

-- | The Google Play Services Android ID for the device encoded as a
-- lowercase hex string, e.g. \"123456789abcdef0\".
dAndroidId :: Lens' Device (Maybe Text)
dAndroidId
  = lens _dAndroidId (\ s a -> s{_dAndroidId = a})

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ o ->
                 Device' <$>
                   (o .:? "kind" .!= "androidenterprise#device") <*>
                     (o .:? "managementType")
                     <*> (o .:? "androidId"))

instance ToJSON Device where
        toJSON Device'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dKind),
                  ("managementType" .=) <$> _dManagementType,
                  ("androidId" .=) <$> _dAndroidId])

-- | Credentials that can be used to authenticate as a service account.
--
-- /See:/ 'serviceAccountKey' smart constructor.
data ServiceAccountKey = ServiceAccountKey'
    { _sakKind       :: !Text
    , _sakData       :: !(Maybe Text)
    , _sakId         :: !(Maybe Text)
    , _sakType       :: !(Maybe Text)
    , _sakPublicData :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data InstallsListResponse = InstallsListResponse'
    { _ilrKind    :: !Text
    , _ilrInstall :: !(Maybe [Install])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _ilrKind = "androidenterprise#installsListResponse"
    , _ilrInstall = Nothing
    }

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
data AppRestrictionsSchemaRestriction = AppRestrictionsSchemaRestriction'
    { _arsrRestrictionType   :: !(Maybe Text)
    , _arsrEntry             :: !(Maybe [Text])
    , _arsrKey               :: !(Maybe Text)
    , _arsrEntryValue        :: !(Maybe [Text])
    , _arsrDefaultValue      :: !(Maybe AppRestrictionsSchemaRestrictionRestrictionValue)
    , _arsrTitle             :: !(Maybe Text)
    , _arsrDescription       :: !(Maybe Text)
    , _arsrNestedRestriction :: !(Maybe [AppRestrictionsSchemaRestriction])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | This represents an enterprise admin who can manage the enterprise in the
-- managed Google Play store.
--
-- /See:/ 'administrator' smart constructor.
newtype Administrator = Administrator'
    { _aEmail :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Administrator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEmail'
administrator
    :: Administrator
administrator =
    Administrator'
    { _aEmail = Nothing
    }

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
data UsersListResponse = UsersListResponse'
    { _ulrKind :: !Text
    , _ulrUser :: !(Maybe [User])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _ulrKind = "androidenterprise#usersListResponse"
    , _ulrUser = Nothing
    }

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

-- | An AuthenticationToken is used by the EMM\'s device policy client on a
-- device to provision the given EMM-managed user on that device.
--
-- /See:/ 'authenticationToken' smart constructor.
data AuthenticationToken = AuthenticationToken'
    { _atKind  :: !Text
    , _atToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _atKind = "androidenterprise#authenticationToken"
    , _atToken = Nothing
    }

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

-- | This represents a single version of the app.
--
-- /See:/ 'appVersion' smart constructor.
data AppVersion = AppVersion'
    { _avVersionCode   :: !(Maybe (Textual Int32))
    , _avVersionString :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avVersionCode'
--
-- * 'avVersionString'
appVersion
    :: AppVersion
appVersion =
    AppVersion'
    { _avVersionCode = Nothing
    , _avVersionString = Nothing
    }

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

instance FromJSON AppVersion where
        parseJSON
          = withObject "AppVersion"
              (\ o ->
                 AppVersion' <$>
                   (o .:? "versionCode") <*> (o .:? "versionString"))

instance ToJSON AppVersion where
        toJSON AppVersion'{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _avVersionCode,
                  ("versionString" .=) <$> _avVersionString])

-- | A bundle of managed properties.
--
-- /See:/ 'managedPropertyBundle' smart constructor.
newtype ManagedPropertyBundle = ManagedPropertyBundle'
    { _mpbManagedProperty :: Maybe [ManagedProperty]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedPropertyBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbManagedProperty'
managedPropertyBundle
    :: ManagedPropertyBundle
managedPropertyBundle =
    ManagedPropertyBundle'
    { _mpbManagedProperty = Nothing
    }

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
data GroupLicensesListResponse = GroupLicensesListResponse'
    { _gllrGroupLicense :: !(Maybe [GroupLicense])
    , _gllrKind         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A set of products.
--
-- /See:/ 'productSet' smart constructor.
data ProductSet = ProductSet'
    { _psKind               :: !Text
    , _psProductSetBehavior :: !(Maybe Text)
    , _psProductId          :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _psKind = "androidenterprise#productSet"
    , _psProductSetBehavior = Nothing
    , _psProductId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#productSet\".
psKind :: Lens' ProductSet Text
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | The interpretation of this product set. \"unknown\" should never be sent
-- and ignored if received. \"whitelist\" means that this product set
-- constitutes a whitelist. \"includeAll\" means that all products are
-- accessible, including products that are approved, not approved, and even
-- products where approval has been revoked. If the value is
-- \"includeAll\", the value of the productId field is therefore ignored.
-- If a value is not supplied, it is interpreted to be \"whitelist\" for
-- backwards compatibility.
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
                   (o .:? "kind" .!= "androidenterprise#productSet") <*>
                     (o .:? "productSetBehavior")
                     <*> (o .:? "productId" .!= mempty))

instance ToJSON ProductSet where
        toJSON ProductSet'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _psKind),
                  ("productSetBehavior" .=) <$> _psProductSetBehavior,
                  ("productId" .=) <$> _psProductId])

-- | The existence of an install resource indicates that an app is installed
-- on a particular device (or that an install is pending). The API can be
-- used to create an install resource using the update method. This
-- triggers the actual install of the app on the device. If the user does
-- not already have an entitlement for the app then an attempt is made to
-- create one. If this fails (e.g. because the app is not free and there is
-- no available license) then the creation of the install fails. The API
-- can also be used to update an installed app. If the update method is
-- used on an existing install then the app will be updated to the latest
-- available version. Note that it is not possible to force the
-- installation of a specific version of an app; the version code is
-- read-only. If a user installs an app themselves (as permitted by the
-- enterprise), then again an install resource and possibly an entitlement
-- resource are automatically created. The API can also be used to delete
-- an install resource, which triggers the removal of the app from the
-- device. Note that deleting an install does not automatically remove the
-- corresponding entitlement, even if there are no remaining installs. The
-- install resource will also be deleted if the user uninstalls the app
-- themselves.
--
-- /See:/ 'install' smart constructor.
data Install = Install'
    { _iVersionCode  :: !(Maybe (Textual Int32))
    , _iKind         :: !Text
    , _iInstallState :: !(Maybe Text)
    , _iProductId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The ID of the product that the install is for, e.g.
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

--
-- /See:/ 'serviceAccountKeysListResponse' smart constructor.
newtype ServiceAccountKeysListResponse = ServiceAccountKeysListResponse'
    { _saklrServiceAccountKey :: Maybe [ServiceAccountKey]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccountKeysListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saklrServiceAccountKey'
serviceAccountKeysListResponse
    :: ServiceAccountKeysListResponse
serviceAccountKeysListResponse =
    ServiceAccountKeysListResponse'
    { _saklrServiceAccountKey = Nothing
    }

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
data User = User'
    { _uAccountIdentifier :: !(Maybe Text)
    , _uKind              :: !Text
    , _uDisplayName       :: !(Maybe Text)
    , _uId                :: !(Maybe Text)
    , _uPrimaryEmail      :: !(Maybe Text)
    , _uManagementType    :: !(Maybe Text)
    , _uAccountType       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data ManagedConfigurationsForDeviceListResponse = ManagedConfigurationsForDeviceListResponse'
    { _mcfdlrKind                          :: !Text
    , _mcfdlrManagedConfigurationForDevice :: !(Maybe [ManagedConfiguration])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _mcfdlrKind = "androidenterprise#managedConfigurationsForDeviceListResponse"
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
         ManagedConfigurationsForDeviceListResponse where
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
         ManagedConfigurationsForDeviceListResponse where
        toJSON
          ManagedConfigurationsForDeviceListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mcfdlrKind),
                  ("managedConfigurationForDevice" .=) <$>
                    _mcfdlrManagedConfigurationForDevice])

--
-- /See:/ 'productsGenerateApprovalURLResponse' smart constructor.
newtype ProductsGenerateApprovalURLResponse = ProductsGenerateApprovalURLResponse'
    { _pgaurURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGenerateApprovalURLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgaurURL'
productsGenerateApprovalURLResponse
    :: ProductsGenerateApprovalURLResponse
productsGenerateApprovalURLResponse =
    ProductsGenerateApprovalURLResponse'
    { _pgaurURL = Nothing
    }

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
data StorePage = StorePage'
    { _spKind :: !Text
    , _spLink :: !(Maybe [Text])
    , _spName :: !(Maybe [LocalizedText])
    , _spId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- pages must exist, must not be this page, and once a link is created the
-- page linked to cannot be deleted until all links to it are removed. It
-- is recommended that the basic pages are created first, before adding the
-- links between pages. No attempt is made to verify that all pages are
-- reachable from the homepage.
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
data EnterprisesSendTestPushNotificationResponse = EnterprisesSendTestPushNotificationResponse'
    { _estpnrTopicName :: !(Maybe Text)
    , _estpnrMessageId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _estpnrTopicName = Nothing
    , _estpnrMessageId = Nothing
    }

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
         EnterprisesSendTestPushNotificationResponse where
        parseJSON
          = withObject
              "EnterprisesSendTestPushNotificationResponse"
              (\ o ->
                 EnterprisesSendTestPushNotificationResponse' <$>
                   (o .:? "topicName") <*> (o .:? "messageId"))

instance ToJSON
         EnterprisesSendTestPushNotificationResponse where
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
data ServiceAccount = ServiceAccount'
    { _saKind :: !Text
    , _saKey  :: !(Maybe ServiceAccountKey)
    , _saName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | An event generated when a new version of an app is uploaded to Google
-- Play. Notifications are sent for new public versions only: alpha, beta,
-- or canary versions do not generate this event. To fetch up-to-date
-- version history for an app, use Products.Get on the EMM API.
--
-- /See:/ 'appUpdateEvent' smart constructor.
newtype AppUpdateEvent = AppUpdateEvent'
    { _aueProductId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppUpdateEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aueProductId'
appUpdateEvent
    :: AppUpdateEvent
appUpdateEvent =
    AppUpdateEvent'
    { _aueProductId = Nothing
    }

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
data EnterprisesListResponse = EnterprisesListResponse'
    { _elrKind       :: !Text
    , _elrEnterprise :: !(Maybe [Enterprise])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data NotificationSet = NotificationSet'
    { _nsNotificationSetId :: !(Maybe Text)
    , _nsNotification      :: !(Maybe [Notification])
    , _nsKind              :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data AppRestrictionsSchema = AppRestrictionsSchema'
    { _arsKind         :: !Text
    , _arsRestrictions :: !(Maybe [AppRestrictionsSchemaRestriction])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A localized string with its locale.
--
-- /See:/ 'localizedText' smart constructor.
data LocalizedText = LocalizedText'
    { _ltText   :: !(Maybe Text)
    , _ltLocale :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltText'
--
-- * 'ltLocale'
localizedText
    :: LocalizedText
localizedText =
    LocalizedText'
    { _ltText = Nothing
    , _ltLocale = Nothing
    }

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
data UserToken = UserToken'
    { _utKind   :: !Text
    , _utToken  :: !(Maybe Text)
    , _utUserId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The device resources for the user.
--
-- /See:/ 'devicesListResponse' smart constructor.
data DevicesListResponse = DevicesListResponse'
    { _dlrKind   :: !Text
    , _dlrDevice :: !(Maybe [Device])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _dlrKind = "androidenterprise#devicesListResponse"
    , _dlrDevice = Nothing
    }

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
data Enterprise = Enterprise'
    { _eKind          :: !Text
    , _eAdministrator :: !(Maybe [Administrator])
    , _ePrimaryDomain :: !(Maybe Text)
    , _eName          :: !(Maybe Text)
    , _eId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data InstallFailureEvent = InstallFailureEvent'
    { _ifeFailureReason  :: !(Maybe Text)
    , _ifeFailureDetails :: !(Maybe Text)
    , _ifeUserId         :: !(Maybe Text)
    , _ifeDeviceId       :: !(Maybe Text)
    , _ifeProductId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data ManagedConfigurationsForUserListResponse = ManagedConfigurationsForUserListResponse'
    { _mcfulrManagedConfigurationForUser :: !(Maybe [ManagedConfiguration])
    , _mcfulrKind                        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
         ManagedConfigurationsForUserListResponse where
        parseJSON
          = withObject
              "ManagedConfigurationsForUserListResponse"
              (\ o ->
                 ManagedConfigurationsForUserListResponse' <$>
                   (o .:? "managedConfigurationForUser" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "androidenterprise#managedConfigurationsForUserListResponse"))

instance ToJSON
         ManagedConfigurationsForUserListResponse where
        toJSON ManagedConfigurationsForUserListResponse'{..}
          = object
              (catMaybes
                 [("managedConfigurationForUser" .=) <$>
                    _mcfulrManagedConfigurationForUser,
                  Just ("kind" .= _mcfulrKind)])

-- | General setting for the managed Google Play store layout, currently only
-- specifying the page to display the first time the store is opened.
--
-- /See:/ 'storeLayout' smart constructor.
data StoreLayout = StoreLayout'
    { _slStoreLayoutType :: !(Maybe Text)
    , _slKind            :: !Text
    , _slHomepageId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The store layout type. By default, this value is set to \"basic\". If
-- set to \"custom\", \"homepageId\" must be specified. If set to
-- \"basic\", the layout will consist of all approved apps accessible by
-- the user, split in pages of 100 each; in this case, \"homepageId\" must
-- not be specified. The \"basic\" setting takes precedence over any
-- existing collections setup for this enterprise (if any). Should the
-- enterprise use collectionViewers for controlling access rights, these
-- will still be respected.
slStoreLayoutType :: Lens' StoreLayout (Maybe Text)
slStoreLayoutType
  = lens _slStoreLayoutType
      (\ s a -> s{_slStoreLayoutType = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#storeLayout\".
slKind :: Lens' StoreLayout Text
slKind = lens _slKind (\ s a -> s{_slKind = a})

-- | The ID of the store page to be used as the homepage. The homepage will
-- be used as the first page shown in the managed Google Play store. If a
-- homepage has not been set, the Play store shown on devices will be
-- empty. Not specifying a homepage on a store layout effectively empties
-- the store. If there exists at least one page, this field must be set to
-- the ID of a valid page.
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
newtype AppRestrictionsSchemaChangeEvent = AppRestrictionsSchemaChangeEvent'
    { _arsceProductId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppRestrictionsSchemaChangeEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsceProductId'
appRestrictionsSchemaChangeEvent
    :: AppRestrictionsSchemaChangeEvent
appRestrictionsSchemaChangeEvent =
    AppRestrictionsSchemaChangeEvent'
    { _arsceProductId = Nothing
    }

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
data NewDeviceEvent = NewDeviceEvent'
    { _ndeUserId         :: !(Maybe Text)
    , _ndeDeviceId       :: !(Maybe Text)
    , _ndeManagementType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NewDeviceEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndeUserId'
--
-- * 'ndeDeviceId'
--
-- * 'ndeManagementType'
newDeviceEvent
    :: NewDeviceEvent
newDeviceEvent =
    NewDeviceEvent'
    { _ndeUserId = Nothing
    , _ndeDeviceId = Nothing
    , _ndeManagementType = Nothing
    }

-- | The ID of the user. This field will always be present.
ndeUserId :: Lens' NewDeviceEvent (Maybe Text)
ndeUserId
  = lens _ndeUserId (\ s a -> s{_ndeUserId = a})

-- | The Android ID of the device. This field will always be present.
ndeDeviceId :: Lens' NewDeviceEvent (Maybe Text)
ndeDeviceId
  = lens _ndeDeviceId (\ s a -> s{_ndeDeviceId = a})

-- | Identifies the extent to which the device is controlled by an Android
-- for Work EMM in various deployment configurations. Possible values
-- include: - \"managedDevice\", a device that has the EMM\'s device policy
-- controller (DPC) as the device owner, - \"managedProfile\", a device
-- that has a work profile managed by the DPC (DPC is profile owner) in
-- addition to a separate, personal profile that is unavailable to the DPC,
ndeManagementType :: Lens' NewDeviceEvent (Maybe Text)
ndeManagementType
  = lens _ndeManagementType
      (\ s a -> s{_ndeManagementType = a})

instance FromJSON NewDeviceEvent where
        parseJSON
          = withObject "NewDeviceEvent"
              (\ o ->
                 NewDeviceEvent' <$>
                   (o .:? "userId") <*> (o .:? "deviceId") <*>
                     (o .:? "managementType"))

instance ToJSON NewDeviceEvent where
        toJSON NewDeviceEvent'{..}
          = object
              (catMaybes
                 [("userId" .=) <$> _ndeUserId,
                  ("deviceId" .=) <$> _ndeDeviceId,
                  ("managementType" .=) <$> _ndeManagementType])

-- | A token authorizing an admin to access an iframe.
--
-- /See:/ 'administratorWebToken' smart constructor.
data AdministratorWebToken = AdministratorWebToken'
    { _awtKind  :: !Text
    , _awtToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _awtKind = "androidenterprise#administratorWebToken"
    , _awtToken = Nothing
    }

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
data SignupInfo = SignupInfo'
    { _siCompletionToken :: !(Maybe Text)
    , _siKind            :: !Text
    , _siURL             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data Product = Product'
    { _pSmallIconURL         :: !(Maybe Text)
    , _pAuthorName           :: !(Maybe Text)
    , _pKind                 :: !Text
    , _pWorkDetailsURL       :: !(Maybe Text)
    , _pRequiresContainerApp :: !(Maybe Bool)
    , _pAppVersion           :: !(Maybe [AppVersion])
    , _pProductPricing       :: !(Maybe Text)
    , _pDistributionChannel  :: !(Maybe Text)
    , _pIconURL              :: !(Maybe Text)
    , _pTitle                :: !(Maybe Text)
    , _pProductId            :: !(Maybe Text)
    , _pDetailsURL           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSmallIconURL'
--
-- * 'pAuthorName'
--
-- * 'pKind'
--
-- * 'pWorkDetailsURL'
--
-- * 'pRequiresContainerApp'
--
-- * 'pAppVersion'
--
-- * 'pProductPricing'
--
-- * 'pDistributionChannel'
--
-- * 'pIconURL'
--
-- * 'pTitle'
--
-- * 'pProductId'
--
-- * 'pDetailsURL'
product
    :: Product
product =
    Product'
    { _pSmallIconURL = Nothing
    , _pAuthorName = Nothing
    , _pKind = "androidenterprise#product"
    , _pWorkDetailsURL = Nothing
    , _pRequiresContainerApp = Nothing
    , _pAppVersion = Nothing
    , _pProductPricing = Nothing
    , _pDistributionChannel = Nothing
    , _pIconURL = Nothing
    , _pTitle = Nothing
    , _pProductId = Nothing
    , _pDetailsURL = Nothing
    }

-- | A link to a smaller image that can be used as an icon for the product.
-- This image is suitable for use at up to 128px x 128px.
pSmallIconURL :: Lens' Product (Maybe Text)
pSmallIconURL
  = lens _pSmallIconURL
      (\ s a -> s{_pSmallIconURL = a})

-- | The name of the author of the product (e.g. the app developer).
pAuthorName :: Lens' Product (Maybe Text)
pAuthorName
  = lens _pAuthorName (\ s a -> s{_pAuthorName = a})

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

-- | Whether this app can only be installed on devices using the Android
-- container app.
pRequiresContainerApp :: Lens' Product (Maybe Bool)
pRequiresContainerApp
  = lens _pRequiresContainerApp
      (\ s a -> s{_pRequiresContainerApp = a})

-- | App versions currently available for this product. The returned list
-- contains only public versions. Alpha and beta versions are not included.
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

-- | A link to an image that can be used as an icon for the product. This
-- image is suitable for use at up to 512px x 512px.
pIconURL :: Lens' Product (Maybe Text)
pIconURL = lens _pIconURL (\ s a -> s{_pIconURL = a})

-- | The name of the product.
pTitle :: Lens' Product (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

-- | A string of the form app:. For example, app:com.google.android.gm
-- represents the Gmail app.
pProductId :: Lens' Product (Maybe Text)
pProductId
  = lens _pProductId (\ s a -> s{_pProductId = a})

-- | A link to the (consumer) Google Play details page for the product.
pDetailsURL :: Lens' Product (Maybe Text)
pDetailsURL
  = lens _pDetailsURL (\ s a -> s{_pDetailsURL = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "smallIconUrl") <*> (o .:? "authorName") <*>
                     (o .:? "kind" .!= "androidenterprise#product")
                     <*> (o .:? "workDetailsUrl")
                     <*> (o .:? "requiresContainerApp")
                     <*> (o .:? "appVersion" .!= mempty)
                     <*> (o .:? "productPricing")
                     <*> (o .:? "distributionChannel")
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "title")
                     <*> (o .:? "productId")
                     <*> (o .:? "detailsUrl"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("smallIconUrl" .=) <$> _pSmallIconURL,
                  ("authorName" .=) <$> _pAuthorName,
                  Just ("kind" .= _pKind),
                  ("workDetailsUrl" .=) <$> _pWorkDetailsURL,
                  ("requiresContainerApp" .=) <$>
                    _pRequiresContainerApp,
                  ("appVersion" .=) <$> _pAppVersion,
                  ("productPricing" .=) <$> _pProductPricing,
                  ("distributionChannel" .=) <$> _pDistributionChannel,
                  ("iconUrl" .=) <$> _pIconURL,
                  ("title" .=) <$> _pTitle,
                  ("productId" .=) <$> _pProductId,
                  ("detailsUrl" .=) <$> _pDetailsURL])

-- | The entitlement resources for the user.
--
-- /See:/ 'entitlementsListResponse' smart constructor.
data EntitlementsListResponse = EntitlementsListResponse'
    { _entKind        :: !Text
    , _entEntitlement :: !(Maybe [Entitlement])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data ProductPermissions = ProductPermissions'
    { _ppKind       :: !Text
    , _ppPermission :: !(Maybe [ProductPermission])
    , _ppProductId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppKind'
--
-- * 'ppPermission'
--
-- * 'ppProductId'
productPermissions
    :: ProductPermissions
productPermissions =
    ProductPermissions'
    { _ppKind = "androidenterprise#productPermissions"
    , _ppPermission = Nothing
    , _ppProductId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"androidenterprise#productPermissions\".
ppKind :: Lens' ProductPermissions Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | The permissions required by the app.
ppPermission :: Lens' ProductPermissions [ProductPermission]
ppPermission
  = lens _ppPermission (\ s a -> s{_ppPermission = a})
      . _Default
      . _Coerce

-- | The ID of the app that the permissions relate to, e.g.
-- \"app:com.google.android.gm\".
ppProductId :: Lens' ProductPermissions (Maybe Text)
ppProductId
  = lens _ppProductId (\ s a -> s{_ppProductId = a})

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
                 [Just ("kind" .= _ppKind),
                  ("permission" .=) <$> _ppPermission,
                  ("productId" .=) <$> _ppProductId])

-- | A permission represents some extra capability, to be granted to an
-- Android app, which requires explicit consent. An enterprise admin must
-- consent to these permissions on behalf of their users before an
-- entitlement for the app can be created. The permissions collection is
-- read-only. The information provided for each permission (localized name
-- and description) is intended to be used in the EMM user interface when
-- obtaining consent from the enterprise.
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission'
    { _perKind         :: !Text
    , _perName         :: !(Maybe Text)
    , _perDescription  :: !(Maybe Text)
    , _perPermissionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A longer description of the permissions giving more details of what it
-- affects.
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

--
-- /See:/ 'productsApproveRequest' smart constructor.
newtype ProductsApproveRequest = ProductsApproveRequest'
    { _parApprovalURLInfo :: Maybe ApprovalURLInfo
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsApproveRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parApprovalURLInfo'
productsApproveRequest
    :: ProductsApproveRequest
productsApproveRequest =
    ProductsApproveRequest'
    { _parApprovalURLInfo = Nothing
    }

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

instance FromJSON ProductsApproveRequest where
        parseJSON
          = withObject "ProductsApproveRequest"
              (\ o ->
                 ProductsApproveRequest' <$>
                   (o .:? "approvalUrlInfo"))

instance ToJSON ProductsApproveRequest where
        toJSON ProductsApproveRequest'{..}
          = object
              (catMaybes
                 [("approvalUrlInfo" .=) <$> _parApprovalURLInfo])

-- | The existence of an entitlement resource means that a user has the right
-- to use a particular app on any of their devices. This might be because
-- the app is free or because they have been allocated a license to the app
-- from a group license purchased by the enterprise. It should always be
-- true that a user has an app installed on one of their devices only if
-- they have an entitlement to it. So if an entitlement is deleted, the app
-- will be uninstalled from all devices. Similarly if the user installs an
-- app (and is permitted to do so), or the EMM triggers an install of the
-- app, an entitlement to that app is automatically created. If this is
-- impossible - e.g. the enterprise has not purchased sufficient licenses -
-- then installation fails. Note that entitlements are always user
-- specific, not device specific; a user may have an entitlement even
-- though they have not installed the app anywhere. Once they have an
-- entitlement they can install the app on multiple devices. The API can be
-- used to create an entitlement. If the app is a free app, a group license
-- for that app is created. If it\'s a paid app, creating the entitlement
-- consumes one license; it remains consumed until the entitlement is
-- removed. Optionally an installation of the app on all the user\'s
-- managed devices can be triggered at the time the entitlement is created.
-- An entitlement cannot be created for an app if the app requires
-- permissions that the enterprise has not yet accepted. Entitlements for
-- paid apps that are due to purchases by the user on a non-managed profile
-- will have \"userPurchase\" as entitlement reason; those entitlements
-- cannot be removed via the API.
--
-- /See:/ 'entitlement' smart constructor.
data Entitlement = Entitlement'
    { _eeKind      :: !Text
    , _eeReason    :: !(Maybe Text)
    , _eeProductId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The reason for the entitlement, e.g. \"free\" for free apps. This is
-- temporary, it will be replaced by the acquisition kind field of group
-- licenses.
eeReason :: Lens' Entitlement (Maybe Text)
eeReason = lens _eeReason (\ s a -> s{_eeReason = a})

-- | The ID of the product that the entitlement is for, e.g.
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
data ProductsListResponse = ProductsListResponse'
    { _plrTokenPagination :: !(Maybe TokenPagination)
    , _plrPageInfo        :: !(Maybe PageInfo)
    , _plrKind            :: !Text
    , _plrProduct         :: !(Maybe [Product])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
