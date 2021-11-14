{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIdentity.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIdentity.Types.Product where

import Network.Google.CloudIdentity.Types.Sum
import Network.Google.Prelude

-- | Additional custom attribute values may be one of these types
--
-- /See:/ 'googleAppsCloudidentityDevicesV1CustomAttributeValue' smart constructor.
data GoogleAppsCloudidentityDevicesV1CustomAttributeValue =
  GoogleAppsCloudidentityDevicesV1CustomAttributeValue'
    { _gacdvcavBoolValue :: !(Maybe Bool)
    , _gacdvcavNumberValue :: !(Maybe (Textual Double))
    , _gacdvcavStringValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CustomAttributeValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvcavBoolValue'
--
-- * 'gacdvcavNumberValue'
--
-- * 'gacdvcavStringValue'
googleAppsCloudidentityDevicesV1CustomAttributeValue
    :: GoogleAppsCloudidentityDevicesV1CustomAttributeValue
googleAppsCloudidentityDevicesV1CustomAttributeValue =
  GoogleAppsCloudidentityDevicesV1CustomAttributeValue'
    { _gacdvcavBoolValue = Nothing
    , _gacdvcavNumberValue = Nothing
    , _gacdvcavStringValue = Nothing
    }


-- | Represents a boolean value.
gacdvcavBoolValue :: Lens' GoogleAppsCloudidentityDevicesV1CustomAttributeValue (Maybe Bool)
gacdvcavBoolValue
  = lens _gacdvcavBoolValue
      (\ s a -> s{_gacdvcavBoolValue = a})

-- | Represents a double value.
gacdvcavNumberValue :: Lens' GoogleAppsCloudidentityDevicesV1CustomAttributeValue (Maybe Double)
gacdvcavNumberValue
  = lens _gacdvcavNumberValue
      (\ s a -> s{_gacdvcavNumberValue = a})
      . mapping _Coerce

-- | Represents a string value.
gacdvcavStringValue :: Lens' GoogleAppsCloudidentityDevicesV1CustomAttributeValue (Maybe Text)
gacdvcavStringValue
  = lens _gacdvcavStringValue
      (\ s a -> s{_gacdvcavStringValue = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1CustomAttributeValue
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1CustomAttributeValue"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CustomAttributeValue'
                   <$>
                   (o .:? "boolValue") <*> (o .:? "numberValue") <*>
                     (o .:? "stringValue"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1CustomAttributeValue
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CustomAttributeValue'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _gacdvcavBoolValue,
                  ("numberValue" .=) <$> _gacdvcavNumberValue,
                  ("stringValue" .=) <$> _gacdvcavStringValue])

-- | The response message for MembershipsService.LookupMembershipName.
--
-- /See:/ 'lookupMembershipNameResponse' smart constructor.
newtype LookupMembershipNameResponse =
  LookupMembershipNameResponse'
    { _lmnrName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LookupMembershipNameResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmnrName'
lookupMembershipNameResponse
    :: LookupMembershipNameResponse
lookupMembershipNameResponse =
  LookupMembershipNameResponse' {_lmnrName = Nothing}


-- | The [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- looked-up \`Membership\`. Must be of the form
-- \`groups\/{group_id}\/memberships\/{membership_id}\`.
lmnrName :: Lens' LookupMembershipNameResponse (Maybe Text)
lmnrName = lens _lmnrName (\ s a -> s{_lmnrName = a})

instance FromJSON LookupMembershipNameResponse where
        parseJSON
          = withObject "LookupMembershipNameResponse"
              (\ o ->
                 LookupMembershipNameResponse' <$> (o .:? "name"))

instance ToJSON LookupMembershipNameResponse where
        toJSON LookupMembershipNameResponse'{..}
          = object (catMaybes [("name" .=) <$> _lmnrName])

-- | The response message for MembershipsService.SearchTransitiveGroups.
--
-- /See:/ 'searchTransitiveGroupsResponse' smart constructor.
data SearchTransitiveGroupsResponse =
  SearchTransitiveGroupsResponse'
    { _stgrNextPageToken :: !(Maybe Text)
    , _stgrMemberships :: !(Maybe [GroupRelation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchTransitiveGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stgrNextPageToken'
--
-- * 'stgrMemberships'
searchTransitiveGroupsResponse
    :: SearchTransitiveGroupsResponse
searchTransitiveGroupsResponse =
  SearchTransitiveGroupsResponse'
    {_stgrNextPageToken = Nothing, _stgrMemberships = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results available for listing.
stgrNextPageToken :: Lens' SearchTransitiveGroupsResponse (Maybe Text)
stgrNextPageToken
  = lens _stgrNextPageToken
      (\ s a -> s{_stgrNextPageToken = a})

-- | List of transitive groups satisfying the query.
stgrMemberships :: Lens' SearchTransitiveGroupsResponse [GroupRelation]
stgrMemberships
  = lens _stgrMemberships
      (\ s a -> s{_stgrMemberships = a})
      . _Default
      . _Coerce

instance FromJSON SearchTransitiveGroupsResponse
         where
        parseJSON
          = withObject "SearchTransitiveGroupsResponse"
              (\ o ->
                 SearchTransitiveGroupsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "memberships" .!= mempty))

instance ToJSON SearchTransitiveGroupsResponse where
        toJSON SearchTransitiveGroupsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _stgrNextPageToken,
                  ("memberships" .=) <$> _stgrMemberships])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Resource representing the Android specific attributes of a Device.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1AndroidAttributes' smart constructor.
data GoogleAppsCloudidentityDevicesV1AndroidAttributes =
  GoogleAppsCloudidentityDevicesV1AndroidAttributes'
    { _gacdvaaOwnershipPrivilege :: !(Maybe GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege)
    , _gacdvaaOwnerProFileAccount :: !(Maybe Bool)
    , _gacdvaaEnabledUnknownSources :: !(Maybe Bool)
    , _gacdvaaSupportsWorkProFile :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1AndroidAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvaaOwnershipPrivilege'
--
-- * 'gacdvaaOwnerProFileAccount'
--
-- * 'gacdvaaEnabledUnknownSources'
--
-- * 'gacdvaaSupportsWorkProFile'
googleAppsCloudidentityDevicesV1AndroidAttributes
    :: GoogleAppsCloudidentityDevicesV1AndroidAttributes
googleAppsCloudidentityDevicesV1AndroidAttributes =
  GoogleAppsCloudidentityDevicesV1AndroidAttributes'
    { _gacdvaaOwnershipPrivilege = Nothing
    , _gacdvaaOwnerProFileAccount = Nothing
    , _gacdvaaEnabledUnknownSources = Nothing
    , _gacdvaaSupportsWorkProFile = Nothing
    }


-- | Ownership privileges on device.
gacdvaaOwnershipPrivilege :: Lens' GoogleAppsCloudidentityDevicesV1AndroidAttributes (Maybe GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege)
gacdvaaOwnershipPrivilege
  = lens _gacdvaaOwnershipPrivilege
      (\ s a -> s{_gacdvaaOwnershipPrivilege = a})

-- | Whether this account is on an owner\/primary profile. For phones, only
-- true for owner profiles. Android 4+ devices can have secondary or
-- restricted user profiles.
gacdvaaOwnerProFileAccount :: Lens' GoogleAppsCloudidentityDevicesV1AndroidAttributes (Maybe Bool)
gacdvaaOwnerProFileAccount
  = lens _gacdvaaOwnerProFileAccount
      (\ s a -> s{_gacdvaaOwnerProFileAccount = a})

-- | Whether applications from unknown sources can be installed on device.
gacdvaaEnabledUnknownSources :: Lens' GoogleAppsCloudidentityDevicesV1AndroidAttributes (Maybe Bool)
gacdvaaEnabledUnknownSources
  = lens _gacdvaaEnabledUnknownSources
      (\ s a -> s{_gacdvaaEnabledUnknownSources = a})

-- | Whether device supports Android work profiles. If false, this service
-- will not block access to corp data even if an administrator turns on the
-- \"Enforce Work Profile\" policy.
gacdvaaSupportsWorkProFile :: Lens' GoogleAppsCloudidentityDevicesV1AndroidAttributes (Maybe Bool)
gacdvaaSupportsWorkProFile
  = lens _gacdvaaSupportsWorkProFile
      (\ s a -> s{_gacdvaaSupportsWorkProFile = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1AndroidAttributes
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1AndroidAttributes"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1AndroidAttributes'
                   <$>
                   (o .:? "ownershipPrivilege") <*>
                     (o .:? "ownerProfileAccount")
                     <*> (o .:? "enabledUnknownSources")
                     <*> (o .:? "supportsWorkProfile"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1AndroidAttributes
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1AndroidAttributes'{..}
          = object
              (catMaybes
                 [("ownershipPrivilege" .=) <$>
                    _gacdvaaOwnershipPrivilege,
                  ("ownerProfileAccount" .=) <$>
                    _gacdvaaOwnerProFileAccount,
                  ("enabledUnknownSources" .=) <$>
                    _gacdvaaEnabledUnknownSources,
                  ("supportsWorkProfile" .=) <$>
                    _gacdvaaSupportsWorkProFile])

-- | Labels for Group resource.
--
-- /See:/ 'groupRelationLabels' smart constructor.
newtype GroupRelationLabels =
  GroupRelationLabels'
    { _grlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupRelationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grlAddtional'
groupRelationLabels
    :: HashMap Text Text -- ^ 'grlAddtional'
    -> GroupRelationLabels
groupRelationLabels pGrlAddtional_ =
  GroupRelationLabels' {_grlAddtional = _Coerce # pGrlAddtional_}


grlAddtional :: Lens' GroupRelationLabels (HashMap Text Text)
grlAddtional
  = lens _grlAddtional (\ s a -> s{_grlAddtional = a})
      . _Coerce

instance FromJSON GroupRelationLabels where
        parseJSON
          = withObject "GroupRelationLabels"
              (\ o -> GroupRelationLabels' <$> (parseJSONObject o))

instance ToJSON GroupRelationLabels where
        toJSON = toJSON . _grlAddtional

-- | Response containing resource names of the DeviceUsers associated with
-- the caller\'s credentials.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse'
    { _gacdvlsdurNextPageToken :: !(Maybe Text)
    , _gacdvlsdurNames :: !(Maybe [Text])
    , _gacdvlsdurCustomer :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvlsdurNextPageToken'
--
-- * 'gacdvlsdurNames'
--
-- * 'gacdvlsdurCustomer'
googleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    :: GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
googleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse'
    { _gacdvlsdurNextPageToken = Nothing
    , _gacdvlsdurNames = Nothing
    , _gacdvlsdurCustomer = Nothing
    }


-- | Token to retrieve the next page of results. Empty if there are no more
-- results.
gacdvlsdurNextPageToken :: Lens' GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse (Maybe Text)
gacdvlsdurNextPageToken
  = lens _gacdvlsdurNextPageToken
      (\ s a -> s{_gacdvlsdurNextPageToken = a})

-- | [Resource
-- names](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- DeviceUsers in the format:
-- \`devices\/{device_id}\/deviceUsers\/{user_resource_id}\`, where
-- device_id is the unique ID assigned to a Device and user_resource_id is
-- the unique user ID
gacdvlsdurNames :: Lens' GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse [Text]
gacdvlsdurNames
  = lens _gacdvlsdurNames
      (\ s a -> s{_gacdvlsdurNames = a})
      . _Default
      . _Coerce

-- | The obfuscated customer Id that may be passed back to other Devices API
-- methods such as List, Get, etc.
gacdvlsdurCustomer :: Lens' GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse (Maybe Text)
gacdvlsdurCustomer
  = lens _gacdvlsdurCustomer
      (\ s a -> s{_gacdvlsdurCustomer = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "names" .!= mempty)
                     <*> (o .:? "customer"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gacdvlsdurNextPageToken,
                  ("names" .=) <$> _gacdvlsdurNames,
                  ("customer" .=) <$> _gacdvlsdurCustomer])

-- | Dynamic group metadata like queries and status.
--
-- /See:/ 'dynamicGroupMetadata' smart constructor.
data DynamicGroupMetadata =
  DynamicGroupMetadata'
    { _dgmStatus :: !(Maybe DynamicGroupStatus)
    , _dgmQueries :: !(Maybe [DynamicGroupQuery])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicGroupMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgmStatus'
--
-- * 'dgmQueries'
dynamicGroupMetadata
    :: DynamicGroupMetadata
dynamicGroupMetadata =
  DynamicGroupMetadata' {_dgmStatus = Nothing, _dgmQueries = Nothing}


-- | Output only. Status of the dynamic group.
dgmStatus :: Lens' DynamicGroupMetadata (Maybe DynamicGroupStatus)
dgmStatus
  = lens _dgmStatus (\ s a -> s{_dgmStatus = a})

-- | Memberships will be the union of all queries. Only one entry with USER
-- resource is currently supported. Customers can create up to 100 dynamic
-- groups.
dgmQueries :: Lens' DynamicGroupMetadata [DynamicGroupQuery]
dgmQueries
  = lens _dgmQueries (\ s a -> s{_dgmQueries = a}) .
      _Default
      . _Coerce

instance FromJSON DynamicGroupMetadata where
        parseJSON
          = withObject "DynamicGroupMetadata"
              (\ o ->
                 DynamicGroupMetadata' <$>
                   (o .:? "status") <*> (o .:? "queries" .!= mempty))

instance ToJSON DynamicGroupMetadata where
        toJSON DynamicGroupMetadata'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dgmStatus,
                  ("queries" .=) <$> _dgmQueries])

-- | A group within the Cloud Identity Groups API. A \`Group\` is a
-- collection of entities, where each entity is either a user, another
-- group, or a service account.
--
-- /See:/ 'group'' smart constructor.
data Group =
  Group'
    { _gParent :: !(Maybe Text)
    , _gDynamicGroupMetadata :: !(Maybe DynamicGroupMetadata)
    , _gGroupKey :: !(Maybe EntityKey)
    , _gUpdateTime :: !(Maybe DateTime')
    , _gName :: !(Maybe Text)
    , _gDisplayName :: !(Maybe Text)
    , _gLabels :: !(Maybe GroupLabels)
    , _gDescription :: !(Maybe Text)
    , _gCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gParent'
--
-- * 'gDynamicGroupMetadata'
--
-- * 'gGroupKey'
--
-- * 'gUpdateTime'
--
-- * 'gName'
--
-- * 'gDisplayName'
--
-- * 'gLabels'
--
-- * 'gDescription'
--
-- * 'gCreateTime'
group'
    :: Group
group' =
  Group'
    { _gParent = Nothing
    , _gDynamicGroupMetadata = Nothing
    , _gGroupKey = Nothing
    , _gUpdateTime = Nothing
    , _gName = Nothing
    , _gDisplayName = Nothing
    , _gLabels = Nothing
    , _gDescription = Nothing
    , _gCreateTime = Nothing
    }


-- | Required. Immutable. The resource name of the entity under which this
-- \`Group\` resides in the Cloud Identity resource hierarchy. Must be of
-- the form \`identitysources\/{identity_source_id}\` for external-
-- identity-mapped groups or \`customers\/{customer_id}\` for Google
-- Groups. The \`customer_id\` must begin with \"C\" (for example,
-- \'C046psxkn\').
gParent :: Lens' Group (Maybe Text)
gParent = lens _gParent (\ s a -> s{_gParent = a})

-- | Optional. Dynamic group metadata like queries and status.
gDynamicGroupMetadata :: Lens' Group (Maybe DynamicGroupMetadata)
gDynamicGroupMetadata
  = lens _gDynamicGroupMetadata
      (\ s a -> s{_gDynamicGroupMetadata = a})

-- | Required. Immutable. The \`EntityKey\` of the \`Group\`.
gGroupKey :: Lens' Group (Maybe EntityKey)
gGroupKey
  = lens _gGroupKey (\ s a -> s{_gGroupKey = a})

-- | Output only. The time when the \`Group\` was last updated.
gUpdateTime :: Lens' Group (Maybe UTCTime)
gUpdateTime
  = lens _gUpdateTime (\ s a -> s{_gUpdateTime = a}) .
      mapping _DateTime

-- | Output only. The [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- \`Group\`. Shall be of the form \`groups\/{group_id}\`.
gName :: Lens' Group (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | The display name of the \`Group\`.
gDisplayName :: Lens' Group (Maybe Text)
gDisplayName
  = lens _gDisplayName (\ s a -> s{_gDisplayName = a})

-- | Required. One or more label entries that apply to the Group. Currently
-- supported labels contain a key with an empty value. Google Groups are
-- the default type of group and have a label with a key of
-- \`cloudidentity.googleapis.com\/groups.discussion_forum\` and an empty
-- value. Existing Google Groups can have an additional label with a key of
-- \`cloudidentity.googleapis.com\/groups.security\` and an empty value
-- added to them. **This is an immutable change and the security label
-- cannot be removed once added.** Dynamic groups have a label with a key
-- of \`cloudidentity.googleapis.com\/groups.dynamic\`. Identity-mapped
-- groups for Cloud Search have a label with a key of
-- \`system\/groups\/external\` and an empty value.
gLabels :: Lens' Group (Maybe GroupLabels)
gLabels = lens _gLabels (\ s a -> s{_gLabels = a})

-- | An extended description to help users determine the purpose of a
-- \`Group\`. Must not be longer than 4,096 characters.
gDescription :: Lens' Group (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

-- | Output only. The time when the \`Group\` was created.
gCreateTime :: Lens' Group (Maybe UTCTime)
gCreateTime
  = lens _gCreateTime (\ s a -> s{_gCreateTime = a}) .
      mapping _DateTime

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group' <$>
                   (o .:? "parent") <*> (o .:? "dynamicGroupMetadata")
                     <*> (o .:? "groupKey")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON Group where
        toJSON Group'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gParent,
                  ("dynamicGroupMetadata" .=) <$>
                    _gDynamicGroupMetadata,
                  ("groupKey" .=) <$> _gGroupKey,
                  ("updateTime" .=) <$> _gUpdateTime,
                  ("name" .=) <$> _gName,
                  ("displayName" .=) <$> _gDisplayName,
                  ("labels" .=) <$> _gLabels,
                  ("description" .=) <$> _gDescription,
                  ("createTime" .=) <$> _gCreateTime])

-- | Request message for approving the device to access user data.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1ApproveDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest'
    { _gacdvadurCustomer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvadurCustomer'
googleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    :: GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
googleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest'
    {_gacdvadurCustomer = Nothing}


-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
gacdvadurCustomer :: Lens' GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest (Maybe Text)
gacdvadurCustomer
  = lens _gacdvadurCustomer
      (\ s a -> s{_gacdvadurCustomer = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest'
                   <$> (o .:? "customer"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest'{..}
          = object
              (catMaybes [("customer" .=) <$> _gacdvadurCustomer])

-- | A membership within the Cloud Identity Groups API. A \`Membership\`
-- defines a relationship between a \`Group\` and an entity belonging to
-- that \`Group\`, referred to as a \"member\".
--
-- /See:/ 'membership' smart constructor.
data Membership =
  Membership'
    { _mRoles :: !(Maybe [MembershipRole])
    , _mUpdateTime :: !(Maybe DateTime')
    , _mName :: !(Maybe Text)
    , _mPreferredMemberKey :: !(Maybe EntityKey)
    , _mType :: !(Maybe MembershipType)
    , _mCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Membership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mRoles'
--
-- * 'mUpdateTime'
--
-- * 'mName'
--
-- * 'mPreferredMemberKey'
--
-- * 'mType'
--
-- * 'mCreateTime'
membership
    :: Membership
membership =
  Membership'
    { _mRoles = Nothing
    , _mUpdateTime = Nothing
    , _mName = Nothing
    , _mPreferredMemberKey = Nothing
    , _mType = Nothing
    , _mCreateTime = Nothing
    }


-- | The \`MembershipRole\`s that apply to the \`Membership\`. If
-- unspecified, defaults to a single \`MembershipRole\` with \`name\`
-- \`MEMBER\`. Must not contain duplicate \`MembershipRole\`s with the same
-- \`name\`.
mRoles :: Lens' Membership [MembershipRole]
mRoles
  = lens _mRoles (\ s a -> s{_mRoles = a}) . _Default .
      _Coerce

-- | Output only. The time when the \`Membership\` was last updated.
mUpdateTime :: Lens' Membership (Maybe UTCTime)
mUpdateTime
  = lens _mUpdateTime (\ s a -> s{_mUpdateTime = a}) .
      mapping _DateTime

-- | Output only. The [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- \`Membership\`. Shall be of the form
-- \`groups\/{group_id}\/memberships\/{membership_id}\`.
mName :: Lens' Membership (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | Required. Immutable. The \`EntityKey\` of the member.
mPreferredMemberKey :: Lens' Membership (Maybe EntityKey)
mPreferredMemberKey
  = lens _mPreferredMemberKey
      (\ s a -> s{_mPreferredMemberKey = a})

-- | Output only. The type of the membership.
mType :: Lens' Membership (Maybe MembershipType)
mType = lens _mType (\ s a -> s{_mType = a})

-- | Output only. The time when the \`Membership\` was created.
mCreateTime :: Lens' Membership (Maybe UTCTime)
mCreateTime
  = lens _mCreateTime (\ s a -> s{_mCreateTime = a}) .
      mapping _DateTime

instance FromJSON Membership where
        parseJSON
          = withObject "Membership"
              (\ o ->
                 Membership' <$>
                   (o .:? "roles" .!= mempty) <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "preferredMemberKey")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON Membership where
        toJSON Membership'{..}
          = object
              (catMaybes
                 [("roles" .=) <$> _mRoles,
                  ("updateTime" .=) <$> _mUpdateTime,
                  ("name" .=) <$> _mName,
                  ("preferredMemberKey" .=) <$> _mPreferredMemberKey,
                  ("type" .=) <$> _mType,
                  ("createTime" .=) <$> _mCreateTime])

-- | Request message for cancelling an unfinished user account wipe.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest'
    { _gacdvcwdurCustomer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvcwdurCustomer'
googleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    :: GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
googleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest'
    {_gacdvcwdurCustomer = Nothing}


-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
gacdvcwdurCustomer :: Lens' GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest (Maybe Text)
gacdvcwdurCustomer
  = lens _gacdvcwdurCustomer
      (\ s a -> s{_gacdvcwdurCustomer = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest'
                   <$> (o .:? "customer"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest'{..}
          = object
              (catMaybes [("customer" .=) <$> _gacdvcwdurCustomer])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | Response message for ListGroups operation.
--
-- /See:/ 'listGroupsResponse' smart constructor.
data ListGroupsResponse =
  ListGroupsResponse'
    { _lgrGroups :: !(Maybe [Group])
    , _lgrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrGroups'
--
-- * 'lgrNextPageToken'
listGroupsResponse
    :: ListGroupsResponse
listGroupsResponse =
  ListGroupsResponse' {_lgrGroups = Nothing, _lgrNextPageToken = Nothing}


-- | Groups returned in response to list request. The results are not sorted.
lgrGroups :: Lens' ListGroupsResponse [Group]
lgrGroups
  = lens _lgrGroups (\ s a -> s{_lgrGroups = a}) .
      _Default
      . _Coerce

-- | Token to retrieve the next page of results, or empty if there are no
-- more results available for listing.
lgrNextPageToken :: Lens' ListGroupsResponse (Maybe Text)
lgrNextPageToken
  = lens _lgrNextPageToken
      (\ s a -> s{_lgrNextPageToken = a})

instance FromJSON ListGroupsResponse where
        parseJSON
          = withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse' <$>
                   (o .:? "groups" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse'{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _lgrGroups,
                  ("nextPageToken" .=) <$> _lgrNextPageToken])

-- | A Device within the Cloud Identity Devices API. Represents a Device
-- known to Google Cloud, independent of the device ownership, type, and
-- whether it is assigned or in use by a user.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1Device' smart constructor.
data GoogleAppsCloudidentityDevicesV1Device =
  GoogleAppsCloudidentityDevicesV1Device'
    { _gacdvdAndroidSpecificAttributes :: !(Maybe GoogleAppsCloudidentityDevicesV1AndroidAttributes)
    , _gacdvdManufacturer :: !(Maybe Text)
    , _gacdvdAssetTag :: !(Maybe Text)
    , _gacdvdBuildNumber :: !(Maybe Text)
    , _gacdvdCompromisedState :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceCompromisedState)
    , _gacdvdEncryptionState :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceEncryptionState)
    , _gacdvdLastSyncTime :: !(Maybe DateTime')
    , _gacdvdReleaseVersion :: !(Maybe Text)
    , _gacdvdBrand :: !(Maybe Text)
    , _gacdvdNetworkOperator :: !(Maybe Text)
    , _gacdvdKernelVersion :: !(Maybe Text)
    , _gacdvdManagementState :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceManagementState)
    , _gacdvdName :: !(Maybe Text)
    , _gacdvdModel :: !(Maybe Text)
    , _gacdvdEnabledUsbDebugging :: !(Maybe Bool)
    , _gacdvdMeid :: !(Maybe Text)
    , _gacdvdBootLoaderVersion :: !(Maybe Text)
    , _gacdvdSecurityPatchTime :: !(Maybe DateTime')
    , _gacdvdImei :: !(Maybe Text)
    , _gacdvdDeviceType :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceDeviceType)
    , _gacdvdSerialNumber :: !(Maybe Text)
    , _gacdvdEnabledDeveloperOptions :: !(Maybe Bool)
    , _gacdvdBasebandVersion :: !(Maybe Text)
    , _gacdvdOtherAccounts :: !(Maybe [Text])
    , _gacdvdOSVersion :: !(Maybe Text)
    , _gacdvdWifiMACAddresses :: !(Maybe [Text])
    , _gacdvdCreateTime :: !(Maybe DateTime')
    , _gacdvdOwnerType :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceOwnerType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvdAndroidSpecificAttributes'
--
-- * 'gacdvdManufacturer'
--
-- * 'gacdvdAssetTag'
--
-- * 'gacdvdBuildNumber'
--
-- * 'gacdvdCompromisedState'
--
-- * 'gacdvdEncryptionState'
--
-- * 'gacdvdLastSyncTime'
--
-- * 'gacdvdReleaseVersion'
--
-- * 'gacdvdBrand'
--
-- * 'gacdvdNetworkOperator'
--
-- * 'gacdvdKernelVersion'
--
-- * 'gacdvdManagementState'
--
-- * 'gacdvdName'
--
-- * 'gacdvdModel'
--
-- * 'gacdvdEnabledUsbDebugging'
--
-- * 'gacdvdMeid'
--
-- * 'gacdvdBootLoaderVersion'
--
-- * 'gacdvdSecurityPatchTime'
--
-- * 'gacdvdImei'
--
-- * 'gacdvdDeviceType'
--
-- * 'gacdvdSerialNumber'
--
-- * 'gacdvdEnabledDeveloperOptions'
--
-- * 'gacdvdBasebandVersion'
--
-- * 'gacdvdOtherAccounts'
--
-- * 'gacdvdOSVersion'
--
-- * 'gacdvdWifiMACAddresses'
--
-- * 'gacdvdCreateTime'
--
-- * 'gacdvdOwnerType'
googleAppsCloudidentityDevicesV1Device
    :: GoogleAppsCloudidentityDevicesV1Device
googleAppsCloudidentityDevicesV1Device =
  GoogleAppsCloudidentityDevicesV1Device'
    { _gacdvdAndroidSpecificAttributes = Nothing
    , _gacdvdManufacturer = Nothing
    , _gacdvdAssetTag = Nothing
    , _gacdvdBuildNumber = Nothing
    , _gacdvdCompromisedState = Nothing
    , _gacdvdEncryptionState = Nothing
    , _gacdvdLastSyncTime = Nothing
    , _gacdvdReleaseVersion = Nothing
    , _gacdvdBrand = Nothing
    , _gacdvdNetworkOperator = Nothing
    , _gacdvdKernelVersion = Nothing
    , _gacdvdManagementState = Nothing
    , _gacdvdName = Nothing
    , _gacdvdModel = Nothing
    , _gacdvdEnabledUsbDebugging = Nothing
    , _gacdvdMeid = Nothing
    , _gacdvdBootLoaderVersion = Nothing
    , _gacdvdSecurityPatchTime = Nothing
    , _gacdvdImei = Nothing
    , _gacdvdDeviceType = Nothing
    , _gacdvdSerialNumber = Nothing
    , _gacdvdEnabledDeveloperOptions = Nothing
    , _gacdvdBasebandVersion = Nothing
    , _gacdvdOtherAccounts = Nothing
    , _gacdvdOSVersion = Nothing
    , _gacdvdWifiMACAddresses = Nothing
    , _gacdvdCreateTime = Nothing
    , _gacdvdOwnerType = Nothing
    }


-- | Output only. Attributes specific to Android devices.
gacdvdAndroidSpecificAttributes :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe GoogleAppsCloudidentityDevicesV1AndroidAttributes)
gacdvdAndroidSpecificAttributes
  = lens _gacdvdAndroidSpecificAttributes
      (\ s a -> s{_gacdvdAndroidSpecificAttributes = a})

-- | Output only. Device manufacturer. Example: Motorola.
gacdvdManufacturer :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdManufacturer
  = lens _gacdvdManufacturer
      (\ s a -> s{_gacdvdManufacturer = a})

-- | Asset tag of the device.
gacdvdAssetTag :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdAssetTag
  = lens _gacdvdAssetTag
      (\ s a -> s{_gacdvdAssetTag = a})

-- | Output only. Build number of the device.
gacdvdBuildNumber :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdBuildNumber
  = lens _gacdvdBuildNumber
      (\ s a -> s{_gacdvdBuildNumber = a})

-- | Output only. Represents whether the Device is compromised.
gacdvdCompromisedState :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe GoogleAppsCloudidentityDevicesV1DeviceCompromisedState)
gacdvdCompromisedState
  = lens _gacdvdCompromisedState
      (\ s a -> s{_gacdvdCompromisedState = a})

-- | Output only. Device encryption state.
gacdvdEncryptionState :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe GoogleAppsCloudidentityDevicesV1DeviceEncryptionState)
gacdvdEncryptionState
  = lens _gacdvdEncryptionState
      (\ s a -> s{_gacdvdEncryptionState = a})

-- | Most recent time when device synced with this service.
gacdvdLastSyncTime :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe UTCTime)
gacdvdLastSyncTime
  = lens _gacdvdLastSyncTime
      (\ s a -> s{_gacdvdLastSyncTime = a})
      . mapping _DateTime

-- | Output only. OS release version. Example: 6.0.
gacdvdReleaseVersion :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdReleaseVersion
  = lens _gacdvdReleaseVersion
      (\ s a -> s{_gacdvdReleaseVersion = a})

-- | Output only. Device brand. Example: Samsung.
gacdvdBrand :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdBrand
  = lens _gacdvdBrand (\ s a -> s{_gacdvdBrand = a})

-- | Output only. Mobile or network operator of device, if available.
gacdvdNetworkOperator :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdNetworkOperator
  = lens _gacdvdNetworkOperator
      (\ s a -> s{_gacdvdNetworkOperator = a})

-- | Output only. Kernel version of the device.
gacdvdKernelVersion :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdKernelVersion
  = lens _gacdvdKernelVersion
      (\ s a -> s{_gacdvdKernelVersion = a})

-- | Output only. Management state of the device
gacdvdManagementState :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe GoogleAppsCloudidentityDevicesV1DeviceManagementState)
gacdvdManagementState
  = lens _gacdvdManagementState
      (\ s a -> s{_gacdvdManagementState = a})

-- | Output only. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format: \`devices\/{device_id}\`, where device_id is the
-- unique id assigned to the Device.
gacdvdName :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdName
  = lens _gacdvdName (\ s a -> s{_gacdvdName = a})

-- | Output only. Model name of device. Example: Pixel 3.
gacdvdModel :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdModel
  = lens _gacdvdModel (\ s a -> s{_gacdvdModel = a})

-- | Output only. Whether USB debugging is enabled on device.
gacdvdEnabledUsbDebugging :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Bool)
gacdvdEnabledUsbDebugging
  = lens _gacdvdEnabledUsbDebugging
      (\ s a -> s{_gacdvdEnabledUsbDebugging = a})

-- | Output only. MEID number of device if CDMA device; empty otherwise.
gacdvdMeid :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdMeid
  = lens _gacdvdMeid (\ s a -> s{_gacdvdMeid = a})

-- | Output only. Device bootloader version. Example: 0.6.7.
gacdvdBootLoaderVersion :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdBootLoaderVersion
  = lens _gacdvdBootLoaderVersion
      (\ s a -> s{_gacdvdBootLoaderVersion = a})

-- | Output only. OS security patch update time on device.
gacdvdSecurityPatchTime :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe UTCTime)
gacdvdSecurityPatchTime
  = lens _gacdvdSecurityPatchTime
      (\ s a -> s{_gacdvdSecurityPatchTime = a})
      . mapping _DateTime

-- | Output only. IMEI number of device if GSM device; empty otherwise.
gacdvdImei :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdImei
  = lens _gacdvdImei (\ s a -> s{_gacdvdImei = a})

-- | Output only. Type of device.
gacdvdDeviceType :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe GoogleAppsCloudidentityDevicesV1DeviceDeviceType)
gacdvdDeviceType
  = lens _gacdvdDeviceType
      (\ s a -> s{_gacdvdDeviceType = a})

-- | Serial Number of device. Example: HT82V1A01076.
gacdvdSerialNumber :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdSerialNumber
  = lens _gacdvdSerialNumber
      (\ s a -> s{_gacdvdSerialNumber = a})

-- | Output only. Whether developer options is enabled on device.
gacdvdEnabledDeveloperOptions :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Bool)
gacdvdEnabledDeveloperOptions
  = lens _gacdvdEnabledDeveloperOptions
      (\ s a -> s{_gacdvdEnabledDeveloperOptions = a})

-- | Output only. Baseband version of the device.
gacdvdBasebandVersion :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdBasebandVersion
  = lens _gacdvdBasebandVersion
      (\ s a -> s{_gacdvdBasebandVersion = a})

-- | Output only. Domain name for Google accounts on device. Type for other
-- accounts on device. On Android, will only be populated if
-- |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not
-- include the account signed in to the device policy app if that
-- account\'s domain has only one account. Examples: \"com.example\",
-- \"xyz.com\".
gacdvdOtherAccounts :: Lens' GoogleAppsCloudidentityDevicesV1Device [Text]
gacdvdOtherAccounts
  = lens _gacdvdOtherAccounts
      (\ s a -> s{_gacdvdOtherAccounts = a})
      . _Default
      . _Coerce

-- | Output only. OS version of the device. Example: Android 8.1.0.
gacdvdOSVersion :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe Text)
gacdvdOSVersion
  = lens _gacdvdOSVersion
      (\ s a -> s{_gacdvdOSVersion = a})

-- | WiFi MAC addresses of device.
gacdvdWifiMACAddresses :: Lens' GoogleAppsCloudidentityDevicesV1Device [Text]
gacdvdWifiMACAddresses
  = lens _gacdvdWifiMACAddresses
      (\ s a -> s{_gacdvdWifiMACAddresses = a})
      . _Default
      . _Coerce

-- | Output only. When the Company-Owned device was imported. This field is
-- empty for BYOD devices.
gacdvdCreateTime :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe UTCTime)
gacdvdCreateTime
  = lens _gacdvdCreateTime
      (\ s a -> s{_gacdvdCreateTime = a})
      . mapping _DateTime

-- | Output only. Whether the device is owned by the company or an individual
gacdvdOwnerType :: Lens' GoogleAppsCloudidentityDevicesV1Device (Maybe GoogleAppsCloudidentityDevicesV1DeviceOwnerType)
gacdvdOwnerType
  = lens _gacdvdOwnerType
      (\ s a -> s{_gacdvdOwnerType = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1Device
         where
        parseJSON
          = withObject "GoogleAppsCloudidentityDevicesV1Device"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1Device' <$>
                   (o .:? "androidSpecificAttributes") <*>
                     (o .:? "manufacturer")
                     <*> (o .:? "assetTag")
                     <*> (o .:? "buildNumber")
                     <*> (o .:? "compromisedState")
                     <*> (o .:? "encryptionState")
                     <*> (o .:? "lastSyncTime")
                     <*> (o .:? "releaseVersion")
                     <*> (o .:? "brand")
                     <*> (o .:? "networkOperator")
                     <*> (o .:? "kernelVersion")
                     <*> (o .:? "managementState")
                     <*> (o .:? "name")
                     <*> (o .:? "model")
                     <*> (o .:? "enabledUsbDebugging")
                     <*> (o .:? "meid")
                     <*> (o .:? "bootloaderVersion")
                     <*> (o .:? "securityPatchTime")
                     <*> (o .:? "imei")
                     <*> (o .:? "deviceType")
                     <*> (o .:? "serialNumber")
                     <*> (o .:? "enabledDeveloperOptions")
                     <*> (o .:? "basebandVersion")
                     <*> (o .:? "otherAccounts" .!= mempty)
                     <*> (o .:? "osVersion")
                     <*> (o .:? "wifiMacAddresses" .!= mempty)
                     <*> (o .:? "createTime")
                     <*> (o .:? "ownerType"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1Device
         where
        toJSON GoogleAppsCloudidentityDevicesV1Device'{..}
          = object
              (catMaybes
                 [("androidSpecificAttributes" .=) <$>
                    _gacdvdAndroidSpecificAttributes,
                  ("manufacturer" .=) <$> _gacdvdManufacturer,
                  ("assetTag" .=) <$> _gacdvdAssetTag,
                  ("buildNumber" .=) <$> _gacdvdBuildNumber,
                  ("compromisedState" .=) <$> _gacdvdCompromisedState,
                  ("encryptionState" .=) <$> _gacdvdEncryptionState,
                  ("lastSyncTime" .=) <$> _gacdvdLastSyncTime,
                  ("releaseVersion" .=) <$> _gacdvdReleaseVersion,
                  ("brand" .=) <$> _gacdvdBrand,
                  ("networkOperator" .=) <$> _gacdvdNetworkOperator,
                  ("kernelVersion" .=) <$> _gacdvdKernelVersion,
                  ("managementState" .=) <$> _gacdvdManagementState,
                  ("name" .=) <$> _gacdvdName,
                  ("model" .=) <$> _gacdvdModel,
                  ("enabledUsbDebugging" .=) <$>
                    _gacdvdEnabledUsbDebugging,
                  ("meid" .=) <$> _gacdvdMeid,
                  ("bootloaderVersion" .=) <$>
                    _gacdvdBootLoaderVersion,
                  ("securityPatchTime" .=) <$>
                    _gacdvdSecurityPatchTime,
                  ("imei" .=) <$> _gacdvdImei,
                  ("deviceType" .=) <$> _gacdvdDeviceType,
                  ("serialNumber" .=) <$> _gacdvdSerialNumber,
                  ("enabledDeveloperOptions" .=) <$>
                    _gacdvdEnabledDeveloperOptions,
                  ("basebandVersion" .=) <$> _gacdvdBasebandVersion,
                  ("otherAccounts" .=) <$> _gacdvdOtherAccounts,
                  ("osVersion" .=) <$> _gacdvdOSVersion,
                  ("wifiMacAddresses" .=) <$> _gacdvdWifiMACAddresses,
                  ("createTime" .=) <$> _gacdvdCreateTime,
                  ("ownerType" .=) <$> _gacdvdOwnerType])

-- | Defines a query on a resource.
--
-- /See:/ 'dynamicGroupQuery' smart constructor.
data DynamicGroupQuery =
  DynamicGroupQuery'
    { _dgqResourceType :: !(Maybe DynamicGroupQueryResourceType)
    , _dgqQuery :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicGroupQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgqResourceType'
--
-- * 'dgqQuery'
dynamicGroupQuery
    :: DynamicGroupQuery
dynamicGroupQuery =
  DynamicGroupQuery' {_dgqResourceType = Nothing, _dgqQuery = Nothing}


-- | Resource type for the Dynamic Group Query
dgqResourceType :: Lens' DynamicGroupQuery (Maybe DynamicGroupQueryResourceType)
dgqResourceType
  = lens _dgqResourceType
      (\ s a -> s{_dgqResourceType = a})

-- | Query that determines the memberships of the dynamic group. Examples:
-- All users with at least one \`organizations.department\` of engineering.
-- \`user.organizations.exists(org, org.department==\'engineering\')\` All
-- users with at least one location that has \`area\` of \`foo\` and
-- \`building_id\` of \`bar\`. \`user.locations.exists(loc,
-- loc.area==\'foo\' && loc.building_id==\'bar\')\`
dgqQuery :: Lens' DynamicGroupQuery (Maybe Text)
dgqQuery = lens _dgqQuery (\ s a -> s{_dgqQuery = a})

instance FromJSON DynamicGroupQuery where
        parseJSON
          = withObject "DynamicGroupQuery"
              (\ o ->
                 DynamicGroupQuery' <$>
                   (o .:? "resourceType") <*> (o .:? "query"))

instance ToJSON DynamicGroupQuery where
        toJSON DynamicGroupQuery'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _dgqResourceType,
                  ("query" .=) <$> _dgqQuery])

-- | The \`UserInvitation\` resource represents an email that can be sent to
-- an unmanaged user account inviting them to join the customer’s Google
-- Workspace or Cloud Identity account. An unmanaged account shares an
-- email address domain with the Google Workspace or Cloud Identity account
-- but is not managed by it yet. If the user accepts the
-- \`UserInvitation\`, the user account will become managed.
--
-- /See:/ 'userInvitation' smart constructor.
data UserInvitation =
  UserInvitation'
    { _uiState :: !(Maybe UserInvitationState)
    , _uiMailsSentCount :: !(Maybe (Textual Int64))
    , _uiUpdateTime :: !(Maybe DateTime')
    , _uiName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserInvitation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiState'
--
-- * 'uiMailsSentCount'
--
-- * 'uiUpdateTime'
--
-- * 'uiName'
userInvitation
    :: UserInvitation
userInvitation =
  UserInvitation'
    { _uiState = Nothing
    , _uiMailsSentCount = Nothing
    , _uiUpdateTime = Nothing
    , _uiName = Nothing
    }


-- | State of the \`UserInvitation\`.
uiState :: Lens' UserInvitation (Maybe UserInvitationState)
uiState = lens _uiState (\ s a -> s{_uiState = a})

-- | Number of invitation emails sent to the user.
uiMailsSentCount :: Lens' UserInvitation (Maybe Int64)
uiMailsSentCount
  = lens _uiMailsSentCount
      (\ s a -> s{_uiMailsSentCount = a})
      . mapping _Coerce

-- | Time when the \`UserInvitation\` was last updated.
uiUpdateTime :: Lens' UserInvitation (Maybe UTCTime)
uiUpdateTime
  = lens _uiUpdateTime (\ s a -> s{_uiUpdateTime = a})
      . mapping _DateTime

-- | Shall be of the form
-- \`customers\/{customer}\/userinvitations\/{user_email_address}\`.
uiName :: Lens' UserInvitation (Maybe Text)
uiName = lens _uiName (\ s a -> s{_uiName = a})

instance FromJSON UserInvitation where
        parseJSON
          = withObject "UserInvitation"
              (\ o ->
                 UserInvitation' <$>
                   (o .:? "state") <*> (o .:? "mailsSentCount") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name"))

instance ToJSON UserInvitation where
        toJSON UserInvitation'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _uiState,
                  ("mailsSentCount" .=) <$> _uiMailsSentCount,
                  ("updateTime" .=) <$> _uiUpdateTime,
                  ("name" .=) <$> _uiName])

-- | Request message for starting an account wipe on device.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1WipeDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest'
    { _gacdvwdurCustomer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvwdurCustomer'
googleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    :: GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
googleAppsCloudidentityDevicesV1WipeDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest'
    {_gacdvwdurCustomer = Nothing}


-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
gacdvwdurCustomer :: Lens' GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest (Maybe Text)
gacdvwdurCustomer
  = lens _gacdvwdurCustomer
      (\ s a -> s{_gacdvwdurCustomer = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest'
                   <$> (o .:? "customer"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest'{..}
          = object
              (catMaybes [("customer" .=) <$> _gacdvwdurCustomer])

-- | The map of key-value attributes stored by callers specific to a device.
-- The total serialized length of this map may not exceed 10KB. No limit is
-- placed on the number of attributes in a map.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1ClientStateKeyValuePairs' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs =
  GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs'
    { _gacdvcskvpAddtional :: HashMap Text GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvcskvpAddtional'
googleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
    :: HashMap Text GoogleAppsCloudidentityDevicesV1CustomAttributeValue -- ^ 'gacdvcskvpAddtional'
    -> GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
googleAppsCloudidentityDevicesV1ClientStateKeyValuePairs pGacdvcskvpAddtional_ =
  GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs'
    {_gacdvcskvpAddtional = _Coerce # pGacdvcskvpAddtional_}


gacdvcskvpAddtional :: Lens' GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs (HashMap Text GoogleAppsCloudidentityDevicesV1CustomAttributeValue)
gacdvcskvpAddtional
  = lens _gacdvcskvpAddtional
      (\ s a -> s{_gacdvcskvpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
         where
        toJSON = toJSON . _gacdvcskvpAddtional

-- | Response message for blocking the device from accessing user data.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1BlockDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse'
    { _gacdvbdurDeviceUser :: Maybe GoogleAppsCloudidentityDevicesV1DeviceUser
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvbdurDeviceUser'
googleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    :: GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
googleAppsCloudidentityDevicesV1BlockDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse'
    {_gacdvbdurDeviceUser = Nothing}


-- | Resultant DeviceUser object for the action.
gacdvbdurDeviceUser :: Lens' GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse (Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
gacdvbdurDeviceUser
  = lens _gacdvbdurDeviceUser
      (\ s a -> s{_gacdvbdurDeviceUser = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse'
                   <$> (o .:? "deviceUser"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse'{..}
          = object
              (catMaybes
                 [("deviceUser" .=) <$> _gacdvbdurDeviceUser])

-- | Response message that is returned from the ListDeviceUsers method.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1ListDeviceUsersResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse'
    { _gacdvldurNextPageToken :: !(Maybe Text)
    , _gacdvldurDeviceUsers :: !(Maybe [GoogleAppsCloudidentityDevicesV1DeviceUser])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvldurNextPageToken'
--
-- * 'gacdvldurDeviceUsers'
googleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    :: GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
googleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse'
    {_gacdvldurNextPageToken = Nothing, _gacdvldurDeviceUsers = Nothing}


-- | Token to retrieve the next page of results. Empty if there are no more
-- results.
gacdvldurNextPageToken :: Lens' GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse (Maybe Text)
gacdvldurNextPageToken
  = lens _gacdvldurNextPageToken
      (\ s a -> s{_gacdvldurNextPageToken = a})

-- | Devices meeting the list restrictions.
gacdvldurDeviceUsers :: Lens' GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse [GoogleAppsCloudidentityDevicesV1DeviceUser]
gacdvldurDeviceUsers
  = lens _gacdvldurDeviceUsers
      (\ s a -> s{_gacdvldurDeviceUsers = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "deviceUsers" .!= mempty))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gacdvldurNextPageToken,
                  ("deviceUsers" .=) <$> _gacdvldurDeviceUsers])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | The current status of a dynamic group along with timestamp.
--
-- /See:/ 'dynamicGroupStatus' smart constructor.
data DynamicGroupStatus =
  DynamicGroupStatus'
    { _dgsStatus :: !(Maybe DynamicGroupStatusStatus)
    , _dgsStatusTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicGroupStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsStatus'
--
-- * 'dgsStatusTime'
dynamicGroupStatus
    :: DynamicGroupStatus
dynamicGroupStatus =
  DynamicGroupStatus' {_dgsStatus = Nothing, _dgsStatusTime = Nothing}


-- | Status of the dynamic group.
dgsStatus :: Lens' DynamicGroupStatus (Maybe DynamicGroupStatusStatus)
dgsStatus
  = lens _dgsStatus (\ s a -> s{_dgsStatus = a})

-- | The latest time at which the dynamic group is guaranteed to be in the
-- given status. If status is \`UP_TO_DATE\`, the latest time at which the
-- dynamic group was confirmed to be up-to-date. If status is
-- \`UPDATING_MEMBERSHIPS\`, the time at which dynamic group was created.
dgsStatusTime :: Lens' DynamicGroupStatus (Maybe UTCTime)
dgsStatusTime
  = lens _dgsStatusTime
      (\ s a -> s{_dgsStatusTime = a})
      . mapping _DateTime

instance FromJSON DynamicGroupStatus where
        parseJSON
          = withObject "DynamicGroupStatus"
              (\ o ->
                 DynamicGroupStatus' <$>
                   (o .:? "status") <*> (o .:? "statusTime"))

instance ToJSON DynamicGroupStatus where
        toJSON DynamicGroupStatus'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dgsStatus,
                  ("statusTime" .=) <$> _dgsStatusTime])

-- | A membership role within the Cloud Identity Groups API. A
-- \`MembershipRole\` defines the privileges granted to a \`Membership\`.
--
-- /See:/ 'membershipRole' smart constructor.
data MembershipRole =
  MembershipRole'
    { _mrExpiryDetail :: !(Maybe ExpiryDetail)
    , _mrName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembershipRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrExpiryDetail'
--
-- * 'mrName'
membershipRole
    :: MembershipRole
membershipRole = MembershipRole' {_mrExpiryDetail = Nothing, _mrName = Nothing}


-- | The expiry details of the \`MembershipRole\`. Expiry details are only
-- supported for \`MEMBER\` \`MembershipRoles\`. May be set if \`name\` is
-- \`MEMBER\`. Must not be set if \`name\` is any other value.
mrExpiryDetail :: Lens' MembershipRole (Maybe ExpiryDetail)
mrExpiryDetail
  = lens _mrExpiryDetail
      (\ s a -> s{_mrExpiryDetail = a})

-- | The name of the \`MembershipRole\`. Must be one of \`OWNER\`,
-- \`MANAGER\`, \`MEMBER\`.
mrName :: Lens' MembershipRole (Maybe Text)
mrName = lens _mrName (\ s a -> s{_mrName = a})

instance FromJSON MembershipRole where
        parseJSON
          = withObject "MembershipRole"
              (\ o ->
                 MembershipRole' <$>
                   (o .:? "expiryDetail") <*> (o .:? "name"))

instance ToJSON MembershipRole where
        toJSON MembershipRole'{..}
          = object
              (catMaybes
                 [("expiryDetail" .=) <$> _mrExpiryDetail,
                  ("name" .=) <$> _mrName])

-- | The response message for MembershipsService.ModifyMembershipRoles.
--
-- /See:/ 'modifyMembershipRolesResponse' smart constructor.
newtype ModifyMembershipRolesResponse =
  ModifyMembershipRolesResponse'
    { _mmrrMembership :: Maybe Membership
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyMembershipRolesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmrrMembership'
modifyMembershipRolesResponse
    :: ModifyMembershipRolesResponse
modifyMembershipRolesResponse =
  ModifyMembershipRolesResponse' {_mmrrMembership = Nothing}


-- | The \`Membership\` resource after modifying its \`MembershipRole\`s.
mmrrMembership :: Lens' ModifyMembershipRolesResponse (Maybe Membership)
mmrrMembership
  = lens _mmrrMembership
      (\ s a -> s{_mmrrMembership = a})

instance FromJSON ModifyMembershipRolesResponse where
        parseJSON
          = withObject "ModifyMembershipRolesResponse"
              (\ o ->
                 ModifyMembershipRolesResponse' <$>
                   (o .:? "membership"))

instance ToJSON ModifyMembershipRolesResponse where
        toJSON ModifyMembershipRolesResponse'{..}
          = object
              (catMaybes [("membership" .=) <$> _mmrrMembership])

-- | The \`MembershipRole\` expiry details.
--
-- /See:/ 'expiryDetail' smart constructor.
newtype ExpiryDetail =
  ExpiryDetail'
    { _edExpireTime :: Maybe DateTime'
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExpiryDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edExpireTime'
expiryDetail
    :: ExpiryDetail
expiryDetail = ExpiryDetail' {_edExpireTime = Nothing}


-- | The time at which the \`MembershipRole\` will expire.
edExpireTime :: Lens' ExpiryDetail (Maybe UTCTime)
edExpireTime
  = lens _edExpireTime (\ s a -> s{_edExpireTime = a})
      . mapping _DateTime

instance FromJSON ExpiryDetail where
        parseJSON
          = withObject "ExpiryDetail"
              (\ o -> ExpiryDetail' <$> (o .:? "expireTime"))

instance ToJSON ExpiryDetail where
        toJSON ExpiryDetail'{..}
          = object
              (catMaybes [("expireTime" .=) <$> _edExpireTime])

-- | Response message for cancelling an unfinished device wipe.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1CancelWipeDeviceResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse'
    { _gacdvcwdrDevice :: Maybe GoogleAppsCloudidentityDevicesV1Device
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvcwdrDevice'
googleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    :: GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
googleAppsCloudidentityDevicesV1CancelWipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse'
    {_gacdvcwdrDevice = Nothing}


-- | Resultant Device object for the action. Note that asset tags will not be
-- returned in the device object.
gacdvcwdrDevice :: Lens' GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse (Maybe GoogleAppsCloudidentityDevicesV1Device)
gacdvcwdrDevice
  = lens _gacdvcwdrDevice
      (\ s a -> s{_gacdvcwdrDevice = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse'
                   <$> (o .:? "device"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse'{..}
          = object
              (catMaybes [("device" .=) <$> _gacdvcwdrDevice])

-- | Represents a user\'s use of a Device in the Cloud Identity Devices API.
-- A DeviceUser is a resource representing a user\'s use of a Device
--
-- /See:/ 'googleAppsCloudidentityDevicesV1DeviceUser' smart constructor.
data GoogleAppsCloudidentityDevicesV1DeviceUser =
  GoogleAppsCloudidentityDevicesV1DeviceUser'
    { _gacdvduLanguageCode :: !(Maybe Text)
    , _gacdvduCompromisedState :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState)
    , _gacdvduPasswordState :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState)
    , _gacdvduLastSyncTime :: !(Maybe DateTime')
    , _gacdvduManagementState :: !(Maybe GoogleAppsCloudidentityDevicesV1DeviceUserManagementState)
    , _gacdvduName :: !(Maybe Text)
    , _gacdvduUserEmail :: !(Maybe Text)
    , _gacdvduUserAgent :: !(Maybe Text)
    , _gacdvduFirstSyncTime :: !(Maybe DateTime')
    , _gacdvduCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1DeviceUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvduLanguageCode'
--
-- * 'gacdvduCompromisedState'
--
-- * 'gacdvduPasswordState'
--
-- * 'gacdvduLastSyncTime'
--
-- * 'gacdvduManagementState'
--
-- * 'gacdvduName'
--
-- * 'gacdvduUserEmail'
--
-- * 'gacdvduUserAgent'
--
-- * 'gacdvduFirstSyncTime'
--
-- * 'gacdvduCreateTime'
googleAppsCloudidentityDevicesV1DeviceUser
    :: GoogleAppsCloudidentityDevicesV1DeviceUser
googleAppsCloudidentityDevicesV1DeviceUser =
  GoogleAppsCloudidentityDevicesV1DeviceUser'
    { _gacdvduLanguageCode = Nothing
    , _gacdvduCompromisedState = Nothing
    , _gacdvduPasswordState = Nothing
    , _gacdvduLastSyncTime = Nothing
    , _gacdvduManagementState = Nothing
    , _gacdvduName = Nothing
    , _gacdvduUserEmail = Nothing
    , _gacdvduUserAgent = Nothing
    , _gacdvduFirstSyncTime = Nothing
    , _gacdvduCreateTime = Nothing
    }


-- | Output only. Default locale used on device, in IETF BCP-47 format.
gacdvduLanguageCode :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe Text)
gacdvduLanguageCode
  = lens _gacdvduLanguageCode
      (\ s a -> s{_gacdvduLanguageCode = a})

-- | Compromised State of the DeviceUser object
gacdvduCompromisedState :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState)
gacdvduCompromisedState
  = lens _gacdvduCompromisedState
      (\ s a -> s{_gacdvduCompromisedState = a})

-- | Password state of the DeviceUser object
gacdvduPasswordState :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState)
gacdvduPasswordState
  = lens _gacdvduPasswordState
      (\ s a -> s{_gacdvduPasswordState = a})

-- | Output only. Last time when user synced with policies.
gacdvduLastSyncTime :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe UTCTime)
gacdvduLastSyncTime
  = lens _gacdvduLastSyncTime
      (\ s a -> s{_gacdvduLastSyncTime = a})
      . mapping _DateTime

-- | Output only. Management state of the user on the device.
gacdvduManagementState :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe GoogleAppsCloudidentityDevicesV1DeviceUserManagementState)
gacdvduManagementState
  = lens _gacdvduManagementState
      (\ s a -> s{_gacdvduManagementState = a})

-- | Output only. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- DeviceUser in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where
-- \`device_user_id\` uniquely identifies a user\'s use of a device.
gacdvduName :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe Text)
gacdvduName
  = lens _gacdvduName (\ s a -> s{_gacdvduName = a})

-- | Email address of the user registered on the device.
gacdvduUserEmail :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe Text)
gacdvduUserEmail
  = lens _gacdvduUserEmail
      (\ s a -> s{_gacdvduUserEmail = a})

-- | Output only. User agent on the device for this specific user
gacdvduUserAgent :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe Text)
gacdvduUserAgent
  = lens _gacdvduUserAgent
      (\ s a -> s{_gacdvduUserAgent = a})

-- | Output only. Most recent time when user registered with this service.
gacdvduFirstSyncTime :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe UTCTime)
gacdvduFirstSyncTime
  = lens _gacdvduFirstSyncTime
      (\ s a -> s{_gacdvduFirstSyncTime = a})
      . mapping _DateTime

-- | When the user first signed in to the device
gacdvduCreateTime :: Lens' GoogleAppsCloudidentityDevicesV1DeviceUser (Maybe UTCTime)
gacdvduCreateTime
  = lens _gacdvduCreateTime
      (\ s a -> s{_gacdvduCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleAppsCloudidentityDevicesV1DeviceUser
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1DeviceUser"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1DeviceUser' <$>
                   (o .:? "languageCode") <*> (o .:? "compromisedState")
                     <*> (o .:? "passwordState")
                     <*> (o .:? "lastSyncTime")
                     <*> (o .:? "managementState")
                     <*> (o .:? "name")
                     <*> (o .:? "userEmail")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "firstSyncTime")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1DeviceUser
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1DeviceUser'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gacdvduLanguageCode,
                  ("compromisedState" .=) <$> _gacdvduCompromisedState,
                  ("passwordState" .=) <$> _gacdvduPasswordState,
                  ("lastSyncTime" .=) <$> _gacdvduLastSyncTime,
                  ("managementState" .=) <$> _gacdvduManagementState,
                  ("name" .=) <$> _gacdvduName,
                  ("userEmail" .=) <$> _gacdvduUserEmail,
                  ("userAgent" .=) <$> _gacdvduUserAgent,
                  ("firstSyncTime" .=) <$> _gacdvduFirstSyncTime,
                  ("createTime" .=) <$> _gacdvduCreateTime])

-- | The response message for MembershipsService.SearchTransitiveMemberships.
--
-- /See:/ 'searchTransitiveMembershipsResponse' smart constructor.
data SearchTransitiveMembershipsResponse =
  SearchTransitiveMembershipsResponse'
    { _stmrNextPageToken :: !(Maybe Text)
    , _stmrMemberships :: !(Maybe [MemberRelation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchTransitiveMembershipsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stmrNextPageToken'
--
-- * 'stmrMemberships'
searchTransitiveMembershipsResponse
    :: SearchTransitiveMembershipsResponse
searchTransitiveMembershipsResponse =
  SearchTransitiveMembershipsResponse'
    {_stmrNextPageToken = Nothing, _stmrMemberships = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results.
stmrNextPageToken :: Lens' SearchTransitiveMembershipsResponse (Maybe Text)
stmrNextPageToken
  = lens _stmrNextPageToken
      (\ s a -> s{_stmrNextPageToken = a})

-- | List of transitive members satisfying the query.
stmrMemberships :: Lens' SearchTransitiveMembershipsResponse [MemberRelation]
stmrMemberships
  = lens _stmrMemberships
      (\ s a -> s{_stmrMemberships = a})
      . _Default
      . _Coerce

instance FromJSON SearchTransitiveMembershipsResponse
         where
        parseJSON
          = withObject "SearchTransitiveMembershipsResponse"
              (\ o ->
                 SearchTransitiveMembershipsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "memberships" .!= mempty))

instance ToJSON SearchTransitiveMembershipsResponse
         where
        toJSON SearchTransitiveMembershipsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _stmrNextPageToken,
                  ("memberships" .=) <$> _stmrMemberships])

-- | The response message for GroupsService.LookupGroupName.
--
-- /See:/ 'lookupGroupNameResponse' smart constructor.
newtype LookupGroupNameResponse =
  LookupGroupNameResponse'
    { _lgnrName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LookupGroupNameResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgnrName'
lookupGroupNameResponse
    :: LookupGroupNameResponse
lookupGroupNameResponse = LookupGroupNameResponse' {_lgnrName = Nothing}


-- | The [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- looked-up \`Group\`.
lgnrName :: Lens' LookupGroupNameResponse (Maybe Text)
lgnrName = lens _lgnrName (\ s a -> s{_lgnrName = a})

instance FromJSON LookupGroupNameResponse where
        parseJSON
          = withObject "LookupGroupNameResponse"
              (\ o -> LookupGroupNameResponse' <$> (o .:? "name"))

instance ToJSON LookupGroupNameResponse where
        toJSON LookupGroupNameResponse'{..}
          = object (catMaybes [("name" .=) <$> _lgnrName])

-- | The response message for GroupsService.SearchGroups.
--
-- /See:/ 'searchGroupsResponse' smart constructor.
data SearchGroupsResponse =
  SearchGroupsResponse'
    { _sgrGroups :: !(Maybe [Group])
    , _sgrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgrGroups'
--
-- * 'sgrNextPageToken'
searchGroupsResponse
    :: SearchGroupsResponse
searchGroupsResponse =
  SearchGroupsResponse' {_sgrGroups = Nothing, _sgrNextPageToken = Nothing}


-- | The \`Group\` resources that match the search query.
sgrGroups :: Lens' SearchGroupsResponse [Group]
sgrGroups
  = lens _sgrGroups (\ s a -> s{_sgrGroups = a}) .
      _Default
      . _Coerce

-- | A continuation token to retrieve the next page of results, or empty if
-- there are no more results available.
sgrNextPageToken :: Lens' SearchGroupsResponse (Maybe Text)
sgrNextPageToken
  = lens _sgrNextPageToken
      (\ s a -> s{_sgrNextPageToken = a})

instance FromJSON SearchGroupsResponse where
        parseJSON
          = withObject "SearchGroupsResponse"
              (\ o ->
                 SearchGroupsResponse' <$>
                   (o .:? "groups" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON SearchGroupsResponse where
        toJSON SearchGroupsResponse'{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _sgrGroups,
                  ("nextPageToken" .=) <$> _sgrNextPageToken])

-- | Membership graph\'s path information as an adjacency list.
--
-- /See:/ 'membershipAdjacencyList' smart constructor.
data MembershipAdjacencyList =
  MembershipAdjacencyList'
    { _malGroup :: !(Maybe Text)
    , _malEdges :: !(Maybe [Membership])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembershipAdjacencyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malGroup'
--
-- * 'malEdges'
membershipAdjacencyList
    :: MembershipAdjacencyList
membershipAdjacencyList =
  MembershipAdjacencyList' {_malGroup = Nothing, _malEdges = Nothing}


-- | Resource name of the group that the members belong to.
malGroup :: Lens' MembershipAdjacencyList (Maybe Text)
malGroup = lens _malGroup (\ s a -> s{_malGroup = a})

-- | Each edge contains information about the member that belongs to this
-- group. Note: Fields returned here will help identify the specific
-- Membership resource (e.g name, preferred_member_key and role), but may
-- not be a comprehensive list of all fields.
malEdges :: Lens' MembershipAdjacencyList [Membership]
malEdges
  = lens _malEdges (\ s a -> s{_malEdges = a}) .
      _Default
      . _Coerce

instance FromJSON MembershipAdjacencyList where
        parseJSON
          = withObject "MembershipAdjacencyList"
              (\ o ->
                 MembershipAdjacencyList' <$>
                   (o .:? "group") <*> (o .:? "edges" .!= mempty))

instance ToJSON MembershipAdjacencyList where
        toJSON MembershipAdjacencyList'{..}
          = object
              (catMaybes
                 [("group" .=) <$> _malGroup,
                  ("edges" .=) <$> _malEdges])

-- | A unique identifier for an entity in the Cloud Identity Groups API. An
-- entity can represent either a group with an optional \`namespace\` or a
-- user without a \`namespace\`. The combination of \`id\` and
-- \`namespace\` must be unique; however, the same \`id\` can be used with
-- different \`namespace\`s.
--
-- /See:/ 'entityKey' smart constructor.
data EntityKey =
  EntityKey'
    { _ekNamespace :: !(Maybe Text)
    , _ekId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ekNamespace'
--
-- * 'ekId'
entityKey
    :: EntityKey
entityKey = EntityKey' {_ekNamespace = Nothing, _ekId = Nothing}


-- | The namespace in which the entity exists. If not specified, the
-- \`EntityKey\` represents a Google-managed entity such as a Google user
-- or a Google Group. If specified, the \`EntityKey\` represents an
-- external-identity-mapped group. The namespace must correspond to an
-- identity source created in Admin Console and must be in the form of
-- \`identitysources\/{identity_source_id}\`.
ekNamespace :: Lens' EntityKey (Maybe Text)
ekNamespace
  = lens _ekNamespace (\ s a -> s{_ekNamespace = a})

-- | The ID of the entity. For Google-managed entities, the \`id\` should be
-- the email address of an existing group or user. For
-- external-identity-mapped entities, the \`id\` must be a string
-- conforming to the Identity Source\'s requirements. Must be unique within
-- a \`namespace\`.
ekId :: Lens' EntityKey (Maybe Text)
ekId = lens _ekId (\ s a -> s{_ekId = a})

instance FromJSON EntityKey where
        parseJSON
          = withObject "EntityKey"
              (\ o ->
                 EntityKey' <$> (o .:? "namespace") <*> (o .:? "id"))

instance ToJSON EntityKey where
        toJSON EntityKey'{..}
          = object
              (catMaybes
                 [("namespace" .=) <$> _ekNamespace,
                  ("id" .=) <$> _ekId])

-- | The request message for MembershipsService.ModifyMembershipRoles.
--
-- /See:/ 'modifyMembershipRolesRequest' smart constructor.
data ModifyMembershipRolesRequest =
  ModifyMembershipRolesRequest'
    { _mmrrAddRoles :: !(Maybe [MembershipRole])
    , _mmrrUpdateRolesParams :: !(Maybe [UpdateMembershipRolesParams])
    , _mmrrRemoveRoles :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyMembershipRolesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmrrAddRoles'
--
-- * 'mmrrUpdateRolesParams'
--
-- * 'mmrrRemoveRoles'
modifyMembershipRolesRequest
    :: ModifyMembershipRolesRequest
modifyMembershipRolesRequest =
  ModifyMembershipRolesRequest'
    { _mmrrAddRoles = Nothing
    , _mmrrUpdateRolesParams = Nothing
    , _mmrrRemoveRoles = Nothing
    }


-- | The \`MembershipRole\`s to be added. Adding or removing roles in the
-- same request as updating roles is not supported. Must not be set if
-- \`update_roles_params\` is set.
mmrrAddRoles :: Lens' ModifyMembershipRolesRequest [MembershipRole]
mmrrAddRoles
  = lens _mmrrAddRoles (\ s a -> s{_mmrrAddRoles = a})
      . _Default
      . _Coerce

-- | The \`MembershipRole\`s to be updated. Updating roles in the same
-- request as adding or removing roles is not supported. Must not be set if
-- either \`add_roles\` or \`remove_roles\` is set.
mmrrUpdateRolesParams :: Lens' ModifyMembershipRolesRequest [UpdateMembershipRolesParams]
mmrrUpdateRolesParams
  = lens _mmrrUpdateRolesParams
      (\ s a -> s{_mmrrUpdateRolesParams = a})
      . _Default
      . _Coerce

-- | The \`name\`s of the \`MembershipRole\`s to be removed. Adding or
-- removing roles in the same request as updating roles is not supported.
-- It is not possible to remove the \`MEMBER\` \`MembershipRole\`. If you
-- wish to delete a \`Membership\`, call
-- MembershipsService.DeleteMembership instead. Must not contain
-- \`MEMBER\`. Must not be set if \`update_roles_params\` is set.
mmrrRemoveRoles :: Lens' ModifyMembershipRolesRequest [Text]
mmrrRemoveRoles
  = lens _mmrrRemoveRoles
      (\ s a -> s{_mmrrRemoveRoles = a})
      . _Default
      . _Coerce

instance FromJSON ModifyMembershipRolesRequest where
        parseJSON
          = withObject "ModifyMembershipRolesRequest"
              (\ o ->
                 ModifyMembershipRolesRequest' <$>
                   (o .:? "addRoles" .!= mempty) <*>
                     (o .:? "updateRolesParams" .!= mempty)
                     <*> (o .:? "removeRoles" .!= mempty))

instance ToJSON ModifyMembershipRolesRequest where
        toJSON ModifyMembershipRolesRequest'{..}
          = object
              (catMaybes
                 [("addRoles" .=) <$> _mmrrAddRoles,
                  ("updateRolesParams" .=) <$> _mmrrUpdateRolesParams,
                  ("removeRoles" .=) <$> _mmrrRemoveRoles])

-- | Request message for cancelling an unfinished device wipe.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1CancelWipeDeviceRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest'
    { _gacdvcwdrCustomer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvcwdrCustomer'
googleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    :: GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
googleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest'
    {_gacdvcwdrCustomer = Nothing}


-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
gacdvcwdrCustomer :: Lens' GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest (Maybe Text)
gacdvcwdrCustomer
  = lens _gacdvcwdrCustomer
      (\ s a -> s{_gacdvcwdrCustomer = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest'
                   <$> (o .:? "customer"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest'{..}
          = object
              (catMaybes [("customer" .=) <$> _gacdvcwdrCustomer])

-- | Response message that is returned in ListClientStates.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1ListClientStatesResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse'
    { _gacdvlcsrNextPageToken :: !(Maybe Text)
    , _gacdvlcsrClientStates :: !(Maybe [GoogleAppsCloudidentityDevicesV1ClientState])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListClientStatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvlcsrNextPageToken'
--
-- * 'gacdvlcsrClientStates'
googleAppsCloudidentityDevicesV1ListClientStatesResponse
    :: GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
googleAppsCloudidentityDevicesV1ListClientStatesResponse =
  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse'
    {_gacdvlcsrNextPageToken = Nothing, _gacdvlcsrClientStates = Nothing}


-- | Token to retrieve the next page of results. Empty if there are no more
-- results.
gacdvlcsrNextPageToken :: Lens' GoogleAppsCloudidentityDevicesV1ListClientStatesResponse (Maybe Text)
gacdvlcsrNextPageToken
  = lens _gacdvlcsrNextPageToken
      (\ s a -> s{_gacdvlcsrNextPageToken = a})

-- | Client states meeting the list restrictions.
gacdvlcsrClientStates :: Lens' GoogleAppsCloudidentityDevicesV1ListClientStatesResponse [GoogleAppsCloudidentityDevicesV1ClientState]
gacdvlcsrClientStates
  = lens _gacdvlcsrClientStates
      (\ s a -> s{_gacdvlcsrClientStates = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1ListClientStatesResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ListClientStatesResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "clientStates" .!= mempty))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ListClientStatesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gacdvlcsrNextPageToken,
                  ("clientStates" .=) <$> _gacdvlcsrClientStates])

-- | Response message for cancelling an unfinished user account wipe.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse'
    { _gacdvcwdurDeviceUser :: Maybe GoogleAppsCloudidentityDevicesV1DeviceUser
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvcwdurDeviceUser'
googleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    :: GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
googleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse'
    {_gacdvcwdurDeviceUser = Nothing}


-- | Resultant DeviceUser object for the action.
gacdvcwdurDeviceUser :: Lens' GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse (Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
gacdvcwdurDeviceUser
  = lens _gacdvcwdurDeviceUser
      (\ s a -> s{_gacdvcwdurDeviceUser = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse'
                   <$> (o .:? "deviceUser"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse'{..}
          = object
              (catMaybes
                 [("deviceUser" .=) <$> _gacdvcwdurDeviceUser])

-- | The response message for MembershipsService.CheckTransitiveMembership.
--
-- /See:/ 'checkTransitiveMembershipResponse' smart constructor.
newtype CheckTransitiveMembershipResponse =
  CheckTransitiveMembershipResponse'
    { _ctmrHasMembership :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckTransitiveMembershipResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmrHasMembership'
checkTransitiveMembershipResponse
    :: CheckTransitiveMembershipResponse
checkTransitiveMembershipResponse =
  CheckTransitiveMembershipResponse' {_ctmrHasMembership = Nothing}


-- | Response does not include the possible roles of a member since the
-- behavior of this rpc is not all-or-nothing unlike the other rpcs. So, it
-- may not be possible to list all the roles definitively, due to possible
-- lack of authorization in some of the paths.
ctmrHasMembership :: Lens' CheckTransitiveMembershipResponse (Maybe Bool)
ctmrHasMembership
  = lens _ctmrHasMembership
      (\ s a -> s{_ctmrHasMembership = a})

instance FromJSON CheckTransitiveMembershipResponse
         where
        parseJSON
          = withObject "CheckTransitiveMembershipResponse"
              (\ o ->
                 CheckTransitiveMembershipResponse' <$>
                   (o .:? "hasMembership"))

instance ToJSON CheckTransitiveMembershipResponse
         where
        toJSON CheckTransitiveMembershipResponse'{..}
          = object
              (catMaybes
                 [("hasMembership" .=) <$> _ctmrHasMembership])

-- | Response message that is returned from the ListDevices method.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1ListDevicesResponse' smart constructor.
data GoogleAppsCloudidentityDevicesV1ListDevicesResponse =
  GoogleAppsCloudidentityDevicesV1ListDevicesResponse'
    { _gacdvldrNextPageToken :: !(Maybe Text)
    , _gacdvldrDevices :: !(Maybe [GoogleAppsCloudidentityDevicesV1Device])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ListDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvldrNextPageToken'
--
-- * 'gacdvldrDevices'
googleAppsCloudidentityDevicesV1ListDevicesResponse
    :: GoogleAppsCloudidentityDevicesV1ListDevicesResponse
googleAppsCloudidentityDevicesV1ListDevicesResponse =
  GoogleAppsCloudidentityDevicesV1ListDevicesResponse'
    {_gacdvldrNextPageToken = Nothing, _gacdvldrDevices = Nothing}


-- | Token to retrieve the next page of results. Empty if there are no more
-- results.
gacdvldrNextPageToken :: Lens' GoogleAppsCloudidentityDevicesV1ListDevicesResponse (Maybe Text)
gacdvldrNextPageToken
  = lens _gacdvldrNextPageToken
      (\ s a -> s{_gacdvldrNextPageToken = a})

-- | Devices meeting the list restrictions.
gacdvldrDevices :: Lens' GoogleAppsCloudidentityDevicesV1ListDevicesResponse [GoogleAppsCloudidentityDevicesV1Device]
gacdvldrDevices
  = lens _gacdvldrDevices
      (\ s a -> s{_gacdvldrDevices = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAppsCloudidentityDevicesV1ListDevicesResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1ListDevicesResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ListDevicesResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "devices" .!= mempty))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1ListDevicesResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ListDevicesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gacdvldrNextPageToken,
                  ("devices" .=) <$> _gacdvldrDevices])

-- | Request message for wiping all data on the device.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1WipeDeviceRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest'
    { _gacdvwdrCustomer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvwdrCustomer'
googleAppsCloudidentityDevicesV1WipeDeviceRequest
    :: GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
googleAppsCloudidentityDevicesV1WipeDeviceRequest =
  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest'
    {_gacdvwdrCustomer = Nothing}


-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
gacdvwdrCustomer :: Lens' GoogleAppsCloudidentityDevicesV1WipeDeviceRequest (Maybe Text)
gacdvwdrCustomer
  = lens _gacdvwdrCustomer
      (\ s a -> s{_gacdvwdrCustomer = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceRequest'
                   <$> (o .:? "customer"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceRequest'{..}
          = object
              (catMaybes [("customer" .=) <$> _gacdvwdrCustomer])

-- | Required. One or more label entries that apply to the Group. Currently
-- supported labels contain a key with an empty value. Google Groups are
-- the default type of group and have a label with a key of
-- \`cloudidentity.googleapis.com\/groups.discussion_forum\` and an empty
-- value. Existing Google Groups can have an additional label with a key of
-- \`cloudidentity.googleapis.com\/groups.security\` and an empty value
-- added to them. **This is an immutable change and the security label
-- cannot be removed once added.** Dynamic groups have a label with a key
-- of \`cloudidentity.googleapis.com\/groups.dynamic\`. Identity-mapped
-- groups for Cloud Search have a label with a key of
-- \`system\/groups\/external\` and an empty value.
--
-- /See:/ 'groupLabels' smart constructor.
newtype GroupLabels =
  GroupLabels'
    { _glAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glAddtional'
groupLabels
    :: HashMap Text Text -- ^ 'glAddtional'
    -> GroupLabels
groupLabels pGlAddtional_ =
  GroupLabels' {_glAddtional = _Coerce # pGlAddtional_}


glAddtional :: Lens' GroupLabels (HashMap Text Text)
glAddtional
  = lens _glAddtional (\ s a -> s{_glAddtional = a}) .
      _Coerce

instance FromJSON GroupLabels where
        parseJSON
          = withObject "GroupLabels"
              (\ o -> GroupLabels' <$> (parseJSONObject o))

instance ToJSON GroupLabels where
        toJSON = toJSON . _glAddtional

-- | Response message for approving the device to access user data.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1ApproveDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse'
    { _gacdvadurDeviceUser :: Maybe GoogleAppsCloudidentityDevicesV1DeviceUser
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvadurDeviceUser'
googleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    :: GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
googleAppsCloudidentityDevicesV1ApproveDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse'
    {_gacdvadurDeviceUser = Nothing}


-- | Resultant DeviceUser object for the action.
gacdvadurDeviceUser :: Lens' GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse (Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
gacdvadurDeviceUser
  = lens _gacdvadurDeviceUser
      (\ s a -> s{_gacdvadurDeviceUser = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse'
                   <$> (o .:? "deviceUser"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse'{..}
          = object
              (catMaybes
                 [("deviceUser" .=) <$> _gacdvadurDeviceUser])

-- | The details of an update to a \`MembershipRole\`.
--
-- /See:/ 'updateMembershipRolesParams' smart constructor.
data UpdateMembershipRolesParams =
  UpdateMembershipRolesParams'
    { _umrpFieldMask :: !(Maybe GFieldMask)
    , _umrpMembershipRole :: !(Maybe MembershipRole)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateMembershipRolesParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umrpFieldMask'
--
-- * 'umrpMembershipRole'
updateMembershipRolesParams
    :: UpdateMembershipRolesParams
updateMembershipRolesParams =
  UpdateMembershipRolesParams'
    {_umrpFieldMask = Nothing, _umrpMembershipRole = Nothing}


-- | The fully-qualified names of fields to update. May only contain the
-- field \`expiry_detail.expire_time\`.
umrpFieldMask :: Lens' UpdateMembershipRolesParams (Maybe GFieldMask)
umrpFieldMask
  = lens _umrpFieldMask
      (\ s a -> s{_umrpFieldMask = a})

-- | The \`MembershipRole\`s to be updated. Only \`MEMBER\`
-- \`MembershipRole\` can currently be updated.
umrpMembershipRole :: Lens' UpdateMembershipRolesParams (Maybe MembershipRole)
umrpMembershipRole
  = lens _umrpMembershipRole
      (\ s a -> s{_umrpMembershipRole = a})

instance FromJSON UpdateMembershipRolesParams where
        parseJSON
          = withObject "UpdateMembershipRolesParams"
              (\ o ->
                 UpdateMembershipRolesParams' <$>
                   (o .:? "fieldMask") <*> (o .:? "membershipRole"))

instance ToJSON UpdateMembershipRolesParams where
        toJSON UpdateMembershipRolesParams'{..}
          = object
              (catMaybes
                 [("fieldMask" .=) <$> _umrpFieldMask,
                  ("membershipRole" .=) <$> _umrpMembershipRole])

-- | The response message for MembershipsService.ListMemberships.
--
-- /See:/ 'listMembershipsResponse' smart constructor.
data ListMembershipsResponse =
  ListMembershipsResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrMemberships :: !(Maybe [Membership])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListMembershipsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrMemberships'
listMembershipsResponse
    :: ListMembershipsResponse
listMembershipsResponse =
  ListMembershipsResponse'
    {_lmrNextPageToken = Nothing, _lmrMemberships = Nothing}


-- | A continuation token to retrieve the next page of results, or empty if
-- there are no more results available.
lmrNextPageToken :: Lens' ListMembershipsResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | The \`Membership\`s under the specified \`parent\`.
lmrMemberships :: Lens' ListMembershipsResponse [Membership]
lmrMemberships
  = lens _lmrMemberships
      (\ s a -> s{_lmrMemberships = a})
      . _Default
      . _Coerce

instance FromJSON ListMembershipsResponse where
        parseJSON
          = withObject "ListMembershipsResponse"
              (\ o ->
                 ListMembershipsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "memberships" .!= mempty))

instance ToJSON ListMembershipsResponse where
        toJSON ListMembershipsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("memberships" .=) <$> _lmrMemberships])

-- | Response message for wiping all data on the device.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1WipeDeviceResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse'
    { _gacdvwdrDevice :: Maybe GoogleAppsCloudidentityDevicesV1Device
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvwdrDevice'
googleAppsCloudidentityDevicesV1WipeDeviceResponse
    :: GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
googleAppsCloudidentityDevicesV1WipeDeviceResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse'
    {_gacdvwdrDevice = Nothing}


-- | Resultant Device object for the action. Note that asset tags will not be
-- returned in the device object.
gacdvwdrDevice :: Lens' GoogleAppsCloudidentityDevicesV1WipeDeviceResponse (Maybe GoogleAppsCloudidentityDevicesV1Device)
gacdvwdrDevice
  = lens _gacdvwdrDevice
      (\ s a -> s{_gacdvwdrDevice = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceResponse'
                   <$> (o .:? "device"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceResponse'{..}
          = object
              (catMaybes [("device" .=) <$> _gacdvwdrDevice])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Message representing the role of a TransitiveMembership.
--
-- /See:/ 'transitiveMembershipRole' smart constructor.
newtype TransitiveMembershipRole =
  TransitiveMembershipRole'
    { _tmrRole :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransitiveMembershipRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmrRole'
transitiveMembershipRole
    :: TransitiveMembershipRole
transitiveMembershipRole = TransitiveMembershipRole' {_tmrRole = Nothing}


-- | TransitiveMembershipRole in string format. Currently supported
-- TransitiveMembershipRoles: \`\"MEMBER\"\`, \`\"OWNER\"\`, and
-- \`\"MANAGER\"\`.
tmrRole :: Lens' TransitiveMembershipRole (Maybe Text)
tmrRole = lens _tmrRole (\ s a -> s{_tmrRole = a})

instance FromJSON TransitiveMembershipRole where
        parseJSON
          = withObject "TransitiveMembershipRole"
              (\ o -> TransitiveMembershipRole' <$> (o .:? "role"))

instance ToJSON TransitiveMembershipRole where
        toJSON TransitiveMembershipRole'{..}
          = object (catMaybes [("role" .=) <$> _tmrRole])

-- | The response message for MembershipsService.GetMembershipGraph.
--
-- /See:/ 'getMembershipGraphResponse' smart constructor.
data GetMembershipGraphResponse =
  GetMembershipGraphResponse'
    { _gmgrGroups :: !(Maybe [Group])
    , _gmgrAdjacencyList :: !(Maybe [MembershipAdjacencyList])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetMembershipGraphResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmgrGroups'
--
-- * 'gmgrAdjacencyList'
getMembershipGraphResponse
    :: GetMembershipGraphResponse
getMembershipGraphResponse =
  GetMembershipGraphResponse'
    {_gmgrGroups = Nothing, _gmgrAdjacencyList = Nothing}


-- | The resources representing each group in the adjacency list. Each group
-- in this list can be correlated to a \'group\' of the
-- MembershipAdjacencyList using the \'name\' of the Group resource.
gmgrGroups :: Lens' GetMembershipGraphResponse [Group]
gmgrGroups
  = lens _gmgrGroups (\ s a -> s{_gmgrGroups = a}) .
      _Default
      . _Coerce

-- | The membership graph\'s path information represented as an adjacency
-- list.
gmgrAdjacencyList :: Lens' GetMembershipGraphResponse [MembershipAdjacencyList]
gmgrAdjacencyList
  = lens _gmgrAdjacencyList
      (\ s a -> s{_gmgrAdjacencyList = a})
      . _Default
      . _Coerce

instance FromJSON GetMembershipGraphResponse where
        parseJSON
          = withObject "GetMembershipGraphResponse"
              (\ o ->
                 GetMembershipGraphResponse' <$>
                   (o .:? "groups" .!= mempty) <*>
                     (o .:? "adjacencyList" .!= mempty))

instance ToJSON GetMembershipGraphResponse where
        toJSON GetMembershipGraphResponse'{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _gmgrGroups,
                  ("adjacencyList" .=) <$> _gmgrAdjacencyList])

-- | Represents the state associated with an API client calling the Devices
-- API. Resource representing ClientState and supports updates from API
-- users
--
-- /See:/ 'googleAppsCloudidentityDevicesV1ClientState' smart constructor.
data GoogleAppsCloudidentityDevicesV1ClientState =
  GoogleAppsCloudidentityDevicesV1ClientState'
    { _gacdvcsEtag :: !(Maybe Text)
    , _gacdvcsKeyValuePairs :: !(Maybe GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs)
    , _gacdvcsManaged :: !(Maybe GoogleAppsCloudidentityDevicesV1ClientStateManaged)
    , _gacdvcsCustomId :: !(Maybe Text)
    , _gacdvcsHealthScore :: !(Maybe GoogleAppsCloudidentityDevicesV1ClientStateHealthScore)
    , _gacdvcsScoreReason :: !(Maybe Text)
    , _gacdvcsName :: !(Maybe Text)
    , _gacdvcsComplianceState :: !(Maybe GoogleAppsCloudidentityDevicesV1ClientStateComplianceState)
    , _gacdvcsLastUpdateTime :: !(Maybe DateTime')
    , _gacdvcsAssetTags :: !(Maybe [Text])
    , _gacdvcsCreateTime :: !(Maybe DateTime')
    , _gacdvcsOwnerType :: !(Maybe GoogleAppsCloudidentityDevicesV1ClientStateOwnerType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1ClientState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvcsEtag'
--
-- * 'gacdvcsKeyValuePairs'
--
-- * 'gacdvcsManaged'
--
-- * 'gacdvcsCustomId'
--
-- * 'gacdvcsHealthScore'
--
-- * 'gacdvcsScoreReason'
--
-- * 'gacdvcsName'
--
-- * 'gacdvcsComplianceState'
--
-- * 'gacdvcsLastUpdateTime'
--
-- * 'gacdvcsAssetTags'
--
-- * 'gacdvcsCreateTime'
--
-- * 'gacdvcsOwnerType'
googleAppsCloudidentityDevicesV1ClientState
    :: GoogleAppsCloudidentityDevicesV1ClientState
googleAppsCloudidentityDevicesV1ClientState =
  GoogleAppsCloudidentityDevicesV1ClientState'
    { _gacdvcsEtag = Nothing
    , _gacdvcsKeyValuePairs = Nothing
    , _gacdvcsManaged = Nothing
    , _gacdvcsCustomId = Nothing
    , _gacdvcsHealthScore = Nothing
    , _gacdvcsScoreReason = Nothing
    , _gacdvcsName = Nothing
    , _gacdvcsComplianceState = Nothing
    , _gacdvcsLastUpdateTime = Nothing
    , _gacdvcsAssetTags = Nothing
    , _gacdvcsCreateTime = Nothing
    , _gacdvcsOwnerType = Nothing
    }


-- | The token that needs to be passed back for concurrency control in
-- updates. Token needs to be passed back in UpdateRequest
gacdvcsEtag :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe Text)
gacdvcsEtag
  = lens _gacdvcsEtag (\ s a -> s{_gacdvcsEtag = a})

-- | The map of key-value attributes stored by callers specific to a device.
-- The total serialized length of this map may not exceed 10KB. No limit is
-- placed on the number of attributes in a map.
gacdvcsKeyValuePairs :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs)
gacdvcsKeyValuePairs
  = lens _gacdvcsKeyValuePairs
      (\ s a -> s{_gacdvcsKeyValuePairs = a})

-- | The management state of the resource as specified by the API client.
gacdvcsManaged :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe GoogleAppsCloudidentityDevicesV1ClientStateManaged)
gacdvcsManaged
  = lens _gacdvcsManaged
      (\ s a -> s{_gacdvcsManaged = a})

-- | This field may be used to store a unique identifier for the API resource
-- within which these CustomAttributes are a field.
gacdvcsCustomId :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe Text)
gacdvcsCustomId
  = lens _gacdvcsCustomId
      (\ s a -> s{_gacdvcsCustomId = a})

-- | The Health score of the resource. The Health score is the callers
-- specification of the condition of the device from a usability point of
-- view. For example, a third-party device management provider may specify
-- a health score based on its compliance with organizational policies.
gacdvcsHealthScore :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe GoogleAppsCloudidentityDevicesV1ClientStateHealthScore)
gacdvcsHealthScore
  = lens _gacdvcsHealthScore
      (\ s a -> s{_gacdvcsHealthScore = a})

-- | A descriptive cause of the health score.
gacdvcsScoreReason :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe Text)
gacdvcsScoreReason
  = lens _gacdvcsScoreReason
      (\ s a -> s{_gacdvcsScoreReason = a})

-- | Output only. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- ClientState in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\/clientState\/{partner_id}\`,
-- where partner_id corresponds to the partner storing the data. For
-- partners belonging to the \"BeyondCorp Alliance\", this is the partner
-- ID specified to you by Google. For all other callers, this is a string
-- of the form: \`{customer_id}-suffix\`, where \`customer_id\` is your
-- customer ID. The *suffix* is any string the caller specifies. This
-- string will be displayed verbatim in the administration console. This
-- suffix is used in setting up Custom Access Levels in Context-Aware
-- Access. Your organization\'s customer ID can be obtained from the URL:
-- \`GET
-- https:\/\/www.googleapis.com\/admin\/directory\/v1\/customers\/my_customer\`
-- The \`id\` field in the response contains the customer ID starting with
-- the letter \'C\'. The customer ID to be used in this API is the string
-- after the letter \'C\' (not including \'C\')
gacdvcsName :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe Text)
gacdvcsName
  = lens _gacdvcsName (\ s a -> s{_gacdvcsName = a})

-- | The compliance state of the resource as specified by the API client.
gacdvcsComplianceState :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe GoogleAppsCloudidentityDevicesV1ClientStateComplianceState)
gacdvcsComplianceState
  = lens _gacdvcsComplianceState
      (\ s a -> s{_gacdvcsComplianceState = a})

-- | Output only. The time the client state data was last updated.
gacdvcsLastUpdateTime :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe UTCTime)
gacdvcsLastUpdateTime
  = lens _gacdvcsLastUpdateTime
      (\ s a -> s{_gacdvcsLastUpdateTime = a})
      . mapping _DateTime

-- | The caller can specify asset tags for this resource
gacdvcsAssetTags :: Lens' GoogleAppsCloudidentityDevicesV1ClientState [Text]
gacdvcsAssetTags
  = lens _gacdvcsAssetTags
      (\ s a -> s{_gacdvcsAssetTags = a})
      . _Default
      . _Coerce

-- | Output only. The time the client state data was created.
gacdvcsCreateTime :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe UTCTime)
gacdvcsCreateTime
  = lens _gacdvcsCreateTime
      (\ s a -> s{_gacdvcsCreateTime = a})
      . mapping _DateTime

-- | Output only. The owner of the ClientState
gacdvcsOwnerType :: Lens' GoogleAppsCloudidentityDevicesV1ClientState (Maybe GoogleAppsCloudidentityDevicesV1ClientStateOwnerType)
gacdvcsOwnerType
  = lens _gacdvcsOwnerType
      (\ s a -> s{_gacdvcsOwnerType = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1ClientState
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1ClientState"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1ClientState' <$>
                   (o .:? "etag") <*> (o .:? "keyValuePairs") <*>
                     (o .:? "managed")
                     <*> (o .:? "customId")
                     <*> (o .:? "healthScore")
                     <*> (o .:? "scoreReason")
                     <*> (o .:? "name")
                     <*> (o .:? "complianceState")
                     <*> (o .:? "lastUpdateTime")
                     <*> (o .:? "assetTags" .!= mempty)
                     <*> (o .:? "createTime")
                     <*> (o .:? "ownerType"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1ClientState
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1ClientState'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gacdvcsEtag,
                  ("keyValuePairs" .=) <$> _gacdvcsKeyValuePairs,
                  ("managed" .=) <$> _gacdvcsManaged,
                  ("customId" .=) <$> _gacdvcsCustomId,
                  ("healthScore" .=) <$> _gacdvcsHealthScore,
                  ("scoreReason" .=) <$> _gacdvcsScoreReason,
                  ("name" .=) <$> _gacdvcsName,
                  ("complianceState" .=) <$> _gacdvcsComplianceState,
                  ("lastUpdateTime" .=) <$> _gacdvcsLastUpdateTime,
                  ("assetTags" .=) <$> _gacdvcsAssetTags,
                  ("createTime" .=) <$> _gacdvcsCreateTime,
                  ("ownerType" .=) <$> _gacdvcsOwnerType])

-- | Message representing a transitive membership of a group.
--
-- /See:/ 'memberRelation' smart constructor.
data MemberRelation =
  MemberRelation'
    { _mrRoles :: !(Maybe [TransitiveMembershipRole])
    , _mrPreferredMemberKey :: !(Maybe [EntityKey])
    , _mrMember :: !(Maybe Text)
    , _mrRelationType :: !(Maybe MemberRelationRelationType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MemberRelation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrRoles'
--
-- * 'mrPreferredMemberKey'
--
-- * 'mrMember'
--
-- * 'mrRelationType'
memberRelation
    :: MemberRelation
memberRelation =
  MemberRelation'
    { _mrRoles = Nothing
    , _mrPreferredMemberKey = Nothing
    , _mrMember = Nothing
    , _mrRelationType = Nothing
    }


-- | The membership role details (i.e name of role and expiry time).
mrRoles :: Lens' MemberRelation [TransitiveMembershipRole]
mrRoles
  = lens _mrRoles (\ s a -> s{_mrRoles = a}) . _Default
      . _Coerce

-- | Entity key has an id and a namespace. In case of discussion forums, the
-- id will be an email address without a namespace.
mrPreferredMemberKey :: Lens' MemberRelation [EntityKey]
mrPreferredMemberKey
  = lens _mrPreferredMemberKey
      (\ s a -> s{_mrPreferredMemberKey = a})
      . _Default
      . _Coerce

-- | Resource name for this member.
mrMember :: Lens' MemberRelation (Maybe Text)
mrMember = lens _mrMember (\ s a -> s{_mrMember = a})

-- | The relation between the group and the transitive member.
mrRelationType :: Lens' MemberRelation (Maybe MemberRelationRelationType)
mrRelationType
  = lens _mrRelationType
      (\ s a -> s{_mrRelationType = a})

instance FromJSON MemberRelation where
        parseJSON
          = withObject "MemberRelation"
              (\ o ->
                 MemberRelation' <$>
                   (o .:? "roles" .!= mempty) <*>
                     (o .:? "preferredMemberKey" .!= mempty)
                     <*> (o .:? "member")
                     <*> (o .:? "relationType"))

instance ToJSON MemberRelation where
        toJSON MemberRelation'{..}
          = object
              (catMaybes
                 [("roles" .=) <$> _mrRoles,
                  ("preferredMemberKey" .=) <$> _mrPreferredMemberKey,
                  ("member" .=) <$> _mrMember,
                  ("relationType" .=) <$> _mrRelationType])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Request message for blocking account on device.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1BlockDeviceUserRequest' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest'
    { _gacdvbdurCustomer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvbdurCustomer'
googleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    :: GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
googleAppsCloudidentityDevicesV1BlockDeviceUserRequest =
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest'
    {_gacdvbdurCustomer = Nothing}


-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
gacdvbdurCustomer :: Lens' GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest (Maybe Text)
gacdvbdurCustomer
  = lens _gacdvbdurCustomer
      (\ s a -> s{_gacdvbdurCustomer = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest'
                   <$> (o .:? "customer"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest'{..}
          = object
              (catMaybes [("customer" .=) <$> _gacdvbdurCustomer])

-- | Response message for wiping the user\'s account from the device.
--
-- /See:/ 'googleAppsCloudidentityDevicesV1WipeDeviceUserResponse' smart constructor.
newtype GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse'
    { _gacdvwdurDeviceUser :: Maybe GoogleAppsCloudidentityDevicesV1DeviceUser
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacdvwdurDeviceUser'
googleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    :: GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
googleAppsCloudidentityDevicesV1WipeDeviceUserResponse =
  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse'
    {_gacdvwdurDeviceUser = Nothing}


-- | Resultant DeviceUser object for the action.
gacdvwdurDeviceUser :: Lens' GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse (Maybe GoogleAppsCloudidentityDevicesV1DeviceUser)
gacdvwdurDeviceUser
  = lens _gacdvwdurDeviceUser
      (\ s a -> s{_gacdvwdurDeviceUser = a})

instance FromJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
         where
        parseJSON
          = withObject
              "GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse"
              (\ o ->
                 GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse'
                   <$> (o .:? "deviceUser"))

instance ToJSON
           GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
         where
        toJSON
          GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse'{..}
          = object
              (catMaybes
                 [("deviceUser" .=) <$> _gacdvwdurDeviceUser])

-- | Message representing a transitive group of a user or a group.
--
-- /See:/ 'groupRelation' smart constructor.
data GroupRelation =
  GroupRelation'
    { _grRoles :: !(Maybe [TransitiveMembershipRole])
    , _grGroup :: !(Maybe Text)
    , _grGroupKey :: !(Maybe EntityKey)
    , _grDisplayName :: !(Maybe Text)
    , _grLabels :: !(Maybe GroupRelationLabels)
    , _grRelationType :: !(Maybe GroupRelationRelationType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupRelation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grRoles'
--
-- * 'grGroup'
--
-- * 'grGroupKey'
--
-- * 'grDisplayName'
--
-- * 'grLabels'
--
-- * 'grRelationType'
groupRelation
    :: GroupRelation
groupRelation =
  GroupRelation'
    { _grRoles = Nothing
    , _grGroup = Nothing
    , _grGroupKey = Nothing
    , _grDisplayName = Nothing
    , _grLabels = Nothing
    , _grRelationType = Nothing
    }


-- | Membership roles of the member for the group.
grRoles :: Lens' GroupRelation [TransitiveMembershipRole]
grRoles
  = lens _grRoles (\ s a -> s{_grRoles = a}) . _Default
      . _Coerce

-- | Resource name for this group.
grGroup :: Lens' GroupRelation (Maybe Text)
grGroup = lens _grGroup (\ s a -> s{_grGroup = a})

-- | Entity key has an id and a namespace. In case of discussion forums, the
-- id will be an email address without a namespace.
grGroupKey :: Lens' GroupRelation (Maybe EntityKey)
grGroupKey
  = lens _grGroupKey (\ s a -> s{_grGroupKey = a})

-- | Display name for this group.
grDisplayName :: Lens' GroupRelation (Maybe Text)
grDisplayName
  = lens _grDisplayName
      (\ s a -> s{_grDisplayName = a})

-- | Labels for Group resource.
grLabels :: Lens' GroupRelation (Maybe GroupRelationLabels)
grLabels = lens _grLabels (\ s a -> s{_grLabels = a})

-- | The relation between the member and the transitive group.
grRelationType :: Lens' GroupRelation (Maybe GroupRelationRelationType)
grRelationType
  = lens _grRelationType
      (\ s a -> s{_grRelationType = a})

instance FromJSON GroupRelation where
        parseJSON
          = withObject "GroupRelation"
              (\ o ->
                 GroupRelation' <$>
                   (o .:? "roles" .!= mempty) <*> (o .:? "group") <*>
                     (o .:? "groupKey")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "relationType"))

instance ToJSON GroupRelation where
        toJSON GroupRelation'{..}
          = object
              (catMaybes
                 [("roles" .=) <$> _grRoles,
                  ("group" .=) <$> _grGroup,
                  ("groupKey" .=) <$> _grGroupKey,
                  ("displayName" .=) <$> _grDisplayName,
                  ("labels" .=) <$> _grLabels,
                  ("relationType" .=) <$> _grRelationType])
