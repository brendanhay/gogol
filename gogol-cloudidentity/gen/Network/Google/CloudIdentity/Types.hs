{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIdentity.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIdentity.Types
    (
    -- * Service Configuration
      cloudIdentityService

    -- * OAuth Scopes
    , cloudIdentityDevicesLookupScope
    , cloudPlatformScope
    , cloudIdentityGroupsReadOnlyScope
    , cloudIdentityGroupsScope

    -- * GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState
    , GoogleAppsCloudidentityDevicesV1DeviceUserCompromisedState (..)

    -- * GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    , GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    , googleAppsCloudidentityDevicesV1CustomAttributeValue
    , gacdvcavBoolValue
    , gacdvcavNumberValue
    , gacdvcavStringValue

    -- * LookupMembershipNameResponse
    , LookupMembershipNameResponse
    , lookupMembershipNameResponse
    , lmnrName

    -- * DevicesListView
    , DevicesListView (..)

    -- * SearchTransitiveGroupsResponse
    , SearchTransitiveGroupsResponse
    , searchTransitiveGroupsResponse
    , stgrNextPageToken
    , stgrMemberships

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * GoogleAppsCloudidentityDevicesV1AndroidAttributes
    , GoogleAppsCloudidentityDevicesV1AndroidAttributes
    , googleAppsCloudidentityDevicesV1AndroidAttributes
    , gacdvaaOwnershipPrivilege
    , gacdvaaOwnerProFileAccount
    , gacdvaaEnabledUnknownSources
    , gacdvaaSupportsWorkProFile

    -- * GroupRelationLabels
    , GroupRelationLabels
    , groupRelationLabels
    , grlAddtional

    -- * GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    , GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    , googleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    , gacdvlsdurNextPageToken
    , gacdvlsdurNames
    , gacdvlsdurCustomer

    -- * DynamicGroupMetadata
    , DynamicGroupMetadata
    , dynamicGroupMetadata
    , dgmStatus
    , dgmQueries

    -- * UserInvitationState
    , UserInvitationState (..)

    -- * Group
    , Group
    , group'
    , gParent
    , gDynamicGroupMetadata
    , gGroupKey
    , gUpdateTime
    , gName
    , gDisplayName
    , gLabels
    , gDescription
    , gCreateTime

    -- * GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , googleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , gacdvadurCustomer

    -- * GroupsMembershipsListView
    , GroupsMembershipsListView (..)

    -- * Membership
    , Membership
    , membership
    , mRoles
    , mUpdateTime
    , mName
    , mPreferredMemberKey
    , mType
    , mCreateTime

    -- * DynamicGroupQueryResourceType
    , DynamicGroupQueryResourceType (..)

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , gacdvcwdurCustomer

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * ListGroupsResponse
    , ListGroupsResponse
    , listGroupsResponse
    , lgrGroups
    , lgrNextPageToken

    -- * GoogleAppsCloudidentityDevicesV1DeviceUserManagementState
    , GoogleAppsCloudidentityDevicesV1DeviceUserManagementState (..)

    -- * GoogleAppsCloudidentityDevicesV1DeviceCompromisedState
    , GoogleAppsCloudidentityDevicesV1DeviceCompromisedState (..)

    -- * GoogleAppsCloudidentityDevicesV1Device
    , GoogleAppsCloudidentityDevicesV1Device
    , googleAppsCloudidentityDevicesV1Device
    , gacdvdAndroidSpecificAttributes
    , gacdvdManufacturer
    , gacdvdAssetTag
    , gacdvdBuildNumber
    , gacdvdCompromisedState
    , gacdvdEncryptionState
    , gacdvdLastSyncTime
    , gacdvdReleaseVersion
    , gacdvdBrand
    , gacdvdNetworkOperator
    , gacdvdKernelVersion
    , gacdvdManagementState
    , gacdvdName
    , gacdvdModel
    , gacdvdEnabledUsbDebugging
    , gacdvdMeid
    , gacdvdBootLoaderVersion
    , gacdvdSecurityPatchTime
    , gacdvdImei
    , gacdvdDeviceType
    , gacdvdSerialNumber
    , gacdvdEnabledDeveloperOptions
    , gacdvdBasebandVersion
    , gacdvdOtherAccounts
    , gacdvdOSVersion
    , gacdvdWifiMACAddresses
    , gacdvdCreateTime
    , gacdvdOwnerType

    -- * DynamicGroupQuery
    , DynamicGroupQuery
    , dynamicGroupQuery
    , dgqResourceType
    , dgqQuery

    -- * UserInvitation
    , UserInvitation
    , userInvitation
    , uiState
    , uiMailsSentCount
    , uiUpdateTime
    , uiName

    -- * GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege
    , GoogleAppsCloudidentityDevicesV1AndroidAttributesOwnershipPrivilege (..)

    -- * MemberRelationRelationType
    , MemberRelationRelationType (..)

    -- * GoogleAppsCloudidentityDevicesV1DeviceEncryptionState
    , GoogleAppsCloudidentityDevicesV1DeviceEncryptionState (..)

    -- * GoogleAppsCloudidentityDevicesV1ClientStateManaged
    , GoogleAppsCloudidentityDevicesV1ClientStateManaged (..)

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , googleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , gacdvwdurCustomer

    -- * GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
    , GoogleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
    , googleAppsCloudidentityDevicesV1ClientStateKeyValuePairs
    , gacdvcskvpAddtional

    -- * GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    , googleAppsCloudidentityDevicesV1BlockDeviceUserResponse
    , gacdvbdurDeviceUser

    -- * GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    , GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    , googleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    , gacdvldurNextPageToken
    , gacdvldurDeviceUsers

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * DynamicGroupStatus
    , DynamicGroupStatus
    , dynamicGroupStatus
    , dgsStatus
    , dgsStatusTime

    -- * MembershipRole
    , MembershipRole
    , membershipRole
    , mrExpiryDetail
    , mrName

    -- * ModifyMembershipRolesResponse
    , ModifyMembershipRolesResponse
    , modifyMembershipRolesResponse
    , mmrrMembership

    -- * ExpiryDetail
    , ExpiryDetail
    , expiryDetail
    , edExpireTime

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
    , gacdvcwdrDevice

    -- * GoogleAppsCloudidentityDevicesV1DeviceUser
    , GoogleAppsCloudidentityDevicesV1DeviceUser
    , googleAppsCloudidentityDevicesV1DeviceUser
    , gacdvduLanguageCode
    , gacdvduCompromisedState
    , gacdvduPasswordState
    , gacdvduLastSyncTime
    , gacdvduManagementState
    , gacdvduName
    , gacdvduUserEmail
    , gacdvduUserAgent
    , gacdvduFirstSyncTime
    , gacdvduCreateTime

    -- * SearchTransitiveMembershipsResponse
    , SearchTransitiveMembershipsResponse
    , searchTransitiveMembershipsResponse
    , stmrNextPageToken
    , stmrMemberships

    -- * LookupGroupNameResponse
    , LookupGroupNameResponse
    , lookupGroupNameResponse
    , lgnrName

    -- * SearchGroupsResponse
    , SearchGroupsResponse
    , searchGroupsResponse
    , sgrGroups
    , sgrNextPageToken

    -- * MembershipAdjacencyList
    , MembershipAdjacencyList
    , membershipAdjacencyList
    , malGroup
    , malEdges

    -- * EntityKey
    , EntityKey
    , entityKey
    , ekNamespace
    , ekId

    -- * ModifyMembershipRolesRequest
    , ModifyMembershipRolesRequest
    , modifyMembershipRolesRequest
    , mmrrAddRoles
    , mmrrUpdateRolesParams
    , mmrrRemoveRoles

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , gacdvcwdrCustomer

    -- * GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    , GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    , googleAppsCloudidentityDevicesV1ListClientStatesResponse
    , gacdvlcsrNextPageToken
    , gacdvlcsrClientStates

    -- * GoogleAppsCloudidentityDevicesV1ClientStateComplianceState
    , GoogleAppsCloudidentityDevicesV1ClientStateComplianceState (..)

    -- * GoogleAppsCloudidentityDevicesV1DeviceManagementState
    , GoogleAppsCloudidentityDevicesV1DeviceManagementState (..)

    -- * GoogleAppsCloudidentityDevicesV1ClientStateOwnerType
    , GoogleAppsCloudidentityDevicesV1ClientStateOwnerType (..)

    -- * GroupRelationRelationType
    , GroupRelationRelationType (..)

    -- * GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    , googleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
    , gacdvcwdurDeviceUser

    -- * GroupsSearchView
    , GroupsSearchView (..)

    -- * DynamicGroupStatusStatus
    , DynamicGroupStatusStatus (..)

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleAppsCloudidentityDevicesV1ClientStateHealthScore
    , GoogleAppsCloudidentityDevicesV1ClientStateHealthScore (..)

    -- * CheckTransitiveMembershipResponse
    , CheckTransitiveMembershipResponse
    , checkTransitiveMembershipResponse
    , ctmrHasMembership

    -- * GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    , GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    , googleAppsCloudidentityDevicesV1ListDevicesResponse
    , gacdvldrNextPageToken
    , gacdvldrDevices

    -- * MembershipType
    , MembershipType (..)

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    , GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    , googleAppsCloudidentityDevicesV1WipeDeviceRequest
    , gacdvwdrCustomer

    -- * GroupLabels
    , GroupLabels
    , groupLabels
    , glAddtional

    -- * GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    , googleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
    , gacdvadurDeviceUser

    -- * UpdateMembershipRolesParams
    , UpdateMembershipRolesParams
    , updateMembershipRolesParams
    , umrpFieldMask
    , umrpMembershipRole

    -- * GoogleAppsCloudidentityDevicesV1DeviceDeviceType
    , GoogleAppsCloudidentityDevicesV1DeviceDeviceType (..)

    -- * ListMembershipsResponse
    , ListMembershipsResponse
    , listMembershipsResponse
    , lmrNextPageToken
    , lmrMemberships

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    , GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
    , googleAppsCloudidentityDevicesV1WipeDeviceResponse
    , gacdvwdrDevice

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * TransitiveMembershipRole
    , TransitiveMembershipRole
    , transitiveMembershipRole
    , tmrRole

    -- * GroupsCreateInitialGroupConfig
    , GroupsCreateInitialGroupConfig (..)

    -- * GroupsListView
    , GroupsListView (..)

    -- * GetMembershipGraphResponse
    , GetMembershipGraphResponse
    , getMembershipGraphResponse
    , gmgrGroups
    , gmgrAdjacencyList

    -- * GoogleAppsCloudidentityDevicesV1ClientState
    , GoogleAppsCloudidentityDevicesV1ClientState
    , googleAppsCloudidentityDevicesV1ClientState
    , gacdvcsEtag
    , gacdvcsKeyValuePairs
    , gacdvcsManaged
    , gacdvcsCustomId
    , gacdvcsHealthScore
    , gacdvcsScoreReason
    , gacdvcsName
    , gacdvcsComplianceState
    , gacdvcsLastUpdateTime
    , gacdvcsAssetTags
    , gacdvcsCreateTime
    , gacdvcsOwnerType

    -- * MemberRelation
    , MemberRelation
    , memberRelation
    , mrRoles
    , mrPreferredMemberKey
    , mrMember
    , mrRelationType

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , googleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , gacdvbdurCustomer

    -- * GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    , GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    , googleAppsCloudidentityDevicesV1WipeDeviceUserResponse
    , gacdvwdurDeviceUser

    -- * GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState
    , GoogleAppsCloudidentityDevicesV1DeviceUserPasswordState (..)

    -- * GroupRelation
    , GroupRelation
    , groupRelation
    , grRoles
    , grGroup
    , grGroupKey
    , grDisplayName
    , grLabels
    , grRelationType

    -- * GoogleAppsCloudidentityDevicesV1DeviceOwnerType
    , GoogleAppsCloudidentityDevicesV1DeviceOwnerType (..)
    ) where

import Network.Google.CloudIdentity.Types.Product
import Network.Google.CloudIdentity.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Identity API. This contains the host and root path used as a starting point for constructing service requests.
cloudIdentityService :: ServiceConfig
cloudIdentityService
  = defaultService (ServiceId "cloudidentity:v1")
      "cloudidentity.googleapis.com"

-- | See your device details
cloudIdentityDevicesLookupScope :: Proxy '["https://www.googleapis.com/auth/cloud-identity.devices.lookup"]
cloudIdentityDevicesLookupScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | See any Cloud Identity Groups that you can access, including group
-- members and their emails
cloudIdentityGroupsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-identity.groups.readonly"]
cloudIdentityGroupsReadOnlyScope = Proxy

-- | See, change, create, and delete any of the Cloud Identity Groups that
-- you can access, including the members of each group
cloudIdentityGroupsScope :: Proxy '["https://www.googleapis.com/auth/cloud-identity.groups"]
cloudIdentityGroupsScope = Proxy
