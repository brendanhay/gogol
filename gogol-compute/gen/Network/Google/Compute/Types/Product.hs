{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Compute.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types.Product where

import           Network.Google.Compute.Types.Sum
import           Network.Google.Prelude

-- | An access configuration attached to an instance\'s network interface.
--
-- /See:/ 'accessConfig' smart constructor.
data AccessConfig = AccessConfig
    { _acKind  :: !Text
    , _acName  :: !(Maybe Text)
    , _acNatIP :: !(Maybe Text)
    , _acType  :: !AccessConfigType
    }

-- | Creates a value of 'AccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acKind'
--
-- * 'acName'
--
-- * 'acNatIP'
--
-- * 'acType'
accessConfig
    :: AccessConfig
accessConfig =
    AccessConfig
    { _acKind = "compute#accessConfig"
    , _acName = Nothing
    , _acNatIP = Nothing
    , _acType = ACTOneToOneNAT
    }

-- | [Output Only] Type of the resource. Always compute#accessConfig for
-- access configs.
acKind :: Lens' AccessConfig Text
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | Name of this access configuration.
acName :: Lens' AccessConfig (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

-- | An external IP address associated with this instance. Specify an unused
-- static external IP address available to the project or leave this field
-- undefined to use an IP from a shared ephemeral IP address pool. If you
-- specify a static external IP address, it must live in the same region as
-- the zone of the instance.
acNatIP :: Lens' AccessConfig (Maybe Text)
acNatIP = lens _acNatIP (\ s a -> s{_acNatIP = a})

-- | The type of configuration. The default and only option is
-- ONE_TO_ONE_NAT.
acType :: Lens' AccessConfig AccessConfigType
acType = lens _acType (\ s a -> s{_acType = a})

-- | A reserved address resource.
--
-- /See:/ 'address' smart constructor.
data Address = Address
    { _addStatus            :: !(Maybe AddressStatus)
    , _addUsers             :: !(Maybe [Text])
    , _addKind              :: !Text
    , _addAddress           :: !(Maybe Text)
    , _addSelfLink          :: !(Maybe Text)
    , _addName              :: !(Maybe Text)
    , _addCreationTimestamp :: !(Maybe Text)
    , _addId                :: !(Maybe Word64)
    , _addRegion            :: !(Maybe Text)
    , _addDescription       :: !(Maybe Text)
    }

-- | Creates a value of 'Address' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addStatus'
--
-- * 'addUsers'
--
-- * 'addKind'
--
-- * 'addAddress'
--
-- * 'addSelfLink'
--
-- * 'addName'
--
-- * 'addCreationTimestamp'
--
-- * 'addId'
--
-- * 'addRegion'
--
-- * 'addDescription'
address
    :: Address
address =
    Address
    { _addStatus = Nothing
    , _addUsers = Nothing
    , _addKind = "compute#address"
    , _addAddress = Nothing
    , _addSelfLink = Nothing
    , _addName = Nothing
    , _addCreationTimestamp = Nothing
    , _addId = Nothing
    , _addRegion = Nothing
    , _addDescription = Nothing
    }

-- | [Output Only] The status of the address, which can be either IN_USE or
-- RESERVED. An address that is RESERVED is currently reserved and
-- available to use. An IN_USE address is currently being used by another
-- resource and is not available.
addStatus :: Lens' Address (Maybe AddressStatus)
addStatus
  = lens _addStatus (\ s a -> s{_addStatus = a})

-- | [Output Only] The URLs of the resources that are using this address.
addUsers :: Lens' Address [Text]
addUsers
  = lens _addUsers (\ s a -> s{_addUsers = a}) .
      _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always compute#address for
-- addresses.
addKind :: Lens' Address Text
addKind = lens _addKind (\ s a -> s{_addKind = a})

-- | The static external IP address represented by this resource.
addAddress :: Lens' Address (Maybe Text)
addAddress
  = lens _addAddress (\ s a -> s{_addAddress = a})

-- | [Output Only] Server-defined URL for the resource.
addSelfLink :: Lens' Address (Maybe Text)
addSelfLink
  = lens _addSelfLink (\ s a -> s{_addSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
addName :: Lens' Address (Maybe Text)
addName = lens _addName (\ s a -> s{_addName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
addCreationTimestamp :: Lens' Address (Maybe Text)
addCreationTimestamp
  = lens _addCreationTimestamp
      (\ s a -> s{_addCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
addId :: Lens' Address (Maybe Word64)
addId = lens _addId (\ s a -> s{_addId = a})

-- | [Output Only] URL of the region where the regional address resides. This
-- field is not applicable to global addresses.
addRegion :: Lens' Address (Maybe Text)
addRegion
  = lens _addRegion (\ s a -> s{_addRegion = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
addDescription :: Lens' Address (Maybe Text)
addDescription
  = lens _addDescription
      (\ s a -> s{_addDescription = a})

--
-- /See:/ 'addressAggregatedList' smart constructor.
data AddressAggregatedList = AddressAggregatedList
    { _aalNextPageToken :: !(Maybe Text)
    , _aalKind          :: !Text
    , _aalItems         :: !(Maybe AddressAggregatedListItems)
    , _aalSelfLink      :: !(Maybe Text)
    , _aalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalNextPageToken'
--
-- * 'aalKind'
--
-- * 'aalItems'
--
-- * 'aalSelfLink'
--
-- * 'aalId'
addressAggregatedList
    :: AddressAggregatedList
addressAggregatedList =
    AddressAggregatedList
    { _aalNextPageToken = Nothing
    , _aalKind = "compute#addressAggregatedList"
    , _aalItems = Nothing
    , _aalSelfLink = Nothing
    , _aalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
aalNextPageToken :: Lens' AddressAggregatedList (Maybe Text)
aalNextPageToken
  = lens _aalNextPageToken
      (\ s a -> s{_aalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#addressAggregatedList for
-- aggregated lists of addresses.
aalKind :: Lens' AddressAggregatedList Text
aalKind = lens _aalKind (\ s a -> s{_aalKind = a})

-- | [Output Only] A map of scoped address lists.
aalItems :: Lens' AddressAggregatedList (Maybe AddressAggregatedListItems)
aalItems = lens _aalItems (\ s a -> s{_aalItems = a})

-- | [Output Only] Server-defined URL for this resource.
aalSelfLink :: Lens' AddressAggregatedList (Maybe Text)
aalSelfLink
  = lens _aalSelfLink (\ s a -> s{_aalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
aalId :: Lens' AddressAggregatedList (Maybe Text)
aalId = lens _aalId (\ s a -> s{_aalId = a})

-- | [Output Only] A map of scoped address lists.
--
-- /See:/ 'addressAggregatedListItems' smart constructor.
data AddressAggregatedListItems =
    AddressAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressAggregatedListItems' with the minimum fields required to make a request.
--
addressAggregatedListItems
    :: AddressAggregatedListItems
addressAggregatedListItems = AddressAggregatedListItems

-- | Contains a list of address resources.
--
-- /See:/ 'addressList' smart constructor.
data AddressList = AddressList
    { _alNextPageToken :: !(Maybe Text)
    , _alKind          :: !Text
    , _alItems         :: !(Maybe [Maybe Address])
    , _alSelfLink      :: !(Maybe Text)
    , _alId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alNextPageToken'
--
-- * 'alKind'
--
-- * 'alItems'
--
-- * 'alSelfLink'
--
-- * 'alId'
addressList
    :: AddressList
addressList =
    AddressList
    { _alNextPageToken = Nothing
    , _alKind = "compute#addressList"
    , _alItems = Nothing
    , _alSelfLink = Nothing
    , _alId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
alNextPageToken :: Lens' AddressList (Maybe Text)
alNextPageToken
  = lens _alNextPageToken
      (\ s a -> s{_alNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#addressList for lists of
-- addresses.
alKind :: Lens' AddressList Text
alKind = lens _alKind (\ s a -> s{_alKind = a})

-- | [Output Only] A list of Address resources.
alItems :: Lens' AddressList [Maybe Address]
alItems
  = lens _alItems (\ s a -> s{_alItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
alSelfLink :: Lens' AddressList (Maybe Text)
alSelfLink
  = lens _alSelfLink (\ s a -> s{_alSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
alId :: Lens' AddressList (Maybe Text)
alId = lens _alId (\ s a -> s{_alId = a})

--
-- /See:/ 'addressesScopedList' smart constructor.
data AddressesScopedList = AddressesScopedList
    { _aslAddresses :: !(Maybe [Maybe Address])
    , _aslWarning   :: !(Maybe AddressesScopedListWarning)
    }

-- | Creates a value of 'AddressesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslAddresses'
--
-- * 'aslWarning'
addressesScopedList
    :: AddressesScopedList
addressesScopedList =
    AddressesScopedList
    { _aslAddresses = Nothing
    , _aslWarning = Nothing
    }

-- | [Output Only] List of addresses contained in this scope.
aslAddresses :: Lens' AddressesScopedList [Maybe Address]
aslAddresses
  = lens _aslAddresses (\ s a -> s{_aslAddresses = a})
      . _Default
      . _Coerce

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
aslWarning :: Lens' AddressesScopedList (Maybe AddressesScopedListWarning)
aslWarning
  = lens _aslWarning (\ s a -> s{_aslWarning = a})

--
-- /See:/ 'addressesScopedListItemDataWarning' smart constructor.
data AddressesScopedListItemDataWarning = AddressesScopedListItemDataWarning
    { _aslidwValue :: !(Maybe Text)
    , _aslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslidwValue'
--
-- * 'aslidwKey'
addressesScopedListItemDataWarning
    :: AddressesScopedListItemDataWarning
addressesScopedListItemDataWarning =
    AddressesScopedListItemDataWarning
    { _aslidwValue = Nothing
    , _aslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
aslidwValue :: Lens' AddressesScopedListItemDataWarning (Maybe Text)
aslidwValue
  = lens _aslidwValue (\ s a -> s{_aslidwValue = a})

-- | [Output Only] A key for the warning data.
aslidwKey :: Lens' AddressesScopedListItemDataWarning (Maybe Text)
aslidwKey
  = lens _aslidwKey (\ s a -> s{_aslidwKey = a})

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
--
-- /See:/ 'addressesScopedListWarning' smart constructor.
data AddressesScopedListWarning = AddressesScopedListWarning
    { _aslwData    :: !(Maybe [AddressesScopedListItemDataWarning])
    , _aslwCode    :: !(Maybe AddressesScopedListCodeWarning)
    , _aslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'AddressesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslwData'
--
-- * 'aslwCode'
--
-- * 'aslwMessage'
addressesScopedListWarning
    :: AddressesScopedListWarning
addressesScopedListWarning =
    AddressesScopedListWarning
    { _aslwData = Nothing
    , _aslwCode = Nothing
    , _aslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
aslwData :: Lens' AddressesScopedListWarning [AddressesScopedListItemDataWarning]
aslwData
  = lens _aslwData (\ s a -> s{_aslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
aslwCode :: Lens' AddressesScopedListWarning (Maybe AddressesScopedListCodeWarning)
aslwCode = lens _aslwCode (\ s a -> s{_aslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
aslwMessage :: Lens' AddressesScopedListWarning (Maybe Text)
aslwMessage
  = lens _aslwMessage (\ s a -> s{_aslwMessage = a})

-- | An instance-attached disk resource.
--
-- /See:/ 'attachedDisk' smart constructor.
data AttachedDisk = AttachedDisk
    { _adKind             :: !Text
    , _adMode             :: !(Maybe AttachedDiskMode)
    , _adBoot             :: !(Maybe Bool)
    , _adAutoDelete       :: !(Maybe Bool)
    , _adInitializeParams :: !(Maybe (Maybe AttachedDiskInitializeParams))
    , _adDeviceName       :: !(Maybe Text)
    , _adInterface        :: !(Maybe AttachedDiskInterface)
    , _adSource           :: !(Maybe Text)
    , _adLicenses         :: !(Maybe [Text])
    , _adType             :: !(Maybe AttachedDiskType)
    , _adIndex            :: !(Maybe Int32)
    }

-- | Creates a value of 'AttachedDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adKind'
--
-- * 'adMode'
--
-- * 'adBoot'
--
-- * 'adAutoDelete'
--
-- * 'adInitializeParams'
--
-- * 'adDeviceName'
--
-- * 'adInterface'
--
-- * 'adSource'
--
-- * 'adLicenses'
--
-- * 'adType'
--
-- * 'adIndex'
attachedDisk
    :: AttachedDisk
attachedDisk =
    AttachedDisk
    { _adKind = "compute#attachedDisk"
    , _adMode = Nothing
    , _adBoot = Nothing
    , _adAutoDelete = Nothing
    , _adInitializeParams = Nothing
    , _adDeviceName = Nothing
    , _adInterface = Nothing
    , _adSource = Nothing
    , _adLicenses = Nothing
    , _adType = Nothing
    , _adIndex = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#attachedDisk for
-- attached disks.
adKind :: Lens' AttachedDisk Text
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | The mode in which to attach this disk, either READ_WRITE or READ_ONLY.
-- If not specified, the default is to attach the disk in READ_WRITE mode.
adMode :: Lens' AttachedDisk (Maybe AttachedDiskMode)
adMode = lens _adMode (\ s a -> s{_adMode = a})

-- | Indicates that this is a boot disk. The virtual machine will use the
-- first partition of the disk for its root filesystem.
adBoot :: Lens' AttachedDisk (Maybe Bool)
adBoot = lens _adBoot (\ s a -> s{_adBoot = a})

-- | Specifies whether the disk will be auto-deleted when the instance is
-- deleted (but not when the disk is detached from the instance).
adAutoDelete :: Lens' AttachedDisk (Maybe Bool)
adAutoDelete
  = lens _adAutoDelete (\ s a -> s{_adAutoDelete = a})

-- | [Input Only] Specifies the parameters for a new disk that will be
-- created alongside the new instance. Use initialization parameters to
-- create boot disks or local SSDs attached to the new instance. This
-- property is mutually exclusive with the source property; you can only
-- define one or the other, but not both.
adInitializeParams :: Lens' AttachedDisk (Maybe (Maybe AttachedDiskInitializeParams))
adInitializeParams
  = lens _adInitializeParams
      (\ s a -> s{_adInitializeParams = a})

-- | Specifies a unique device name of your choice that is reflected into the
-- \/dev\/disk\/by-id\/google-* tree of a Linux operating system running
-- within the instance. This name can be used to reference the device for
-- mounting, resizing, and so on, from within the instance. If not
-- specified, the server chooses a default device name to apply to this
-- disk, in the form persistent-disks-x, where x is a number assigned by
-- Google Compute Engine. This field is only applicable for persistent
-- disks.
adDeviceName :: Lens' AttachedDisk (Maybe Text)
adDeviceName
  = lens _adDeviceName (\ s a -> s{_adDeviceName = a})

adInterface :: Lens' AttachedDisk (Maybe AttachedDiskInterface)
adInterface
  = lens _adInterface (\ s a -> s{_adInterface = a})

-- | Specifies a valid partial or full URL to an existing Persistent Disk
-- resource. This field is only applicable for persistent disks.
adSource :: Lens' AttachedDisk (Maybe Text)
adSource = lens _adSource (\ s a -> s{_adSource = a})

-- | [Output Only] Any valid publicly visible licenses.
adLicenses :: Lens' AttachedDisk [Text]
adLicenses
  = lens _adLicenses (\ s a -> s{_adLicenses = a}) .
      _Default
      . _Coerce

-- | Specifies the type of the disk, either SCRATCH or PERSISTENT. If not
-- specified, the default is PERSISTENT.
adType :: Lens' AttachedDisk (Maybe AttachedDiskType)
adType = lens _adType (\ s a -> s{_adType = a})

-- | Assigns a zero-based index to this disk, where 0 is reserved for the
-- boot disk. For example, if you have many disks attached to an instance,
-- each disk would have a unique index number. If not specified, the server
-- will choose an appropriate value.
adIndex :: Lens' AttachedDisk (Maybe Int32)
adIndex = lens _adIndex (\ s a -> s{_adIndex = a})

-- | [Input Only] Specifies the parameters for a new disk that will be
-- created alongside the new instance. Use initialization parameters to
-- create boot disks or local SSDs attached to the new instance. This
-- property is mutually exclusive with the source property; you can only
-- define one or the other, but not both.
--
-- /See:/ 'attachedDiskInitializeParams' smart constructor.
data AttachedDiskInitializeParams = AttachedDiskInitializeParams
    { _adipSourceImage :: !(Maybe Text)
    , _adipDiskSizeGb  :: !(Maybe Int64)
    , _adipDiskName    :: !(Maybe Text)
    , _adipDiskType    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachedDiskInitializeParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adipSourceImage'
--
-- * 'adipDiskSizeGb'
--
-- * 'adipDiskName'
--
-- * 'adipDiskType'
attachedDiskInitializeParams
    :: AttachedDiskInitializeParams
attachedDiskInitializeParams =
    AttachedDiskInitializeParams
    { _adipSourceImage = Nothing
    , _adipDiskSizeGb = Nothing
    , _adipDiskName = Nothing
    , _adipDiskType = Nothing
    }

-- | A source image used to create the disk. You can provide a private
-- (custom) image, and Compute Engine will use the corresponding image from
-- your project. For example: global\/images\/my-private-image Or you can
-- provide an image from a publicly-available project. For example, to use
-- a Debian image from the debian-cloud project, make sure to include the
-- project in the URL:
-- projects\/debian-cloud\/global\/images\/debian-7-wheezy-vYYYYMMDD where
-- vYYYYMMDD is the image version. The fully-qualified URL will also work
-- in both cases.
adipSourceImage :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipSourceImage
  = lens _adipSourceImage
      (\ s a -> s{_adipSourceImage = a})

-- | Specifies the size of the disk in base-2 GB.
adipDiskSizeGb :: Lens' AttachedDiskInitializeParams (Maybe Int64)
adipDiskSizeGb
  = lens _adipDiskSizeGb
      (\ s a -> s{_adipDiskSizeGb = a})

-- | Specifies the disk name. If not specified, the default is to use the
-- name of the instance.
adipDiskName :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipDiskName
  = lens _adipDiskName (\ s a -> s{_adipDiskName = a})

-- | Specifies the disk type to use to create the instance. If not specified,
-- the default is pd-standard, specified using the full URL. For example:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/diskTypes\/pd-standard
-- Other values include pd-ssd and local-ssd. If you define this field, you
-- can provide either the full or partial URL. For example, the following
-- are valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/diskTypes\/diskType
-- - projects\/project\/zones\/zone\/diskTypes\/diskType -
-- zones\/zone\/diskTypes\/diskType
adipDiskType :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipDiskType
  = lens _adipDiskType (\ s a -> s{_adipDiskType = a})

--
-- /See:/ 'autoscaler' smart constructor.
data Autoscaler = Autoscaler
    { _autKind              :: !Text
    , _autZone              :: !(Maybe Text)
    , _autSelfLink          :: !(Maybe Text)
    , _autName              :: !(Maybe Text)
    , _autCreationTimestamp :: !(Maybe Text)
    , _autAutoscalingPolicy :: !(Maybe (Maybe AutoscalingPolicy))
    , _autId                :: !(Maybe Word64)
    , _autDescription       :: !(Maybe Text)
    , _autTarget            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Autoscaler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autKind'
--
-- * 'autZone'
--
-- * 'autSelfLink'
--
-- * 'autName'
--
-- * 'autCreationTimestamp'
--
-- * 'autAutoscalingPolicy'
--
-- * 'autId'
--
-- * 'autDescription'
--
-- * 'autTarget'
autoscaler
    :: Autoscaler
autoscaler =
    Autoscaler
    { _autKind = "compute#autoscaler"
    , _autZone = Nothing
    , _autSelfLink = Nothing
    , _autName = Nothing
    , _autCreationTimestamp = Nothing
    , _autAutoscalingPolicy = Nothing
    , _autId = Nothing
    , _autDescription = Nothing
    , _autTarget = Nothing
    }

-- | Type of the resource.
autKind :: Lens' Autoscaler Text
autKind = lens _autKind (\ s a -> s{_autKind = a})

-- | [Output Only] URL of the zone where the instance group resides.
autZone :: Lens' Autoscaler (Maybe Text)
autZone = lens _autZone (\ s a -> s{_autZone = a})

-- | [Output Only] Server-defined URL for the resource.
autSelfLink :: Lens' Autoscaler (Maybe Text)
autSelfLink
  = lens _autSelfLink (\ s a -> s{_autSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
autName :: Lens' Autoscaler (Maybe Text)
autName = lens _autName (\ s a -> s{_autName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
autCreationTimestamp :: Lens' Autoscaler (Maybe Text)
autCreationTimestamp
  = lens _autCreationTimestamp
      (\ s a -> s{_autCreationTimestamp = a})

-- | Autoscaling configuration.
autAutoscalingPolicy :: Lens' Autoscaler (Maybe (Maybe AutoscalingPolicy))
autAutoscalingPolicy
  = lens _autAutoscalingPolicy
      (\ s a -> s{_autAutoscalingPolicy = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
autId :: Lens' Autoscaler (Maybe Word64)
autId = lens _autId (\ s a -> s{_autId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
autDescription :: Lens' Autoscaler (Maybe Text)
autDescription
  = lens _autDescription
      (\ s a -> s{_autDescription = a})

-- | URL of Instance Group Manager or Replica Pool which will be controlled
-- by Autoscaler.
autTarget :: Lens' Autoscaler (Maybe Text)
autTarget
  = lens _autTarget (\ s a -> s{_autTarget = a})

--
-- /See:/ 'autoscalerAggregatedList' smart constructor.
data AutoscalerAggregatedList = AutoscalerAggregatedList
    { _aalaNextPageToken :: !(Maybe Text)
    , _aalaKind          :: !Text
    , _aalaItems         :: !(Maybe AutoscalerAggregatedListItems)
    , _aalaSelfLink      :: !(Maybe Text)
    , _aalaId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalaNextPageToken'
--
-- * 'aalaKind'
--
-- * 'aalaItems'
--
-- * 'aalaSelfLink'
--
-- * 'aalaId'
autoscalerAggregatedList
    :: AutoscalerAggregatedList
autoscalerAggregatedList =
    AutoscalerAggregatedList
    { _aalaNextPageToken = Nothing
    , _aalaKind = "compute#autoscalerAggregatedList"
    , _aalaItems = Nothing
    , _aalaSelfLink = Nothing
    , _aalaId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
aalaNextPageToken :: Lens' AutoscalerAggregatedList (Maybe Text)
aalaNextPageToken
  = lens _aalaNextPageToken
      (\ s a -> s{_aalaNextPageToken = a})

-- | Type of resource.
aalaKind :: Lens' AutoscalerAggregatedList Text
aalaKind = lens _aalaKind (\ s a -> s{_aalaKind = a})

-- | A map of scoped autoscaler lists.
aalaItems :: Lens' AutoscalerAggregatedList (Maybe AutoscalerAggregatedListItems)
aalaItems
  = lens _aalaItems (\ s a -> s{_aalaItems = a})

-- | [Output Only] Server-defined URL for this resource.
aalaSelfLink :: Lens' AutoscalerAggregatedList (Maybe Text)
aalaSelfLink
  = lens _aalaSelfLink (\ s a -> s{_aalaSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
aalaId :: Lens' AutoscalerAggregatedList (Maybe Text)
aalaId = lens _aalaId (\ s a -> s{_aalaId = a})

-- | A map of scoped autoscaler lists.
--
-- /See:/ 'autoscalerAggregatedListItems' smart constructor.
data AutoscalerAggregatedListItems =
    AutoscalerAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerAggregatedListItems' with the minimum fields required to make a request.
--
autoscalerAggregatedListItems
    :: AutoscalerAggregatedListItems
autoscalerAggregatedListItems = AutoscalerAggregatedListItems

-- | Contains a list of persistent autoscaler resources.
--
-- /See:/ 'autoscalerList' smart constructor.
data AutoscalerList = AutoscalerList
    { _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Maybe Autoscaler])
    , _aSelfLink      :: !(Maybe Text)
    , _aId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aNextPageToken'
--
-- * 'aKind'
--
-- * 'aItems'
--
-- * 'aSelfLink'
--
-- * 'aId'
autoscalerList
    :: AutoscalerList
autoscalerList =
    AutoscalerList
    { _aNextPageToken = Nothing
    , _aKind = "compute#autoscalerList"
    , _aItems = Nothing
    , _aSelfLink = Nothing
    , _aId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
aNextPageToken :: Lens' AutoscalerList (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | Type of resource.
aKind :: Lens' AutoscalerList Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | A list of Autoscaler resources.
aItems :: Lens' AutoscalerList [Maybe Autoscaler]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

-- | [Output Only] Server-defined URL for this resource.
aSelfLink :: Lens' AutoscalerList (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
aId :: Lens' AutoscalerList (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

--
-- /See:/ 'autoscalersScopedList' smart constructor.
data AutoscalersScopedList = AutoscalersScopedList
    { _aAutoscalers :: !(Maybe [Maybe Autoscaler])
    , _aWarning     :: !(Maybe AutoscalersScopedListWarning)
    }

-- | Creates a value of 'AutoscalersScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAutoscalers'
--
-- * 'aWarning'
autoscalersScopedList
    :: AutoscalersScopedList
autoscalersScopedList =
    AutoscalersScopedList
    { _aAutoscalers = Nothing
    , _aWarning = Nothing
    }

-- | List of autoscalers contained in this scope.
aAutoscalers :: Lens' AutoscalersScopedList [Maybe Autoscaler]
aAutoscalers
  = lens _aAutoscalers (\ s a -> s{_aAutoscalers = a})
      . _Default
      . _Coerce

-- | Informational warning which replaces the list of autoscalers when the
-- list is empty.
aWarning :: Lens' AutoscalersScopedList (Maybe AutoscalersScopedListWarning)
aWarning = lens _aWarning (\ s a -> s{_aWarning = a})

--
-- /See:/ 'autoscalersScopedListItemDataWarning' smart constructor.
data AutoscalersScopedListItemDataWarning = AutoscalersScopedListItemDataWarning
    { _aValue :: !(Maybe Text)
    , _aKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aValue'
--
-- * 'aKey'
autoscalersScopedListItemDataWarning
    :: AutoscalersScopedListItemDataWarning
autoscalersScopedListItemDataWarning =
    AutoscalersScopedListItemDataWarning
    { _aValue = Nothing
    , _aKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
aValue :: Lens' AutoscalersScopedListItemDataWarning (Maybe Text)
aValue = lens _aValue (\ s a -> s{_aValue = a})

-- | [Output Only] A key for the warning data.
aKey :: Lens' AutoscalersScopedListItemDataWarning (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | Informational warning which replaces the list of autoscalers when the
-- list is empty.
--
-- /See:/ 'autoscalersScopedListWarning' smart constructor.
data AutoscalersScopedListWarning = AutoscalersScopedListWarning
    { _aData    :: !(Maybe [AutoscalersScopedListItemDataWarning])
    , _aCode    :: !(Maybe AutoscalersScopedListCodeWarning)
    , _aMessage :: !(Maybe Text)
    }

-- | Creates a value of 'AutoscalersScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aData'
--
-- * 'aCode'
--
-- * 'aMessage'
autoscalersScopedListWarning
    :: AutoscalersScopedListWarning
autoscalersScopedListWarning =
    AutoscalersScopedListWarning
    { _aData = Nothing
    , _aCode = Nothing
    , _aMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
aData :: Lens' AutoscalersScopedListWarning [AutoscalersScopedListItemDataWarning]
aData
  = lens _aData (\ s a -> s{_aData = a}) . _Default .
      _Coerce

-- | [Output Only] The warning type identifier for this warning.
aCode :: Lens' AutoscalersScopedListWarning (Maybe AutoscalersScopedListCodeWarning)
aCode = lens _aCode (\ s a -> s{_aCode = a})

-- | [Output Only] Optional human-readable details for this warning.
aMessage :: Lens' AutoscalersScopedListWarning (Maybe Text)
aMessage = lens _aMessage (\ s a -> s{_aMessage = a})

-- | Cloud Autoscaler policy.
--
-- /See:/ 'autoscalingPolicy' smart constructor.
data AutoscalingPolicy = AutoscalingPolicy
    { _apCustomMetricUtilizations :: !(Maybe [Maybe AutoscalingPolicyCustomMetricUtilization])
    , _apMaxNumReplicas           :: !(Maybe Int32)
    , _apCpuUtilization           :: !(Maybe (Maybe AutoscalingPolicyCpuUtilization))
    , _apLoadBalancingUtilization :: !(Maybe (Maybe AutoscalingPolicyLoadBalancingUtilization))
    , _apMinNumReplicas           :: !(Maybe Int32)
    , _apCoolDownPeriodSec        :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apCustomMetricUtilizations'
--
-- * 'apMaxNumReplicas'
--
-- * 'apCpuUtilization'
--
-- * 'apLoadBalancingUtilization'
--
-- * 'apMinNumReplicas'
--
-- * 'apCoolDownPeriodSec'
autoscalingPolicy
    :: AutoscalingPolicy
autoscalingPolicy =
    AutoscalingPolicy
    { _apCustomMetricUtilizations = Nothing
    , _apMaxNumReplicas = Nothing
    , _apCpuUtilization = Nothing
    , _apLoadBalancingUtilization = Nothing
    , _apMinNumReplicas = Nothing
    , _apCoolDownPeriodSec = Nothing
    }

-- | Configuration parameters of autoscaling based on custom metric.
apCustomMetricUtilizations :: Lens' AutoscalingPolicy [Maybe AutoscalingPolicyCustomMetricUtilization]
apCustomMetricUtilizations
  = lens _apCustomMetricUtilizations
      (\ s a -> s{_apCustomMetricUtilizations = a})
      . _Default
      . _Coerce

-- | The maximum number of replicas that the Autoscaler can scale up to. This
-- field is required for config to be effective. Maximum number of replicas
-- should be not lower than minimal number of replicas. Absolute limit for
-- this value is defined in Autoscaler backend.
apMaxNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMaxNumReplicas
  = lens _apMaxNumReplicas
      (\ s a -> s{_apMaxNumReplicas = a})

-- | TODO(jbartosik): Add support for scaling based on muliple utilization
-- metrics (take max recommendation). Exactly one utilization policy should
-- be provided. Configuration parameters of CPU based autoscaling policy.
apCpuUtilization :: Lens' AutoscalingPolicy (Maybe (Maybe AutoscalingPolicyCpuUtilization))
apCpuUtilization
  = lens _apCpuUtilization
      (\ s a -> s{_apCpuUtilization = a})

-- | Configuration parameters of autoscaling based on load balancer.
apLoadBalancingUtilization :: Lens' AutoscalingPolicy (Maybe (Maybe AutoscalingPolicyLoadBalancingUtilization))
apLoadBalancingUtilization
  = lens _apLoadBalancingUtilization
      (\ s a -> s{_apLoadBalancingUtilization = a})

-- | The minimum number of replicas that the Autoscaler can scale down to.
-- Can\'t be less than 0. If not provided Autoscaler will choose default
-- value depending on maximal number of replicas.
apMinNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMinNumReplicas
  = lens _apMinNumReplicas
      (\ s a -> s{_apMinNumReplicas = a})

-- | The number of seconds that the Autoscaler should wait between two
-- succeeding changes to the number of virtual machines. You should define
-- an interval that is at least as long as the initialization time of a
-- virtual machine and the time it may take for replica pool to create the
-- virtual machine. The default is 60 seconds.
apCoolDownPeriodSec :: Lens' AutoscalingPolicy (Maybe Int32)
apCoolDownPeriodSec
  = lens _apCoolDownPeriodSec
      (\ s a -> s{_apCoolDownPeriodSec = a})

-- | CPU utilization policy.
--
-- /See:/ 'autoscalingPolicyCpuUtilization' smart constructor.
newtype AutoscalingPolicyCpuUtilization = AutoscalingPolicyCpuUtilization
    { _apcuUtilizationTarget :: Maybe Double
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyCpuUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcuUtilizationTarget'
autoscalingPolicyCpuUtilization
    :: AutoscalingPolicyCpuUtilization
autoscalingPolicyCpuUtilization =
    AutoscalingPolicyCpuUtilization
    { _apcuUtilizationTarget = Nothing
    }

-- | The target utilization that the Autoscaler should maintain. It is
-- represented as a fraction of used cores. For example: 6 cores used in
-- 8-core VM are represented here as 0.75. Must be a float value between
-- (0, 1]. If not defined, the default is 0.8.
apcuUtilizationTarget :: Lens' AutoscalingPolicyCpuUtilization (Maybe Double)
apcuUtilizationTarget
  = lens _apcuUtilizationTarget
      (\ s a -> s{_apcuUtilizationTarget = a})

-- | Custom utilization metric policy.
--
-- /See:/ 'autoscalingPolicyCustomMetricUtilization' smart constructor.
data AutoscalingPolicyCustomMetricUtilization = AutoscalingPolicyCustomMetricUtilization
    { _apcmuUtilizationTarget     :: !(Maybe Double)
    , _apcmuMetric                :: !(Maybe Text)
    , _apcmuUtilizationTargetType :: !(Maybe AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType)
    }

-- | Creates a value of 'AutoscalingPolicyCustomMetricUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcmuUtilizationTarget'
--
-- * 'apcmuMetric'
--
-- * 'apcmuUtilizationTargetType'
autoscalingPolicyCustomMetricUtilization
    :: AutoscalingPolicyCustomMetricUtilization
autoscalingPolicyCustomMetricUtilization =
    AutoscalingPolicyCustomMetricUtilization
    { _apcmuUtilizationTarget = Nothing
    , _apcmuMetric = Nothing
    , _apcmuUtilizationTargetType = Nothing
    }

-- | Target value of the metric which Autoscaler should maintain. Must be a
-- positive value.
apcmuUtilizationTarget :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Double)
apcmuUtilizationTarget
  = lens _apcmuUtilizationTarget
      (\ s a -> s{_apcmuUtilizationTarget = a})

-- | Identifier of the metric. It should be a Cloud Monitoring metric. The
-- metric can not have negative values. The metric should be an utilization
-- metric (increasing number of VMs handling requests x times should reduce
-- average value of the metric roughly x times). For example you could use:
-- compute.googleapis.com\/instance\/network\/received_bytes_count.
apcmuMetric :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Text)
apcmuMetric
  = lens _apcmuMetric (\ s a -> s{_apcmuMetric = a})

-- | Defines type in which utilization_target is expressed.
apcmuUtilizationTargetType :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType)
apcmuUtilizationTargetType
  = lens _apcmuUtilizationTargetType
      (\ s a -> s{_apcmuUtilizationTargetType = a})

-- | Load balancing utilization policy.
--
-- /See:/ 'autoscalingPolicyLoadBalancingUtilization' smart constructor.
newtype AutoscalingPolicyLoadBalancingUtilization = AutoscalingPolicyLoadBalancingUtilization
    { _aplbuUtilizationTarget :: Maybe Double
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyLoadBalancingUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplbuUtilizationTarget'
autoscalingPolicyLoadBalancingUtilization
    :: AutoscalingPolicyLoadBalancingUtilization
autoscalingPolicyLoadBalancingUtilization =
    AutoscalingPolicyLoadBalancingUtilization
    { _aplbuUtilizationTarget = Nothing
    }

-- | Fraction of backend capacity utilization (set in HTTP load balancing
-- configuration) that Autoscaler should maintain. Must be a positive float
-- value. If not defined, the default is 0.8. For example if your
-- maxRatePerInstance capacity (in HTTP Load Balancing configuration) is
-- set at 10 and you would like to keep number of instances such that each
-- instance receives 7 QPS on average, set this to 0.7.
aplbuUtilizationTarget :: Lens' AutoscalingPolicyLoadBalancingUtilization (Maybe Double)
aplbuUtilizationTarget
  = lens _aplbuUtilizationTarget
      (\ s a -> s{_aplbuUtilizationTarget = a})

-- | Message containing information of one individual backend.
--
-- /See:/ 'backend' smart constructor.
data Backend = Backend
    { _bGroup              :: !(Maybe Text)
    , _bBalancingMode      :: !(Maybe BackendBalancingMode)
    , _bMaxUtilization     :: !(Maybe Float)
    , _bMaxRate            :: !(Maybe Int32)
    , _bMaxRatePerInstance :: !(Maybe Float)
    , _bDescription        :: !(Maybe Text)
    , _bCapacityScaler     :: !(Maybe Float)
    }

-- | Creates a value of 'Backend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bGroup'
--
-- * 'bBalancingMode'
--
-- * 'bMaxUtilization'
--
-- * 'bMaxRate'
--
-- * 'bMaxRatePerInstance'
--
-- * 'bDescription'
--
-- * 'bCapacityScaler'
backend
    :: Backend
backend =
    Backend
    { _bGroup = Nothing
    , _bBalancingMode = Nothing
    , _bMaxUtilization = Nothing
    , _bMaxRate = Nothing
    , _bMaxRatePerInstance = Nothing
    , _bDescription = Nothing
    , _bCapacityScaler = Nothing
    }

-- | The fully-qualified URL of a zonal Instance Group resource. This
-- instance group defines the list of instances that serve traffic. Member
-- virtual machine instances from each instance group must live in the same
-- zone as the instance group itself. No two backends in a backend service
-- are allowed to use same Instance Group resource. Note that you must
-- specify an Instance Group resource using the fully-qualified URL, rather
-- than a partial URL.
bGroup :: Lens' Backend (Maybe Text)
bGroup = lens _bGroup (\ s a -> s{_bGroup = a})

-- | Specifies the balancing mode for this backend. The default is
-- UTILIZATION but available values are UTILIZATION and RATE.
bBalancingMode :: Lens' Backend (Maybe BackendBalancingMode)
bBalancingMode
  = lens _bBalancingMode
      (\ s a -> s{_bBalancingMode = a})

-- | Used when balancingMode is UTILIZATION. This ratio defines the CPU
-- utilization target for the group. The default is 0.8. Valid range is
-- [0.0, 1.0].
bMaxUtilization :: Lens' Backend (Maybe Float)
bMaxUtilization
  = lens _bMaxUtilization
      (\ s a -> s{_bMaxUtilization = a})

-- | The max RPS of the group. Can be used with either balancing mode, but
-- required if RATE mode. For RATE mode, either maxRate or
-- maxRatePerInstance must be set.
bMaxRate :: Lens' Backend (Maybe Int32)
bMaxRate = lens _bMaxRate (\ s a -> s{_bMaxRate = a})

-- | The max RPS that a single backed instance can handle. This is used to
-- calculate the capacity of the group. Can be used in either balancing
-- mode. For RATE mode, either maxRate or maxRatePerInstance must be set.
bMaxRatePerInstance :: Lens' Backend (Maybe Float)
bMaxRatePerInstance
  = lens _bMaxRatePerInstance
      (\ s a -> s{_bMaxRatePerInstance = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
bDescription :: Lens' Backend (Maybe Text)
bDescription
  = lens _bDescription (\ s a -> s{_bDescription = a})

-- | A multiplier applied to the group\'s maximum servicing capacity (either
-- UTILIZATION or RATE). Default value is 1, which means the group will
-- serve up to 100% of its configured CPU or RPS (depending on
-- balancingMode). A setting of 0 means the group is completely drained,
-- offering 0% of its available CPU or RPS. Valid range is [0.0,1.0].
bCapacityScaler :: Lens' Backend (Maybe Float)
bCapacityScaler
  = lens _bCapacityScaler
      (\ s a -> s{_bCapacityScaler = a})

-- | A BackendService resource. This resource defines a group of backend
-- virtual machines together with their serving capacity.
--
-- /See:/ 'backendService' smart constructor.
data BackendService = BackendService
    { _bsBackends          :: !(Maybe [Maybe Backend])
    , _bsKind              :: !Text
    , _bsFingerprint       :: !(Maybe Word8)
    , _bsProtocol          :: !(Maybe BackendServiceProtocol)
    , _bsSelfLink          :: !(Maybe Text)
    , _bsName              :: !(Maybe Text)
    , _bsCreationTimestamp :: !(Maybe Text)
    , _bsId                :: !(Maybe Word64)
    , _bsTimeoutSec        :: !(Maybe Int32)
    , _bsDescription       :: !(Maybe Text)
    , _bsPortName          :: !(Maybe Text)
    , _bsHealthChecks      :: !(Maybe [Text])
    , _bsPort              :: !(Maybe Int32)
    }

-- | Creates a value of 'BackendService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsBackends'
--
-- * 'bsKind'
--
-- * 'bsFingerprint'
--
-- * 'bsProtocol'
--
-- * 'bsSelfLink'
--
-- * 'bsName'
--
-- * 'bsCreationTimestamp'
--
-- * 'bsId'
--
-- * 'bsTimeoutSec'
--
-- * 'bsDescription'
--
-- * 'bsPortName'
--
-- * 'bsHealthChecks'
--
-- * 'bsPort'
backendService
    :: BackendService
backendService =
    BackendService
    { _bsBackends = Nothing
    , _bsKind = "compute#backendService"
    , _bsFingerprint = Nothing
    , _bsProtocol = Nothing
    , _bsSelfLink = Nothing
    , _bsName = Nothing
    , _bsCreationTimestamp = Nothing
    , _bsId = Nothing
    , _bsTimeoutSec = Nothing
    , _bsDescription = Nothing
    , _bsPortName = Nothing
    , _bsHealthChecks = Nothing
    , _bsPort = Nothing
    }

-- | The list of backends that serve this BackendService.
bsBackends :: Lens' BackendService [Maybe Backend]
bsBackends
  = lens _bsBackends (\ s a -> s{_bsBackends = a}) .
      _Default
      . _Coerce

-- | [Output Only] Type of resource. Always compute#backendService for
-- backend services.
bsKind :: Lens' BackendService Text
bsKind = lens _bsKind (\ s a -> s{_bsKind = a})

-- | Fingerprint of this resource. A hash of the contents stored in this
-- object. This field is used in optimistic locking. This field will be
-- ignored when inserting a BackendService. An up-to-date fingerprint must
-- be provided in order to update the BackendService.
bsFingerprint :: Lens' BackendService (Maybe Word8)
bsFingerprint
  = lens _bsFingerprint
      (\ s a -> s{_bsFingerprint = a})

bsProtocol :: Lens' BackendService (Maybe BackendServiceProtocol)
bsProtocol
  = lens _bsProtocol (\ s a -> s{_bsProtocol = a})

-- | [Output Only] Server-defined URL for the resource.
bsSelfLink :: Lens' BackendService (Maybe Text)
bsSelfLink
  = lens _bsSelfLink (\ s a -> s{_bsSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
bsName :: Lens' BackendService (Maybe Text)
bsName = lens _bsName (\ s a -> s{_bsName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
bsCreationTimestamp :: Lens' BackendService (Maybe Text)
bsCreationTimestamp
  = lens _bsCreationTimestamp
      (\ s a -> s{_bsCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
bsId :: Lens' BackendService (Maybe Word64)
bsId = lens _bsId (\ s a -> s{_bsId = a})

-- | How many seconds to wait for the backend before considering it a failed
-- request. Default is 30 seconds.
bsTimeoutSec :: Lens' BackendService (Maybe Int32)
bsTimeoutSec
  = lens _bsTimeoutSec (\ s a -> s{_bsTimeoutSec = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
bsDescription :: Lens' BackendService (Maybe Text)
bsDescription
  = lens _bsDescription
      (\ s a -> s{_bsDescription = a})

-- | Name of backend port. The same name should appear in the resource views
-- referenced by this service. Required.
bsPortName :: Lens' BackendService (Maybe Text)
bsPortName
  = lens _bsPortName (\ s a -> s{_bsPortName = a})

-- | The list of URLs to the HttpHealthCheck resource for health checking
-- this BackendService. Currently at most one health check can be
-- specified, and a health check is required.
bsHealthChecks :: Lens' BackendService [Text]
bsHealthChecks
  = lens _bsHealthChecks
      (\ s a -> s{_bsHealthChecks = a})
      . _Default
      . _Coerce

-- | Deprecated in favor of port name. The TCP port to connect on the
-- backend. The default value is 80.
bsPort :: Lens' BackendService (Maybe Int32)
bsPort = lens _bsPort (\ s a -> s{_bsPort = a})

--
-- /See:/ 'backendServiceGroupHealth' smart constructor.
data BackendServiceGroupHealth = BackendServiceGroupHealth
    { _bsghKind         :: !Text
    , _bsghHealthStatus :: !(Maybe [Maybe HealthStatus])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServiceGroupHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsghKind'
--
-- * 'bsghHealthStatus'
backendServiceGroupHealth
    :: BackendServiceGroupHealth
backendServiceGroupHealth =
    BackendServiceGroupHealth
    { _bsghKind = "compute#backendServiceGroupHealth"
    , _bsghHealthStatus = Nothing
    }

-- | [Output Only] Type of resource. Always compute#backendServiceGroupHealth
-- for the health of backend services.
bsghKind :: Lens' BackendServiceGroupHealth Text
bsghKind = lens _bsghKind (\ s a -> s{_bsghKind = a})

bsghHealthStatus :: Lens' BackendServiceGroupHealth [Maybe HealthStatus]
bsghHealthStatus
  = lens _bsghHealthStatus
      (\ s a -> s{_bsghHealthStatus = a})
      . _Default
      . _Coerce

-- | Contains a list of BackendService resources.
--
-- /See:/ 'backendServiceList' smart constructor.
data BackendServiceList = BackendServiceList
    { _bslNextPageToken :: !(Maybe Text)
    , _bslKind          :: !Text
    , _bslItems         :: !(Maybe [Maybe BackendService])
    , _bslSelfLink      :: !(Maybe Text)
    , _bslId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServiceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bslNextPageToken'
--
-- * 'bslKind'
--
-- * 'bslItems'
--
-- * 'bslSelfLink'
--
-- * 'bslId'
backendServiceList
    :: BackendServiceList
backendServiceList =
    BackendServiceList
    { _bslNextPageToken = Nothing
    , _bslKind = "compute#backendServiceList"
    , _bslItems = Nothing
    , _bslSelfLink = Nothing
    , _bslId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
bslNextPageToken :: Lens' BackendServiceList (Maybe Text)
bslNextPageToken
  = lens _bslNextPageToken
      (\ s a -> s{_bslNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#backendServiceList for
-- lists of backend services.
bslKind :: Lens' BackendServiceList Text
bslKind = lens _bslKind (\ s a -> s{_bslKind = a})

-- | A list of BackendService resources.
bslItems :: Lens' BackendServiceList [Maybe BackendService]
bslItems
  = lens _bslItems (\ s a -> s{_bslItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
bslSelfLink :: Lens' BackendServiceList (Maybe Text)
bslSelfLink
  = lens _bslSelfLink (\ s a -> s{_bslSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
bslId :: Lens' BackendServiceList (Maybe Text)
bslId = lens _bslId (\ s a -> s{_bslId = a})

-- | Deprecation status for a public resource.
--
-- /See:/ 'deprecationStatus' smart constructor.
data DeprecationStatus = DeprecationStatus
    { _dsState       :: !(Maybe DeprecationStatusState)
    , _dsDeleted     :: !(Maybe Text)
    , _dsReplacement :: !(Maybe Text)
    , _dsObsolete    :: !(Maybe Text)
    , _dsDeprecated  :: !(Maybe Text)
    }

-- | Creates a value of 'DeprecationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsState'
--
-- * 'dsDeleted'
--
-- * 'dsReplacement'
--
-- * 'dsObsolete'
--
-- * 'dsDeprecated'
deprecationStatus
    :: DeprecationStatus
deprecationStatus =
    DeprecationStatus
    { _dsState = Nothing
    , _dsDeleted = Nothing
    , _dsReplacement = Nothing
    , _dsObsolete = Nothing
    , _dsDeprecated = Nothing
    }

-- | The deprecation state of this resource. This can be DEPRECATED,
-- OBSOLETE, or DELETED. Operations which create a new resource using a
-- DEPRECATED resource will return successfully, but with a warning
-- indicating the deprecated resource and recommending its replacement.
-- Operations which use OBSOLETE or DELETED resources will be rejected and
-- result in an error.
dsState :: Lens' DeprecationStatus (Maybe DeprecationStatusState)
dsState = lens _dsState (\ s a -> s{_dsState = a})

-- | An optional RFC3339 timestamp on or after which the deprecation state of
-- this resource will be changed to DELETED.
dsDeleted :: Lens' DeprecationStatus (Maybe Text)
dsDeleted
  = lens _dsDeleted (\ s a -> s{_dsDeleted = a})

-- | The URL of the suggested replacement for a deprecated resource. The
-- suggested replacement resource must be the same kind of resource as the
-- deprecated resource.
dsReplacement :: Lens' DeprecationStatus (Maybe Text)
dsReplacement
  = lens _dsReplacement
      (\ s a -> s{_dsReplacement = a})

-- | An optional RFC3339 timestamp on or after which the deprecation state of
-- this resource will be changed to OBSOLETE.
dsObsolete :: Lens' DeprecationStatus (Maybe Text)
dsObsolete
  = lens _dsObsolete (\ s a -> s{_dsObsolete = a})

-- | An optional RFC3339 timestamp on or after which the deprecation state of
-- this resource will be changed to DEPRECATED.
dsDeprecated :: Lens' DeprecationStatus (Maybe Text)
dsDeprecated
  = lens _dsDeprecated (\ s a -> s{_dsDeprecated = a})

-- | A Disk resource.
--
-- /See:/ 'disk' smart constructor.
data Disk = Disk
    { _dStatus              :: !(Maybe DiskStatus)
    , _dSourceSnapshotId    :: !(Maybe Text)
    , _dLastAttachTimestamp :: !(Maybe Text)
    , _dUsers               :: !(Maybe [Text])
    , _dSourceImage         :: !(Maybe Text)
    , _dSizeGb              :: !(Maybe Int64)
    , _dKind                :: !Text
    , _dLastDetachTimestamp :: !(Maybe Text)
    , _dZone                :: !(Maybe Text)
    , _dSelfLink            :: !(Maybe Text)
    , _dName                :: !(Maybe Text)
    , _dSourceImageId       :: !(Maybe Text)
    , _dCreationTimestamp   :: !(Maybe Text)
    , _dId                  :: !(Maybe Word64)
    , _dLicenses            :: !(Maybe [Text])
    , _dOptions             :: !(Maybe Text)
    , _dType                :: !(Maybe Text)
    , _dDescription         :: !(Maybe Text)
    , _dSourceSnapshot      :: !(Maybe Text)
    }

-- | Creates a value of 'Disk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStatus'
--
-- * 'dSourceSnapshotId'
--
-- * 'dLastAttachTimestamp'
--
-- * 'dUsers'
--
-- * 'dSourceImage'
--
-- * 'dSizeGb'
--
-- * 'dKind'
--
-- * 'dLastDetachTimestamp'
--
-- * 'dZone'
--
-- * 'dSelfLink'
--
-- * 'dName'
--
-- * 'dSourceImageId'
--
-- * 'dCreationTimestamp'
--
-- * 'dId'
--
-- * 'dLicenses'
--
-- * 'dOptions'
--
-- * 'dType'
--
-- * 'dDescription'
--
-- * 'dSourceSnapshot'
disk
    :: Disk
disk =
    Disk
    { _dStatus = Nothing
    , _dSourceSnapshotId = Nothing
    , _dLastAttachTimestamp = Nothing
    , _dUsers = Nothing
    , _dSourceImage = Nothing
    , _dSizeGb = Nothing
    , _dKind = "compute#disk"
    , _dLastDetachTimestamp = Nothing
    , _dZone = Nothing
    , _dSelfLink = Nothing
    , _dName = Nothing
    , _dSourceImageId = Nothing
    , _dCreationTimestamp = Nothing
    , _dId = Nothing
    , _dLicenses = Nothing
    , _dOptions = Nothing
    , _dType = Nothing
    , _dDescription = Nothing
    , _dSourceSnapshot = Nothing
    }

-- | [Output Only] The status of disk creation. Applicable statuses includes:
-- CREATING, FAILED, READY, RESTORING.
dStatus :: Lens' Disk (Maybe DiskStatus)
dStatus = lens _dStatus (\ s a -> s{_dStatus = a})

-- | [Output Only] The unique ID of the snapshot used to create this disk.
-- This value identifies the exact snapshot that was used to create this
-- persistent disk. For example, if you created the persistent disk from a
-- snapshot that was later deleted and recreated under the same name, the
-- source snapshot ID would identify the exact version of the snapshot that
-- was used.
dSourceSnapshotId :: Lens' Disk (Maybe Text)
dSourceSnapshotId
  = lens _dSourceSnapshotId
      (\ s a -> s{_dSourceSnapshotId = a})

-- | [Output Only] Last attach timestamp in RFC3339 text format.
dLastAttachTimestamp :: Lens' Disk (Maybe Text)
dLastAttachTimestamp
  = lens _dLastAttachTimestamp
      (\ s a -> s{_dLastAttachTimestamp = a})

-- | Links to the users of the disk (attached instances) in form:
-- project\/zones\/zone\/instances\/instance
dUsers :: Lens' Disk [Text]
dUsers
  = lens _dUsers (\ s a -> s{_dUsers = a}) . _Default .
      _Coerce

-- | The source image used to create this disk. If the source image is
-- deleted from the system, this field will not be set, even if an image
-- with the same name has been re-created. When creating a disk, you can
-- provide a private (custom) image using the following input, and Compute
-- Engine will use the corresponding image from your project. For example:
-- global\/images\/my-private-image Or you can provide an image from a
-- publicly-available project. For example, to use a Debian image from the
-- debian-cloud project, make sure to include the project in the URL:
-- projects\/debian-cloud\/global\/images\/debian-7-wheezy-vYYYYMMDD where
-- vYYYYMMDD is the image version. The fully-qualified URL will also work
-- in both cases.
dSourceImage :: Lens' Disk (Maybe Text)
dSourceImage
  = lens _dSourceImage (\ s a -> s{_dSourceImage = a})

-- | Size of the persistent disk, specified in GB. You can specify this field
-- when creating a persistent disk using the sourceImage or sourceSnapshot
-- parameter, or specify it alone to create an empty persistent disk. If
-- you specify this field along with sourceImage or sourceSnapshot, the
-- value of sizeGb must not be less than the size of the sourceImage or the
-- size of the snapshot.
dSizeGb :: Lens' Disk (Maybe Int64)
dSizeGb = lens _dSizeGb (\ s a -> s{_dSizeGb = a})

-- | [Output Only] Type of the resource. Always compute#disk for disks.
dKind :: Lens' Disk Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | [Output Only] Last detach timestamp in RFC3339 text format.
dLastDetachTimestamp :: Lens' Disk (Maybe Text)
dLastDetachTimestamp
  = lens _dLastDetachTimestamp
      (\ s a -> s{_dLastDetachTimestamp = a})

-- | [Output Only] URL of the zone where the disk resides.
dZone :: Lens' Disk (Maybe Text)
dZone = lens _dZone (\ s a -> s{_dZone = a})

-- | [Output Only] Server-defined fully-qualified URL for this resource.
dSelfLink :: Lens' Disk (Maybe Text)
dSelfLink
  = lens _dSelfLink (\ s a -> s{_dSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
dName :: Lens' Disk (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The ID value of the image used to create this disk. This value
-- identifies the exact image that was used to create this persistent disk.
-- For example, if you created the persistent disk from an image that was
-- later deleted and recreated under the same name, the source image ID
-- would identify the exact version of the image that was used.
dSourceImageId :: Lens' Disk (Maybe Text)
dSourceImageId
  = lens _dSourceImageId
      (\ s a -> s{_dSourceImageId = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
dCreationTimestamp :: Lens' Disk (Maybe Text)
dCreationTimestamp
  = lens _dCreationTimestamp
      (\ s a -> s{_dCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dId :: Lens' Disk (Maybe Word64)
dId = lens _dId (\ s a -> s{_dId = a})

-- | Any applicable publicly visible licenses.
dLicenses :: Lens' Disk [Text]
dLicenses
  = lens _dLicenses (\ s a -> s{_dLicenses = a}) .
      _Default
      . _Coerce

-- | Internal use only.
dOptions :: Lens' Disk (Maybe Text)
dOptions = lens _dOptions (\ s a -> s{_dOptions = a})

-- | URL of the disk type resource describing which disk type to use to
-- create the disk; provided by the client when the disk is created.
dType :: Lens' Disk (Maybe Text)
dType = lens _dType (\ s a -> s{_dType = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
dDescription :: Lens' Disk (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | The source snapshot used to create this disk. You can provide this as a
-- partial or full URL to the resource. For example, the following are
-- valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/global\/snapshots\/snapshot
-- - projects\/project\/global\/snapshots\/snapshot -
-- global\/snapshots\/snapshot
dSourceSnapshot :: Lens' Disk (Maybe Text)
dSourceSnapshot
  = lens _dSourceSnapshot
      (\ s a -> s{_dSourceSnapshot = a})

--
-- /See:/ 'diskAggregatedList' smart constructor.
data DiskAggregatedList = DiskAggregatedList
    { _dalNextPageToken :: !(Maybe Text)
    , _dalKind          :: !Text
    , _dalItems         :: !(Maybe DiskAggregatedListItems)
    , _dalSelfLink      :: !(Maybe Text)
    , _dalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalNextPageToken'
--
-- * 'dalKind'
--
-- * 'dalItems'
--
-- * 'dalSelfLink'
--
-- * 'dalId'
diskAggregatedList
    :: DiskAggregatedList
diskAggregatedList =
    DiskAggregatedList
    { _dalNextPageToken = Nothing
    , _dalKind = "compute#diskAggregatedList"
    , _dalItems = Nothing
    , _dalSelfLink = Nothing
    , _dalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dalNextPageToken :: Lens' DiskAggregatedList (Maybe Text)
dalNextPageToken
  = lens _dalNextPageToken
      (\ s a -> s{_dalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskAggregatedList for
-- aggregated lists of persistent disks.
dalKind :: Lens' DiskAggregatedList Text
dalKind = lens _dalKind (\ s a -> s{_dalKind = a})

-- | [Output Only] A map of scoped disk lists.
dalItems :: Lens' DiskAggregatedList (Maybe DiskAggregatedListItems)
dalItems = lens _dalItems (\ s a -> s{_dalItems = a})

-- | [Output Only] Server-defined URL for this resource.
dalSelfLink :: Lens' DiskAggregatedList (Maybe Text)
dalSelfLink
  = lens _dalSelfLink (\ s a -> s{_dalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dalId :: Lens' DiskAggregatedList (Maybe Text)
dalId = lens _dalId (\ s a -> s{_dalId = a})

-- | [Output Only] A map of scoped disk lists.
--
-- /See:/ 'diskAggregatedListItems' smart constructor.
data DiskAggregatedListItems =
    DiskAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskAggregatedListItems' with the minimum fields required to make a request.
--
diskAggregatedListItems
    :: DiskAggregatedListItems
diskAggregatedListItems = DiskAggregatedListItems

-- | A list of Disk resources.
--
-- /See:/ 'diskList' smart constructor.
data DiskList = DiskList
    { _dlNextPageToken :: !(Maybe Text)
    , _dlKind          :: !Text
    , _dlItems         :: !(Maybe [Maybe Disk])
    , _dlSelfLink      :: !(Maybe Text)
    , _dlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlNextPageToken'
--
-- * 'dlKind'
--
-- * 'dlItems'
--
-- * 'dlSelfLink'
--
-- * 'dlId'
diskList
    :: DiskList
diskList =
    DiskList
    { _dlNextPageToken = Nothing
    , _dlKind = "compute#diskList"
    , _dlItems = Nothing
    , _dlSelfLink = Nothing
    , _dlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dlNextPageToken :: Lens' DiskList (Maybe Text)
dlNextPageToken
  = lens _dlNextPageToken
      (\ s a -> s{_dlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskList for lists of
-- disks.
dlKind :: Lens' DiskList Text
dlKind = lens _dlKind (\ s a -> s{_dlKind = a})

-- | [Output Only] A list of persistent disks.
dlItems :: Lens' DiskList [Maybe Disk]
dlItems
  = lens _dlItems (\ s a -> s{_dlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
dlSelfLink :: Lens' DiskList (Maybe Text)
dlSelfLink
  = lens _dlSelfLink (\ s a -> s{_dlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dlId :: Lens' DiskList (Maybe Text)
dlId = lens _dlId (\ s a -> s{_dlId = a})

--
-- /See:/ 'diskMoveRequest' smart constructor.
data DiskMoveRequest = DiskMoveRequest
    { _dmrTargetDisk      :: !(Maybe Text)
    , _dmrDestinationZone :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskMoveRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrTargetDisk'
--
-- * 'dmrDestinationZone'
diskMoveRequest
    :: DiskMoveRequest
diskMoveRequest =
    DiskMoveRequest
    { _dmrTargetDisk = Nothing
    , _dmrDestinationZone = Nothing
    }

-- | The URL of the target disk to move. This can be a full or partial URL.
-- For example, the following are all valid URLs to a disk: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/disks\/disk
-- - projects\/project\/zones\/zone\/disks\/disk - zones\/zone\/disks\/disk
dmrTargetDisk :: Lens' DiskMoveRequest (Maybe Text)
dmrTargetDisk
  = lens _dmrTargetDisk
      (\ s a -> s{_dmrTargetDisk = a})

-- | The URL of the destination zone to move the disk to. This can be a full
-- or partial URL. For example, the following are all valid URLs to a zone:
-- -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone
-- - projects\/project\/zones\/zone - zones\/zone
dmrDestinationZone :: Lens' DiskMoveRequest (Maybe Text)
dmrDestinationZone
  = lens _dmrDestinationZone
      (\ s a -> s{_dmrDestinationZone = a})

-- | A disk type resource.
--
-- /See:/ 'diskType' smart constructor.
data DiskType = DiskType
    { _dtKind              :: !Text
    , _dtZone              :: !(Maybe Text)
    , _dtSelfLink          :: !(Maybe Text)
    , _dtName              :: !(Maybe Text)
    , _dtCreationTimestamp :: !(Maybe Text)
    , _dtId                :: !(Maybe Word64)
    , _dtValidDiskSize     :: !(Maybe Text)
    , _dtDescription       :: !(Maybe Text)
    , _dtDefaultDiskSizeGb :: !(Maybe Int64)
    , _dtDeprecated        :: !(Maybe (Maybe DeprecationStatus))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtKind'
--
-- * 'dtZone'
--
-- * 'dtSelfLink'
--
-- * 'dtName'
--
-- * 'dtCreationTimestamp'
--
-- * 'dtId'
--
-- * 'dtValidDiskSize'
--
-- * 'dtDescription'
--
-- * 'dtDefaultDiskSizeGb'
--
-- * 'dtDeprecated'
diskType
    :: DiskType
diskType =
    DiskType
    { _dtKind = "compute#diskType"
    , _dtZone = Nothing
    , _dtSelfLink = Nothing
    , _dtName = Nothing
    , _dtCreationTimestamp = Nothing
    , _dtId = Nothing
    , _dtValidDiskSize = Nothing
    , _dtDescription = Nothing
    , _dtDefaultDiskSizeGb = Nothing
    , _dtDeprecated = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#diskType for disk
-- types.
dtKind :: Lens' DiskType Text
dtKind = lens _dtKind (\ s a -> s{_dtKind = a})

-- | [Output Only] URL of the zone where the disk type resides.
dtZone :: Lens' DiskType (Maybe Text)
dtZone = lens _dtZone (\ s a -> s{_dtZone = a})

-- | [Output Only] Server-defined URL for the resource.
dtSelfLink :: Lens' DiskType (Maybe Text)
dtSelfLink
  = lens _dtSelfLink (\ s a -> s{_dtSelfLink = a})

-- | [Output Only] Name of the resource.
dtName :: Lens' DiskType (Maybe Text)
dtName = lens _dtName (\ s a -> s{_dtName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
dtCreationTimestamp :: Lens' DiskType (Maybe Text)
dtCreationTimestamp
  = lens _dtCreationTimestamp
      (\ s a -> s{_dtCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dtId :: Lens' DiskType (Maybe Word64)
dtId = lens _dtId (\ s a -> s{_dtId = a})

-- | [Output Only] An optional textual description of the valid disk size,
-- such as \"10GB-10TB\".
dtValidDiskSize :: Lens' DiskType (Maybe Text)
dtValidDiskSize
  = lens _dtValidDiskSize
      (\ s a -> s{_dtValidDiskSize = a})

-- | [Output Only] An optional textual description of the resource.
dtDescription :: Lens' DiskType (Maybe Text)
dtDescription
  = lens _dtDescription
      (\ s a -> s{_dtDescription = a})

-- | [Output Only] Server-defined default disk size in GB.
dtDefaultDiskSizeGb :: Lens' DiskType (Maybe Int64)
dtDefaultDiskSizeGb
  = lens _dtDefaultDiskSizeGb
      (\ s a -> s{_dtDefaultDiskSizeGb = a})

-- | [Output Only] The deprecation status associated with this disk type.
dtDeprecated :: Lens' DiskType (Maybe (Maybe DeprecationStatus))
dtDeprecated
  = lens _dtDeprecated (\ s a -> s{_dtDeprecated = a})

--
-- /See:/ 'diskTypeAggregatedList' smart constructor.
data DiskTypeAggregatedList = DiskTypeAggregatedList
    { _dtalNextPageToken :: !(Maybe Text)
    , _dtalKind          :: !Text
    , _dtalItems         :: !(Maybe DiskTypeAggregatedListItems)
    , _dtalSelfLink      :: !(Maybe Text)
    , _dtalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypeAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtalNextPageToken'
--
-- * 'dtalKind'
--
-- * 'dtalItems'
--
-- * 'dtalSelfLink'
--
-- * 'dtalId'
diskTypeAggregatedList
    :: DiskTypeAggregatedList
diskTypeAggregatedList =
    DiskTypeAggregatedList
    { _dtalNextPageToken = Nothing
    , _dtalKind = "compute#diskTypeAggregatedList"
    , _dtalItems = Nothing
    , _dtalSelfLink = Nothing
    , _dtalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dtalNextPageToken :: Lens' DiskTypeAggregatedList (Maybe Text)
dtalNextPageToken
  = lens _dtalNextPageToken
      (\ s a -> s{_dtalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskTypeAggregatedList.
dtalKind :: Lens' DiskTypeAggregatedList Text
dtalKind = lens _dtalKind (\ s a -> s{_dtalKind = a})

-- | [Output Only] A map of scoped disk type lists.
dtalItems :: Lens' DiskTypeAggregatedList (Maybe DiskTypeAggregatedListItems)
dtalItems
  = lens _dtalItems (\ s a -> s{_dtalItems = a})

-- | [Output Only] Server-defined URL for this resource.
dtalSelfLink :: Lens' DiskTypeAggregatedList (Maybe Text)
dtalSelfLink
  = lens _dtalSelfLink (\ s a -> s{_dtalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dtalId :: Lens' DiskTypeAggregatedList (Maybe Text)
dtalId = lens _dtalId (\ s a -> s{_dtalId = a})

-- | [Output Only] A map of scoped disk type lists.
--
-- /See:/ 'diskTypeAggregatedListItems' smart constructor.
data DiskTypeAggregatedListItems =
    DiskTypeAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypeAggregatedListItems' with the minimum fields required to make a request.
--
diskTypeAggregatedListItems
    :: DiskTypeAggregatedListItems
diskTypeAggregatedListItems = DiskTypeAggregatedListItems

-- | Contains a list of disk type resources.
--
-- /See:/ 'diskTypeList' smart constructor.
data DiskTypeList = DiskTypeList
    { _dtlNextPageToken :: !(Maybe Text)
    , _dtlKind          :: !Text
    , _dtlItems         :: !(Maybe [Maybe DiskType])
    , _dtlSelfLink      :: !(Maybe Text)
    , _dtlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypeList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtlNextPageToken'
--
-- * 'dtlKind'
--
-- * 'dtlItems'
--
-- * 'dtlSelfLink'
--
-- * 'dtlId'
diskTypeList
    :: DiskTypeList
diskTypeList =
    DiskTypeList
    { _dtlNextPageToken = Nothing
    , _dtlKind = "compute#diskTypeList"
    , _dtlItems = Nothing
    , _dtlSelfLink = Nothing
    , _dtlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dtlNextPageToken :: Lens' DiskTypeList (Maybe Text)
dtlNextPageToken
  = lens _dtlNextPageToken
      (\ s a -> s{_dtlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskTypeList for disk
-- types.
dtlKind :: Lens' DiskTypeList Text
dtlKind = lens _dtlKind (\ s a -> s{_dtlKind = a})

-- | [Output Only] A list of Disk Type resources.
dtlItems :: Lens' DiskTypeList [Maybe DiskType]
dtlItems
  = lens _dtlItems (\ s a -> s{_dtlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
dtlSelfLink :: Lens' DiskTypeList (Maybe Text)
dtlSelfLink
  = lens _dtlSelfLink (\ s a -> s{_dtlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dtlId :: Lens' DiskTypeList (Maybe Text)
dtlId = lens _dtlId (\ s a -> s{_dtlId = a})

--
-- /See:/ 'diskTypesScopedList' smart constructor.
data DiskTypesScopedList = DiskTypesScopedList
    { _dtslDiskTypes :: !(Maybe [Maybe DiskType])
    , _dtslWarning   :: !(Maybe DiskTypesScopedListWarning)
    }

-- | Creates a value of 'DiskTypesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtslDiskTypes'
--
-- * 'dtslWarning'
diskTypesScopedList
    :: DiskTypesScopedList
diskTypesScopedList =
    DiskTypesScopedList
    { _dtslDiskTypes = Nothing
    , _dtslWarning = Nothing
    }

-- | [Output Only] List of disk types contained in this scope.
dtslDiskTypes :: Lens' DiskTypesScopedList [Maybe DiskType]
dtslDiskTypes
  = lens _dtslDiskTypes
      (\ s a -> s{_dtslDiskTypes = a})
      . _Default
      . _Coerce

-- | [Output Only] Informational warning which replaces the list of disk
-- types when the list is empty.
dtslWarning :: Lens' DiskTypesScopedList (Maybe DiskTypesScopedListWarning)
dtslWarning
  = lens _dtslWarning (\ s a -> s{_dtslWarning = a})

--
-- /See:/ 'diskTypesScopedListItemDataWarning' smart constructor.
data DiskTypesScopedListItemDataWarning = DiskTypesScopedListItemDataWarning
    { _dtslidwValue :: !(Maybe Text)
    , _dtslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtslidwValue'
--
-- * 'dtslidwKey'
diskTypesScopedListItemDataWarning
    :: DiskTypesScopedListItemDataWarning
diskTypesScopedListItemDataWarning =
    DiskTypesScopedListItemDataWarning
    { _dtslidwValue = Nothing
    , _dtslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
dtslidwValue :: Lens' DiskTypesScopedListItemDataWarning (Maybe Text)
dtslidwValue
  = lens _dtslidwValue (\ s a -> s{_dtslidwValue = a})

-- | [Output Only] A key for the warning data.
dtslidwKey :: Lens' DiskTypesScopedListItemDataWarning (Maybe Text)
dtslidwKey
  = lens _dtslidwKey (\ s a -> s{_dtslidwKey = a})

-- | [Output Only] Informational warning which replaces the list of disk
-- types when the list is empty.
--
-- /See:/ 'diskTypesScopedListWarning' smart constructor.
data DiskTypesScopedListWarning = DiskTypesScopedListWarning
    { _dtslwData    :: !(Maybe [DiskTypesScopedListItemDataWarning])
    , _dtslwCode    :: !(Maybe DiskTypesScopedListCodeWarning)
    , _dtslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'DiskTypesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtslwData'
--
-- * 'dtslwCode'
--
-- * 'dtslwMessage'
diskTypesScopedListWarning
    :: DiskTypesScopedListWarning
diskTypesScopedListWarning =
    DiskTypesScopedListWarning
    { _dtslwData = Nothing
    , _dtslwCode = Nothing
    , _dtslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
dtslwData :: Lens' DiskTypesScopedListWarning [DiskTypesScopedListItemDataWarning]
dtslwData
  = lens _dtslwData (\ s a -> s{_dtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
dtslwCode :: Lens' DiskTypesScopedListWarning (Maybe DiskTypesScopedListCodeWarning)
dtslwCode
  = lens _dtslwCode (\ s a -> s{_dtslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
dtslwMessage :: Lens' DiskTypesScopedListWarning (Maybe Text)
dtslwMessage
  = lens _dtslwMessage (\ s a -> s{_dtslwMessage = a})

--
-- /See:/ 'disksScopedList' smart constructor.
data DisksScopedList = DisksScopedList
    { _dslWarning :: !(Maybe DisksScopedListWarning)
    , _dslDisks   :: !(Maybe [Maybe Disk])
    }

-- | Creates a value of 'DisksScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslWarning'
--
-- * 'dslDisks'
disksScopedList
    :: DisksScopedList
disksScopedList =
    DisksScopedList
    { _dslWarning = Nothing
    , _dslDisks = Nothing
    }

-- | [Output Only] Informational warning which replaces the list of disks
-- when the list is empty.
dslWarning :: Lens' DisksScopedList (Maybe DisksScopedListWarning)
dslWarning
  = lens _dslWarning (\ s a -> s{_dslWarning = a})

-- | [Output Only] List of disks contained in this scope.
dslDisks :: Lens' DisksScopedList [Maybe Disk]
dslDisks
  = lens _dslDisks (\ s a -> s{_dslDisks = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'disksScopedListItemDataWarning' smart constructor.
data DisksScopedListItemDataWarning = DisksScopedListItemDataWarning
    { _dslidwValue :: !(Maybe Text)
    , _dslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslidwValue'
--
-- * 'dslidwKey'
disksScopedListItemDataWarning
    :: DisksScopedListItemDataWarning
disksScopedListItemDataWarning =
    DisksScopedListItemDataWarning
    { _dslidwValue = Nothing
    , _dslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
dslidwValue :: Lens' DisksScopedListItemDataWarning (Maybe Text)
dslidwValue
  = lens _dslidwValue (\ s a -> s{_dslidwValue = a})

-- | [Output Only] A key for the warning data.
dslidwKey :: Lens' DisksScopedListItemDataWarning (Maybe Text)
dslidwKey
  = lens _dslidwKey (\ s a -> s{_dslidwKey = a})

-- | [Output Only] Informational warning which replaces the list of disks
-- when the list is empty.
--
-- /See:/ 'disksScopedListWarning' smart constructor.
data DisksScopedListWarning = DisksScopedListWarning
    { _dslwData    :: !(Maybe [DisksScopedListItemDataWarning])
    , _dslwCode    :: !(Maybe DisksScopedListCodeWarning)
    , _dslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'DisksScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslwData'
--
-- * 'dslwCode'
--
-- * 'dslwMessage'
disksScopedListWarning
    :: DisksScopedListWarning
disksScopedListWarning =
    DisksScopedListWarning
    { _dslwData = Nothing
    , _dslwCode = Nothing
    , _dslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
dslwData :: Lens' DisksScopedListWarning [DisksScopedListItemDataWarning]
dslwData
  = lens _dslwData (\ s a -> s{_dslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
dslwCode :: Lens' DisksScopedListWarning (Maybe DisksScopedListCodeWarning)
dslwCode = lens _dslwCode (\ s a -> s{_dslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
dslwMessage :: Lens' DisksScopedListWarning (Maybe Text)
dslwMessage
  = lens _dslwMessage (\ s a -> s{_dslwMessage = a})

-- | A Firewall resource.
--
-- /See:/ 'firewall' smart constructor.
data Firewall = Firewall
    { _fSourceTags        :: !(Maybe [Text])
    , _fKind              :: !Text
    , _fTargetTags        :: !(Maybe [Text])
    , _fNetwork           :: !(Maybe Text)
    , _fSourceRanges      :: !(Maybe [Text])
    , _fSelfLink          :: !(Maybe Text)
    , _fName              :: !(Maybe Text)
    , _fCreationTimestamp :: !(Maybe Text)
    , _fId                :: !(Maybe Word64)
    , _fAllowed           :: !(Maybe [FirewallItemAllowed])
    , _fDescription       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Firewall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fSourceTags'
--
-- * 'fKind'
--
-- * 'fTargetTags'
--
-- * 'fNetwork'
--
-- * 'fSourceRanges'
--
-- * 'fSelfLink'
--
-- * 'fName'
--
-- * 'fCreationTimestamp'
--
-- * 'fId'
--
-- * 'fAllowed'
--
-- * 'fDescription'
firewall
    :: Firewall
firewall =
    Firewall
    { _fSourceTags = Nothing
    , _fKind = "compute#firewall"
    , _fTargetTags = Nothing
    , _fNetwork = Nothing
    , _fSourceRanges = Nothing
    , _fSelfLink = Nothing
    , _fName = Nothing
    , _fCreationTimestamp = Nothing
    , _fId = Nothing
    , _fAllowed = Nothing
    , _fDescription = Nothing
    }

-- | A list of instance tags which this rule applies to. One or both of
-- sourceRanges and sourceTags may be set. If both properties are set, an
-- inbound connection is allowed if the range matches the sourceRanges OR
-- the tag of the source matches the sourceTags property. The connection
-- does not need to match both properties.
fSourceTags :: Lens' Firewall [Text]
fSourceTags
  = lens _fSourceTags (\ s a -> s{_fSourceTags = a}) .
      _Default
      . _Coerce

-- | [Output Ony] Type of the resource. Always compute#firewall for firewall
-- rules.
fKind :: Lens' Firewall Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | A list of instance tags indicating sets of instances located in the
-- network that may make network connections as specified in allowed[]. If
-- no targetTags are specified, the firewall rule applies to all instances
-- on the specified network.
fTargetTags :: Lens' Firewall [Text]
fTargetTags
  = lens _fTargetTags (\ s a -> s{_fTargetTags = a}) .
      _Default
      . _Coerce

-- | URL of the network resource for this firewall rule. This field is
-- required for creating an instance but optional when creating a firewall
-- rule. If not specified when creating a firewall rule, the default
-- network is used: global\/networks\/default If you choose to specify this
-- property, you can specify the network as a full or partial URL. For
-- example, the following are all valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/myproject\/global\/networks\/my-network
-- - projects\/myproject\/global\/networks\/my-network -
-- global\/networks\/default
fNetwork :: Lens' Firewall (Maybe Text)
fNetwork = lens _fNetwork (\ s a -> s{_fNetwork = a})

-- | The IP address blocks that this rule applies to, expressed in CIDR
-- format. One or both of sourceRanges and sourceTags may be set. If both
-- properties are set, an inbound connection is allowed if the range
-- matches the sourceRanges OR the tag of the source matches the sourceTags
-- property. The connection does not need to match both properties.
fSourceRanges :: Lens' Firewall [Text]
fSourceRanges
  = lens _fSourceRanges
      (\ s a -> s{_fSourceRanges = a})
      . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
fSelfLink :: Lens' Firewall (Maybe Text)
fSelfLink
  = lens _fSelfLink (\ s a -> s{_fSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
fName :: Lens' Firewall (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
fCreationTimestamp :: Lens' Firewall (Maybe Text)
fCreationTimestamp
  = lens _fCreationTimestamp
      (\ s a -> s{_fCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
fId :: Lens' Firewall (Maybe Word64)
fId = lens _fId (\ s a -> s{_fId = a})

-- | The list of rules specified by this firewall. Each rule specifies a
-- protocol and port-range tuple that describes a permitted connection.
fAllowed :: Lens' Firewall [FirewallItemAllowed]
fAllowed
  = lens _fAllowed (\ s a -> s{_fAllowed = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
fDescription :: Lens' Firewall (Maybe Text)
fDescription
  = lens _fDescription (\ s a -> s{_fDescription = a})

--
-- /See:/ 'firewallItemAllowed' smart constructor.
data FirewallItemAllowed = FirewallItemAllowed
    { _fiaIPProtocol :: !(Maybe Text)
    , _fiaPorts      :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallItemAllowed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiaIPProtocol'
--
-- * 'fiaPorts'
firewallItemAllowed
    :: FirewallItemAllowed
firewallItemAllowed =
    FirewallItemAllowed
    { _fiaIPProtocol = Nothing
    , _fiaPorts = Nothing
    }

-- | The IP protocol that is allowed for this rule. The protocol type is
-- required when creating a firewall. This value can either be one of the
-- following well known protocol strings (tcp, udp, icmp, esp, ah, sctp),
-- or the IP protocol number.
fiaIPProtocol :: Lens' FirewallItemAllowed (Maybe Text)
fiaIPProtocol
  = lens _fiaIPProtocol
      (\ s a -> s{_fiaIPProtocol = a})

-- | An optional list of ports which are allowed. This field is only
-- applicable for UDP or TCP protocol. Each entry must be either an integer
-- or a range. If not specified, connections through any port are allowed
-- Example inputs include: [\"22\"], [\"80\",\"443\"], and
-- [\"12345-12349\"].
fiaPorts :: Lens' FirewallItemAllowed [Text]
fiaPorts
  = lens _fiaPorts (\ s a -> s{_fiaPorts = a}) .
      _Default
      . _Coerce

-- | Contains a list of Firewall resources.
--
-- /See:/ 'firewallList' smart constructor.
data FirewallList = FirewallList
    { _flNextPageToken :: !(Maybe Text)
    , _flKind          :: !Text
    , _flItems         :: !(Maybe [Maybe Firewall])
    , _flSelfLink      :: !(Maybe Text)
    , _flId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flNextPageToken'
--
-- * 'flKind'
--
-- * 'flItems'
--
-- * 'flSelfLink'
--
-- * 'flId'
firewallList
    :: FirewallList
firewallList =
    FirewallList
    { _flNextPageToken = Nothing
    , _flKind = "compute#firewallList"
    , _flItems = Nothing
    , _flSelfLink = Nothing
    , _flId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
flNextPageToken :: Lens' FirewallList (Maybe Text)
flNextPageToken
  = lens _flNextPageToken
      (\ s a -> s{_flNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#firewallList for lists of
-- firewalls.
flKind :: Lens' FirewallList Text
flKind = lens _flKind (\ s a -> s{_flKind = a})

-- | [Output Only] A list of Firewall resources.
flItems :: Lens' FirewallList [Maybe Firewall]
flItems
  = lens _flItems (\ s a -> s{_flItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
flSelfLink :: Lens' FirewallList (Maybe Text)
flSelfLink
  = lens _flSelfLink (\ s a -> s{_flSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
flId :: Lens' FirewallList (Maybe Text)
flId = lens _flId (\ s a -> s{_flId = a})

-- | A ForwardingRule resource. A ForwardingRule resource specifies which
-- pool of target virtual machines to forward a packet to if it matches the
-- given [IPAddress, IPProtocol, portRange] tuple.
--
-- /See:/ 'forwardingRule' smart constructor.
data ForwardingRule = ForwardingRule
    { _frIPAddress         :: !(Maybe Text)
    , _frKind              :: !Text
    , _frPortRange         :: !(Maybe Text)
    , _frSelfLink          :: !(Maybe Text)
    , _frName              :: !(Maybe Text)
    , _frIPProtocol        :: !(Maybe ForwardingRuleIPProtocol)
    , _frCreationTimestamp :: !(Maybe Text)
    , _frId                :: !(Maybe Word64)
    , _frRegion            :: !(Maybe Text)
    , _frDescription       :: !(Maybe Text)
    , _frTarget            :: !(Maybe Text)
    }

-- | Creates a value of 'ForwardingRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frIPAddress'
--
-- * 'frKind'
--
-- * 'frPortRange'
--
-- * 'frSelfLink'
--
-- * 'frName'
--
-- * 'frIPProtocol'
--
-- * 'frCreationTimestamp'
--
-- * 'frId'
--
-- * 'frRegion'
--
-- * 'frDescription'
--
-- * 'frTarget'
forwardingRule
    :: ForwardingRule
forwardingRule =
    ForwardingRule
    { _frIPAddress = Nothing
    , _frKind = "compute#forwardingRule"
    , _frPortRange = Nothing
    , _frSelfLink = Nothing
    , _frName = Nothing
    , _frIPProtocol = Nothing
    , _frCreationTimestamp = Nothing
    , _frId = Nothing
    , _frRegion = Nothing
    , _frDescription = Nothing
    , _frTarget = Nothing
    }

-- | Value of the reserved IP address that this forwarding rule is serving on
-- behalf of. For global forwarding rules, the address must be a global IP;
-- for regional forwarding rules, the address must live in the same region
-- as the forwarding rule. If left empty (default value), an ephemeral IP
-- from the same scope (global or regional) will be assigned.
frIPAddress :: Lens' ForwardingRule (Maybe Text)
frIPAddress
  = lens _frIPAddress (\ s a -> s{_frIPAddress = a})

-- | Type of the resource.
frKind :: Lens' ForwardingRule Text
frKind = lens _frKind (\ s a -> s{_frKind = a})

-- | Applicable only when \`IPProtocol\` is TCP, UDP, or SCTP, only packets
-- addressed to ports in the specified range will be forwarded to target.
-- If portRange is left empty (default value), all ports are forwarded.
-- Forwarding rules with the same \`[IPAddress, IPProtocol]\` pair must
-- have disjoint port ranges.
frPortRange :: Lens' ForwardingRule (Maybe Text)
frPortRange
  = lens _frPortRange (\ s a -> s{_frPortRange = a})

-- | [Output Only] Server-defined URL for the resource.
frSelfLink :: Lens' ForwardingRule (Maybe Text)
frSelfLink
  = lens _frSelfLink (\ s a -> s{_frSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
frName :: Lens' ForwardingRule (Maybe Text)
frName = lens _frName (\ s a -> s{_frName = a})

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH or SCTP.
frIPProtocol :: Lens' ForwardingRule (Maybe ForwardingRuleIPProtocol)
frIPProtocol
  = lens _frIPProtocol (\ s a -> s{_frIPProtocol = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
frCreationTimestamp :: Lens' ForwardingRule (Maybe Text)
frCreationTimestamp
  = lens _frCreationTimestamp
      (\ s a -> s{_frCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
frId :: Lens' ForwardingRule (Maybe Word64)
frId = lens _frId (\ s a -> s{_frId = a})

-- | [Output Only] URL of the region where the regional forwarding rule
-- resides. This field is not applicable to global forwarding rules.
frRegion :: Lens' ForwardingRule (Maybe Text)
frRegion = lens _frRegion (\ s a -> s{_frRegion = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
frDescription :: Lens' ForwardingRule (Maybe Text)
frDescription
  = lens _frDescription
      (\ s a -> s{_frDescription = a})

-- | The URL of the target resource to receive the matched traffic. For
-- regional forwarding rules, this target must live in the same region as
-- the forwarding rule. For global forwarding rules, this target must be a
-- global TargetHttpProxy or TargetHttpsProxy resource.
frTarget :: Lens' ForwardingRule (Maybe Text)
frTarget = lens _frTarget (\ s a -> s{_frTarget = a})

--
-- /See:/ 'forwardingRuleAggregatedList' smart constructor.
data ForwardingRuleAggregatedList = ForwardingRuleAggregatedList
    { _fralNextPageToken :: !(Maybe Text)
    , _fralKind          :: !Text
    , _fralItems         :: !(Maybe ForwardingRuleAggregatedListItems)
    , _fralSelfLink      :: !(Maybe Text)
    , _fralId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRuleAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fralNextPageToken'
--
-- * 'fralKind'
--
-- * 'fralItems'
--
-- * 'fralSelfLink'
--
-- * 'fralId'
forwardingRuleAggregatedList
    :: ForwardingRuleAggregatedList
forwardingRuleAggregatedList =
    ForwardingRuleAggregatedList
    { _fralNextPageToken = Nothing
    , _fralKind = "compute#forwardingRuleAggregatedList"
    , _fralItems = Nothing
    , _fralSelfLink = Nothing
    , _fralId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
fralNextPageToken :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralNextPageToken
  = lens _fralNextPageToken
      (\ s a -> s{_fralNextPageToken = a})

-- | Type of resource.
fralKind :: Lens' ForwardingRuleAggregatedList Text
fralKind = lens _fralKind (\ s a -> s{_fralKind = a})

-- | A map of scoped forwarding rule lists.
fralItems :: Lens' ForwardingRuleAggregatedList (Maybe ForwardingRuleAggregatedListItems)
fralItems
  = lens _fralItems (\ s a -> s{_fralItems = a})

-- | [Output Only] Server-defined URL for this resource.
fralSelfLink :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralSelfLink
  = lens _fralSelfLink (\ s a -> s{_fralSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
fralId :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralId = lens _fralId (\ s a -> s{_fralId = a})

-- | A map of scoped forwarding rule lists.
--
-- /See:/ 'forwardingRuleAggregatedListItems' smart constructor.
data ForwardingRuleAggregatedListItems =
    ForwardingRuleAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRuleAggregatedListItems' with the minimum fields required to make a request.
--
forwardingRuleAggregatedListItems
    :: ForwardingRuleAggregatedListItems
forwardingRuleAggregatedListItems = ForwardingRuleAggregatedListItems

-- | Contains a list of ForwardingRule resources.
--
-- /See:/ 'forwardingRuleList' smart constructor.
data ForwardingRuleList = ForwardingRuleList
    { _frlNextPageToken :: !(Maybe Text)
    , _frlKind          :: !Text
    , _frlItems         :: !(Maybe [Maybe ForwardingRule])
    , _frlSelfLink      :: !(Maybe Text)
    , _frlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRuleList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frlNextPageToken'
--
-- * 'frlKind'
--
-- * 'frlItems'
--
-- * 'frlSelfLink'
--
-- * 'frlId'
forwardingRuleList
    :: ForwardingRuleList
forwardingRuleList =
    ForwardingRuleList
    { _frlNextPageToken = Nothing
    , _frlKind = "compute#forwardingRuleList"
    , _frlItems = Nothing
    , _frlSelfLink = Nothing
    , _frlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
frlNextPageToken :: Lens' ForwardingRuleList (Maybe Text)
frlNextPageToken
  = lens _frlNextPageToken
      (\ s a -> s{_frlNextPageToken = a})

-- | Type of resource.
frlKind :: Lens' ForwardingRuleList Text
frlKind = lens _frlKind (\ s a -> s{_frlKind = a})

-- | A list of ForwardingRule resources.
frlItems :: Lens' ForwardingRuleList [Maybe ForwardingRule]
frlItems
  = lens _frlItems (\ s a -> s{_frlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
frlSelfLink :: Lens' ForwardingRuleList (Maybe Text)
frlSelfLink
  = lens _frlSelfLink (\ s a -> s{_frlSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Set by the server.
frlId :: Lens' ForwardingRuleList (Maybe Text)
frlId = lens _frlId (\ s a -> s{_frlId = a})

--
-- /See:/ 'forwardingRulesScopedList' smart constructor.
data ForwardingRulesScopedList = ForwardingRulesScopedList
    { _frslWarning         :: !(Maybe ForwardingRulesScopedListWarning)
    , _frslForwardingRules :: !(Maybe [Maybe ForwardingRule])
    }

-- | Creates a value of 'ForwardingRulesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frslWarning'
--
-- * 'frslForwardingRules'
forwardingRulesScopedList
    :: ForwardingRulesScopedList
forwardingRulesScopedList =
    ForwardingRulesScopedList
    { _frslWarning = Nothing
    , _frslForwardingRules = Nothing
    }

-- | Informational warning which replaces the list of forwarding rules when
-- the list is empty.
frslWarning :: Lens' ForwardingRulesScopedList (Maybe ForwardingRulesScopedListWarning)
frslWarning
  = lens _frslWarning (\ s a -> s{_frslWarning = a})

-- | List of forwarding rules contained in this scope.
frslForwardingRules :: Lens' ForwardingRulesScopedList [Maybe ForwardingRule]
frslForwardingRules
  = lens _frslForwardingRules
      (\ s a -> s{_frslForwardingRules = a})
      . _Default
      . _Coerce

--
-- /See:/ 'forwardingRulesScopedListItemDataWarning' smart constructor.
data ForwardingRulesScopedListItemDataWarning = ForwardingRulesScopedListItemDataWarning
    { _frslidwValue :: !(Maybe Text)
    , _frslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frslidwValue'
--
-- * 'frslidwKey'
forwardingRulesScopedListItemDataWarning
    :: ForwardingRulesScopedListItemDataWarning
forwardingRulesScopedListItemDataWarning =
    ForwardingRulesScopedListItemDataWarning
    { _frslidwValue = Nothing
    , _frslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
frslidwValue :: Lens' ForwardingRulesScopedListItemDataWarning (Maybe Text)
frslidwValue
  = lens _frslidwValue (\ s a -> s{_frslidwValue = a})

-- | [Output Only] A key for the warning data.
frslidwKey :: Lens' ForwardingRulesScopedListItemDataWarning (Maybe Text)
frslidwKey
  = lens _frslidwKey (\ s a -> s{_frslidwKey = a})

-- | Informational warning which replaces the list of forwarding rules when
-- the list is empty.
--
-- /See:/ 'forwardingRulesScopedListWarning' smart constructor.
data ForwardingRulesScopedListWarning = ForwardingRulesScopedListWarning
    { _frslwData    :: !(Maybe [ForwardingRulesScopedListItemDataWarning])
    , _frslwCode    :: !(Maybe ForwardingRulesScopedListCodeWarning)
    , _frslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'ForwardingRulesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frslwData'
--
-- * 'frslwCode'
--
-- * 'frslwMessage'
forwardingRulesScopedListWarning
    :: ForwardingRulesScopedListWarning
forwardingRulesScopedListWarning =
    ForwardingRulesScopedListWarning
    { _frslwData = Nothing
    , _frslwCode = Nothing
    , _frslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
frslwData :: Lens' ForwardingRulesScopedListWarning [ForwardingRulesScopedListItemDataWarning]
frslwData
  = lens _frslwData (\ s a -> s{_frslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
frslwCode :: Lens' ForwardingRulesScopedListWarning (Maybe ForwardingRulesScopedListCodeWarning)
frslwCode
  = lens _frslwCode (\ s a -> s{_frslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
frslwMessage :: Lens' ForwardingRulesScopedListWarning (Maybe Text)
frslwMessage
  = lens _frslwMessage (\ s a -> s{_frslwMessage = a})

--
-- /See:/ 'healthCheckReference' smart constructor.
newtype HealthCheckReference = HealthCheckReference
    { _hcrHealthCheck :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthCheckReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcrHealthCheck'
healthCheckReference
    :: HealthCheckReference
healthCheckReference =
    HealthCheckReference
    { _hcrHealthCheck = Nothing
    }

hcrHealthCheck :: Lens' HealthCheckReference (Maybe Text)
hcrHealthCheck
  = lens _hcrHealthCheck
      (\ s a -> s{_hcrHealthCheck = a})

--
-- /See:/ 'healthStatus' smart constructor.
data HealthStatus = HealthStatus
    { _hsIpAddress   :: !(Maybe Text)
    , _hsHealthState :: !(Maybe HealthStatusHealthState)
    , _hsPort        :: !(Maybe Int32)
    , _hsInstance    :: !(Maybe Text)
    }

-- | Creates a value of 'HealthStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsIpAddress'
--
-- * 'hsHealthState'
--
-- * 'hsPort'
--
-- * 'hsInstance'
healthStatus
    :: HealthStatus
healthStatus =
    HealthStatus
    { _hsIpAddress = Nothing
    , _hsHealthState = Nothing
    , _hsPort = Nothing
    , _hsInstance = Nothing
    }

-- | The IP address represented by this resource.
hsIpAddress :: Lens' HealthStatus (Maybe Text)
hsIpAddress
  = lens _hsIpAddress (\ s a -> s{_hsIpAddress = a})

-- | Health state of the instance.
hsHealthState :: Lens' HealthStatus (Maybe HealthStatusHealthState)
hsHealthState
  = lens _hsHealthState
      (\ s a -> s{_hsHealthState = a})

-- | The port on the instance.
hsPort :: Lens' HealthStatus (Maybe Int32)
hsPort = lens _hsPort (\ s a -> s{_hsPort = a})

-- | URL of the instance resource.
hsInstance :: Lens' HealthStatus (Maybe Text)
hsInstance
  = lens _hsInstance (\ s a -> s{_hsInstance = a})

-- | UrlMaps A host-matching rule for a URL. If matched, will use the named
-- PathMatcher to select the BackendService.
--
-- /See:/ 'hostRule' smart constructor.
data HostRule = HostRule
    { _hrHosts       :: !(Maybe [Text])
    , _hrDescription :: !(Maybe Text)
    , _hrPathMatcher :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HostRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrHosts'
--
-- * 'hrDescription'
--
-- * 'hrPathMatcher'
hostRule
    :: HostRule
hostRule =
    HostRule
    { _hrHosts = Nothing
    , _hrDescription = Nothing
    , _hrPathMatcher = Nothing
    }

-- | The list of host patterns to match. They must be valid hostnames except
-- that they may start with *. or *-. The * acts like a glob and will match
-- any string of atoms (separated by .s and -s) to the left.
hrHosts :: Lens' HostRule [Text]
hrHosts
  = lens _hrHosts (\ s a -> s{_hrHosts = a}) . _Default
      . _Coerce

-- | An optional textual description.
hrDescription :: Lens' HostRule (Maybe Text)
hrDescription
  = lens _hrDescription
      (\ s a -> s{_hrDescription = a})

-- | The name of the PathMatcher to match the path portion of the URL, if the
-- this hostRule matches the URL\'s host portion.
hrPathMatcher :: Lens' HostRule (Maybe Text)
hrPathMatcher
  = lens _hrPathMatcher
      (\ s a -> s{_hrPathMatcher = a})

-- | An HttpHealthCheck resource. This resource defines a template for how
-- individual instances should be checked for health, via HTTP.
--
-- /See:/ 'httpHealthCheck' smart constructor.
data HttpHealthCheck = HttpHealthCheck
    { _hhcHealthyThreshold   :: !(Maybe Int32)
    , _hhcKind               :: !Text
    , _hhcRequestPath        :: !(Maybe Text)
    , _hhcSelfLink           :: !(Maybe Text)
    , _hhcCheckIntervalSec   :: !(Maybe Int32)
    , _hhcName               :: !(Maybe Text)
    , _hhcCreationTimestamp  :: !(Maybe Text)
    , _hhcId                 :: !(Maybe Word64)
    , _hhcHost               :: !(Maybe Text)
    , _hhcTimeoutSec         :: !(Maybe Int32)
    , _hhcDescription        :: !(Maybe Text)
    , _hhcUnhealthyThreshold :: !(Maybe Int32)
    , _hhcPort               :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HttpHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcHealthyThreshold'
--
-- * 'hhcKind'
--
-- * 'hhcRequestPath'
--
-- * 'hhcSelfLink'
--
-- * 'hhcCheckIntervalSec'
--
-- * 'hhcName'
--
-- * 'hhcCreationTimestamp'
--
-- * 'hhcId'
--
-- * 'hhcHost'
--
-- * 'hhcTimeoutSec'
--
-- * 'hhcDescription'
--
-- * 'hhcUnhealthyThreshold'
--
-- * 'hhcPort'
httpHealthCheck
    :: HttpHealthCheck
httpHealthCheck =
    HttpHealthCheck
    { _hhcHealthyThreshold = Nothing
    , _hhcKind = "compute#httpHealthCheck"
    , _hhcRequestPath = Nothing
    , _hhcSelfLink = Nothing
    , _hhcCheckIntervalSec = Nothing
    , _hhcName = Nothing
    , _hhcCreationTimestamp = Nothing
    , _hhcId = Nothing
    , _hhcHost = Nothing
    , _hhcTimeoutSec = Nothing
    , _hhcDescription = Nothing
    , _hhcUnhealthyThreshold = Nothing
    , _hhcPort = Nothing
    }

-- | A so-far unhealthy instance will be marked healthy after this many
-- consecutive successes. The default value is 2.
hhcHealthyThreshold :: Lens' HttpHealthCheck (Maybe Int32)
hhcHealthyThreshold
  = lens _hhcHealthyThreshold
      (\ s a -> s{_hhcHealthyThreshold = a})

-- | Type of the resource.
hhcKind :: Lens' HttpHealthCheck Text
hhcKind = lens _hhcKind (\ s a -> s{_hhcKind = a})

-- | The request path of the HTTP health check request. The default value is
-- \"\/\".
hhcRequestPath :: Lens' HttpHealthCheck (Maybe Text)
hhcRequestPath
  = lens _hhcRequestPath
      (\ s a -> s{_hhcRequestPath = a})

-- | [Output Only] Server-defined URL for the resource.
hhcSelfLink :: Lens' HttpHealthCheck (Maybe Text)
hhcSelfLink
  = lens _hhcSelfLink (\ s a -> s{_hhcSelfLink = a})

-- | How often (in seconds) to send a health check. The default value is 5
-- seconds.
hhcCheckIntervalSec :: Lens' HttpHealthCheck (Maybe Int32)
hhcCheckIntervalSec
  = lens _hhcCheckIntervalSec
      (\ s a -> s{_hhcCheckIntervalSec = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
hhcName :: Lens' HttpHealthCheck (Maybe Text)
hhcName = lens _hhcName (\ s a -> s{_hhcName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
hhcCreationTimestamp :: Lens' HttpHealthCheck (Maybe Text)
hhcCreationTimestamp
  = lens _hhcCreationTimestamp
      (\ s a -> s{_hhcCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
hhcId :: Lens' HttpHealthCheck (Maybe Word64)
hhcId = lens _hhcId (\ s a -> s{_hhcId = a})

-- | The value of the host header in the HTTP health check request. If left
-- empty (default value), the public IP on behalf of which this health
-- check is performed will be used.
hhcHost :: Lens' HttpHealthCheck (Maybe Text)
hhcHost = lens _hhcHost (\ s a -> s{_hhcHost = a})

-- | How long (in seconds) to wait before claiming failure. The default value
-- is 5 seconds. It is invalid for timeoutSec to have greater value than
-- checkIntervalSec.
hhcTimeoutSec :: Lens' HttpHealthCheck (Maybe Int32)
hhcTimeoutSec
  = lens _hhcTimeoutSec
      (\ s a -> s{_hhcTimeoutSec = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
hhcDescription :: Lens' HttpHealthCheck (Maybe Text)
hhcDescription
  = lens _hhcDescription
      (\ s a -> s{_hhcDescription = a})

-- | A so-far healthy instance will be marked unhealthy after this many
-- consecutive failures. The default value is 2.
hhcUnhealthyThreshold :: Lens' HttpHealthCheck (Maybe Int32)
hhcUnhealthyThreshold
  = lens _hhcUnhealthyThreshold
      (\ s a -> s{_hhcUnhealthyThreshold = a})

-- | The TCP port number for the HTTP health check request. The default value
-- is 80.
hhcPort :: Lens' HttpHealthCheck (Maybe Int32)
hhcPort = lens _hhcPort (\ s a -> s{_hhcPort = a})

-- | Contains a list of HttpHealthCheck resources.
--
-- /See:/ 'httpHealthCheckList' smart constructor.
data HttpHealthCheckList = HttpHealthCheckList
    { _hhclNextPageToken :: !(Maybe Text)
    , _hhclKind          :: !Text
    , _hhclItems         :: !(Maybe [Maybe HttpHealthCheck])
    , _hhclSelfLink      :: !(Maybe Text)
    , _hhclId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HttpHealthCheckList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhclNextPageToken'
--
-- * 'hhclKind'
--
-- * 'hhclItems'
--
-- * 'hhclSelfLink'
--
-- * 'hhclId'
httpHealthCheckList
    :: HttpHealthCheckList
httpHealthCheckList =
    HttpHealthCheckList
    { _hhclNextPageToken = Nothing
    , _hhclKind = "compute#httpHealthCheckList"
    , _hhclItems = Nothing
    , _hhclSelfLink = Nothing
    , _hhclId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
hhclNextPageToken :: Lens' HttpHealthCheckList (Maybe Text)
hhclNextPageToken
  = lens _hhclNextPageToken
      (\ s a -> s{_hhclNextPageToken = a})

-- | Type of resource.
hhclKind :: Lens' HttpHealthCheckList Text
hhclKind = lens _hhclKind (\ s a -> s{_hhclKind = a})

-- | A list of HttpHealthCheck resources.
hhclItems :: Lens' HttpHealthCheckList [Maybe HttpHealthCheck]
hhclItems
  = lens _hhclItems (\ s a -> s{_hhclItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
hhclSelfLink :: Lens' HttpHealthCheckList (Maybe Text)
hhclSelfLink
  = lens _hhclSelfLink (\ s a -> s{_hhclSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
hhclId :: Lens' HttpHealthCheckList (Maybe Text)
hhclId = lens _hhclId (\ s a -> s{_hhclId = a})

-- | An Image resource.
--
-- /See:/ 'image' smart constructor.
data Image = Image
    { _imaStatus            :: !(Maybe ImageStatus)
    , _imaDiskSizeGb        :: !(Maybe Int64)
    , _imaSourceType        :: !ImageSourceType
    , _imaSourceDiskId      :: !(Maybe Text)
    , _imaKind              :: !Text
    , _imaArchiveSizeBytes  :: !(Maybe Int64)
    , _imaRawDisk           :: !(Maybe ImageRawDisk)
    , _imaSelfLink          :: !(Maybe Text)
    , _imaName              :: !(Maybe Text)
    , _imaCreationTimestamp :: !(Maybe Text)
    , _imaId                :: !(Maybe Word64)
    , _imaLicenses          :: !(Maybe [Text])
    , _imaSourceDisk        :: !(Maybe Text)
    , _imaDescription       :: !(Maybe Text)
    , _imaDeprecated        :: !(Maybe (Maybe DeprecationStatus))
    }

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imaStatus'
--
-- * 'imaDiskSizeGb'
--
-- * 'imaSourceType'
--
-- * 'imaSourceDiskId'
--
-- * 'imaKind'
--
-- * 'imaArchiveSizeBytes'
--
-- * 'imaRawDisk'
--
-- * 'imaSelfLink'
--
-- * 'imaName'
--
-- * 'imaCreationTimestamp'
--
-- * 'imaId'
--
-- * 'imaLicenses'
--
-- * 'imaSourceDisk'
--
-- * 'imaDescription'
--
-- * 'imaDeprecated'
image
    :: Image
image =
    Image
    { _imaStatus = Nothing
    , _imaDiskSizeGb = Nothing
    , _imaSourceType = ISTRaw
    , _imaSourceDiskId = Nothing
    , _imaKind = "compute#image"
    , _imaArchiveSizeBytes = Nothing
    , _imaRawDisk = Nothing
    , _imaSelfLink = Nothing
    , _imaName = Nothing
    , _imaCreationTimestamp = Nothing
    , _imaId = Nothing
    , _imaLicenses = Nothing
    , _imaSourceDisk = Nothing
    , _imaDescription = Nothing
    , _imaDeprecated = Nothing
    }

-- | [Output Only] The status of the image. An image can be used to create
-- other resources, such as instances, only after the image has been
-- successfully created and the status is set to READY. Possible values are
-- FAILED, PENDING, or READY.
imaStatus :: Lens' Image (Maybe ImageStatus)
imaStatus
  = lens _imaStatus (\ s a -> s{_imaStatus = a})

-- | Size of the image when restored onto a persistent disk (in GB).
imaDiskSizeGb :: Lens' Image (Maybe Int64)
imaDiskSizeGb
  = lens _imaDiskSizeGb
      (\ s a -> s{_imaDiskSizeGb = a})

-- | The type of the image used to create this disk. The default and only
-- value is RAW
imaSourceType :: Lens' Image ImageSourceType
imaSourceType
  = lens _imaSourceType
      (\ s a -> s{_imaSourceType = a})

-- | The ID value of the disk used to create this image. This value may be
-- used to determine whether the image was taken from the current or a
-- previous instance of a given disk name.
imaSourceDiskId :: Lens' Image (Maybe Text)
imaSourceDiskId
  = lens _imaSourceDiskId
      (\ s a -> s{_imaSourceDiskId = a})

-- | [Output Only] Type of the resource. Always compute#image for images.
imaKind :: Lens' Image Text
imaKind = lens _imaKind (\ s a -> s{_imaKind = a})

-- | Size of the image tar.gz archive stored in Google Cloud Storage (in
-- bytes).
imaArchiveSizeBytes :: Lens' Image (Maybe Int64)
imaArchiveSizeBytes
  = lens _imaArchiveSizeBytes
      (\ s a -> s{_imaArchiveSizeBytes = a})

-- | The parameters of the raw disk image.
imaRawDisk :: Lens' Image (Maybe ImageRawDisk)
imaRawDisk
  = lens _imaRawDisk (\ s a -> s{_imaRawDisk = a})

-- | [Output Only] Server-defined URL for the resource.
imaSelfLink :: Lens' Image (Maybe Text)
imaSelfLink
  = lens _imaSelfLink (\ s a -> s{_imaSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
imaName :: Lens' Image (Maybe Text)
imaName = lens _imaName (\ s a -> s{_imaName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
imaCreationTimestamp :: Lens' Image (Maybe Text)
imaCreationTimestamp
  = lens _imaCreationTimestamp
      (\ s a -> s{_imaCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
imaId :: Lens' Image (Maybe Word64)
imaId = lens _imaId (\ s a -> s{_imaId = a})

-- | Any applicable publicly visible licenses.
imaLicenses :: Lens' Image [Text]
imaLicenses
  = lens _imaLicenses (\ s a -> s{_imaLicenses = a}) .
      _Default
      . _Coerce

-- | URL of the The source disk used to create this image. This can be a full
-- or valid partial URL. You must provide either this property or the
-- rawDisk.source property but not both to create an image. For example,
-- the following are valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/disk\/disk
-- - projects\/project\/zones\/zone\/disk\/disk - zones\/zone\/disks\/disk
imaSourceDisk :: Lens' Image (Maybe Text)
imaSourceDisk
  = lens _imaSourceDisk
      (\ s a -> s{_imaSourceDisk = a})

-- | Textual description of the resource; provided by the client when the
-- resource is created.
imaDescription :: Lens' Image (Maybe Text)
imaDescription
  = lens _imaDescription
      (\ s a -> s{_imaDescription = a})

-- | The deprecation status associated with this image.
imaDeprecated :: Lens' Image (Maybe (Maybe DeprecationStatus))
imaDeprecated
  = lens _imaDeprecated
      (\ s a -> s{_imaDeprecated = a})

-- | Contains a list of Image resources.
--
-- /See:/ 'imageList' smart constructor.
data ImageList = ImageList
    { _illNextPageToken :: !(Maybe Text)
    , _illKind          :: !Text
    , _illItems         :: !(Maybe [Maybe Image])
    , _illSelfLink      :: !(Maybe Text)
    , _illId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illNextPageToken'
--
-- * 'illKind'
--
-- * 'illItems'
--
-- * 'illSelfLink'
--
-- * 'illId'
imageList
    :: ImageList
imageList =
    ImageList
    { _illNextPageToken = Nothing
    , _illKind = "compute#imageList"
    , _illItems = Nothing
    , _illSelfLink = Nothing
    , _illId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
illNextPageToken :: Lens' ImageList (Maybe Text)
illNextPageToken
  = lens _illNextPageToken
      (\ s a -> s{_illNextPageToken = a})

-- | Type of resource.
illKind :: Lens' ImageList Text
illKind = lens _illKind (\ s a -> s{_illKind = a})

-- | A list of Image resources.
illItems :: Lens' ImageList [Maybe Image]
illItems
  = lens _illItems (\ s a -> s{_illItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
illSelfLink :: Lens' ImageList (Maybe Text)
illSelfLink
  = lens _illSelfLink (\ s a -> s{_illSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
illId :: Lens' ImageList (Maybe Text)
illId = lens _illId (\ s a -> s{_illId = a})

-- | The parameters of the raw disk image.
--
-- /See:/ 'imageRawDisk' smart constructor.
data ImageRawDisk = ImageRawDisk
    { _irdContainerType :: !(Maybe ImageContainerTypeRawDisk)
    , _irdSource        :: !(Maybe Text)
    , _irdSha1Checksum  :: !(Maybe Text)
    }

-- | Creates a value of 'ImageRawDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irdContainerType'
--
-- * 'irdSource'
--
-- * 'irdSha1Checksum'
imageRawDisk
    :: ImageRawDisk
imageRawDisk =
    ImageRawDisk
    { _irdContainerType = Nothing
    , _irdSource = Nothing
    , _irdSha1Checksum = Nothing
    }

-- | The format used to encode and transmit the block device, which should be
-- TAR. This is just a container and transmission format and not a runtime
-- format. Provided by the client when the disk image is created.
irdContainerType :: Lens' ImageRawDisk (Maybe ImageContainerTypeRawDisk)
irdContainerType
  = lens _irdContainerType
      (\ s a -> s{_irdContainerType = a})

-- | The full Google Cloud Storage URL where the disk image is stored. You
-- must provide either this property or the sourceDisk property but not
-- both.
irdSource :: Lens' ImageRawDisk (Maybe Text)
irdSource
  = lens _irdSource (\ s a -> s{_irdSource = a})

-- | An optional SHA1 checksum of the disk image before unpackaging; provided
-- by the client when the disk image is created.
irdSha1Checksum :: Lens' ImageRawDisk (Maybe Text)
irdSha1Checksum
  = lens _irdSha1Checksum
      (\ s a -> s{_irdSha1Checksum = a})

-- | An Instance resource.
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance
    { _iStatus            :: !(Maybe InstanceStatus)
    , _iServiceAccounts   :: !(Maybe [Maybe ServiceAccount])
    , _iNetworkInterfaces :: !(Maybe [Maybe NetworkInterface])
    , _iKind              :: !Text
    , _iZone              :: !(Maybe Text)
    , _iCpuPlatform       :: !(Maybe Text)
    , _iSelfLink          :: !(Maybe Text)
    , _iName              :: !(Maybe Text)
    , _iStatusMessage     :: !(Maybe Text)
    , _iCreationTimestamp :: !(Maybe Text)
    , _iMachineType       :: !(Maybe Text)
    , _iMetadata          :: !(Maybe (Maybe Metadata))
    , _iId                :: !(Maybe Word64)
    , _iScheduling        :: !(Maybe (Maybe Scheduling))
    , _iDisks             :: !(Maybe [Maybe AttachedDisk])
    , _iCanIpForward      :: !(Maybe Bool)
    , _iDescription       :: !(Maybe Text)
    , _iTags              :: !(Maybe (Maybe Tags))
    }

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iStatus'
--
-- * 'iServiceAccounts'
--
-- * 'iNetworkInterfaces'
--
-- * 'iKind'
--
-- * 'iZone'
--
-- * 'iCpuPlatform'
--
-- * 'iSelfLink'
--
-- * 'iName'
--
-- * 'iStatusMessage'
--
-- * 'iCreationTimestamp'
--
-- * 'iMachineType'
--
-- * 'iMetadata'
--
-- * 'iId'
--
-- * 'iScheduling'
--
-- * 'iDisks'
--
-- * 'iCanIpForward'
--
-- * 'iDescription'
--
-- * 'iTags'
instance'
    :: Instance
instance' =
    Instance
    { _iStatus = Nothing
    , _iServiceAccounts = Nothing
    , _iNetworkInterfaces = Nothing
    , _iKind = "compute#instance"
    , _iZone = Nothing
    , _iCpuPlatform = Nothing
    , _iSelfLink = Nothing
    , _iName = Nothing
    , _iStatusMessage = Nothing
    , _iCreationTimestamp = Nothing
    , _iMachineType = Nothing
    , _iMetadata = Nothing
    , _iId = Nothing
    , _iScheduling = Nothing
    , _iDisks = Nothing
    , _iCanIpForward = Nothing
    , _iDescription = Nothing
    , _iTags = Nothing
    }

-- | [Output Only] The status of the instance. One of the following values:
-- PROVISIONING, STAGING, RUNNING, STOPPING, and TERMINATED.
iStatus :: Lens' Instance (Maybe InstanceStatus)
iStatus = lens _iStatus (\ s a -> s{_iStatus = a})

-- | A list of service accounts, with their specified scopes, authorized for
-- this instance. Service accounts generate access tokens that can be
-- accessed through the metadata server and used to authenticate
-- applications on the instance. See Authenticating from Google Compute
-- Engine for more information.
iServiceAccounts :: Lens' Instance [Maybe ServiceAccount]
iServiceAccounts
  = lens _iServiceAccounts
      (\ s a -> s{_iServiceAccounts = a})
      . _Default
      . _Coerce

-- | An array of configurations for this interface. This specifies how this
-- interface is configured to interact with other network services, such as
-- connecting to the internet.
iNetworkInterfaces :: Lens' Instance [Maybe NetworkInterface]
iNetworkInterfaces
  = lens _iNetworkInterfaces
      (\ s a -> s{_iNetworkInterfaces = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always compute#instance for
-- instances.
iKind :: Lens' Instance Text
iKind = lens _iKind (\ s a -> s{_iKind = a})

-- | [Output Only] URL of the zone where the instance resides.
iZone :: Lens' Instance (Maybe Text)
iZone = lens _iZone (\ s a -> s{_iZone = a})

-- | [Output Only] The CPU platform used by this instance.
iCpuPlatform :: Lens' Instance (Maybe Text)
iCpuPlatform
  = lens _iCpuPlatform (\ s a -> s{_iCpuPlatform = a})

-- | [Output Only] Server defined URL for this resource.
iSelfLink :: Lens' Instance (Maybe Text)
iSelfLink
  = lens _iSelfLink (\ s a -> s{_iSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | [Output Only] An optional, human-readable explanation of the status.
iStatusMessage :: Lens' Instance (Maybe Text)
iStatusMessage
  = lens _iStatusMessage
      (\ s a -> s{_iStatusMessage = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
iCreationTimestamp :: Lens' Instance (Maybe Text)
iCreationTimestamp
  = lens _iCreationTimestamp
      (\ s a -> s{_iCreationTimestamp = a})

-- | Full or partial URL of the machine type resource to use for this
-- instance. This is provided by the client when the instance is created.
-- For example, the following is a valid partial url:
-- zones\/zone\/machineTypes\/machine-type
iMachineType :: Lens' Instance (Maybe Text)
iMachineType
  = lens _iMachineType (\ s a -> s{_iMachineType = a})

-- | The metadata key\/value pairs assigned to this instance. This includes
-- custom metadata and predefined keys.
iMetadata :: Lens' Instance (Maybe (Maybe Metadata))
iMetadata
  = lens _iMetadata (\ s a -> s{_iMetadata = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
iId :: Lens' Instance (Maybe Word64)
iId = lens _iId (\ s a -> s{_iId = a})

-- | Scheduling options for this instance.
iScheduling :: Lens' Instance (Maybe (Maybe Scheduling))
iScheduling
  = lens _iScheduling (\ s a -> s{_iScheduling = a})

-- | Array of disks associated with this instance. Persistent disks must be
-- created before you can assign them.
iDisks :: Lens' Instance [Maybe AttachedDisk]
iDisks
  = lens _iDisks (\ s a -> s{_iDisks = a}) . _Default .
      _Coerce

-- | Allows this instance to send and receive packets with non-matching
-- destination or source IPs. This is required if you plan to use this
-- instance to forward routes. For more information, see Enabling IP
-- Forwarding.
iCanIpForward :: Lens' Instance (Maybe Bool)
iCanIpForward
  = lens _iCanIpForward
      (\ s a -> s{_iCanIpForward = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
iDescription :: Lens' Instance (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

-- | A list of tags to appy to this instance. Tags are used to identify valid
-- sources or targets for network firewalls and are specified by the client
-- during instance creation. The tags can be later modified by the setTags
-- method. Each tag within the list must comply with RFC1035.
iTags :: Lens' Instance (Maybe (Maybe Tags))
iTags = lens _iTags (\ s a -> s{_iTags = a})

--
-- /See:/ 'instanceAggregatedList' smart constructor.
data InstanceAggregatedList = InstanceAggregatedList
    { _ialNextPageToken :: !(Maybe Text)
    , _ialKind          :: !Text
    , _ialItems         :: !(Maybe InstanceAggregatedListItems)
    , _ialSelfLink      :: !(Maybe Text)
    , _ialId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialNextPageToken'
--
-- * 'ialKind'
--
-- * 'ialItems'
--
-- * 'ialSelfLink'
--
-- * 'ialId'
instanceAggregatedList
    :: InstanceAggregatedList
instanceAggregatedList =
    InstanceAggregatedList
    { _ialNextPageToken = Nothing
    , _ialKind = "compute#instanceAggregatedList"
    , _ialItems = Nothing
    , _ialSelfLink = Nothing
    , _ialId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
ialNextPageToken :: Lens' InstanceAggregatedList (Maybe Text)
ialNextPageToken
  = lens _ialNextPageToken
      (\ s a -> s{_ialNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#instanceAggregatedList
-- for aggregated lists of Instance resources.
ialKind :: Lens' InstanceAggregatedList Text
ialKind = lens _ialKind (\ s a -> s{_ialKind = a})

-- | [Output Only] A map of scoped instance lists.
ialItems :: Lens' InstanceAggregatedList (Maybe InstanceAggregatedListItems)
ialItems = lens _ialItems (\ s a -> s{_ialItems = a})

-- | [Output Only] Server defined URL for this resource.
ialSelfLink :: Lens' InstanceAggregatedList (Maybe Text)
ialSelfLink
  = lens _ialSelfLink (\ s a -> s{_ialSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
ialId :: Lens' InstanceAggregatedList (Maybe Text)
ialId = lens _ialId (\ s a -> s{_ialId = a})

-- | [Output Only] A map of scoped instance lists.
--
-- /See:/ 'instanceAggregatedListItems' smart constructor.
data InstanceAggregatedListItems =
    InstanceAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceAggregatedListItems' with the minimum fields required to make a request.
--
instanceAggregatedListItems
    :: InstanceAggregatedListItems
instanceAggregatedListItems = InstanceAggregatedListItems

--
-- /See:/ 'instanceGroup' smart constructor.
data InstanceGroup = InstanceGroup
    { _igSize              :: !(Maybe Int32)
    , _igKind              :: !Text
    , _igFingerprint       :: !(Maybe Word8)
    , _igNetwork           :: !(Maybe Text)
    , _igZone              :: !(Maybe Text)
    , _igSelfLink          :: !(Maybe Text)
    , _igName              :: !(Maybe Text)
    , _igCreationTimestamp :: !(Maybe Text)
    , _igId                :: !(Maybe Word64)
    , _igDescription       :: !(Maybe Text)
    , _igNamedPorts        :: !(Maybe [Maybe NamedPort])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igSize'
--
-- * 'igKind'
--
-- * 'igFingerprint'
--
-- * 'igNetwork'
--
-- * 'igZone'
--
-- * 'igSelfLink'
--
-- * 'igName'
--
-- * 'igCreationTimestamp'
--
-- * 'igId'
--
-- * 'igDescription'
--
-- * 'igNamedPorts'
instanceGroup
    :: InstanceGroup
instanceGroup =
    InstanceGroup
    { _igSize = Nothing
    , _igKind = "compute#instanceGroup"
    , _igFingerprint = Nothing
    , _igNetwork = Nothing
    , _igZone = Nothing
    , _igSelfLink = Nothing
    , _igName = Nothing
    , _igCreationTimestamp = Nothing
    , _igId = Nothing
    , _igDescription = Nothing
    , _igNamedPorts = Nothing
    }

-- | [Output Only] The total number of instances in the instance group.
igSize :: Lens' InstanceGroup (Maybe Int32)
igSize = lens _igSize (\ s a -> s{_igSize = a})

-- | [Output Only] The resource type, which is always compute#instanceGroup
-- for instance groups.
igKind :: Lens' InstanceGroup Text
igKind = lens _igKind (\ s a -> s{_igKind = a})

-- | [Output Only] The fingerprint of the named ports information. The system
-- uses this fingerprint to detect conflicts when multiple users change the
-- named ports information concurrently.
igFingerprint :: Lens' InstanceGroup (Maybe Word8)
igFingerprint
  = lens _igFingerprint
      (\ s a -> s{_igFingerprint = a})

-- | The URL of the network to which all instances in the instance group
-- belong.
igNetwork :: Lens' InstanceGroup (Maybe Text)
igNetwork
  = lens _igNetwork (\ s a -> s{_igNetwork = a})

-- | The URL of the zone where the instance group is located.
igZone :: Lens' InstanceGroup (Maybe Text)
igZone = lens _igZone (\ s a -> s{_igZone = a})

-- | [Output Only] The URL for this instance group. The server defines this
-- URL.
igSelfLink :: Lens' InstanceGroup (Maybe Text)
igSelfLink
  = lens _igSelfLink (\ s a -> s{_igSelfLink = a})

-- | The name of the instance group. The name must be 1-63 characters long,
-- and comply with RFC1035.
igName :: Lens' InstanceGroup (Maybe Text)
igName = lens _igName (\ s a -> s{_igName = a})

-- | [Output Only] The creation timestamp for this instance group in RFC3339
-- text format.
igCreationTimestamp :: Lens' InstanceGroup (Maybe Text)
igCreationTimestamp
  = lens _igCreationTimestamp
      (\ s a -> s{_igCreationTimestamp = a})

-- | [Output Only] A unique identifier for this instance group. The server
-- defines this identifier.
igId :: Lens' InstanceGroup (Maybe Word64)
igId = lens _igId (\ s a -> s{_igId = a})

-- | An optional text description for the instance group.
igDescription :: Lens' InstanceGroup (Maybe Text)
igDescription
  = lens _igDescription
      (\ s a -> s{_igDescription = a})

-- | Assigns a name to a port number. For example: {name: ?http?, port: 80}
-- This allows the system to reference ports by the assigned name instead
-- of a port number. Named ports can also contain multiple ports. For
-- example: [{name: ?http?, port: 80},{name: \"http\", port: 8080}] Named
-- ports apply to all instances in this instance group.
igNamedPorts :: Lens' InstanceGroup [Maybe NamedPort]
igNamedPorts
  = lens _igNamedPorts (\ s a -> s{_igNamedPorts = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupAggregatedList' smart constructor.
data InstanceGroupAggregatedList = InstanceGroupAggregatedList
    { _igalNextPageToken :: !(Maybe Text)
    , _igalKind          :: !Text
    , _igalItems         :: !(Maybe InstanceGroupAggregatedListItems)
    , _igalSelfLink      :: !(Maybe Text)
    , _igalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igalNextPageToken'
--
-- * 'igalKind'
--
-- * 'igalItems'
--
-- * 'igalSelfLink'
--
-- * 'igalId'
instanceGroupAggregatedList
    :: InstanceGroupAggregatedList
instanceGroupAggregatedList =
    InstanceGroupAggregatedList
    { _igalNextPageToken = Nothing
    , _igalKind = "compute#instanceGroupAggregatedList"
    , _igalItems = Nothing
    , _igalSelfLink = Nothing
    , _igalId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igalNextPageToken :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalNextPageToken
  = lens _igalNextPageToken
      (\ s a -> s{_igalNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupAggregatedList for aggregated lists of instance
-- groups.
igalKind :: Lens' InstanceGroupAggregatedList Text
igalKind = lens _igalKind (\ s a -> s{_igalKind = a})

-- | A map of scoped instance group lists.
igalItems :: Lens' InstanceGroupAggregatedList (Maybe InstanceGroupAggregatedListItems)
igalItems
  = lens _igalItems (\ s a -> s{_igalItems = a})

-- | [Output Only] A unique identifier for this aggregated list of instance
-- groups. The server defines this identifier.
igalSelfLink :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalSelfLink
  = lens _igalSelfLink (\ s a -> s{_igalSelfLink = a})

-- | [Output Only] A unique identifier for this aggregated list of instance
-- groups. The server defines this identifier.
igalId :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalId = lens _igalId (\ s a -> s{_igalId = a})

-- | A map of scoped instance group lists.
--
-- /See:/ 'instanceGroupAggregatedListItems' smart constructor.
data InstanceGroupAggregatedListItems =
    InstanceGroupAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupAggregatedListItems' with the minimum fields required to make a request.
--
instanceGroupAggregatedListItems
    :: InstanceGroupAggregatedListItems
instanceGroupAggregatedListItems = InstanceGroupAggregatedListItems

-- | A list of InstanceGroup resources.
--
-- /See:/ 'instanceGroupList' smart constructor.
data InstanceGroupList = InstanceGroupList
    { _iglNextPageToken :: !(Maybe Text)
    , _iglKind          :: !Text
    , _iglItems         :: !(Maybe [Maybe InstanceGroup])
    , _iglSelfLink      :: !(Maybe Text)
    , _iglId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iglNextPageToken'
--
-- * 'iglKind'
--
-- * 'iglItems'
--
-- * 'iglSelfLink'
--
-- * 'iglId'
instanceGroupList
    :: InstanceGroupList
instanceGroupList =
    InstanceGroupList
    { _iglNextPageToken = Nothing
    , _iglKind = "compute#instanceGroupList"
    , _iglItems = Nothing
    , _iglSelfLink = Nothing
    , _iglId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
iglNextPageToken :: Lens' InstanceGroupList (Maybe Text)
iglNextPageToken
  = lens _iglNextPageToken
      (\ s a -> s{_iglNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupList for instance group lists.
iglKind :: Lens' InstanceGroupList Text
iglKind = lens _iglKind (\ s a -> s{_iglKind = a})

-- | A list of InstanceGroup resources.
iglItems :: Lens' InstanceGroupList [Maybe InstanceGroup]
iglItems
  = lens _iglItems (\ s a -> s{_iglItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this instance group. The server defines this
-- URL.
iglSelfLink :: Lens' InstanceGroupList (Maybe Text)
iglSelfLink
  = lens _iglSelfLink (\ s a -> s{_iglSelfLink = a})

-- | [Output Only] A unique identifier for this list of instance groups. The
-- server defines this identifier.
iglId :: Lens' InstanceGroupList (Maybe Text)
iglId = lens _iglId (\ s a -> s{_iglId = a})

-- | InstanceGroupManagers Next available tag: 19
--
-- /See:/ 'instanceGroupManager' smart constructor.
data InstanceGroupManager = InstanceGroupManager
    { _igmKind              :: !Text
    , _igmFingerprint       :: !(Maybe Word8)
    , _igmBaseInstanceName  :: !(Maybe Text)
    , _igmZone              :: !(Maybe Text)
    , _igmInstanceTemplate  :: !(Maybe Text)
    , _igmTargetSize        :: !(Maybe Int32)
    , _igmSelfLink          :: !(Maybe Text)
    , _igmCurrentActions    :: !(Maybe (Maybe InstanceGroupManagerActionsSummary))
    , _igmName              :: !(Maybe Text)
    , _igmCreationTimestamp :: !(Maybe Text)
    , _igmId                :: !(Maybe Word64)
    , _igmTargetPools       :: !(Maybe [Text])
    , _igmDescription       :: !(Maybe Text)
    , _igmInstanceGroup     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManager' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmKind'
--
-- * 'igmFingerprint'
--
-- * 'igmBaseInstanceName'
--
-- * 'igmZone'
--
-- * 'igmInstanceTemplate'
--
-- * 'igmTargetSize'
--
-- * 'igmSelfLink'
--
-- * 'igmCurrentActions'
--
-- * 'igmName'
--
-- * 'igmCreationTimestamp'
--
-- * 'igmId'
--
-- * 'igmTargetPools'
--
-- * 'igmDescription'
--
-- * 'igmInstanceGroup'
instanceGroupManager
    :: InstanceGroupManager
instanceGroupManager =
    InstanceGroupManager
    { _igmKind = "compute#instanceGroupManager"
    , _igmFingerprint = Nothing
    , _igmBaseInstanceName = Nothing
    , _igmZone = Nothing
    , _igmInstanceTemplate = Nothing
    , _igmTargetSize = Nothing
    , _igmSelfLink = Nothing
    , _igmCurrentActions = Nothing
    , _igmName = Nothing
    , _igmCreationTimestamp = Nothing
    , _igmId = Nothing
    , _igmTargetPools = Nothing
    , _igmDescription = Nothing
    , _igmInstanceGroup = Nothing
    }

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupManager for managed instance groups.
igmKind :: Lens' InstanceGroupManager Text
igmKind = lens _igmKind (\ s a -> s{_igmKind = a})

-- | [Output Only] The fingerprint of the target pools information, which is
-- a hash of the contents. This field is used for optimistic locking when
-- updating the target pool entries.
igmFingerprint :: Lens' InstanceGroupManager (Maybe Word8)
igmFingerprint
  = lens _igmFingerprint
      (\ s a -> s{_igmFingerprint = a})

-- | The base instance name to use for instances in this group. The value
-- must be 1-58 characters long. Instances are named by appending a hyphen
-- and a random four-character string to the base instance name. The base
-- instance name must comply with RFC1035.
igmBaseInstanceName :: Lens' InstanceGroupManager (Maybe Text)
igmBaseInstanceName
  = lens _igmBaseInstanceName
      (\ s a -> s{_igmBaseInstanceName = a})

-- | The URL of the zone where the managed instance group is located.
igmZone :: Lens' InstanceGroupManager (Maybe Text)
igmZone = lens _igmZone (\ s a -> s{_igmZone = a})

-- | The URL of the instance template that is specified for this managed
-- instance group. The group uses this template to create all new instances
-- in the managed instance group.
igmInstanceTemplate :: Lens' InstanceGroupManager (Maybe Text)
igmInstanceTemplate
  = lens _igmInstanceTemplate
      (\ s a -> s{_igmInstanceTemplate = a})

-- | The target number of running instances for this managed instance group.
-- Deleting or abandoning instances reduces this number. Resizing the group
-- changes this number.
igmTargetSize :: Lens' InstanceGroupManager (Maybe Int32)
igmTargetSize
  = lens _igmTargetSize
      (\ s a -> s{_igmTargetSize = a})

-- | [Output Only] Server-defined URL for this managed instance group.
igmSelfLink :: Lens' InstanceGroupManager (Maybe Text)
igmSelfLink
  = lens _igmSelfLink (\ s a -> s{_igmSelfLink = a})

-- | [Output Only] The list of instance actions and the number of instances
-- in this managed instance group that are scheduled for those actions.
igmCurrentActions :: Lens' InstanceGroupManager (Maybe (Maybe InstanceGroupManagerActionsSummary))
igmCurrentActions
  = lens _igmCurrentActions
      (\ s a -> s{_igmCurrentActions = a})

-- | The name of the managed instance group. The name must be 1-63 characters
-- long, and comply with RFC1035.
igmName :: Lens' InstanceGroupManager (Maybe Text)
igmName = lens _igmName (\ s a -> s{_igmName = a})

-- | [Output Only] The creation timestamp for this managed instance group in
-- RFC3339 text format.
igmCreationTimestamp :: Lens' InstanceGroupManager (Maybe Text)
igmCreationTimestamp
  = lens _igmCreationTimestamp
      (\ s a -> s{_igmCreationTimestamp = a})

-- | [Output Only] A unique identifier for this managed instance group. The
-- server defines this identifier.
igmId :: Lens' InstanceGroupManager (Maybe Word64)
igmId = lens _igmId (\ s a -> s{_igmId = a})

-- | The URLs of all TargetPool resources to which new instances in the
-- instanceGroup field are added. Updating the target pool values does not
-- affect existing instances.
igmTargetPools :: Lens' InstanceGroupManager [Text]
igmTargetPools
  = lens _igmTargetPools
      (\ s a -> s{_igmTargetPools = a})
      . _Default
      . _Coerce

-- | An optional text description for the managed instance group.
igmDescription :: Lens' InstanceGroupManager (Maybe Text)
igmDescription
  = lens _igmDescription
      (\ s a -> s{_igmDescription = a})

-- | [Output Only] The URL of the InstanceGroup resource.
igmInstanceGroup :: Lens' InstanceGroupManager (Maybe Text)
igmInstanceGroup
  = lens _igmInstanceGroup
      (\ s a -> s{_igmInstanceGroup = a})

--
-- /See:/ 'instanceGroupManagerActionsSummary' smart constructor.
data InstanceGroupManagerActionsSummary = InstanceGroupManagerActionsSummary
    { _igmasDeleting   :: !(Maybe Int32)
    , _igmasRestarting :: !(Maybe Int32)
    , _igmasNone       :: !(Maybe Int32)
    , _igmasCreating   :: !(Maybe Int32)
    , _igmasRefreshing :: !(Maybe Int32)
    , _igmasRecreating :: !(Maybe Int32)
    , _igmasAbandoning :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerActionsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmasDeleting'
--
-- * 'igmasRestarting'
--
-- * 'igmasNone'
--
-- * 'igmasCreating'
--
-- * 'igmasRefreshing'
--
-- * 'igmasRecreating'
--
-- * 'igmasAbandoning'
instanceGroupManagerActionsSummary
    :: InstanceGroupManagerActionsSummary
instanceGroupManagerActionsSummary =
    InstanceGroupManagerActionsSummary
    { _igmasDeleting = Nothing
    , _igmasRestarting = Nothing
    , _igmasNone = Nothing
    , _igmasCreating = Nothing
    , _igmasRefreshing = Nothing
    , _igmasRecreating = Nothing
    , _igmasAbandoning = Nothing
    }

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be deleted or are currently being deleted.
igmasDeleting :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasDeleting
  = lens _igmasDeleting
      (\ s a -> s{_igmasDeleting = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be restarted or are currently being restarted.
igmasRestarting :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRestarting
  = lens _igmasRestarting
      (\ s a -> s{_igmasRestarting = a})

-- | [Output Only] The number of instances in the managed instance group that
-- currently have no scheduled actions.
igmasNone :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasNone
  = lens _igmasNone (\ s a -> s{_igmasNone = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be created or are currently being created.
igmasCreating :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasCreating
  = lens _igmasCreating
      (\ s a -> s{_igmasCreating = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are being reconfigured with properties that do not require a restart or
-- a recreate action. For example, setting or removing target pools for the
-- instance.
igmasRefreshing :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRefreshing
  = lens _igmasRefreshing
      (\ s a -> s{_igmasRefreshing = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be recreated or are currently being being recreated.
-- Recreating an instance deletes the existing root persistent disk and
-- creates a new disk from the image that is defined in the instance
-- template.
igmasRecreating :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRecreating
  = lens _igmasRecreating
      (\ s a -> s{_igmasRecreating = a})

-- | [Output Only] Total number of instances in the managed instance group
-- that are scheduled to be abandoned. Abandoning an instance removes it
-- from the managed instance group without deleting it.
igmasAbandoning :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasAbandoning
  = lens _igmasAbandoning
      (\ s a -> s{_igmasAbandoning = a})

--
-- /See:/ 'instanceGroupManagerAggregatedList' smart constructor.
data InstanceGroupManagerAggregatedList = InstanceGroupManagerAggregatedList
    { _igmalNextPageToken :: !(Maybe Text)
    , _igmalKind          :: !Text
    , _igmalItems         :: !(Maybe InstanceGroupManagerAggregatedListItems)
    , _igmalSelfLink      :: !(Maybe Text)
    , _igmalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmalNextPageToken'
--
-- * 'igmalKind'
--
-- * 'igmalItems'
--
-- * 'igmalSelfLink'
--
-- * 'igmalId'
instanceGroupManagerAggregatedList
    :: InstanceGroupManagerAggregatedList
instanceGroupManagerAggregatedList =
    InstanceGroupManagerAggregatedList
    { _igmalNextPageToken = Nothing
    , _igmalKind = "compute#instanceGroupManagerAggregatedList"
    , _igmalItems = Nothing
    , _igmalSelfLink = Nothing
    , _igmalId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igmalNextPageToken :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalNextPageToken
  = lens _igmalNextPageToken
      (\ s a -> s{_igmalNextPageToken = a})

-- | [Output Only] Type of the resource. Always
-- compute#instanceGroupManagerAggregatedList for an aggregated list of
-- managed instance groups.
igmalKind :: Lens' InstanceGroupManagerAggregatedList Text
igmalKind
  = lens _igmalKind (\ s a -> s{_igmalKind = a})

-- | A map of filtered managed instance group lists.
igmalItems :: Lens' InstanceGroupManagerAggregatedList (Maybe InstanceGroupManagerAggregatedListItems)
igmalItems
  = lens _igmalItems (\ s a -> s{_igmalItems = a})

-- | [Output Only] The URL for this aggregated list of managed instance
-- groups. The server defines this URL.
igmalSelfLink :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalSelfLink
  = lens _igmalSelfLink
      (\ s a -> s{_igmalSelfLink = a})

-- | [Output Only] A unique identifier for this aggregated list of managed
-- instance groups. The server defines this identifier.
igmalId :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalId = lens _igmalId (\ s a -> s{_igmalId = a})

-- | A map of filtered managed instance group lists.
--
-- /See:/ 'instanceGroupManagerAggregatedListItems' smart constructor.
data InstanceGroupManagerAggregatedListItems =
    InstanceGroupManagerAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerAggregatedListItems' with the minimum fields required to make a request.
--
instanceGroupManagerAggregatedListItems
    :: InstanceGroupManagerAggregatedListItems
instanceGroupManagerAggregatedListItems =
    InstanceGroupManagerAggregatedListItems

-- | [Output Only] A list of InstanceGroupManager resources.
--
-- /See:/ 'instanceGroupManagerList' smart constructor.
data InstanceGroupManagerList = InstanceGroupManagerList
    { _igmlNextPageToken :: !(Maybe Text)
    , _igmlKind          :: !Text
    , _igmlItems         :: !(Maybe [Maybe InstanceGroupManager])
    , _igmlSelfLink      :: !(Maybe Text)
    , _igmlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlNextPageToken'
--
-- * 'igmlKind'
--
-- * 'igmlItems'
--
-- * 'igmlSelfLink'
--
-- * 'igmlId'
instanceGroupManagerList
    :: InstanceGroupManagerList
instanceGroupManagerList =
    InstanceGroupManagerList
    { _igmlNextPageToken = Nothing
    , _igmlKind = "compute#instanceGroupManagerList"
    , _igmlItems = Nothing
    , _igmlSelfLink = Nothing
    , _igmlId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igmlNextPageToken :: Lens' InstanceGroupManagerList (Maybe Text)
igmlNextPageToken
  = lens _igmlNextPageToken
      (\ s a -> s{_igmlNextPageToken = a})

-- | [Output Only] Type of the resource. Always
-- compute#instanceGroupManagerList for a list of managed instance group
-- resources.
igmlKind :: Lens' InstanceGroupManagerList Text
igmlKind = lens _igmlKind (\ s a -> s{_igmlKind = a})

-- | [Output Only] A list of managed instance group resources.
igmlItems :: Lens' InstanceGroupManagerList [Maybe InstanceGroupManager]
igmlItems
  = lens _igmlItems (\ s a -> s{_igmlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this managed instance group. The server
-- defines this URL.
igmlSelfLink :: Lens' InstanceGroupManagerList (Maybe Text)
igmlSelfLink
  = lens _igmlSelfLink (\ s a -> s{_igmlSelfLink = a})

-- | [Output Only] A unique identifier for this managed instance group. The
-- server defines this identifier.
igmlId :: Lens' InstanceGroupManagerList (Maybe Text)
igmlId = lens _igmlId (\ s a -> s{_igmlId = a})

--
-- /See:/ 'instanceGroupManagersAbandonInstancesRequest' smart constructor.
newtype InstanceGroupManagersAbandonInstancesRequest = InstanceGroupManagersAbandonInstancesRequest
    { _igmairInstances :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAbandonInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmairInstances'
instanceGroupManagersAbandonInstancesRequest
    :: InstanceGroupManagersAbandonInstancesRequest
instanceGroupManagersAbandonInstancesRequest =
    InstanceGroupManagersAbandonInstancesRequest
    { _igmairInstances = Nothing
    }

-- | The names of instances to abandon from the managed instance group.
igmairInstances :: Lens' InstanceGroupManagersAbandonInstancesRequest [Text]
igmairInstances
  = lens _igmairInstances
      (\ s a -> s{_igmairInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupManagersDeleteInstancesRequest' smart constructor.
newtype InstanceGroupManagersDeleteInstancesRequest = InstanceGroupManagersDeleteInstancesRequest
    { _igmdirInstances :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersDeleteInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdirInstances'
instanceGroupManagersDeleteInstancesRequest
    :: InstanceGroupManagersDeleteInstancesRequest
instanceGroupManagersDeleteInstancesRequest =
    InstanceGroupManagersDeleteInstancesRequest
    { _igmdirInstances = Nothing
    }

-- | The names of one or more instances to delete.
igmdirInstances :: Lens' InstanceGroupManagersDeleteInstancesRequest [Text]
igmdirInstances
  = lens _igmdirInstances
      (\ s a -> s{_igmdirInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupManagersListManagedInstancesResponse' smart constructor.
newtype InstanceGroupManagersListManagedInstancesResponse = InstanceGroupManagersListManagedInstancesResponse
    { _igmlmirManagedInstances :: Maybe [Maybe ManagedInstance]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersListManagedInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlmirManagedInstances'
instanceGroupManagersListManagedInstancesResponse
    :: InstanceGroupManagersListManagedInstancesResponse
instanceGroupManagersListManagedInstancesResponse =
    InstanceGroupManagersListManagedInstancesResponse
    { _igmlmirManagedInstances = Nothing
    }

-- | List of managed instances. If empty - all instances are listed.
igmlmirManagedInstances :: Lens' InstanceGroupManagersListManagedInstancesResponse [Maybe ManagedInstance]
igmlmirManagedInstances
  = lens _igmlmirManagedInstances
      (\ s a -> s{_igmlmirManagedInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupManagersRecreateInstancesRequest' smart constructor.
newtype InstanceGroupManagersRecreateInstancesRequest = InstanceGroupManagersRecreateInstancesRequest
    { _igmrirInstances :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersRecreateInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmrirInstances'
instanceGroupManagersRecreateInstancesRequest
    :: InstanceGroupManagersRecreateInstancesRequest
instanceGroupManagersRecreateInstancesRequest =
    InstanceGroupManagersRecreateInstancesRequest
    { _igmrirInstances = Nothing
    }

-- | The names of one or more instances to recreate.
igmrirInstances :: Lens' InstanceGroupManagersRecreateInstancesRequest [Text]
igmrirInstances
  = lens _igmrirInstances
      (\ s a -> s{_igmrirInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupManagersScopedList' smart constructor.
data InstanceGroupManagersScopedList = InstanceGroupManagersScopedList
    { _igmslWarning               :: !(Maybe InstanceGroupManagersScopedListWarning)
    , _igmslInstanceGroupManagers :: !(Maybe [Maybe InstanceGroupManager])
    }

-- | Creates a value of 'InstanceGroupManagersScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmslWarning'
--
-- * 'igmslInstanceGroupManagers'
instanceGroupManagersScopedList
    :: InstanceGroupManagersScopedList
instanceGroupManagersScopedList =
    InstanceGroupManagersScopedList
    { _igmslWarning = Nothing
    , _igmslInstanceGroupManagers = Nothing
    }

-- | [Output Only] The warning that replaces the list of managed instance
-- groups when the list is empty.
igmslWarning :: Lens' InstanceGroupManagersScopedList (Maybe InstanceGroupManagersScopedListWarning)
igmslWarning
  = lens _igmslWarning (\ s a -> s{_igmslWarning = a})

-- | [Output Only] The list of managed instance groups that are contained in
-- the specified project and zone.
igmslInstanceGroupManagers :: Lens' InstanceGroupManagersScopedList [Maybe InstanceGroupManager]
igmslInstanceGroupManagers
  = lens _igmslInstanceGroupManagers
      (\ s a -> s{_igmslInstanceGroupManagers = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupManagersScopedListItemDataWarning' smart constructor.
data InstanceGroupManagersScopedListItemDataWarning = InstanceGroupManagersScopedListItemDataWarning
    { _igmslidwValue :: !(Maybe Text)
    , _igmslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmslidwValue'
--
-- * 'igmslidwKey'
instanceGroupManagersScopedListItemDataWarning
    :: InstanceGroupManagersScopedListItemDataWarning
instanceGroupManagersScopedListItemDataWarning =
    InstanceGroupManagersScopedListItemDataWarning
    { _igmslidwValue = Nothing
    , _igmslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
igmslidwValue :: Lens' InstanceGroupManagersScopedListItemDataWarning (Maybe Text)
igmslidwValue
  = lens _igmslidwValue
      (\ s a -> s{_igmslidwValue = a})

-- | [Output Only] A key for the warning data.
igmslidwKey :: Lens' InstanceGroupManagersScopedListItemDataWarning (Maybe Text)
igmslidwKey
  = lens _igmslidwKey (\ s a -> s{_igmslidwKey = a})

-- | [Output Only] The warning that replaces the list of managed instance
-- groups when the list is empty.
--
-- /See:/ 'instanceGroupManagersScopedListWarning' smart constructor.
data InstanceGroupManagersScopedListWarning = InstanceGroupManagersScopedListWarning
    { _igmslwData    :: !(Maybe [InstanceGroupManagersScopedListItemDataWarning])
    , _igmslwCode    :: !(Maybe InstanceGroupManagersScopedListCodeWarning)
    , _igmslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'InstanceGroupManagersScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmslwData'
--
-- * 'igmslwCode'
--
-- * 'igmslwMessage'
instanceGroupManagersScopedListWarning
    :: InstanceGroupManagersScopedListWarning
instanceGroupManagersScopedListWarning =
    InstanceGroupManagersScopedListWarning
    { _igmslwData = Nothing
    , _igmslwCode = Nothing
    , _igmslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
igmslwData :: Lens' InstanceGroupManagersScopedListWarning [InstanceGroupManagersScopedListItemDataWarning]
igmslwData
  = lens _igmslwData (\ s a -> s{_igmslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
igmslwCode :: Lens' InstanceGroupManagersScopedListWarning (Maybe InstanceGroupManagersScopedListCodeWarning)
igmslwCode
  = lens _igmslwCode (\ s a -> s{_igmslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
igmslwMessage :: Lens' InstanceGroupManagersScopedListWarning (Maybe Text)
igmslwMessage
  = lens _igmslwMessage
      (\ s a -> s{_igmslwMessage = a})

--
-- /See:/ 'instanceGroupManagersSetInstanceTemplateRequest' smart constructor.
newtype InstanceGroupManagersSetInstanceTemplateRequest = InstanceGroupManagersSetInstanceTemplateRequest
    { _igmsitrInstanceTemplate :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetInstanceTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmsitrInstanceTemplate'
instanceGroupManagersSetInstanceTemplateRequest
    :: InstanceGroupManagersSetInstanceTemplateRequest
instanceGroupManagersSetInstanceTemplateRequest =
    InstanceGroupManagersSetInstanceTemplateRequest
    { _igmsitrInstanceTemplate = Nothing
    }

-- | The URL of the instance template that is specified for this managed
-- instance group. The group uses this template to create all new instances
-- in the managed instance group.
igmsitrInstanceTemplate :: Lens' InstanceGroupManagersSetInstanceTemplateRequest (Maybe Text)
igmsitrInstanceTemplate
  = lens _igmsitrInstanceTemplate
      (\ s a -> s{_igmsitrInstanceTemplate = a})

--
-- /See:/ 'instanceGroupManagersSetTargetPoolsRequest' smart constructor.
data InstanceGroupManagersSetTargetPoolsRequest = InstanceGroupManagersSetTargetPoolsRequest
    { _igmstprFingerprint :: !(Maybe Word8)
    , _igmstprTargetPools :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetTargetPoolsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmstprFingerprint'
--
-- * 'igmstprTargetPools'
instanceGroupManagersSetTargetPoolsRequest
    :: InstanceGroupManagersSetTargetPoolsRequest
instanceGroupManagersSetTargetPoolsRequest =
    InstanceGroupManagersSetTargetPoolsRequest
    { _igmstprFingerprint = Nothing
    , _igmstprTargetPools = Nothing
    }

-- | The fingerprint of the target pools information, which is a hash of the
-- contents. This field is used for optimistic locking when updating the
-- target pool entries.
igmstprFingerprint :: Lens' InstanceGroupManagersSetTargetPoolsRequest (Maybe Word8)
igmstprFingerprint
  = lens _igmstprFingerprint
      (\ s a -> s{_igmstprFingerprint = a})

-- | The list of target pool URLs that instances in this managed instance
-- group belong to. When the managed instance group creates new instances,
-- the group automatically adds those instances to the target pools that
-- are specified in this parameter. Changing the value of this parameter
-- does not change the target pools of existing instances in this managed
-- instance group.
igmstprTargetPools :: Lens' InstanceGroupManagersSetTargetPoolsRequest [Text]
igmstprTargetPools
  = lens _igmstprTargetPools
      (\ s a -> s{_igmstprTargetPools = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupsAddInstancesRequest' smart constructor.
newtype InstanceGroupsAddInstancesRequest = InstanceGroupsAddInstancesRequest
    { _igairInstances :: Maybe [Maybe InstanceReference]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAddInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igairInstances'
instanceGroupsAddInstancesRequest
    :: InstanceGroupsAddInstancesRequest
instanceGroupsAddInstancesRequest =
    InstanceGroupsAddInstancesRequest
    { _igairInstances = Nothing
    }

-- | The instances to add to the instance group.
igairInstances :: Lens' InstanceGroupsAddInstancesRequest [Maybe InstanceReference]
igairInstances
  = lens _igairInstances
      (\ s a -> s{_igairInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupsListInstances' smart constructor.
data InstanceGroupsListInstances = InstanceGroupsListInstances
    { _igliNextPageToken :: !(Maybe Text)
    , _igliKind          :: !Text
    , _igliItems         :: !(Maybe [Maybe InstanceWithNamedPorts])
    , _igliSelfLink      :: !(Maybe Text)
    , _igliId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsListInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igliNextPageToken'
--
-- * 'igliKind'
--
-- * 'igliItems'
--
-- * 'igliSelfLink'
--
-- * 'igliId'
instanceGroupsListInstances
    :: InstanceGroupsListInstances
instanceGroupsListInstances =
    InstanceGroupsListInstances
    { _igliNextPageToken = Nothing
    , _igliKind = "compute#instanceGroupsListInstances"
    , _igliItems = Nothing
    , _igliSelfLink = Nothing
    , _igliId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igliNextPageToken :: Lens' InstanceGroupsListInstances (Maybe Text)
igliNextPageToken
  = lens _igliNextPageToken
      (\ s a -> s{_igliNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupsListInstances for lists of instance groups.
igliKind :: Lens' InstanceGroupsListInstances Text
igliKind = lens _igliKind (\ s a -> s{_igliKind = a})

-- | A list of InstanceWithNamedPorts resources, which contains all named
-- ports for the given instance.
igliItems :: Lens' InstanceGroupsListInstances [Maybe InstanceWithNamedPorts]
igliItems
  = lens _igliItems (\ s a -> s{_igliItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this list of instance groups. The server
-- defines this URL.
igliSelfLink :: Lens' InstanceGroupsListInstances (Maybe Text)
igliSelfLink
  = lens _igliSelfLink (\ s a -> s{_igliSelfLink = a})

-- | [Output Only] A unique identifier for this list of instance groups. The
-- server defines this identifier.
igliId :: Lens' InstanceGroupsListInstances (Maybe Text)
igliId = lens _igliId (\ s a -> s{_igliId = a})

--
-- /See:/ 'instanceGroupsListInstancesRequest' smart constructor.
newtype InstanceGroupsListInstancesRequest = InstanceGroupsListInstancesRequest
    { _iglirInstanceState :: Maybe InstanceGroupsListInstancesRequestInstanceState
    }

-- | Creates a value of 'InstanceGroupsListInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iglirInstanceState'
instanceGroupsListInstancesRequest
    :: InstanceGroupsListInstancesRequest
instanceGroupsListInstancesRequest =
    InstanceGroupsListInstancesRequest
    { _iglirInstanceState = Nothing
    }

-- | A filter for the state of the instances in the instance group. Valid
-- options are ALL or RUNNING. If you do not specify this parameter the
-- list includes all instances regardless of their state.
iglirInstanceState :: Lens' InstanceGroupsListInstancesRequest (Maybe InstanceGroupsListInstancesRequestInstanceState)
iglirInstanceState
  = lens _iglirInstanceState
      (\ s a -> s{_iglirInstanceState = a})

--
-- /See:/ 'instanceGroupsRemoveInstancesRequest' smart constructor.
newtype InstanceGroupsRemoveInstancesRequest = InstanceGroupsRemoveInstancesRequest
    { _igrirInstances :: Maybe [Maybe InstanceReference]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsRemoveInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igrirInstances'
instanceGroupsRemoveInstancesRequest
    :: InstanceGroupsRemoveInstancesRequest
instanceGroupsRemoveInstancesRequest =
    InstanceGroupsRemoveInstancesRequest
    { _igrirInstances = Nothing
    }

-- | The instances to remove from the instance group.
igrirInstances :: Lens' InstanceGroupsRemoveInstancesRequest [Maybe InstanceReference]
igrirInstances
  = lens _igrirInstances
      (\ s a -> s{_igrirInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupsScopedList' smart constructor.
data InstanceGroupsScopedList = InstanceGroupsScopedList
    { _igslWarning        :: !(Maybe InstanceGroupsScopedListWarning)
    , _igslInstanceGroups :: !(Maybe [Maybe InstanceGroup])
    }

-- | Creates a value of 'InstanceGroupsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igslWarning'
--
-- * 'igslInstanceGroups'
instanceGroupsScopedList
    :: InstanceGroupsScopedList
instanceGroupsScopedList =
    InstanceGroupsScopedList
    { _igslWarning = Nothing
    , _igslInstanceGroups = Nothing
    }

-- | [Output Only] An informational warning that replaces the list of
-- instance groups when the list is empty.
igslWarning :: Lens' InstanceGroupsScopedList (Maybe InstanceGroupsScopedListWarning)
igslWarning
  = lens _igslWarning (\ s a -> s{_igslWarning = a})

-- | [Output Only] The list of instance groups that are contained in this
-- scope.
igslInstanceGroups :: Lens' InstanceGroupsScopedList [Maybe InstanceGroup]
igslInstanceGroups
  = lens _igslInstanceGroups
      (\ s a -> s{_igslInstanceGroups = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instanceGroupsScopedListItemDataWarning' smart constructor.
data InstanceGroupsScopedListItemDataWarning = InstanceGroupsScopedListItemDataWarning
    { _igslidwValue :: !(Maybe Text)
    , _igslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igslidwValue'
--
-- * 'igslidwKey'
instanceGroupsScopedListItemDataWarning
    :: InstanceGroupsScopedListItemDataWarning
instanceGroupsScopedListItemDataWarning =
    InstanceGroupsScopedListItemDataWarning
    { _igslidwValue = Nothing
    , _igslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
igslidwValue :: Lens' InstanceGroupsScopedListItemDataWarning (Maybe Text)
igslidwValue
  = lens _igslidwValue (\ s a -> s{_igslidwValue = a})

-- | [Output Only] A key for the warning data.
igslidwKey :: Lens' InstanceGroupsScopedListItemDataWarning (Maybe Text)
igslidwKey
  = lens _igslidwKey (\ s a -> s{_igslidwKey = a})

-- | [Output Only] An informational warning that replaces the list of
-- instance groups when the list is empty.
--
-- /See:/ 'instanceGroupsScopedListWarning' smart constructor.
data InstanceGroupsScopedListWarning = InstanceGroupsScopedListWarning
    { _igslwData    :: !(Maybe [InstanceGroupsScopedListItemDataWarning])
    , _igslwCode    :: !(Maybe InstanceGroupsScopedListCodeWarning)
    , _igslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'InstanceGroupsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igslwData'
--
-- * 'igslwCode'
--
-- * 'igslwMessage'
instanceGroupsScopedListWarning
    :: InstanceGroupsScopedListWarning
instanceGroupsScopedListWarning =
    InstanceGroupsScopedListWarning
    { _igslwData = Nothing
    , _igslwCode = Nothing
    , _igslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
igslwData :: Lens' InstanceGroupsScopedListWarning [InstanceGroupsScopedListItemDataWarning]
igslwData
  = lens _igslwData (\ s a -> s{_igslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
igslwCode :: Lens' InstanceGroupsScopedListWarning (Maybe InstanceGroupsScopedListCodeWarning)
igslwCode
  = lens _igslwCode (\ s a -> s{_igslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
igslwMessage :: Lens' InstanceGroupsScopedListWarning (Maybe Text)
igslwMessage
  = lens _igslwMessage (\ s a -> s{_igslwMessage = a})

--
-- /See:/ 'instanceGroupsSetNamedPortsRequest' smart constructor.
data InstanceGroupsSetNamedPortsRequest = InstanceGroupsSetNamedPortsRequest
    { _igsnprFingerprint :: !(Maybe Word8)
    , _igsnprNamedPorts  :: !(Maybe [Maybe NamedPort])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsSetNamedPortsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igsnprFingerprint'
--
-- * 'igsnprNamedPorts'
instanceGroupsSetNamedPortsRequest
    :: InstanceGroupsSetNamedPortsRequest
instanceGroupsSetNamedPortsRequest =
    InstanceGroupsSetNamedPortsRequest
    { _igsnprFingerprint = Nothing
    , _igsnprNamedPorts = Nothing
    }

-- | The fingerprint of the named ports information, which is a hash of the
-- contents. Use this field for optimistic locking when you update the
-- named ports entries.
igsnprFingerprint :: Lens' InstanceGroupsSetNamedPortsRequest (Maybe Word8)
igsnprFingerprint
  = lens _igsnprFingerprint
      (\ s a -> s{_igsnprFingerprint = a})

-- | The list of named ports to set for this instance group.
igsnprNamedPorts :: Lens' InstanceGroupsSetNamedPortsRequest [Maybe NamedPort]
igsnprNamedPorts
  = lens _igsnprNamedPorts
      (\ s a -> s{_igsnprNamedPorts = a})
      . _Default
      . _Coerce

-- | Contains a list of instance resources.
--
-- /See:/ 'instanceList' smart constructor.
data InstanceList = InstanceList
    { _ilNextPageToken :: !(Maybe Text)
    , _ilKind          :: !Text
    , _ilItems         :: !(Maybe [Maybe Instance])
    , _ilSelfLink      :: !(Maybe Text)
    , _ilId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilNextPageToken'
--
-- * 'ilKind'
--
-- * 'ilItems'
--
-- * 'ilSelfLink'
--
-- * 'ilId'
instanceList
    :: InstanceList
instanceList =
    InstanceList
    { _ilNextPageToken = Nothing
    , _ilKind = "compute#instanceList"
    , _ilItems = Nothing
    , _ilSelfLink = Nothing
    , _ilId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
ilNextPageToken :: Lens' InstanceList (Maybe Text)
ilNextPageToken
  = lens _ilNextPageToken
      (\ s a -> s{_ilNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#instanceList for lists of
-- Instance resources.
ilKind :: Lens' InstanceList Text
ilKind = lens _ilKind (\ s a -> s{_ilKind = a})

-- | [Output Only] A list of Instance resources.
ilItems :: Lens' InstanceList [Maybe Instance]
ilItems
  = lens _ilItems (\ s a -> s{_ilItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server defined URL for this resource.
ilSelfLink :: Lens' InstanceList (Maybe Text)
ilSelfLink
  = lens _ilSelfLink (\ s a -> s{_ilSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
ilId :: Lens' InstanceList (Maybe Text)
ilId = lens _ilId (\ s a -> s{_ilId = a})

--
-- /See:/ 'instanceMoveRequest' smart constructor.
data InstanceMoveRequest = InstanceMoveRequest
    { _imrTargetInstance  :: !(Maybe Text)
    , _imrDestinationZone :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceMoveRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imrTargetInstance'
--
-- * 'imrDestinationZone'
instanceMoveRequest
    :: InstanceMoveRequest
instanceMoveRequest =
    InstanceMoveRequest
    { _imrTargetInstance = Nothing
    , _imrDestinationZone = Nothing
    }

-- | The URL of the target instance to move. This can be a full or partial
-- URL. For example, the following are all valid URLs to an instance: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/instances\/instance
-- - projects\/project\/zones\/zone\/instances\/instance -
-- zones\/zone\/instances\/instance
imrTargetInstance :: Lens' InstanceMoveRequest (Maybe Text)
imrTargetInstance
  = lens _imrTargetInstance
      (\ s a -> s{_imrTargetInstance = a})

-- | The URL of the destination zone to move the instance to. This can be a
-- full or partial URL. For example, the following are all valid URLs to a
-- zone: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone
-- - projects\/project\/zones\/zone - zones\/zone
imrDestinationZone :: Lens' InstanceMoveRequest (Maybe Text)
imrDestinationZone
  = lens _imrDestinationZone
      (\ s a -> s{_imrDestinationZone = a})

-- |
--
-- /See:/ 'instanceProperties' smart constructor.
data InstanceProperties = InstanceProperties
    { _ipServiceAccounts   :: !(Maybe [Maybe ServiceAccount])
    , _ipNetworkInterfaces :: !(Maybe [Maybe NetworkInterface])
    , _ipMachineType       :: !(Maybe Text)
    , _ipMetadata          :: !(Maybe (Maybe Metadata))
    , _ipScheduling        :: !(Maybe (Maybe Scheduling))
    , _ipDisks             :: !(Maybe [Maybe AttachedDisk])
    , _ipCanIpForward      :: !(Maybe Bool)
    , _ipDescription       :: !(Maybe Text)
    , _ipTags              :: !(Maybe (Maybe Tags))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipServiceAccounts'
--
-- * 'ipNetworkInterfaces'
--
-- * 'ipMachineType'
--
-- * 'ipMetadata'
--
-- * 'ipScheduling'
--
-- * 'ipDisks'
--
-- * 'ipCanIpForward'
--
-- * 'ipDescription'
--
-- * 'ipTags'
instanceProperties
    :: InstanceProperties
instanceProperties =
    InstanceProperties
    { _ipServiceAccounts = Nothing
    , _ipNetworkInterfaces = Nothing
    , _ipMachineType = Nothing
    , _ipMetadata = Nothing
    , _ipScheduling = Nothing
    , _ipDisks = Nothing
    , _ipCanIpForward = Nothing
    , _ipDescription = Nothing
    , _ipTags = Nothing
    }

-- | A list of service accounts with specified scopes. Access tokens for
-- these service accounts are available to the instances that are created
-- from this template. Use metadata queries to obtain the access tokens for
-- these instances.
ipServiceAccounts :: Lens' InstanceProperties [Maybe ServiceAccount]
ipServiceAccounts
  = lens _ipServiceAccounts
      (\ s a -> s{_ipServiceAccounts = a})
      . _Default
      . _Coerce

-- | An array of network access configurations for this interface. This
-- specifies how this interface is configured to interact with other
-- network services, such as connecting to the internet. Currently,
-- ONE_TO_ONE_NAT is the only supported access configuration. If you do not
-- specify any access configurations, the instances that are created from
-- this template will have no external internet access.
ipNetworkInterfaces :: Lens' InstanceProperties [Maybe NetworkInterface]
ipNetworkInterfaces
  = lens _ipNetworkInterfaces
      (\ s a -> s{_ipNetworkInterfaces = a})
      . _Default
      . _Coerce

-- | The machine type to use for instances that are created from this
-- template.
ipMachineType :: Lens' InstanceProperties (Maybe Text)
ipMachineType
  = lens _ipMachineType
      (\ s a -> s{_ipMachineType = a})

-- | The metadata key\/value pairs to assign to instances that are created
-- from this template. These pairs can consist of custom metadata or
-- predefined keys. See Project and instance metadata for more information.
ipMetadata :: Lens' InstanceProperties (Maybe (Maybe Metadata))
ipMetadata
  = lens _ipMetadata (\ s a -> s{_ipMetadata = a})

-- | A list of scheduling options for the instances that are created from
-- this template.
ipScheduling :: Lens' InstanceProperties (Maybe (Maybe Scheduling))
ipScheduling
  = lens _ipScheduling (\ s a -> s{_ipScheduling = a})

-- | An array of disks that are associated with the instances that are
-- created from this template.
ipDisks :: Lens' InstanceProperties [Maybe AttachedDisk]
ipDisks
  = lens _ipDisks (\ s a -> s{_ipDisks = a}) . _Default
      . _Coerce

-- | A boolean that specifies if instances created from this template can
-- send packets with source IP addresses other than their own or receive
-- packets with destination IP addresses other than their own. If you use
-- these instances as an IP gateway or as the next-hop in a Route resource,
-- specify true. Otherwise, specify false.
ipCanIpForward :: Lens' InstanceProperties (Maybe Bool)
ipCanIpForward
  = lens _ipCanIpForward
      (\ s a -> s{_ipCanIpForward = a})

-- | An optional text description for the instances that are created from
-- this instance template.
ipDescription :: Lens' InstanceProperties (Maybe Text)
ipDescription
  = lens _ipDescription
      (\ s a -> s{_ipDescription = a})

-- | A list of tags to apply to the instances that are created from this
-- template. The tags identify valid sources or targets for network
-- firewalls. The setTags method can modify this list of tags. Each tag
-- within the list must comply with RFC1035.
ipTags :: Lens' InstanceProperties (Maybe (Maybe Tags))
ipTags = lens _ipTags (\ s a -> s{_ipTags = a})

--
-- /See:/ 'instanceReference' smart constructor.
newtype InstanceReference = InstanceReference
    { _irInstance :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irInstance'
instanceReference
    :: InstanceReference
instanceReference =
    InstanceReference
    { _irInstance = Nothing
    }

irInstance :: Lens' InstanceReference (Maybe Text)
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

-- | An Instance Template resource.
--
-- /See:/ 'instanceTemplate' smart constructor.
data InstanceTemplate = InstanceTemplate
    { _itKind              :: !Text
    , _itSelfLink          :: !(Maybe Text)
    , _itName              :: !(Maybe Text)
    , _itCreationTimestamp :: !(Maybe Text)
    , _itId                :: !(Maybe Word64)
    , _itDescription       :: !(Maybe Text)
    , _itProperties        :: !(Maybe (Maybe InstanceProperties))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itKind'
--
-- * 'itSelfLink'
--
-- * 'itName'
--
-- * 'itCreationTimestamp'
--
-- * 'itId'
--
-- * 'itDescription'
--
-- * 'itProperties'
instanceTemplate
    :: InstanceTemplate
instanceTemplate =
    InstanceTemplate
    { _itKind = "compute#instanceTemplate"
    , _itSelfLink = Nothing
    , _itName = Nothing
    , _itCreationTimestamp = Nothing
    , _itId = Nothing
    , _itDescription = Nothing
    , _itProperties = Nothing
    }

-- | [Output Only] The resource type, which is always
-- compute#instanceTemplate for instance templates.
itKind :: Lens' InstanceTemplate Text
itKind = lens _itKind (\ s a -> s{_itKind = a})

-- | [Output Only] The URL for this instance template. The server defines
-- this URL.
itSelfLink :: Lens' InstanceTemplate (Maybe Text)
itSelfLink
  = lens _itSelfLink (\ s a -> s{_itSelfLink = a})

-- | The name of the instance template. The name must be 1-63 characters
-- long, and comply with RFC1035.
itName :: Lens' InstanceTemplate (Maybe Text)
itName = lens _itName (\ s a -> s{_itName = a})

-- | [Output Only] The creation timestamp for this instance template in
-- RFC3339 text format.
itCreationTimestamp :: Lens' InstanceTemplate (Maybe Text)
itCreationTimestamp
  = lens _itCreationTimestamp
      (\ s a -> s{_itCreationTimestamp = a})

-- | [Output Only] A unique identifier for this instance template. The server
-- defines this identifier.
itId :: Lens' InstanceTemplate (Maybe Word64)
itId = lens _itId (\ s a -> s{_itId = a})

-- | An optional text description for the instance template.
itDescription :: Lens' InstanceTemplate (Maybe Text)
itDescription
  = lens _itDescription
      (\ s a -> s{_itDescription = a})

-- | The instance properties for the instance template resource.
itProperties :: Lens' InstanceTemplate (Maybe (Maybe InstanceProperties))
itProperties
  = lens _itProperties (\ s a -> s{_itProperties = a})

-- | A list of instance templates.
--
-- /See:/ 'instanceTemplateList' smart constructor.
data InstanceTemplateList = InstanceTemplateList
    { _itlNextPageToken :: !(Maybe Text)
    , _itlKind          :: !Text
    , _itlItems         :: !(Maybe [Maybe InstanceTemplate])
    , _itlSelfLink      :: !(Maybe Text)
    , _itlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplateList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlNextPageToken'
--
-- * 'itlKind'
--
-- * 'itlItems'
--
-- * 'itlSelfLink'
--
-- * 'itlId'
instanceTemplateList
    :: InstanceTemplateList
instanceTemplateList =
    InstanceTemplateList
    { _itlNextPageToken = Nothing
    , _itlKind = "compute#instanceTemplateList"
    , _itlItems = Nothing
    , _itlSelfLink = Nothing
    , _itlId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
itlNextPageToken :: Lens' InstanceTemplateList (Maybe Text)
itlNextPageToken
  = lens _itlNextPageToken
      (\ s a -> s{_itlNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceTemplatesListResponse for instance template lists.
itlKind :: Lens' InstanceTemplateList Text
itlKind = lens _itlKind (\ s a -> s{_itlKind = a})

-- | A list of InstanceTemplate resources.
itlItems :: Lens' InstanceTemplateList [Maybe InstanceTemplate]
itlItems
  = lens _itlItems (\ s a -> s{_itlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this instance template list. The server
-- defines this URL.
itlSelfLink :: Lens' InstanceTemplateList (Maybe Text)
itlSelfLink
  = lens _itlSelfLink (\ s a -> s{_itlSelfLink = a})

-- | [Output Only] A unique identifier for this instance template. The server
-- defines this identifier.
itlId :: Lens' InstanceTemplateList (Maybe Text)
itlId = lens _itlId (\ s a -> s{_itlId = a})

--
-- /See:/ 'instanceWithNamedPorts' smart constructor.
data InstanceWithNamedPorts = InstanceWithNamedPorts
    { _iwnpStatus     :: !(Maybe InstanceWithNamedPortsStatus)
    , _iwnpNamedPorts :: !(Maybe [Maybe NamedPort])
    , _iwnpInstance   :: !(Maybe Text)
    }

-- | Creates a value of 'InstanceWithNamedPorts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iwnpStatus'
--
-- * 'iwnpNamedPorts'
--
-- * 'iwnpInstance'
instanceWithNamedPorts
    :: InstanceWithNamedPorts
instanceWithNamedPorts =
    InstanceWithNamedPorts
    { _iwnpStatus = Nothing
    , _iwnpNamedPorts = Nothing
    , _iwnpInstance = Nothing
    }

-- | The status of the instance.
iwnpStatus :: Lens' InstanceWithNamedPorts (Maybe InstanceWithNamedPortsStatus)
iwnpStatus
  = lens _iwnpStatus (\ s a -> s{_iwnpStatus = a})

-- | The named ports that belong to this instance group.
iwnpNamedPorts :: Lens' InstanceWithNamedPorts [Maybe NamedPort]
iwnpNamedPorts
  = lens _iwnpNamedPorts
      (\ s a -> s{_iwnpNamedPorts = a})
      . _Default
      . _Coerce

-- | The URL of the instance.
iwnpInstance :: Lens' InstanceWithNamedPorts (Maybe Text)
iwnpInstance
  = lens _iwnpInstance (\ s a -> s{_iwnpInstance = a})

--
-- /See:/ 'instancesScopedList' smart constructor.
data InstancesScopedList = InstancesScopedList
    { _islWarning   :: !(Maybe InstancesScopedListWarning)
    , _islInstances :: !(Maybe [Maybe Instance])
    }

-- | Creates a value of 'InstancesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islWarning'
--
-- * 'islInstances'
instancesScopedList
    :: InstancesScopedList
instancesScopedList =
    InstancesScopedList
    { _islWarning = Nothing
    , _islInstances = Nothing
    }

-- | [Output Only] Informational warning which replaces the list of instances
-- when the list is empty.
islWarning :: Lens' InstancesScopedList (Maybe InstancesScopedListWarning)
islWarning
  = lens _islWarning (\ s a -> s{_islWarning = a})

-- | [Output Only] List of instances contained in this scope.
islInstances :: Lens' InstancesScopedList [Maybe Instance]
islInstances
  = lens _islInstances (\ s a -> s{_islInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'instancesScopedListItemDataWarning' smart constructor.
data InstancesScopedListItemDataWarning = InstancesScopedListItemDataWarning
    { _islidwValue :: !(Maybe Text)
    , _islidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islidwValue'
--
-- * 'islidwKey'
instancesScopedListItemDataWarning
    :: InstancesScopedListItemDataWarning
instancesScopedListItemDataWarning =
    InstancesScopedListItemDataWarning
    { _islidwValue = Nothing
    , _islidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
islidwValue :: Lens' InstancesScopedListItemDataWarning (Maybe Text)
islidwValue
  = lens _islidwValue (\ s a -> s{_islidwValue = a})

-- | [Output Only] A key for the warning data.
islidwKey :: Lens' InstancesScopedListItemDataWarning (Maybe Text)
islidwKey
  = lens _islidwKey (\ s a -> s{_islidwKey = a})

-- | [Output Only] Informational warning which replaces the list of instances
-- when the list is empty.
--
-- /See:/ 'instancesScopedListWarning' smart constructor.
data InstancesScopedListWarning = InstancesScopedListWarning
    { _islwData    :: !(Maybe [InstancesScopedListItemDataWarning])
    , _islwCode    :: !(Maybe InstancesScopedListCodeWarning)
    , _islwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'InstancesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islwData'
--
-- * 'islwCode'
--
-- * 'islwMessage'
instancesScopedListWarning
    :: InstancesScopedListWarning
instancesScopedListWarning =
    InstancesScopedListWarning
    { _islwData = Nothing
    , _islwCode = Nothing
    , _islwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
islwData :: Lens' InstancesScopedListWarning [InstancesScopedListItemDataWarning]
islwData
  = lens _islwData (\ s a -> s{_islwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
islwCode :: Lens' InstancesScopedListWarning (Maybe InstancesScopedListCodeWarning)
islwCode = lens _islwCode (\ s a -> s{_islwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
islwMessage :: Lens' InstancesScopedListWarning (Maybe Text)
islwMessage
  = lens _islwMessage (\ s a -> s{_islwMessage = a})

-- | A license resource.
--
-- /See:/ 'license' smart constructor.
data License = License
    { _lChargesUseFee :: !(Maybe Bool)
    , _lKind          :: !Text
    , _lSelfLink      :: !(Maybe Text)
    , _lName          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'License' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lChargesUseFee'
--
-- * 'lKind'
--
-- * 'lSelfLink'
--
-- * 'lName'
license
    :: License
license =
    License
    { _lChargesUseFee = Nothing
    , _lKind = "compute#license"
    , _lSelfLink = Nothing
    , _lName = Nothing
    }

-- | If true, the customer will be charged license fee for running software
-- that contains this license on an instance.
lChargesUseFee :: Lens' License (Maybe Bool)
lChargesUseFee
  = lens _lChargesUseFee
      (\ s a -> s{_lChargesUseFee = a})

-- | [Output Only] Type of resource. Always compute#license for licenses.
lKind :: Lens' License Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | [Output Only] Server-defined URL for the resource.
lSelfLink :: Lens' License (Maybe Text)
lSelfLink
  = lens _lSelfLink (\ s a -> s{_lSelfLink = a})

-- | [Output Only] Name of the resource. The name is 1-63 characters long and
-- complies with RFC1035.
lName :: Lens' License (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | A Machine Type resource.
--
-- /See:/ 'machineType' smart constructor.
data MachineType = MachineType
    { _mtKind                         :: !Text
    , _mtImageSpaceGb                 :: !(Maybe Int32)
    , _mtZone                         :: !(Maybe Text)
    , _mtSelfLink                     :: !(Maybe Text)
    , _mtName                         :: !(Maybe Text)
    , _mtCreationTimestamp            :: !(Maybe Text)
    , _mtScratchDisks                 :: !(Maybe [MachineTypeItemScratchDisks])
    , _mtId                           :: !(Maybe Word64)
    , _mtGuestCpus                    :: !(Maybe Int32)
    , _mtMaximumPersistentDisksSizeGb :: !(Maybe Int64)
    , _mtMaximumPersistentDisks       :: !(Maybe Int32)
    , _mtMemoryMb                     :: !(Maybe Int32)
    , _mtDescription                  :: !(Maybe Text)
    , _mtDeprecated                   :: !(Maybe (Maybe DeprecationStatus))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtKind'
--
-- * 'mtImageSpaceGb'
--
-- * 'mtZone'
--
-- * 'mtSelfLink'
--
-- * 'mtName'
--
-- * 'mtCreationTimestamp'
--
-- * 'mtScratchDisks'
--
-- * 'mtId'
--
-- * 'mtGuestCpus'
--
-- * 'mtMaximumPersistentDisksSizeGb'
--
-- * 'mtMaximumPersistentDisks'
--
-- * 'mtMemoryMb'
--
-- * 'mtDescription'
--
-- * 'mtDeprecated'
machineType
    :: MachineType
machineType =
    MachineType
    { _mtKind = "compute#machineType"
    , _mtImageSpaceGb = Nothing
    , _mtZone = Nothing
    , _mtSelfLink = Nothing
    , _mtName = Nothing
    , _mtCreationTimestamp = Nothing
    , _mtScratchDisks = Nothing
    , _mtId = Nothing
    , _mtGuestCpus = Nothing
    , _mtMaximumPersistentDisksSizeGb = Nothing
    , _mtMaximumPersistentDisks = Nothing
    , _mtMemoryMb = Nothing
    , _mtDescription = Nothing
    , _mtDeprecated = Nothing
    }

-- | Type of the resource.
mtKind :: Lens' MachineType Text
mtKind = lens _mtKind (\ s a -> s{_mtKind = a})

-- | [Deprecated] This property is deprecated and will never be populated
-- with any relevant values.
mtImageSpaceGb :: Lens' MachineType (Maybe Int32)
mtImageSpaceGb
  = lens _mtImageSpaceGb
      (\ s a -> s{_mtImageSpaceGb = a})

-- | [Output Only] The name of the zone where the machine type resides, such
-- as us-central1-a.
mtZone :: Lens' MachineType (Maybe Text)
mtZone = lens _mtZone (\ s a -> s{_mtZone = a})

-- | [Output Only] Server-defined URL for the resource.
mtSelfLink :: Lens' MachineType (Maybe Text)
mtSelfLink
  = lens _mtSelfLink (\ s a -> s{_mtSelfLink = a})

-- | [Output Only] Name of the resource.
mtName :: Lens' MachineType (Maybe Text)
mtName = lens _mtName (\ s a -> s{_mtName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
mtCreationTimestamp :: Lens' MachineType (Maybe Text)
mtCreationTimestamp
  = lens _mtCreationTimestamp
      (\ s a -> s{_mtCreationTimestamp = a})

-- | [Output Only] List of extended scratch disks assigned to the instance.
mtScratchDisks :: Lens' MachineType [MachineTypeItemScratchDisks]
mtScratchDisks
  = lens _mtScratchDisks
      (\ s a -> s{_mtScratchDisks = a})
      . _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server.
mtId :: Lens' MachineType (Maybe Word64)
mtId = lens _mtId (\ s a -> s{_mtId = a})

-- | [Output Only] The tumber of CPUs exposed to the instance.
mtGuestCpus :: Lens' MachineType (Maybe Int32)
mtGuestCpus
  = lens _mtGuestCpus (\ s a -> s{_mtGuestCpus = a})

-- | [Output Only] Maximum total persistent disks size (GB) allowed.
mtMaximumPersistentDisksSizeGb :: Lens' MachineType (Maybe Int64)
mtMaximumPersistentDisksSizeGb
  = lens _mtMaximumPersistentDisksSizeGb
      (\ s a -> s{_mtMaximumPersistentDisksSizeGb = a})

-- | [Output Only] Maximum persistent disks allowed.
mtMaximumPersistentDisks :: Lens' MachineType (Maybe Int32)
mtMaximumPersistentDisks
  = lens _mtMaximumPersistentDisks
      (\ s a -> s{_mtMaximumPersistentDisks = a})

-- | [Output Only] The amount of physical memory available to the instance,
-- defined in MB.
mtMemoryMb :: Lens' MachineType (Maybe Int32)
mtMemoryMb
  = lens _mtMemoryMb (\ s a -> s{_mtMemoryMb = a})

-- | [Output Only] An optional textual description of the resource.
mtDescription :: Lens' MachineType (Maybe Text)
mtDescription
  = lens _mtDescription
      (\ s a -> s{_mtDescription = a})

-- | [Output Only] The deprecation status associated with this machine type.
mtDeprecated :: Lens' MachineType (Maybe (Maybe DeprecationStatus))
mtDeprecated
  = lens _mtDeprecated (\ s a -> s{_mtDeprecated = a})

--
-- /See:/ 'machineTypeAggregatedList' smart constructor.
data MachineTypeAggregatedList = MachineTypeAggregatedList
    { _mtalNextPageToken :: !(Maybe Text)
    , _mtalKind          :: !Text
    , _mtalItems         :: !(Maybe MachineTypeAggregatedListItems)
    , _mtalSelfLink      :: !(Maybe Text)
    , _mtalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtalNextPageToken'
--
-- * 'mtalKind'
--
-- * 'mtalItems'
--
-- * 'mtalSelfLink'
--
-- * 'mtalId'
machineTypeAggregatedList
    :: MachineTypeAggregatedList
machineTypeAggregatedList =
    MachineTypeAggregatedList
    { _mtalNextPageToken = Nothing
    , _mtalKind = "compute#machineTypeAggregatedList"
    , _mtalItems = Nothing
    , _mtalSelfLink = Nothing
    , _mtalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
mtalNextPageToken :: Lens' MachineTypeAggregatedList (Maybe Text)
mtalNextPageToken
  = lens _mtalNextPageToken
      (\ s a -> s{_mtalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#machineTypeAggregatedList
-- for aggregated lists of machine types.
mtalKind :: Lens' MachineTypeAggregatedList Text
mtalKind = lens _mtalKind (\ s a -> s{_mtalKind = a})

-- | [Output Only] A map of scoped machine type lists.
mtalItems :: Lens' MachineTypeAggregatedList (Maybe MachineTypeAggregatedListItems)
mtalItems
  = lens _mtalItems (\ s a -> s{_mtalItems = a})

-- | [Output Only] Server-defined URL for this resource.
mtalSelfLink :: Lens' MachineTypeAggregatedList (Maybe Text)
mtalSelfLink
  = lens _mtalSelfLink (\ s a -> s{_mtalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
mtalId :: Lens' MachineTypeAggregatedList (Maybe Text)
mtalId = lens _mtalId (\ s a -> s{_mtalId = a})

-- | [Output Only] A map of scoped machine type lists.
--
-- /See:/ 'machineTypeAggregatedListItems' smart constructor.
data MachineTypeAggregatedListItems =
    MachineTypeAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeAggregatedListItems' with the minimum fields required to make a request.
--
machineTypeAggregatedListItems
    :: MachineTypeAggregatedListItems
machineTypeAggregatedListItems = MachineTypeAggregatedListItems

--
-- /See:/ 'machineTypeItemScratchDisks' smart constructor.
newtype MachineTypeItemScratchDisks = MachineTypeItemScratchDisks
    { _mtisdDiskGb :: Maybe Int32
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeItemScratchDisks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtisdDiskGb'
machineTypeItemScratchDisks
    :: MachineTypeItemScratchDisks
machineTypeItemScratchDisks =
    MachineTypeItemScratchDisks
    { _mtisdDiskGb = Nothing
    }

-- | Size of the scratch disk, defined in GB.
mtisdDiskGb :: Lens' MachineTypeItemScratchDisks (Maybe Int32)
mtisdDiskGb
  = lens _mtisdDiskGb (\ s a -> s{_mtisdDiskGb = a})

-- | Contains a list of Machine Type resources.
--
-- /See:/ 'machineTypeList' smart constructor.
data MachineTypeList = MachineTypeList
    { _mtlNextPageToken :: !(Maybe Text)
    , _mtlKind          :: !Text
    , _mtlItems         :: !(Maybe [Maybe MachineType])
    , _mtlSelfLink      :: !(Maybe Text)
    , _mtlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtlNextPageToken'
--
-- * 'mtlKind'
--
-- * 'mtlItems'
--
-- * 'mtlSelfLink'
--
-- * 'mtlId'
machineTypeList
    :: MachineTypeList
machineTypeList =
    MachineTypeList
    { _mtlNextPageToken = Nothing
    , _mtlKind = "compute#machineTypeList"
    , _mtlItems = Nothing
    , _mtlSelfLink = Nothing
    , _mtlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
mtlNextPageToken :: Lens' MachineTypeList (Maybe Text)
mtlNextPageToken
  = lens _mtlNextPageToken
      (\ s a -> s{_mtlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#machineTypeList for lists
-- of machine types.
mtlKind :: Lens' MachineTypeList Text
mtlKind = lens _mtlKind (\ s a -> s{_mtlKind = a})

-- | [Output Only] A list of Machine Type resources.
mtlItems :: Lens' MachineTypeList [Maybe MachineType]
mtlItems
  = lens _mtlItems (\ s a -> s{_mtlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
mtlSelfLink :: Lens' MachineTypeList (Maybe Text)
mtlSelfLink
  = lens _mtlSelfLink (\ s a -> s{_mtlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
mtlId :: Lens' MachineTypeList (Maybe Text)
mtlId = lens _mtlId (\ s a -> s{_mtlId = a})

--
-- /See:/ 'machineTypesScopedList' smart constructor.
data MachineTypesScopedList = MachineTypesScopedList
    { _mtslMachineTypes :: !(Maybe [Maybe MachineType])
    , _mtslWarning      :: !(Maybe MachineTypesScopedListWarning)
    }

-- | Creates a value of 'MachineTypesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtslMachineTypes'
--
-- * 'mtslWarning'
machineTypesScopedList
    :: MachineTypesScopedList
machineTypesScopedList =
    MachineTypesScopedList
    { _mtslMachineTypes = Nothing
    , _mtslWarning = Nothing
    }

-- | [Output Only] List of machine types contained in this scope.
mtslMachineTypes :: Lens' MachineTypesScopedList [Maybe MachineType]
mtslMachineTypes
  = lens _mtslMachineTypes
      (\ s a -> s{_mtslMachineTypes = a})
      . _Default
      . _Coerce

-- | [Output Only] An informational warning that appears when the machine
-- types list is empty.
mtslWarning :: Lens' MachineTypesScopedList (Maybe MachineTypesScopedListWarning)
mtslWarning
  = lens _mtslWarning (\ s a -> s{_mtslWarning = a})

--
-- /See:/ 'machineTypesScopedListItemDataWarning' smart constructor.
data MachineTypesScopedListItemDataWarning = MachineTypesScopedListItemDataWarning
    { _mtslidwValue :: !(Maybe Text)
    , _mtslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtslidwValue'
--
-- * 'mtslidwKey'
machineTypesScopedListItemDataWarning
    :: MachineTypesScopedListItemDataWarning
machineTypesScopedListItemDataWarning =
    MachineTypesScopedListItemDataWarning
    { _mtslidwValue = Nothing
    , _mtslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
mtslidwValue :: Lens' MachineTypesScopedListItemDataWarning (Maybe Text)
mtslidwValue
  = lens _mtslidwValue (\ s a -> s{_mtslidwValue = a})

-- | [Output Only] A key for the warning data.
mtslidwKey :: Lens' MachineTypesScopedListItemDataWarning (Maybe Text)
mtslidwKey
  = lens _mtslidwKey (\ s a -> s{_mtslidwKey = a})

-- | [Output Only] An informational warning that appears when the machine
-- types list is empty.
--
-- /See:/ 'machineTypesScopedListWarning' smart constructor.
data MachineTypesScopedListWarning = MachineTypesScopedListWarning
    { _mtslwData    :: !(Maybe [MachineTypesScopedListItemDataWarning])
    , _mtslwCode    :: !(Maybe MachineTypesScopedListCodeWarning)
    , _mtslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'MachineTypesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtslwData'
--
-- * 'mtslwCode'
--
-- * 'mtslwMessage'
machineTypesScopedListWarning
    :: MachineTypesScopedListWarning
machineTypesScopedListWarning =
    MachineTypesScopedListWarning
    { _mtslwData = Nothing
    , _mtslwCode = Nothing
    , _mtslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
mtslwData :: Lens' MachineTypesScopedListWarning [MachineTypesScopedListItemDataWarning]
mtslwData
  = lens _mtslwData (\ s a -> s{_mtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
mtslwCode :: Lens' MachineTypesScopedListWarning (Maybe MachineTypesScopedListCodeWarning)
mtslwCode
  = lens _mtslwCode (\ s a -> s{_mtslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
mtslwMessage :: Lens' MachineTypesScopedListWarning (Maybe Text)
mtslwMessage
  = lens _mtslwMessage (\ s a -> s{_mtslwMessage = a})

--
-- /See:/ 'managedInstance' smart constructor.
data ManagedInstance = ManagedInstance
    { _miLastAttempt    :: !(Maybe (Maybe ManagedInstanceLastAttempt))
    , _miCurrentAction  :: !(Maybe ManagedInstanceCurrentAction)
    , _miId             :: !(Maybe Word64)
    , _miInstanceStatus :: !(Maybe ManagedInstanceInstanceStatus)
    , _miInstance       :: !(Maybe Text)
    }

-- | Creates a value of 'ManagedInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miLastAttempt'
--
-- * 'miCurrentAction'
--
-- * 'miId'
--
-- * 'miInstanceStatus'
--
-- * 'miInstance'
managedInstance
    :: ManagedInstance
managedInstance =
    ManagedInstance
    { _miLastAttempt = Nothing
    , _miCurrentAction = Nothing
    , _miId = Nothing
    , _miInstanceStatus = Nothing
    , _miInstance = Nothing
    }

-- | Information about the last attempt to create or delete the instance.
miLastAttempt :: Lens' ManagedInstance (Maybe (Maybe ManagedInstanceLastAttempt))
miLastAttempt
  = lens _miLastAttempt
      (\ s a -> s{_miLastAttempt = a})

-- | The current action that the managed instance group has scheduled for the
-- instance.
miCurrentAction :: Lens' ManagedInstance (Maybe ManagedInstanceCurrentAction)
miCurrentAction
  = lens _miCurrentAction
      (\ s a -> s{_miCurrentAction = a})

-- | The unique identifier for this resource (empty when instance does not
-- exist).
miId :: Lens' ManagedInstance (Maybe Word64)
miId = lens _miId (\ s a -> s{_miId = a})

-- | The status of the instance (empty when instance does not exist).
miInstanceStatus :: Lens' ManagedInstance (Maybe ManagedInstanceInstanceStatus)
miInstanceStatus
  = lens _miInstanceStatus
      (\ s a -> s{_miInstanceStatus = a})

-- | The URL of the instance (set even though instance does not exist yet).
miInstance :: Lens' ManagedInstance (Maybe Text)
miInstance
  = lens _miInstance (\ s a -> s{_miInstance = a})

--
-- /See:/ 'managedInstanceLastAttempt' smart constructor.
newtype ManagedInstanceLastAttempt = ManagedInstanceLastAttempt
    { _milaErrors :: Maybe ManagedInstanceLastAttemptErrors
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedInstanceLastAttempt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'milaErrors'
managedInstanceLastAttempt
    :: ManagedInstanceLastAttempt
managedInstanceLastAttempt =
    ManagedInstanceLastAttempt
    { _milaErrors = Nothing
    }

-- | Encountered errors during the last attempt to create or delete the
-- instance.
milaErrors :: Lens' ManagedInstanceLastAttempt (Maybe ManagedInstanceLastAttemptErrors)
milaErrors
  = lens _milaErrors (\ s a -> s{_milaErrors = a})

-- | Encountered errors during the last attempt to create or delete the
-- instance.
--
-- /See:/ 'managedInstanceLastAttemptErrors' smart constructor.
newtype ManagedInstanceLastAttemptErrors = ManagedInstanceLastAttemptErrors
    { _milaeErrors :: Maybe [ManagedInstanceLastAttemptItemErrorsErrors]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedInstanceLastAttemptErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'milaeErrors'
managedInstanceLastAttemptErrors
    :: ManagedInstanceLastAttemptErrors
managedInstanceLastAttemptErrors =
    ManagedInstanceLastAttemptErrors
    { _milaeErrors = Nothing
    }

-- | [Output Only] The array of errors encountered while processing this
-- operation.
milaeErrors :: Lens' ManagedInstanceLastAttemptErrors [ManagedInstanceLastAttemptItemErrorsErrors]
milaeErrors
  = lens _milaeErrors (\ s a -> s{_milaeErrors = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'managedInstanceLastAttemptItemErrorsErrors' smart constructor.
data ManagedInstanceLastAttemptItemErrorsErrors = ManagedInstanceLastAttemptItemErrorsErrors
    { _milaieeLocation :: !(Maybe Text)
    , _milaieeCode     :: !(Maybe Text)
    , _milaieeMessage  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedInstanceLastAttemptItemErrorsErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'milaieeLocation'
--
-- * 'milaieeCode'
--
-- * 'milaieeMessage'
managedInstanceLastAttemptItemErrorsErrors
    :: ManagedInstanceLastAttemptItemErrorsErrors
managedInstanceLastAttemptItemErrorsErrors =
    ManagedInstanceLastAttemptItemErrorsErrors
    { _milaieeLocation = Nothing
    , _milaieeCode = Nothing
    , _milaieeMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request which caused the error.
-- This property is optional.
milaieeLocation :: Lens' ManagedInstanceLastAttemptItemErrorsErrors (Maybe Text)
milaieeLocation
  = lens _milaieeLocation
      (\ s a -> s{_milaieeLocation = a})

-- | [Output Only] The error type identifier for this error.
milaieeCode :: Lens' ManagedInstanceLastAttemptItemErrorsErrors (Maybe Text)
milaieeCode
  = lens _milaieeCode (\ s a -> s{_milaieeCode = a})

-- | [Output Only] An optional, human-readable error message.
milaieeMessage :: Lens' ManagedInstanceLastAttemptItemErrorsErrors (Maybe Text)
milaieeMessage
  = lens _milaieeMessage
      (\ s a -> s{_milaieeMessage = a})

-- | A metadata key\/value entry.
--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mKind        :: !Text
    , _mFingerprint :: !(Maybe Word8)
    , _mItems       :: !(Maybe [MetadataItemItems])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mKind'
--
-- * 'mFingerprint'
--
-- * 'mItems'
metadata
    :: Metadata
metadata =
    Metadata
    { _mKind = "compute#metadata"
    , _mFingerprint = Nothing
    , _mItems = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#metadata for
-- metadata.
mKind :: Lens' Metadata Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | Specifies a fingerprint for this request, which is essentially a hash of
-- the metadata\'s contents and used for optimistic locking. The
-- fingerprint is initially generated by Compute Engine and changes after
-- every request to modify or update metadata. You must always provide an
-- up-to-date fingerprint hash in order to update or change metadata.
mFingerprint :: Lens' Metadata (Maybe Word8)
mFingerprint
  = lens _mFingerprint (\ s a -> s{_mFingerprint = a})

-- | Array of key\/value pairs. The total size of all keys and values must be
-- less than 512 KB.
mItems :: Lens' Metadata [MetadataItemItems]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'metadataItemItems' smart constructor.
data MetadataItemItems = MetadataItemItems
    { _miiValue :: !(Maybe Text)
    , _miiKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataItemItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miiValue'
--
-- * 'miiKey'
metadataItemItems
    :: MetadataItemItems
metadataItemItems =
    MetadataItemItems
    { _miiValue = Nothing
    , _miiKey = Nothing
    }

-- | Value for the metadata entry. These are free-form strings, and only have
-- meaning as interpreted by the image running in the instance. The only
-- restriction placed on values is that their size must be less than or
-- equal to 32768 bytes.
miiValue :: Lens' MetadataItemItems (Maybe Text)
miiValue = lens _miiValue (\ s a -> s{_miiValue = a})

-- | Key for the metadata entry. Keys must conform to the following regexp:
-- [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected
-- as part of a URL in the metadata server. Additionally, to avoid
-- ambiguity, keys must not conflict with any other metadata keys for the
-- project.
miiKey :: Lens' MetadataItemItems (Maybe Text)
miiKey = lens _miiKey (\ s a -> s{_miiKey = a})

-- | The named port information. For example: .
--
-- /See:/ 'namedPort' smart constructor.
data NamedPort = NamedPort
    { _npName :: !(Maybe Text)
    , _npPort :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NamedPort' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npName'
--
-- * 'npPort'
namedPort
    :: NamedPort
namedPort =
    NamedPort
    { _npName = Nothing
    , _npPort = Nothing
    }

-- | The name for this NamedPort.
npName :: Lens' NamedPort (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

-- | The port number, which can be a value between 1 and 65535.
npPort :: Lens' NamedPort (Maybe Int32)
npPort = lens _npPort (\ s a -> s{_npPort = a})

-- | A network resource.
--
-- /See:/ 'network' smart constructor.
data Network = Network
    { _nKind              :: !Text
    , _nIPv4Range         :: !(Maybe Text)
    , _nSelfLink          :: !(Maybe Text)
    , _nName              :: !(Maybe Text)
    , _nCreationTimestamp :: !(Maybe Text)
    , _nId                :: !(Maybe Word64)
    , _nGatewayIPv4       :: !(Maybe Text)
    , _nDescription       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Network' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nKind'
--
-- * 'nIPv4Range'
--
-- * 'nSelfLink'
--
-- * 'nName'
--
-- * 'nCreationTimestamp'
--
-- * 'nId'
--
-- * 'nGatewayIPv4'
--
-- * 'nDescription'
network
    :: Network
network =
    Network
    { _nKind = "compute#network"
    , _nIPv4Range = Nothing
    , _nSelfLink = Nothing
    , _nName = Nothing
    , _nCreationTimestamp = Nothing
    , _nId = Nothing
    , _nGatewayIPv4 = Nothing
    , _nDescription = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#network for networks.
nKind :: Lens' Network Text
nKind = lens _nKind (\ s a -> s{_nKind = a})

-- | The range of internal addresses that are legal on this network. This
-- range is a CIDR specification, for example: 192.168.0.0\/16. Provided by
-- the client when the network is created.
nIPv4Range :: Lens' Network (Maybe Text)
nIPv4Range
  = lens _nIPv4Range (\ s a -> s{_nIPv4Range = a})

-- | [Output Only] Server-defined URL for the resource.
nSelfLink :: Lens' Network (Maybe Text)
nSelfLink
  = lens _nSelfLink (\ s a -> s{_nSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
nName :: Lens' Network (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
nCreationTimestamp :: Lens' Network (Maybe Text)
nCreationTimestamp
  = lens _nCreationTimestamp
      (\ s a -> s{_nCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
nId :: Lens' Network (Maybe Word64)
nId = lens _nId (\ s a -> s{_nId = a})

-- | A gateway address for default routing to other networks. This value is
-- read only and is selected by the Google Compute Engine, typically as the
-- first usable address in the IPv4Range.
nGatewayIPv4 :: Lens' Network (Maybe Text)
nGatewayIPv4
  = lens _nGatewayIPv4 (\ s a -> s{_nGatewayIPv4 = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
nDescription :: Lens' Network (Maybe Text)
nDescription
  = lens _nDescription (\ s a -> s{_nDescription = a})

-- | A network interface resource attached to an instance.
--
-- /See:/ 'networkInterface' smart constructor.
data NetworkInterface = NetworkInterface
    { _niNetwork       :: !(Maybe Text)
    , _niName          :: !(Maybe Text)
    , _niNetworkIP     :: !(Maybe Text)
    , _niAccessConfigs :: !(Maybe [Maybe AccessConfig])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niNetwork'
--
-- * 'niName'
--
-- * 'niNetworkIP'
--
-- * 'niAccessConfigs'
networkInterface
    :: NetworkInterface
networkInterface =
    NetworkInterface
    { _niNetwork = Nothing
    , _niName = Nothing
    , _niNetworkIP = Nothing
    , _niAccessConfigs = Nothing
    }

-- | URL of the network resource for this instance. This is required for
-- creating an instance but optional when creating a firewall rule. If not
-- specified when creating a firewall rule, the default network is used:
-- global\/networks\/default If you specify this property, you can specify
-- the network as a full or partial URL. For example, the following are all
-- valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/global\/networks\/network
-- - projects\/project\/global\/networks\/network -
-- global\/networks\/default
niNetwork :: Lens' NetworkInterface (Maybe Text)
niNetwork
  = lens _niNetwork (\ s a -> s{_niNetwork = a})

-- | [Output Only] The name of the network interface, generated by the
-- server. For network devices, these are eth0, eth1, etc.
niName :: Lens' NetworkInterface (Maybe Text)
niName = lens _niName (\ s a -> s{_niName = a})

-- | [Output Only] An optional IPV4 internal network address assigned to the
-- instance for this network interface.
niNetworkIP :: Lens' NetworkInterface (Maybe Text)
niNetworkIP
  = lens _niNetworkIP (\ s a -> s{_niNetworkIP = a})

-- | An array of configurations for this interface. Currently, ONE_TO_ONE_NAT
-- is the only access config supported. If there are no accessConfigs
-- specified, then this instance will have no external internet access.
niAccessConfigs :: Lens' NetworkInterface [Maybe AccessConfig]
niAccessConfigs
  = lens _niAccessConfigs
      (\ s a -> s{_niAccessConfigs = a})
      . _Default
      . _Coerce

-- | Contains a list of Network resources.
--
-- /See:/ 'networkList' smart constructor.
data NetworkList = NetworkList
    { _nlNextPageToken :: !(Maybe Text)
    , _nlKind          :: !Text
    , _nlItems         :: !(Maybe [Maybe Network])
    , _nlSelfLink      :: !(Maybe Text)
    , _nlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlNextPageToken'
--
-- * 'nlKind'
--
-- * 'nlItems'
--
-- * 'nlSelfLink'
--
-- * 'nlId'
networkList
    :: NetworkList
networkList =
    NetworkList
    { _nlNextPageToken = Nothing
    , _nlKind = "compute#networkList"
    , _nlItems = Nothing
    , _nlSelfLink = Nothing
    , _nlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
nlNextPageToken :: Lens' NetworkList (Maybe Text)
nlNextPageToken
  = lens _nlNextPageToken
      (\ s a -> s{_nlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#networkList for lists of
-- networks.
nlKind :: Lens' NetworkList Text
nlKind = lens _nlKind (\ s a -> s{_nlKind = a})

-- | [Output Only] A list of Network resources.
nlItems :: Lens' NetworkList [Maybe Network]
nlItems
  = lens _nlItems (\ s a -> s{_nlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource .
nlSelfLink :: Lens' NetworkList (Maybe Text)
nlSelfLink
  = lens _nlSelfLink (\ s a -> s{_nlSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
nlId :: Lens' NetworkList (Maybe Text)
nlId = lens _nlId (\ s a -> s{_nlId = a})

-- | An Operation resource, used to manage asynchronous API requests.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oTargetId            :: !(Maybe Word64)
    , _oStatus              :: !(Maybe OperationStatus)
    , _oInsertTime          :: !(Maybe Text)
    , _oProgress            :: !(Maybe Int32)
    , _oStartTime           :: !(Maybe Text)
    , _oKind                :: !Text
    , _oError               :: !(Maybe OperationError)
    , _oHttpErrorMessage    :: !(Maybe Text)
    , _oZone                :: !(Maybe Text)
    , _oWarnings            :: !(Maybe [OperationItemWarnings])
    , _oHttpErrorStatusCode :: !(Maybe Int32)
    , _oUser                :: !(Maybe Text)
    , _oSelfLink            :: !(Maybe Text)
    , _oName                :: !(Maybe Text)
    , _oStatusMessage       :: !(Maybe Text)
    , _oCreationTimestamp   :: !(Maybe Text)
    , _oEndTime             :: !(Maybe Text)
    , _oId                  :: !(Maybe Word64)
    , _oOperationType       :: !(Maybe Text)
    , _oRegion              :: !(Maybe Text)
    , _oTargetLink          :: !(Maybe Text)
    , _oClientOperationId   :: !(Maybe Text)
    }

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oTargetId'
--
-- * 'oStatus'
--
-- * 'oInsertTime'
--
-- * 'oProgress'
--
-- * 'oStartTime'
--
-- * 'oKind'
--
-- * 'oError'
--
-- * 'oHttpErrorMessage'
--
-- * 'oZone'
--
-- * 'oWarnings'
--
-- * 'oHttpErrorStatusCode'
--
-- * 'oUser'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oStatusMessage'
--
-- * 'oCreationTimestamp'
--
-- * 'oEndTime'
--
-- * 'oId'
--
-- * 'oOperationType'
--
-- * 'oRegion'
--
-- * 'oTargetLink'
--
-- * 'oClientOperationId'
operation
    :: Operation
operation =
    Operation
    { _oTargetId = Nothing
    , _oStatus = Nothing
    , _oInsertTime = Nothing
    , _oProgress = Nothing
    , _oStartTime = Nothing
    , _oKind = "compute#operation"
    , _oError = Nothing
    , _oHttpErrorMessage = Nothing
    , _oZone = Nothing
    , _oWarnings = Nothing
    , _oHttpErrorStatusCode = Nothing
    , _oUser = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oStatusMessage = Nothing
    , _oCreationTimestamp = Nothing
    , _oEndTime = Nothing
    , _oId = Nothing
    , _oOperationType = Nothing
    , _oRegion = Nothing
    , _oTargetLink = Nothing
    , _oClientOperationId = Nothing
    }

-- | [Output Only] Unique target ID which identifies a particular incarnation
-- of the target.
oTargetId :: Lens' Operation (Maybe Word64)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a})

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | [Output Only] The time that this operation was requested. This is in
-- RFC3339 text format.
oInsertTime :: Lens' Operation (Maybe Text)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a})

-- | [Output Only] An optional progress indicator that ranges from 0 to 100.
-- There is no requirement that this be linear or support any granularity
-- of operations. This should not be used to guess at when the operation
-- will be complete. This number should monotonically increase as the
-- operation progresses.
oProgress :: Lens' Operation (Maybe Int32)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a})

-- | [Output Only] The time that this operation was started by the server.
-- This is in RFC3339 text format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | [Output Only] Type of the resource. Always compute#Operation for
-- Operation resources.
oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
oError :: Lens' Operation (Maybe OperationError)
oError = lens _oError (\ s a -> s{_oError = a})

-- | [Output Only] If the operation fails, this field contains the HTTP error
-- message that was returned, such as NOT FOUND.
oHttpErrorMessage :: Lens' Operation (Maybe Text)
oHttpErrorMessage
  = lens _oHttpErrorMessage
      (\ s a -> s{_oHttpErrorMessage = a})

-- | [Output Only] URL of the zone where the operation resides.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | [Output Only] If warning messages are generated during processing of the
-- operation, this field will be populated.
oWarnings :: Lens' Operation [OperationItemWarnings]
oWarnings
  = lens _oWarnings (\ s a -> s{_oWarnings = a}) .
      _Default
      . _Coerce

-- | [Output Only] If the operation fails, this field contains the HTTP error
-- message that was returned, such as 404.
oHttpErrorStatusCode :: Lens' Operation (Maybe Int32)
oHttpErrorStatusCode
  = lens _oHttpErrorStatusCode
      (\ s a -> s{_oHttpErrorStatusCode = a})

-- | [Output Only] User who requested the operation, for example:
-- user\'example.com.
oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

-- | [Output Only] Server-defined URL for the resource.
oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | [Output Only] Name of the resource.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | [Output Only] An optional textual description of the current status of
-- the operation.
oStatusMessage :: Lens' Operation (Maybe Text)
oStatusMessage
  = lens _oStatusMessage
      (\ s a -> s{_oStatusMessage = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
oCreationTimestamp :: Lens' Operation (Maybe Text)
oCreationTimestamp
  = lens _oCreationTimestamp
      (\ s a -> s{_oCreationTimestamp = a})

-- | [Output Only] The time that this operation was completed. This is in
-- RFC3339 text format.
oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
oId :: Lens' Operation (Maybe Word64)
oId = lens _oId (\ s a -> s{_oId = a})

-- | [Output Only] Type of the operation, such as insert, update, and delete.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | [Output Only] URL of the region where the operation resides. Only
-- applicable for regional resources.
oRegion :: Lens' Operation (Maybe Text)
oRegion = lens _oRegion (\ s a -> s{_oRegion = a})

-- | [Output Only] URL of the resource the operation is mutating.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | [Output Only] An optional identifier specified by the client when the
-- mutation was initiated. Must be unique for all Operation resources in
-- the project.
oClientOperationId :: Lens' Operation (Maybe Text)
oClientOperationId
  = lens _oClientOperationId
      (\ s a -> s{_oClientOperationId = a})

--
-- /See:/ 'operationAggregatedList' smart constructor.
data OperationAggregatedList = OperationAggregatedList
    { _oalNextPageToken :: !(Maybe Text)
    , _oalKind          :: !Text
    , _oalItems         :: !(Maybe OperationAggregatedListItems)
    , _oalSelfLink      :: !(Maybe Text)
    , _oalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oalNextPageToken'
--
-- * 'oalKind'
--
-- * 'oalItems'
--
-- * 'oalSelfLink'
--
-- * 'oalId'
operationAggregatedList
    :: OperationAggregatedList
operationAggregatedList =
    OperationAggregatedList
    { _oalNextPageToken = Nothing
    , _oalKind = "compute#operationAggregatedList"
    , _oalItems = Nothing
    , _oalSelfLink = Nothing
    , _oalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
oalNextPageToken :: Lens' OperationAggregatedList (Maybe Text)
oalNextPageToken
  = lens _oalNextPageToken
      (\ s a -> s{_oalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#operationAggregatedList
-- for aggregated lists of operations.
oalKind :: Lens' OperationAggregatedList Text
oalKind = lens _oalKind (\ s a -> s{_oalKind = a})

-- | [Output Only] A map of scoped operation lists.
oalItems :: Lens' OperationAggregatedList (Maybe OperationAggregatedListItems)
oalItems = lens _oalItems (\ s a -> s{_oalItems = a})

-- | [Output Only] Server-defined URL for this resource.
oalSelfLink :: Lens' OperationAggregatedList (Maybe Text)
oalSelfLink
  = lens _oalSelfLink (\ s a -> s{_oalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
oalId :: Lens' OperationAggregatedList (Maybe Text)
oalId = lens _oalId (\ s a -> s{_oalId = a})

-- | [Output Only] A map of scoped operation lists.
--
-- /See:/ 'operationAggregatedListItems' smart constructor.
data OperationAggregatedListItems =
    OperationAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationAggregatedListItems' with the minimum fields required to make a request.
--
operationAggregatedListItems
    :: OperationAggregatedListItems
operationAggregatedListItems = OperationAggregatedListItems

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
--
-- /See:/ 'operationError' smart constructor.
newtype OperationError = OperationError
    { _oeErrors :: Maybe [OperationItemErrorsError]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeErrors'
operationError
    :: OperationError
operationError =
    OperationError
    { _oeErrors = Nothing
    }

-- | [Output Only] The array of errors encountered while processing this
-- operation.
oeErrors :: Lens' OperationError [OperationItemErrorsError]
oeErrors
  = lens _oeErrors (\ s a -> s{_oeErrors = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'operationItemDataItemWarnings' smart constructor.
data OperationItemDataItemWarnings = OperationItemDataItemWarnings
    { _oidiwValue :: !(Maybe Text)
    , _oidiwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationItemDataItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oidiwValue'
--
-- * 'oidiwKey'
operationItemDataItemWarnings
    :: OperationItemDataItemWarnings
operationItemDataItemWarnings =
    OperationItemDataItemWarnings
    { _oidiwValue = Nothing
    , _oidiwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
oidiwValue :: Lens' OperationItemDataItemWarnings (Maybe Text)
oidiwValue
  = lens _oidiwValue (\ s a -> s{_oidiwValue = a})

-- | [Output Only] A key for the warning data.
oidiwKey :: Lens' OperationItemDataItemWarnings (Maybe Text)
oidiwKey = lens _oidiwKey (\ s a -> s{_oidiwKey = a})

--
-- /See:/ 'operationItemErrorsError' smart constructor.
data OperationItemErrorsError = OperationItemErrorsError
    { _oieeLocation :: !(Maybe Text)
    , _oieeCode     :: !(Maybe Text)
    , _oieeMessage  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationItemErrorsError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oieeLocation'
--
-- * 'oieeCode'
--
-- * 'oieeMessage'
operationItemErrorsError
    :: OperationItemErrorsError
operationItemErrorsError =
    OperationItemErrorsError
    { _oieeLocation = Nothing
    , _oieeCode = Nothing
    , _oieeMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request which caused the error.
-- This property is optional.
oieeLocation :: Lens' OperationItemErrorsError (Maybe Text)
oieeLocation
  = lens _oieeLocation (\ s a -> s{_oieeLocation = a})

-- | [Output Only] The error type identifier for this error.
oieeCode :: Lens' OperationItemErrorsError (Maybe Text)
oieeCode = lens _oieeCode (\ s a -> s{_oieeCode = a})

-- | [Output Only] An optional, human-readable error message.
oieeMessage :: Lens' OperationItemErrorsError (Maybe Text)
oieeMessage
  = lens _oieeMessage (\ s a -> s{_oieeMessage = a})

--
-- /See:/ 'operationItemWarnings' smart constructor.
data OperationItemWarnings = OperationItemWarnings
    { _oiwData    :: !(Maybe [OperationItemDataItemWarnings])
    , _oiwCode    :: !(Maybe OperationCodeItemWarnings)
    , _oiwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'OperationItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiwData'
--
-- * 'oiwCode'
--
-- * 'oiwMessage'
operationItemWarnings
    :: OperationItemWarnings
operationItemWarnings =
    OperationItemWarnings
    { _oiwData = Nothing
    , _oiwCode = Nothing
    , _oiwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
oiwData :: Lens' OperationItemWarnings [OperationItemDataItemWarnings]
oiwData
  = lens _oiwData (\ s a -> s{_oiwData = a}) . _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
oiwCode :: Lens' OperationItemWarnings (Maybe OperationCodeItemWarnings)
oiwCode = lens _oiwCode (\ s a -> s{_oiwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
oiwMessage :: Lens' OperationItemWarnings (Maybe Text)
oiwMessage
  = lens _oiwMessage (\ s a -> s{_oiwMessage = a})

-- | Contains a list of Operation resources.
--
-- /See:/ 'operationList' smart constructor.
data OperationList = OperationList
    { _olNextPageToken :: !(Maybe Text)
    , _olKind          :: !Text
    , _olItems         :: !(Maybe [Maybe Operation])
    , _olSelfLink      :: !(Maybe Text)
    , _olId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olNextPageToken'
--
-- * 'olKind'
--
-- * 'olItems'
--
-- * 'olSelfLink'
--
-- * 'olId'
operationList
    :: OperationList
operationList =
    OperationList
    { _olNextPageToken = Nothing
    , _olKind = "compute#operationList"
    , _olItems = Nothing
    , _olSelfLink = Nothing
    , _olId = Nothing
    }

-- | [Output Only] A token used to continue a truncate.
olNextPageToken :: Lens' OperationList (Maybe Text)
olNextPageToken
  = lens _olNextPageToken
      (\ s a -> s{_olNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#operations for Operations
-- resource.
olKind :: Lens' OperationList Text
olKind = lens _olKind (\ s a -> s{_olKind = a})

-- | [Output Only] The Operation resources.
olItems :: Lens' OperationList [Maybe Operation]
olItems
  = lens _olItems (\ s a -> s{_olItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
olSelfLink :: Lens' OperationList (Maybe Text)
olSelfLink
  = lens _olSelfLink (\ s a -> s{_olSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
olId :: Lens' OperationList (Maybe Text)
olId = lens _olId (\ s a -> s{_olId = a})

--
-- /See:/ 'operationsScopedList' smart constructor.
data OperationsScopedList = OperationsScopedList
    { _oslWarning    :: !(Maybe OperationsScopedListWarning)
    , _oslOperations :: !(Maybe [Maybe Operation])
    }

-- | Creates a value of 'OperationsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslWarning'
--
-- * 'oslOperations'
operationsScopedList
    :: OperationsScopedList
operationsScopedList =
    OperationsScopedList
    { _oslWarning = Nothing
    , _oslOperations = Nothing
    }

-- | [Output Only] Informational warning which replaces the list of
-- operations when the list is empty.
oslWarning :: Lens' OperationsScopedList (Maybe OperationsScopedListWarning)
oslWarning
  = lens _oslWarning (\ s a -> s{_oslWarning = a})

-- | [Output Only] List of operations contained in this scope.
oslOperations :: Lens' OperationsScopedList [Maybe Operation]
oslOperations
  = lens _oslOperations
      (\ s a -> s{_oslOperations = a})
      . _Default
      . _Coerce

--
-- /See:/ 'operationsScopedListItemDataWarning' smart constructor.
data OperationsScopedListItemDataWarning = OperationsScopedListItemDataWarning
    { _oslidwValue :: !(Maybe Text)
    , _oslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslidwValue'
--
-- * 'oslidwKey'
operationsScopedListItemDataWarning
    :: OperationsScopedListItemDataWarning
operationsScopedListItemDataWarning =
    OperationsScopedListItemDataWarning
    { _oslidwValue = Nothing
    , _oslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
oslidwValue :: Lens' OperationsScopedListItemDataWarning (Maybe Text)
oslidwValue
  = lens _oslidwValue (\ s a -> s{_oslidwValue = a})

-- | [Output Only] A key for the warning data.
oslidwKey :: Lens' OperationsScopedListItemDataWarning (Maybe Text)
oslidwKey
  = lens _oslidwKey (\ s a -> s{_oslidwKey = a})

-- | [Output Only] Informational warning which replaces the list of
-- operations when the list is empty.
--
-- /See:/ 'operationsScopedListWarning' smart constructor.
data OperationsScopedListWarning = OperationsScopedListWarning
    { _oslwData    :: !(Maybe [OperationsScopedListItemDataWarning])
    , _oslwCode    :: !(Maybe OperationsScopedListCodeWarning)
    , _oslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'OperationsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslwData'
--
-- * 'oslwCode'
--
-- * 'oslwMessage'
operationsScopedListWarning
    :: OperationsScopedListWarning
operationsScopedListWarning =
    OperationsScopedListWarning
    { _oslwData = Nothing
    , _oslwCode = Nothing
    , _oslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
oslwData :: Lens' OperationsScopedListWarning [OperationsScopedListItemDataWarning]
oslwData
  = lens _oslwData (\ s a -> s{_oslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
oslwCode :: Lens' OperationsScopedListWarning (Maybe OperationsScopedListCodeWarning)
oslwCode = lens _oslwCode (\ s a -> s{_oslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
oslwMessage :: Lens' OperationsScopedListWarning (Maybe Text)
oslwMessage
  = lens _oslwMessage (\ s a -> s{_oslwMessage = a})

-- | A matcher for the path portion of the URL. The BackendService from the
-- longest-matched rule will serve the URL. If no rule was matched, the
-- default_service will be used.
--
-- /See:/ 'pathMatcher' smart constructor.
data PathMatcher = PathMatcher
    { _pmDefaultService :: !(Maybe Text)
    , _pmName           :: !(Maybe Text)
    , _pmPathRules      :: !(Maybe [Maybe PathRule])
    , _pmDescription    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PathMatcher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmDefaultService'
--
-- * 'pmName'
--
-- * 'pmPathRules'
--
-- * 'pmDescription'
pathMatcher
    :: PathMatcher
pathMatcher =
    PathMatcher
    { _pmDefaultService = Nothing
    , _pmName = Nothing
    , _pmPathRules = Nothing
    , _pmDescription = Nothing
    }

-- | The URL to the BackendService resource. This will be used if none of the
-- \'pathRules\' defined by this PathMatcher is met by the URL\'s path
-- portion.
pmDefaultService :: Lens' PathMatcher (Maybe Text)
pmDefaultService
  = lens _pmDefaultService
      (\ s a -> s{_pmDefaultService = a})

-- | The name to which this PathMatcher is referred by the HostRule.
pmName :: Lens' PathMatcher (Maybe Text)
pmName = lens _pmName (\ s a -> s{_pmName = a})

-- | The list of path rules.
pmPathRules :: Lens' PathMatcher [Maybe PathRule]
pmPathRules
  = lens _pmPathRules (\ s a -> s{_pmPathRules = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource.
pmDescription :: Lens' PathMatcher (Maybe Text)
pmDescription
  = lens _pmDescription
      (\ s a -> s{_pmDescription = a})

-- | A path-matching rule for a URL. If matched, will use the specified
-- BackendService to handle the traffic arriving at this URL.
--
-- /See:/ 'pathRule' smart constructor.
data PathRule = PathRule
    { _prService :: !(Maybe Text)
    , _prPaths   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PathRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prService'
--
-- * 'prPaths'
pathRule
    :: PathRule
pathRule =
    PathRule
    { _prService = Nothing
    , _prPaths = Nothing
    }

-- | The URL of the BackendService resource if this rule is matched.
prService :: Lens' PathRule (Maybe Text)
prService
  = lens _prService (\ s a -> s{_prService = a})

-- | The list of path patterns to match. Each must start with \/ and the only
-- place a * is allowed is at the end following a \/. The string fed to the
-- path matcher does not include any text after the first ? or #, and those
-- chars are not allowed here.
prPaths :: Lens' PathRule [Text]
prPaths
  = lens _prPaths (\ s a -> s{_prPaths = a}) . _Default
      . _Coerce

-- | A Project resource. Projects can only be created in the Google
-- Developers Console. Unless marked otherwise, values can only be modified
-- in the console.
--
-- /See:/ 'project' smart constructor.
data Project = Project
    { _pKind                   :: !Text
    , _pUsageExportLocation    :: !(Maybe (Maybe UsageExportLocation))
    , _pSelfLink               :: !(Maybe Text)
    , _pName                   :: !(Maybe Text)
    , _pCreationTimestamp      :: !(Maybe Text)
    , _pEnabledFeatures        :: !(Maybe [Text])
    , _pQuotas                 :: !(Maybe [Maybe Quota])
    , _pId                     :: !(Maybe Word64)
    , _pDescription            :: !(Maybe Text)
    , _pCommonInstanceMetadata :: !(Maybe (Maybe Metadata))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pUsageExportLocation'
--
-- * 'pSelfLink'
--
-- * 'pName'
--
-- * 'pCreationTimestamp'
--
-- * 'pEnabledFeatures'
--
-- * 'pQuotas'
--
-- * 'pId'
--
-- * 'pDescription'
--
-- * 'pCommonInstanceMetadata'
project
    :: Project
project =
    Project
    { _pKind = "compute#project"
    , _pUsageExportLocation = Nothing
    , _pSelfLink = Nothing
    , _pName = Nothing
    , _pCreationTimestamp = Nothing
    , _pEnabledFeatures = Nothing
    , _pQuotas = Nothing
    , _pId = Nothing
    , _pDescription = Nothing
    , _pCommonInstanceMetadata = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#project for projects.
pKind :: Lens' Project Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The location in Cloud Storage and naming method of the daily usage
-- report.
pUsageExportLocation :: Lens' Project (Maybe (Maybe UsageExportLocation))
pUsageExportLocation
  = lens _pUsageExportLocation
      (\ s a -> s{_pUsageExportLocation = a})

-- | [Output Only] Server-defined URL for the resource.
pSelfLink :: Lens' Project (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | Name of the resource.
pName :: Lens' Project (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
pCreationTimestamp :: Lens' Project (Maybe Text)
pCreationTimestamp
  = lens _pCreationTimestamp
      (\ s a -> s{_pCreationTimestamp = a})

-- | Restricted features enabled for use on this project.
pEnabledFeatures :: Lens' Project [Text]
pEnabledFeatures
  = lens _pEnabledFeatures
      (\ s a -> s{_pEnabledFeatures = a})
      . _Default
      . _Coerce

-- | [Output Only] Quotas assigned to this project.
pQuotas :: Lens' Project [Maybe Quota]
pQuotas
  = lens _pQuotas (\ s a -> s{_pQuotas = a}) . _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server.
pId :: Lens' Project (Maybe Word64)
pId = lens _pId (\ s a -> s{_pId = a})

-- | An optional textual description of the resource.
pDescription :: Lens' Project (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

-- | Metadata key\/value pairs available to all instances contained in this
-- project. See Custom metadata for more information.
pCommonInstanceMetadata :: Lens' Project (Maybe (Maybe Metadata))
pCommonInstanceMetadata
  = lens _pCommonInstanceMetadata
      (\ s a -> s{_pCommonInstanceMetadata = a})

-- | A quotas entry.
--
-- /See:/ 'quota' smart constructor.
data Quota = Quota
    { _qMetric :: !(Maybe QuotaMetric)
    , _qLimit  :: !(Maybe Double)
    , _qUsage  :: !(Maybe Double)
    }

-- | Creates a value of 'Quota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qMetric'
--
-- * 'qLimit'
--
-- * 'qUsage'
quota
    :: Quota
quota =
    Quota
    { _qMetric = Nothing
    , _qLimit = Nothing
    , _qUsage = Nothing
    }

-- | [Output Only] Name of the quota metric.
qMetric :: Lens' Quota (Maybe QuotaMetric)
qMetric = lens _qMetric (\ s a -> s{_qMetric = a})

-- | [Output Only] Quota limit for this metric.
qLimit :: Lens' Quota (Maybe Double)
qLimit = lens _qLimit (\ s a -> s{_qLimit = a})

-- | [Output Only] Current usage of this metric.
qUsage :: Lens' Quota (Maybe Double)
qUsage = lens _qUsage (\ s a -> s{_qUsage = a})

-- | Region resource.
--
-- /See:/ 'region' smart constructor.
data Region = Region
    { _rStatus            :: !(Maybe RegionStatus)
    , _rZones             :: !(Maybe [Text])
    , _rKind              :: !Text
    , _rSelfLink          :: !(Maybe Text)
    , _rName              :: !(Maybe Text)
    , _rCreationTimestamp :: !(Maybe Text)
    , _rQuotas            :: !(Maybe [Maybe Quota])
    , _rId                :: !(Maybe Word64)
    , _rDescription       :: !(Maybe Text)
    , _rDeprecated        :: !(Maybe (Maybe DeprecationStatus))
    }

-- | Creates a value of 'Region' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStatus'
--
-- * 'rZones'
--
-- * 'rKind'
--
-- * 'rSelfLink'
--
-- * 'rName'
--
-- * 'rCreationTimestamp'
--
-- * 'rQuotas'
--
-- * 'rId'
--
-- * 'rDescription'
--
-- * 'rDeprecated'
region
    :: Region
region =
    Region
    { _rStatus = Nothing
    , _rZones = Nothing
    , _rKind = "compute#region"
    , _rSelfLink = Nothing
    , _rName = Nothing
    , _rCreationTimestamp = Nothing
    , _rQuotas = Nothing
    , _rId = Nothing
    , _rDescription = Nothing
    , _rDeprecated = Nothing
    }

-- | [Output Only] Status of the region, either UP or DOWN.
rStatus :: Lens' Region (Maybe RegionStatus)
rStatus = lens _rStatus (\ s a -> s{_rStatus = a})

-- | [Output Only] A list of zones available in this region, in the form of
-- resource URLs.
rZones :: Lens' Region [Text]
rZones
  = lens _rZones (\ s a -> s{_rZones = a}) . _Default .
      _Coerce

-- | [Output Only] Type of the resource. Always compute#region for regions.
rKind :: Lens' Region Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | [Output Only] Server-defined URL for the resource.
rSelfLink :: Lens' Region (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

-- | [Output Only] Name of the resource.
rName :: Lens' Region (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
rCreationTimestamp :: Lens' Region (Maybe Text)
rCreationTimestamp
  = lens _rCreationTimestamp
      (\ s a -> s{_rCreationTimestamp = a})

-- | [Output Only] Quotas assigned to this region.
rQuotas :: Lens' Region [Maybe Quota]
rQuotas
  = lens _rQuotas (\ s a -> s{_rQuotas = a}) . _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server
-- .
rId :: Lens' Region (Maybe Word64)
rId = lens _rId (\ s a -> s{_rId = a})

-- | [Output Only] Textual description of the resource.
rDescription :: Lens' Region (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

-- | [Output Only] The deprecation status associated with this region.
rDeprecated :: Lens' Region (Maybe (Maybe DeprecationStatus))
rDeprecated
  = lens _rDeprecated (\ s a -> s{_rDeprecated = a})

-- | Contains a list of region resources.
--
-- /See:/ 'regionList' smart constructor.
data RegionList = RegionList
    { _rlNextPageToken :: !(Maybe Text)
    , _rlKind          :: !Text
    , _rlItems         :: !(Maybe [Maybe Region])
    , _rlSelfLink      :: !(Maybe Text)
    , _rlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlNextPageToken'
--
-- * 'rlKind'
--
-- * 'rlItems'
--
-- * 'rlSelfLink'
--
-- * 'rlId'
regionList
    :: RegionList
regionList =
    RegionList
    { _rlNextPageToken = Nothing
    , _rlKind = "compute#regionList"
    , _rlItems = Nothing
    , _rlSelfLink = Nothing
    , _rlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
rlNextPageToken :: Lens' RegionList (Maybe Text)
rlNextPageToken
  = lens _rlNextPageToken
      (\ s a -> s{_rlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#regionList for lists of
-- regions.
rlKind :: Lens' RegionList Text
rlKind = lens _rlKind (\ s a -> s{_rlKind = a})

-- | [Output Only] A list of Region resources.
rlItems :: Lens' RegionList [Maybe Region]
rlItems
  = lens _rlItems (\ s a -> s{_rlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
rlSelfLink :: Lens' RegionList (Maybe Text)
rlSelfLink
  = lens _rlSelfLink (\ s a -> s{_rlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
rlId :: Lens' RegionList (Maybe Text)
rlId = lens _rlId (\ s a -> s{_rlId = a})

--
-- /See:/ 'resourceGroupReference' smart constructor.
newtype ResourceGroupReference = ResourceGroupReference
    { _rgrGroup :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceGroupReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgrGroup'
resourceGroupReference
    :: ResourceGroupReference
resourceGroupReference =
    ResourceGroupReference
    { _rgrGroup = Nothing
    }

-- | A URI referencing one of the resource views listed in the backend
-- service.
rgrGroup :: Lens' ResourceGroupReference (Maybe Text)
rgrGroup = lens _rgrGroup (\ s a -> s{_rgrGroup = a})

-- | The route resource. A Route is a rule that specifies how certain packets
-- should be handled by the virtual network. Routes are associated with
-- instances by tag and the set of Routes for a particular instance is
-- called its routing table. For each packet leaving a instance, the system
-- searches that instance\'s routing table for a single best matching
-- Route. Routes match packets by destination IP address, preferring
-- smaller or more specific ranges over larger ones. If there is a tie, the
-- system selects the Route with the smallest priority value. If there is
-- still a tie, it uses the layer three and four packet headers to select
-- just one of the remaining matching Routes. The packet is then forwarded
-- as specified by the nextHop field of the winning Route -- either to
-- another instance destination, a instance gateway or a Google Compute
-- Engien-operated gateway. Packets that do not match any Route in the
-- sending instance\'s routing table are dropped.
--
-- /See:/ 'route' smart constructor.
data Route = Route
    { _rrPriority          :: !(Maybe Word32)
    , _rrKind              :: !Text
    , _rrNextHopGateway    :: !(Maybe Text)
    , _rrNextHopNetwork    :: !(Maybe Text)
    , _rrNetwork           :: !(Maybe Text)
    , _rrWarnings          :: !(Maybe [RouteItemWarnings])
    , _rrNextHopIp         :: !(Maybe Text)
    , _rrDestRange         :: !(Maybe Text)
    , _rrSelfLink          :: !(Maybe Text)
    , _rrName              :: !(Maybe Text)
    , _rrCreationTimestamp :: !(Maybe Text)
    , _rrId                :: !(Maybe Word64)
    , _rrNextHopVpnTunnel  :: !(Maybe Text)
    , _rrDescription       :: !(Maybe Text)
    , _rrTags              :: !(Maybe [Text])
    , _rrNextHopInstance   :: !(Maybe Text)
    }

-- | Creates a value of 'Route' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrPriority'
--
-- * 'rrKind'
--
-- * 'rrNextHopGateway'
--
-- * 'rrNextHopNetwork'
--
-- * 'rrNetwork'
--
-- * 'rrWarnings'
--
-- * 'rrNextHopIp'
--
-- * 'rrDestRange'
--
-- * 'rrSelfLink'
--
-- * 'rrName'
--
-- * 'rrCreationTimestamp'
--
-- * 'rrId'
--
-- * 'rrNextHopVpnTunnel'
--
-- * 'rrDescription'
--
-- * 'rrTags'
--
-- * 'rrNextHopInstance'
route
    :: Route
route =
    Route
    { _rrPriority = Nothing
    , _rrKind = "compute#route"
    , _rrNextHopGateway = Nothing
    , _rrNextHopNetwork = Nothing
    , _rrNetwork = Nothing
    , _rrWarnings = Nothing
    , _rrNextHopIp = Nothing
    , _rrDestRange = Nothing
    , _rrSelfLink = Nothing
    , _rrName = Nothing
    , _rrCreationTimestamp = Nothing
    , _rrId = Nothing
    , _rrNextHopVpnTunnel = Nothing
    , _rrDescription = Nothing
    , _rrTags = Nothing
    , _rrNextHopInstance = Nothing
    }

-- | Breaks ties between Routes of equal specificity. Routes with smaller
-- values win when tied with routes with larger values. Default value is
-- 1000. A valid range is between 0 and 65535.
rrPriority :: Lens' Route (Maybe Word32)
rrPriority
  = lens _rrPriority (\ s a -> s{_rrPriority = a})

-- | [Output Only] Type of this resource. Always compute#routes for Route
-- resources.
rrKind :: Lens' Route Text
rrKind = lens _rrKind (\ s a -> s{_rrKind = a})

-- | The URL to a gateway that should handle matching packets. Currently,
-- this is only the internet gateway:
-- projects\/\/global\/gateways\/default-internet-gateway
rrNextHopGateway :: Lens' Route (Maybe Text)
rrNextHopGateway
  = lens _rrNextHopGateway
      (\ s a -> s{_rrNextHopGateway = a})

-- | The URL of the local network if it should handle matching packets.
rrNextHopNetwork :: Lens' Route (Maybe Text)
rrNextHopNetwork
  = lens _rrNextHopNetwork
      (\ s a -> s{_rrNextHopNetwork = a})

-- | Fully-qualified URL of the network that this route applies to.
rrNetwork :: Lens' Route (Maybe Text)
rrNetwork
  = lens _rrNetwork (\ s a -> s{_rrNetwork = a})

-- | [Output Only] If potential misconfigurations are detected for this
-- route, this field will be populated with warning messages.
rrWarnings :: Lens' Route [RouteItemWarnings]
rrWarnings
  = lens _rrWarnings (\ s a -> s{_rrWarnings = a}) .
      _Default
      . _Coerce

-- | The network IP address of an instance that should handle matching
-- packets.
rrNextHopIp :: Lens' Route (Maybe Text)
rrNextHopIp
  = lens _rrNextHopIp (\ s a -> s{_rrNextHopIp = a})

-- | The destination range of outgoing packets that this route applies to.
rrDestRange :: Lens' Route (Maybe Text)
rrDestRange
  = lens _rrDestRange (\ s a -> s{_rrDestRange = a})

-- | [Output Only] Server-defined fully-qualified URL for this resource.
rrSelfLink :: Lens' Route (Maybe Text)
rrSelfLink
  = lens _rrSelfLink (\ s a -> s{_rrSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
rrName :: Lens' Route (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
rrCreationTimestamp :: Lens' Route (Maybe Text)
rrCreationTimestamp
  = lens _rrCreationTimestamp
      (\ s a -> s{_rrCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
rrId :: Lens' Route (Maybe Word64)
rrId = lens _rrId (\ s a -> s{_rrId = a})

-- | The URL to a VpnTunnel that should handle matching packets.
rrNextHopVpnTunnel :: Lens' Route (Maybe Text)
rrNextHopVpnTunnel
  = lens _rrNextHopVpnTunnel
      (\ s a -> s{_rrNextHopVpnTunnel = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
rrDescription :: Lens' Route (Maybe Text)
rrDescription
  = lens _rrDescription
      (\ s a -> s{_rrDescription = a})

-- | A list of instance tags to which this route applies.
rrTags :: Lens' Route [Text]
rrTags
  = lens _rrTags (\ s a -> s{_rrTags = a}) . _Default .
      _Coerce

-- | The fully-qualified URL to an instance that should handle matching
-- packets. For example:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/instances\/
rrNextHopInstance :: Lens' Route (Maybe Text)
rrNextHopInstance
  = lens _rrNextHopInstance
      (\ s a -> s{_rrNextHopInstance = a})

--
-- /See:/ 'routeItemDataItemWarnings' smart constructor.
data RouteItemDataItemWarnings = RouteItemDataItemWarnings
    { _ridiwValue :: !(Maybe Text)
    , _ridiwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouteItemDataItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ridiwValue'
--
-- * 'ridiwKey'
routeItemDataItemWarnings
    :: RouteItemDataItemWarnings
routeItemDataItemWarnings =
    RouteItemDataItemWarnings
    { _ridiwValue = Nothing
    , _ridiwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
ridiwValue :: Lens' RouteItemDataItemWarnings (Maybe Text)
ridiwValue
  = lens _ridiwValue (\ s a -> s{_ridiwValue = a})

-- | [Output Only] A key for the warning data.
ridiwKey :: Lens' RouteItemDataItemWarnings (Maybe Text)
ridiwKey = lens _ridiwKey (\ s a -> s{_ridiwKey = a})

--
-- /See:/ 'routeItemWarnings' smart constructor.
data RouteItemWarnings = RouteItemWarnings
    { _riwData    :: !(Maybe [RouteItemDataItemWarnings])
    , _riwCode    :: !(Maybe RouteCodeItemWarnings)
    , _riwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'RouteItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riwData'
--
-- * 'riwCode'
--
-- * 'riwMessage'
routeItemWarnings
    :: RouteItemWarnings
routeItemWarnings =
    RouteItemWarnings
    { _riwData = Nothing
    , _riwCode = Nothing
    , _riwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
riwData :: Lens' RouteItemWarnings [RouteItemDataItemWarnings]
riwData
  = lens _riwData (\ s a -> s{_riwData = a}) . _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
riwCode :: Lens' RouteItemWarnings (Maybe RouteCodeItemWarnings)
riwCode = lens _riwCode (\ s a -> s{_riwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
riwMessage :: Lens' RouteItemWarnings (Maybe Text)
riwMessage
  = lens _riwMessage (\ s a -> s{_riwMessage = a})

-- | Contains a list of route resources.
--
-- /See:/ 'routeList' smart constructor.
data RouteList = RouteList
    { _rouNextPageToken :: !(Maybe Text)
    , _rouKind          :: !Text
    , _rouItems         :: !(Maybe [Maybe Route])
    , _rouSelfLink      :: !(Maybe Text)
    , _rouId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouteList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rouNextPageToken'
--
-- * 'rouKind'
--
-- * 'rouItems'
--
-- * 'rouSelfLink'
--
-- * 'rouId'
routeList
    :: RouteList
routeList =
    RouteList
    { _rouNextPageToken = Nothing
    , _rouKind = "compute#routeList"
    , _rouItems = Nothing
    , _rouSelfLink = Nothing
    , _rouId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
rouNextPageToken :: Lens' RouteList (Maybe Text)
rouNextPageToken
  = lens _rouNextPageToken
      (\ s a -> s{_rouNextPageToken = a})

-- | Type of resource.
rouKind :: Lens' RouteList Text
rouKind = lens _rouKind (\ s a -> s{_rouKind = a})

-- | A list of Route resources.
rouItems :: Lens' RouteList [Maybe Route]
rouItems
  = lens _rouItems (\ s a -> s{_rouItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
rouSelfLink :: Lens' RouteList (Maybe Text)
rouSelfLink
  = lens _rouSelfLink (\ s a -> s{_rouSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
rouId :: Lens' RouteList (Maybe Text)
rouId = lens _rouId (\ s a -> s{_rouId = a})

-- | Sets the scheduling options for an Instance.
--
-- /See:/ 'scheduling' smart constructor.
data Scheduling = Scheduling
    { _sAutomaticRestart  :: !(Maybe Bool)
    , _sOnHostMaintenance :: !(Maybe SchedulingOnHostMaintenance)
    , _sPreemptible       :: !(Maybe Bool)
    }

-- | Creates a value of 'Scheduling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAutomaticRestart'
--
-- * 'sOnHostMaintenance'
--
-- * 'sPreemptible'
scheduling
    :: Scheduling
scheduling =
    Scheduling
    { _sAutomaticRestart = Nothing
    , _sOnHostMaintenance = Nothing
    , _sPreemptible = Nothing
    }

-- | Specifies whether the instance should be automatically restarted if it
-- is terminated by Compute Engine (not terminated by a user). You can only
-- set the automatic restart option for standard instances. Preemptible
-- instances cannot be automatically restarted.
sAutomaticRestart :: Lens' Scheduling (Maybe Bool)
sAutomaticRestart
  = lens _sAutomaticRestart
      (\ s a -> s{_sAutomaticRestart = a})

-- | Defines the maintenance behavior for this instance. For standard
-- instances, the default behavior is MIGRATE. For preemptible instances,
-- the default and only possible behavior is TERMINATE. For more
-- information, see Setting maintenance behavior.
sOnHostMaintenance :: Lens' Scheduling (Maybe SchedulingOnHostMaintenance)
sOnHostMaintenance
  = lens _sOnHostMaintenance
      (\ s a -> s{_sOnHostMaintenance = a})

-- | Whether the instance is preemptible.
sPreemptible :: Lens' Scheduling (Maybe Bool)
sPreemptible
  = lens _sPreemptible (\ s a -> s{_sPreemptible = a})

-- | An instance\'s serial console output.
--
-- /See:/ 'serialPortOutput' smart constructor.
data SerialPortOutput = SerialPortOutput
    { _spoContents :: !(Maybe Text)
    , _spoKind     :: !Text
    , _spoSelfLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SerialPortOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spoContents'
--
-- * 'spoKind'
--
-- * 'spoSelfLink'
serialPortOutput
    :: SerialPortOutput
serialPortOutput =
    SerialPortOutput
    { _spoContents = Nothing
    , _spoKind = "compute#serialPortOutput"
    , _spoSelfLink = Nothing
    }

-- | [Output Only] The contents of the console output.
spoContents :: Lens' SerialPortOutput (Maybe Text)
spoContents
  = lens _spoContents (\ s a -> s{_spoContents = a})

-- | [Output Only] Type of the resource. Always compute#serialPortOutput for
-- serial port output.
spoKind :: Lens' SerialPortOutput Text
spoKind = lens _spoKind (\ s a -> s{_spoKind = a})

-- | [Output Only] Server defined URL for the resource.
spoSelfLink :: Lens' SerialPortOutput (Maybe Text)
spoSelfLink
  = lens _spoSelfLink (\ s a -> s{_spoSelfLink = a})

-- | A service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount = ServiceAccount
    { _saEmail  :: !(Maybe Text)
    , _saScopes :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saScopes'
serviceAccount
    :: ServiceAccount
serviceAccount =
    ServiceAccount
    { _saEmail = Nothing
    , _saScopes = Nothing
    }

-- | Email address of the service account.
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | The list of scopes to be made available for this service account.
saScopes :: Lens' ServiceAccount [Text]
saScopes
  = lens _saScopes (\ s a -> s{_saScopes = a}) .
      _Default
      . _Coerce

-- | A persistent disk snapshot resource.
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot = Snapshot
    { _sStorageBytesStatus :: !(Maybe SnapshotStorageBytesStatus)
    , _sStatus             :: !(Maybe SnapshotStatus)
    , _sDiskSizeGb         :: !(Maybe Int64)
    , _sSourceDiskId       :: !(Maybe Text)
    , _sKind               :: !Text
    , _sStorageBytes       :: !(Maybe Int64)
    , _sSelfLink           :: !(Maybe Text)
    , _sName               :: !(Maybe Text)
    , _sCreationTimestamp  :: !(Maybe Text)
    , _sId                 :: !(Maybe Word64)
    , _sLicenses           :: !(Maybe [Text])
    , _sSourceDisk         :: !(Maybe Text)
    , _sDescription        :: !(Maybe Text)
    }

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStorageBytesStatus'
--
-- * 'sStatus'
--
-- * 'sDiskSizeGb'
--
-- * 'sSourceDiskId'
--
-- * 'sKind'
--
-- * 'sStorageBytes'
--
-- * 'sSelfLink'
--
-- * 'sName'
--
-- * 'sCreationTimestamp'
--
-- * 'sId'
--
-- * 'sLicenses'
--
-- * 'sSourceDisk'
--
-- * 'sDescription'
snapshot
    :: Snapshot
snapshot =
    Snapshot
    { _sStorageBytesStatus = Nothing
    , _sStatus = Nothing
    , _sDiskSizeGb = Nothing
    , _sSourceDiskId = Nothing
    , _sKind = "compute#snapshot"
    , _sStorageBytes = Nothing
    , _sSelfLink = Nothing
    , _sName = Nothing
    , _sCreationTimestamp = Nothing
    , _sId = Nothing
    , _sLicenses = Nothing
    , _sSourceDisk = Nothing
    , _sDescription = Nothing
    }

-- | [Output Only] An indicator whether storageBytes is in a stable state or
-- it is being adjusted as a result of shared storage reallocation.
sStorageBytesStatus :: Lens' Snapshot (Maybe SnapshotStorageBytesStatus)
sStorageBytesStatus
  = lens _sStorageBytesStatus
      (\ s a -> s{_sStorageBytesStatus = a})

-- | [Output Only] The status of the snapshot.
sStatus :: Lens' Snapshot (Maybe SnapshotStatus)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | [Output Only] Size of the snapshot, specified in GB.
sDiskSizeGb :: Lens' Snapshot (Maybe Int64)
sDiskSizeGb
  = lens _sDiskSizeGb (\ s a -> s{_sDiskSizeGb = a})

-- | [Output Only] The ID value of the disk used to create this snapshot.
-- This value may be used to determine whether the snapshot was taken from
-- the current or a previous instance of a given disk name.
sSourceDiskId :: Lens' Snapshot (Maybe Text)
sSourceDiskId
  = lens _sSourceDiskId
      (\ s a -> s{_sSourceDiskId = a})

-- | [Output Only] Type of the resource. Always compute#snapshot for Snapshot
-- resources.
sKind :: Lens' Snapshot Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | [Output Only] A size of the the storage used by the snapshot. As
-- snapshots share storage, this number is expected to change with snapshot
-- creation\/deletion.
sStorageBytes :: Lens' Snapshot (Maybe Int64)
sStorageBytes
  = lens _sStorageBytes
      (\ s a -> s{_sStorageBytes = a})

-- | [Output Only] Server-defined URL for the resource.
sSelfLink :: Lens' Snapshot (Maybe Text)
sSelfLink
  = lens _sSelfLink (\ s a -> s{_sSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
sName :: Lens' Snapshot (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
sCreationTimestamp :: Lens' Snapshot (Maybe Text)
sCreationTimestamp
  = lens _sCreationTimestamp
      (\ s a -> s{_sCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
sId :: Lens' Snapshot (Maybe Word64)
sId = lens _sId (\ s a -> s{_sId = a})

-- | Public visible licenses.
sLicenses :: Lens' Snapshot [Text]
sLicenses
  = lens _sLicenses (\ s a -> s{_sLicenses = a}) .
      _Default
      . _Coerce

-- | The source disk used to create this snapshot.
sSourceDisk :: Lens' Snapshot (Maybe Text)
sSourceDisk
  = lens _sSourceDisk (\ s a -> s{_sSourceDisk = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
sDescription :: Lens' Snapshot (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

-- | Contains a list of Snapshot resources.
--
-- /See:/ 'snapshotList' smart constructor.
data SnapshotList = SnapshotList
    { _slNextPageToken :: !(Maybe Text)
    , _slKind          :: !Text
    , _slItems         :: !(Maybe [Maybe Snapshot])
    , _slSelfLink      :: !(Maybe Text)
    , _slId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slNextPageToken'
--
-- * 'slKind'
--
-- * 'slItems'
--
-- * 'slSelfLink'
--
-- * 'slId'
snapshotList
    :: SnapshotList
snapshotList =
    SnapshotList
    { _slNextPageToken = Nothing
    , _slKind = "compute#snapshotList"
    , _slItems = Nothing
    , _slSelfLink = Nothing
    , _slId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
slNextPageToken :: Lens' SnapshotList (Maybe Text)
slNextPageToken
  = lens _slNextPageToken
      (\ s a -> s{_slNextPageToken = a})

-- | Type of resource.
slKind :: Lens' SnapshotList Text
slKind = lens _slKind (\ s a -> s{_slKind = a})

-- | A list of Snapshot resources.
slItems :: Lens' SnapshotList [Maybe Snapshot]
slItems
  = lens _slItems (\ s a -> s{_slItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
slSelfLink :: Lens' SnapshotList (Maybe Text)
slSelfLink
  = lens _slSelfLink (\ s a -> s{_slSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
slId :: Lens' SnapshotList (Maybe Text)
slId = lens _slId (\ s a -> s{_slId = a})

-- | A set of instance tags.
--
-- /See:/ 'tags' smart constructor.
data Tags = Tags
    { _tFingerprint :: !(Maybe Word8)
    , _tItems       :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tFingerprint'
--
-- * 'tItems'
tags
    :: Tags
tags =
    Tags
    { _tFingerprint = Nothing
    , _tItems = Nothing
    }

-- | Specifies a fingerprint for this request, which is essentially a hash of
-- the metadata\'s contents and used for optimistic locking. The
-- fingerprint is initially generated by Compute Engine and changes after
-- every request to modify or update metadata. You must always provide an
-- up-to-date fingerprint hash in order to update or change metadata. To
-- see the latest fingerprint, make get() request to the instance.
tFingerprint :: Lens' Tags (Maybe Word8)
tFingerprint
  = lens _tFingerprint (\ s a -> s{_tFingerprint = a})

-- | An array of tags. Each tag must be 1-63 characters long, and comply with
-- RFC1035.
tItems :: Lens' Tags [Text]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

-- | A TargetHttpProxy resource. This resource defines an HTTP proxy.
--
-- /See:/ 'targetHttpProxy' smart constructor.
data TargetHttpProxy = TargetHttpProxy
    { _thpUrlMap            :: !(Maybe Text)
    , _thpKind              :: !Text
    , _thpSelfLink          :: !(Maybe Text)
    , _thpName              :: !(Maybe Text)
    , _thpCreationTimestamp :: !(Maybe Text)
    , _thpId                :: !(Maybe Word64)
    , _thpDescription       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHttpProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpUrlMap'
--
-- * 'thpKind'
--
-- * 'thpSelfLink'
--
-- * 'thpName'
--
-- * 'thpCreationTimestamp'
--
-- * 'thpId'
--
-- * 'thpDescription'
targetHttpProxy
    :: TargetHttpProxy
targetHttpProxy =
    TargetHttpProxy
    { _thpUrlMap = Nothing
    , _thpKind = "compute#targetHttpProxy"
    , _thpSelfLink = Nothing
    , _thpName = Nothing
    , _thpCreationTimestamp = Nothing
    , _thpId = Nothing
    , _thpDescription = Nothing
    }

-- | URL to the UrlMap resource that defines the mapping from URL to the
-- BackendService.
thpUrlMap :: Lens' TargetHttpProxy (Maybe Text)
thpUrlMap
  = lens _thpUrlMap (\ s a -> s{_thpUrlMap = a})

-- | [Output Only] Type of resource. Always compute#Operation for Operation
-- resources.
thpKind :: Lens' TargetHttpProxy Text
thpKind = lens _thpKind (\ s a -> s{_thpKind = a})

-- | [Output Only] Server-defined URL for the resource.
thpSelfLink :: Lens' TargetHttpProxy (Maybe Text)
thpSelfLink
  = lens _thpSelfLink (\ s a -> s{_thpSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
thpName :: Lens' TargetHttpProxy (Maybe Text)
thpName = lens _thpName (\ s a -> s{_thpName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
thpCreationTimestamp :: Lens' TargetHttpProxy (Maybe Text)
thpCreationTimestamp
  = lens _thpCreationTimestamp
      (\ s a -> s{_thpCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
thpId :: Lens' TargetHttpProxy (Maybe Word64)
thpId = lens _thpId (\ s a -> s{_thpId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
thpDescription :: Lens' TargetHttpProxy (Maybe Text)
thpDescription
  = lens _thpDescription
      (\ s a -> s{_thpDescription = a})

-- | A list of TargetHttpProxy resources.
--
-- /See:/ 'targetHttpProxyList' smart constructor.
data TargetHttpProxyList = TargetHttpProxyList
    { _thplNextPageToken :: !(Maybe Text)
    , _thplKind          :: !Text
    , _thplItems         :: !(Maybe [Maybe TargetHttpProxy])
    , _thplSelfLink      :: !(Maybe Text)
    , _thplId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHttpProxyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thplNextPageToken'
--
-- * 'thplKind'
--
-- * 'thplItems'
--
-- * 'thplSelfLink'
--
-- * 'thplId'
targetHttpProxyList
    :: TargetHttpProxyList
targetHttpProxyList =
    TargetHttpProxyList
    { _thplNextPageToken = Nothing
    , _thplKind = "compute#targetHttpProxyList"
    , _thplItems = Nothing
    , _thplSelfLink = Nothing
    , _thplId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
thplNextPageToken :: Lens' TargetHttpProxyList (Maybe Text)
thplNextPageToken
  = lens _thplNextPageToken
      (\ s a -> s{_thplNextPageToken = a})

-- | Type of resource. Always compute#targetHttpProxyList for lists of Target
-- HTTP proxies.
thplKind :: Lens' TargetHttpProxyList Text
thplKind = lens _thplKind (\ s a -> s{_thplKind = a})

-- | A list of TargetHttpProxy resources.
thplItems :: Lens' TargetHttpProxyList [Maybe TargetHttpProxy]
thplItems
  = lens _thplItems (\ s a -> s{_thplItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
thplSelfLink :: Lens' TargetHttpProxyList (Maybe Text)
thplSelfLink
  = lens _thplSelfLink (\ s a -> s{_thplSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
thplId :: Lens' TargetHttpProxyList (Maybe Text)
thplId = lens _thplId (\ s a -> s{_thplId = a})

-- | A TargetInstance resource. This resource defines an endpoint instance
-- that terminates traffic of certain protocols.
--
-- /See:/ 'targetInstance' smart constructor.
data TargetInstance = TargetInstance
    { _tiKind              :: !Text
    , _tiNatPolicy         :: !(Maybe TargetInstanceNatPolicy)
    , _tiZone              :: !(Maybe Text)
    , _tiSelfLink          :: !(Maybe Text)
    , _tiName              :: !(Maybe Text)
    , _tiCreationTimestamp :: !(Maybe Text)
    , _tiId                :: !(Maybe Word64)
    , _tiDescription       :: !(Maybe Text)
    , _tiInstance          :: !(Maybe Text)
    }

-- | Creates a value of 'TargetInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiKind'
--
-- * 'tiNatPolicy'
--
-- * 'tiZone'
--
-- * 'tiSelfLink'
--
-- * 'tiName'
--
-- * 'tiCreationTimestamp'
--
-- * 'tiId'
--
-- * 'tiDescription'
--
-- * 'tiInstance'
targetInstance
    :: TargetInstance
targetInstance =
    TargetInstance
    { _tiKind = "compute#targetInstance"
    , _tiNatPolicy = Nothing
    , _tiZone = Nothing
    , _tiSelfLink = Nothing
    , _tiName = Nothing
    , _tiCreationTimestamp = Nothing
    , _tiId = Nothing
    , _tiDescription = Nothing
    , _tiInstance = Nothing
    }

-- | Type of the resource.
tiKind :: Lens' TargetInstance Text
tiKind = lens _tiKind (\ s a -> s{_tiKind = a})

-- | NAT option controlling how IPs are NAT\'ed to the instance. Currently
-- only NO_NAT (default value) is supported.
tiNatPolicy :: Lens' TargetInstance (Maybe TargetInstanceNatPolicy)
tiNatPolicy
  = lens _tiNatPolicy (\ s a -> s{_tiNatPolicy = a})

-- | [Output Only] URL of the zone where the target instance resides.
tiZone :: Lens' TargetInstance (Maybe Text)
tiZone = lens _tiZone (\ s a -> s{_tiZone = a})

-- | [Output Only] Server-defined URL for the resource.
tiSelfLink :: Lens' TargetInstance (Maybe Text)
tiSelfLink
  = lens _tiSelfLink (\ s a -> s{_tiSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
tiName :: Lens' TargetInstance (Maybe Text)
tiName = lens _tiName (\ s a -> s{_tiName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
tiCreationTimestamp :: Lens' TargetInstance (Maybe Text)
tiCreationTimestamp
  = lens _tiCreationTimestamp
      (\ s a -> s{_tiCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
tiId :: Lens' TargetInstance (Maybe Word64)
tiId = lens _tiId (\ s a -> s{_tiId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
tiDescription :: Lens' TargetInstance (Maybe Text)
tiDescription
  = lens _tiDescription
      (\ s a -> s{_tiDescription = a})

-- | The URL to the instance that terminates the relevant traffic.
tiInstance :: Lens' TargetInstance (Maybe Text)
tiInstance
  = lens _tiInstance (\ s a -> s{_tiInstance = a})

--
-- /See:/ 'targetInstanceAggregatedList' smart constructor.
data TargetInstanceAggregatedList = TargetInstanceAggregatedList
    { _tialNextPageToken :: !(Maybe Text)
    , _tialKind          :: !Text
    , _tialItems         :: !(Maybe TargetInstanceAggregatedListItems)
    , _tialSelfLink      :: !(Maybe Text)
    , _tialId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstanceAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialNextPageToken'
--
-- * 'tialKind'
--
-- * 'tialItems'
--
-- * 'tialSelfLink'
--
-- * 'tialId'
targetInstanceAggregatedList
    :: TargetInstanceAggregatedList
targetInstanceAggregatedList =
    TargetInstanceAggregatedList
    { _tialNextPageToken = Nothing
    , _tialKind = "compute#targetInstanceAggregatedList"
    , _tialItems = Nothing
    , _tialSelfLink = Nothing
    , _tialId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tialNextPageToken :: Lens' TargetInstanceAggregatedList (Maybe Text)
tialNextPageToken
  = lens _tialNextPageToken
      (\ s a -> s{_tialNextPageToken = a})

-- | Type of resource.
tialKind :: Lens' TargetInstanceAggregatedList Text
tialKind = lens _tialKind (\ s a -> s{_tialKind = a})

-- | A map of scoped target instance lists.
tialItems :: Lens' TargetInstanceAggregatedList (Maybe TargetInstanceAggregatedListItems)
tialItems
  = lens _tialItems (\ s a -> s{_tialItems = a})

-- | [Output Only] Server-defined URL for this resource.
tialSelfLink :: Lens' TargetInstanceAggregatedList (Maybe Text)
tialSelfLink
  = lens _tialSelfLink (\ s a -> s{_tialSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
tialId :: Lens' TargetInstanceAggregatedList (Maybe Text)
tialId = lens _tialId (\ s a -> s{_tialId = a})

-- | A map of scoped target instance lists.
--
-- /See:/ 'targetInstanceAggregatedListItems' smart constructor.
data TargetInstanceAggregatedListItems =
    TargetInstanceAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstanceAggregatedListItems' with the minimum fields required to make a request.
--
targetInstanceAggregatedListItems
    :: TargetInstanceAggregatedListItems
targetInstanceAggregatedListItems = TargetInstanceAggregatedListItems

-- | Contains a list of TargetInstance resources.
--
-- /See:/ 'targetInstanceList' smart constructor.
data TargetInstanceList = TargetInstanceList
    { _tilNextPageToken :: !(Maybe Text)
    , _tilKind          :: !Text
    , _tilItems         :: !(Maybe [Maybe TargetInstance])
    , _tilSelfLink      :: !(Maybe Text)
    , _tilId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstanceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tilNextPageToken'
--
-- * 'tilKind'
--
-- * 'tilItems'
--
-- * 'tilSelfLink'
--
-- * 'tilId'
targetInstanceList
    :: TargetInstanceList
targetInstanceList =
    TargetInstanceList
    { _tilNextPageToken = Nothing
    , _tilKind = "compute#targetInstanceList"
    , _tilItems = Nothing
    , _tilSelfLink = Nothing
    , _tilId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tilNextPageToken :: Lens' TargetInstanceList (Maybe Text)
tilNextPageToken
  = lens _tilNextPageToken
      (\ s a -> s{_tilNextPageToken = a})

-- | Type of resource.
tilKind :: Lens' TargetInstanceList Text
tilKind = lens _tilKind (\ s a -> s{_tilKind = a})

-- | A list of TargetInstance resources.
tilItems :: Lens' TargetInstanceList [Maybe TargetInstance]
tilItems
  = lens _tilItems (\ s a -> s{_tilItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
tilSelfLink :: Lens' TargetInstanceList (Maybe Text)
tilSelfLink
  = lens _tilSelfLink (\ s a -> s{_tilSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
tilId :: Lens' TargetInstanceList (Maybe Text)
tilId = lens _tilId (\ s a -> s{_tilId = a})

--
-- /See:/ 'targetInstancesScopedList' smart constructor.
data TargetInstancesScopedList = TargetInstancesScopedList
    { _tislWarning         :: !(Maybe TargetInstancesScopedListWarning)
    , _tislTargetInstances :: !(Maybe [Maybe TargetInstance])
    }

-- | Creates a value of 'TargetInstancesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tislWarning'
--
-- * 'tislTargetInstances'
targetInstancesScopedList
    :: TargetInstancesScopedList
targetInstancesScopedList =
    TargetInstancesScopedList
    { _tislWarning = Nothing
    , _tislTargetInstances = Nothing
    }

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
tislWarning :: Lens' TargetInstancesScopedList (Maybe TargetInstancesScopedListWarning)
tislWarning
  = lens _tislWarning (\ s a -> s{_tislWarning = a})

-- | List of target instances contained in this scope.
tislTargetInstances :: Lens' TargetInstancesScopedList [Maybe TargetInstance]
tislTargetInstances
  = lens _tislTargetInstances
      (\ s a -> s{_tislTargetInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetInstancesScopedListItemDataWarning' smart constructor.
data TargetInstancesScopedListItemDataWarning = TargetInstancesScopedListItemDataWarning
    { _tislidwValue :: !(Maybe Text)
    , _tislidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tislidwValue'
--
-- * 'tislidwKey'
targetInstancesScopedListItemDataWarning
    :: TargetInstancesScopedListItemDataWarning
targetInstancesScopedListItemDataWarning =
    TargetInstancesScopedListItemDataWarning
    { _tislidwValue = Nothing
    , _tislidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tislidwValue :: Lens' TargetInstancesScopedListItemDataWarning (Maybe Text)
tislidwValue
  = lens _tislidwValue (\ s a -> s{_tislidwValue = a})

-- | [Output Only] A key for the warning data.
tislidwKey :: Lens' TargetInstancesScopedListItemDataWarning (Maybe Text)
tislidwKey
  = lens _tislidwKey (\ s a -> s{_tislidwKey = a})

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'targetInstancesScopedListWarning' smart constructor.
data TargetInstancesScopedListWarning = TargetInstancesScopedListWarning
    { _tislwData    :: !(Maybe [TargetInstancesScopedListItemDataWarning])
    , _tislwCode    :: !(Maybe TargetInstancesScopedListCodeWarning)
    , _tislwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'TargetInstancesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tislwData'
--
-- * 'tislwCode'
--
-- * 'tislwMessage'
targetInstancesScopedListWarning
    :: TargetInstancesScopedListWarning
targetInstancesScopedListWarning =
    TargetInstancesScopedListWarning
    { _tislwData = Nothing
    , _tislwCode = Nothing
    , _tislwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
tislwData :: Lens' TargetInstancesScopedListWarning [TargetInstancesScopedListItemDataWarning]
tislwData
  = lens _tislwData (\ s a -> s{_tislwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
tislwCode :: Lens' TargetInstancesScopedListWarning (Maybe TargetInstancesScopedListCodeWarning)
tislwCode
  = lens _tislwCode (\ s a -> s{_tislwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
tislwMessage :: Lens' TargetInstancesScopedListWarning (Maybe Text)
tislwMessage
  = lens _tislwMessage (\ s a -> s{_tislwMessage = a})

-- | A TargetPool resource. This resource defines a pool of instances,
-- associated HttpHealthCheck resources, and the fallback TargetPool.
--
-- /See:/ 'targetPool' smart constructor.
data TargetPool = TargetPool
    { _tpSessionAffinity   :: !(Maybe TargetPoolSessionAffinity)
    , _tpBackupPool        :: !(Maybe Text)
    , _tpKind              :: !Text
    , _tpSelfLink          :: !(Maybe Text)
    , _tpName              :: !(Maybe Text)
    , _tpCreationTimestamp :: !(Maybe Text)
    , _tpInstances         :: !(Maybe [Text])
    , _tpId                :: !(Maybe Word64)
    , _tpFailoverRatio     :: !(Maybe Float)
    , _tpRegion            :: !(Maybe Text)
    , _tpDescription       :: !(Maybe Text)
    , _tpHealthChecks      :: !(Maybe [Text])
    }

-- | Creates a value of 'TargetPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpSessionAffinity'
--
-- * 'tpBackupPool'
--
-- * 'tpKind'
--
-- * 'tpSelfLink'
--
-- * 'tpName'
--
-- * 'tpCreationTimestamp'
--
-- * 'tpInstances'
--
-- * 'tpId'
--
-- * 'tpFailoverRatio'
--
-- * 'tpRegion'
--
-- * 'tpDescription'
--
-- * 'tpHealthChecks'
targetPool
    :: TargetPool
targetPool =
    TargetPool
    { _tpSessionAffinity = Nothing
    , _tpBackupPool = Nothing
    , _tpKind = "compute#targetPool"
    , _tpSelfLink = Nothing
    , _tpName = Nothing
    , _tpCreationTimestamp = Nothing
    , _tpInstances = Nothing
    , _tpId = Nothing
    , _tpFailoverRatio = Nothing
    , _tpRegion = Nothing
    , _tpDescription = Nothing
    , _tpHealthChecks = Nothing
    }

-- | Sesssion affinity option, must be one of the following values: NONE:
-- Connections from the same client IP may go to any instance in the pool;
-- CLIENT_IP: Connections from the same client IP will go to the same
-- instance in the pool while that instance remains healthy.
-- CLIENT_IP_PROTO: Connections from the same client IP with the same IP
-- protocol will go to the same instance in the pool while that instance
-- remains healthy.
tpSessionAffinity :: Lens' TargetPool (Maybe TargetPoolSessionAffinity)
tpSessionAffinity
  = lens _tpSessionAffinity
      (\ s a -> s{_tpSessionAffinity = a})

-- | This field is applicable only when the containing target pool is serving
-- a forwarding rule as the primary pool, and its failoverRatio field is
-- properly set to a value between [0, 1]. backupPool and failoverRatio
-- together define the fallback behavior of the primary target pool: if the
-- ratio of the healthy instances in the primary pool is at or below
-- failoverRatio, traffic arriving at the load-balanced IP will be directed
-- to the backup pool. In case where failoverRatio and backupPool are not
-- set, or all the instances in the backup pool are unhealthy, the traffic
-- will be directed back to the primary pool in the \"force\" mode, where
-- traffic will be spread to the healthy instances with the best effort, or
-- to all instances when no instance is healthy.
tpBackupPool :: Lens' TargetPool (Maybe Text)
tpBackupPool
  = lens _tpBackupPool (\ s a -> s{_tpBackupPool = a})

-- | Type of the resource.
tpKind :: Lens' TargetPool Text
tpKind = lens _tpKind (\ s a -> s{_tpKind = a})

-- | [Output Only] Server-defined URL for the resource.
tpSelfLink :: Lens' TargetPool (Maybe Text)
tpSelfLink
  = lens _tpSelfLink (\ s a -> s{_tpSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
tpName :: Lens' TargetPool (Maybe Text)
tpName = lens _tpName (\ s a -> s{_tpName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
tpCreationTimestamp :: Lens' TargetPool (Maybe Text)
tpCreationTimestamp
  = lens _tpCreationTimestamp
      (\ s a -> s{_tpCreationTimestamp = a})

-- | A list of resource URLs to the member virtual machines serving this
-- pool. They must live in zones contained in the same region as this pool.
tpInstances :: Lens' TargetPool [Text]
tpInstances
  = lens _tpInstances (\ s a -> s{_tpInstances = a}) .
      _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server.
tpId :: Lens' TargetPool (Maybe Word64)
tpId = lens _tpId (\ s a -> s{_tpId = a})

-- | This field is applicable only when the containing target pool is serving
-- a forwarding rule as the primary pool (i.e., not as a backup pool to
-- some other target pool). The value of the field must be in [0, 1]. If
-- set, backupPool must also be set. They together define the fallback
-- behavior of the primary target pool: if the ratio of the healthy
-- instances in the primary pool is at or below this number, traffic
-- arriving at the load-balanced IP will be directed to the backup pool. In
-- case where failoverRatio is not set or all the instances in the backup
-- pool are unhealthy, the traffic will be directed back to the primary
-- pool in the \"force\" mode, where traffic will be spread to the healthy
-- instances with the best effort, or to all instances when no instance is
-- healthy.
tpFailoverRatio :: Lens' TargetPool (Maybe Float)
tpFailoverRatio
  = lens _tpFailoverRatio
      (\ s a -> s{_tpFailoverRatio = a})

-- | [Output Only] URL of the region where the target pool resides.
tpRegion :: Lens' TargetPool (Maybe Text)
tpRegion = lens _tpRegion (\ s a -> s{_tpRegion = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
tpDescription :: Lens' TargetPool (Maybe Text)
tpDescription
  = lens _tpDescription
      (\ s a -> s{_tpDescription = a})

-- | A list of URLs to the HttpHealthCheck resource. A member instance in
-- this pool is considered healthy if and only if all specified health
-- checks pass. An empty list means all member instances will be considered
-- healthy at all times.
tpHealthChecks :: Lens' TargetPool [Text]
tpHealthChecks
  = lens _tpHealthChecks
      (\ s a -> s{_tpHealthChecks = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetPoolAggregatedList' smart constructor.
data TargetPoolAggregatedList = TargetPoolAggregatedList
    { _tpalNextPageToken :: !(Maybe Text)
    , _tpalKind          :: !Text
    , _tpalItems         :: !(Maybe TargetPoolAggregatedListItems)
    , _tpalSelfLink      :: !(Maybe Text)
    , _tpalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpalNextPageToken'
--
-- * 'tpalKind'
--
-- * 'tpalItems'
--
-- * 'tpalSelfLink'
--
-- * 'tpalId'
targetPoolAggregatedList
    :: TargetPoolAggregatedList
targetPoolAggregatedList =
    TargetPoolAggregatedList
    { _tpalNextPageToken = Nothing
    , _tpalKind = "compute#targetPoolAggregatedList"
    , _tpalItems = Nothing
    , _tpalSelfLink = Nothing
    , _tpalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tpalNextPageToken :: Lens' TargetPoolAggregatedList (Maybe Text)
tpalNextPageToken
  = lens _tpalNextPageToken
      (\ s a -> s{_tpalNextPageToken = a})

-- | Type of resource.
tpalKind :: Lens' TargetPoolAggregatedList Text
tpalKind = lens _tpalKind (\ s a -> s{_tpalKind = a})

-- | A map of scoped target pool lists.
tpalItems :: Lens' TargetPoolAggregatedList (Maybe TargetPoolAggregatedListItems)
tpalItems
  = lens _tpalItems (\ s a -> s{_tpalItems = a})

-- | [Output Only] Server-defined URL for this resource.
tpalSelfLink :: Lens' TargetPoolAggregatedList (Maybe Text)
tpalSelfLink
  = lens _tpalSelfLink (\ s a -> s{_tpalSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tpalId :: Lens' TargetPoolAggregatedList (Maybe Text)
tpalId = lens _tpalId (\ s a -> s{_tpalId = a})

-- | A map of scoped target pool lists.
--
-- /See:/ 'targetPoolAggregatedListItems' smart constructor.
data TargetPoolAggregatedListItems =
    TargetPoolAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolAggregatedListItems' with the minimum fields required to make a request.
--
targetPoolAggregatedListItems
    :: TargetPoolAggregatedListItems
targetPoolAggregatedListItems = TargetPoolAggregatedListItems

--
-- /See:/ 'targetPoolInstanceHealth' smart constructor.
data TargetPoolInstanceHealth = TargetPoolInstanceHealth
    { _tpihKind         :: !Text
    , _tpihHealthStatus :: !(Maybe [Maybe HealthStatus])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolInstanceHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpihKind'
--
-- * 'tpihHealthStatus'
targetPoolInstanceHealth
    :: TargetPoolInstanceHealth
targetPoolInstanceHealth =
    TargetPoolInstanceHealth
    { _tpihKind = "compute#targetPoolInstanceHealth"
    , _tpihHealthStatus = Nothing
    }

-- | Type of resource.
tpihKind :: Lens' TargetPoolInstanceHealth Text
tpihKind = lens _tpihKind (\ s a -> s{_tpihKind = a})

tpihHealthStatus :: Lens' TargetPoolInstanceHealth [Maybe HealthStatus]
tpihHealthStatus
  = lens _tpihHealthStatus
      (\ s a -> s{_tpihHealthStatus = a})
      . _Default
      . _Coerce

-- | Contains a list of TargetPool resources.
--
-- /See:/ 'targetPoolList' smart constructor.
data TargetPoolList = TargetPoolList
    { _tplNextPageToken :: !(Maybe Text)
    , _tplKind          :: !Text
    , _tplItems         :: !(Maybe [Maybe TargetPool])
    , _tplSelfLink      :: !(Maybe Text)
    , _tplId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplNextPageToken'
--
-- * 'tplKind'
--
-- * 'tplItems'
--
-- * 'tplSelfLink'
--
-- * 'tplId'
targetPoolList
    :: TargetPoolList
targetPoolList =
    TargetPoolList
    { _tplNextPageToken = Nothing
    , _tplKind = "compute#targetPoolList"
    , _tplItems = Nothing
    , _tplSelfLink = Nothing
    , _tplId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tplNextPageToken :: Lens' TargetPoolList (Maybe Text)
tplNextPageToken
  = lens _tplNextPageToken
      (\ s a -> s{_tplNextPageToken = a})

-- | Type of resource.
tplKind :: Lens' TargetPoolList Text
tplKind = lens _tplKind (\ s a -> s{_tplKind = a})

-- | A list of TargetPool resources.
tplItems :: Lens' TargetPoolList [Maybe TargetPool]
tplItems
  = lens _tplItems (\ s a -> s{_tplItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
tplSelfLink :: Lens' TargetPoolList (Maybe Text)
tplSelfLink
  = lens _tplSelfLink (\ s a -> s{_tplSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tplId :: Lens' TargetPoolList (Maybe Text)
tplId = lens _tplId (\ s a -> s{_tplId = a})

--
-- /See:/ 'targetPoolsAddHealthCheckRequest' smart constructor.
newtype TargetPoolsAddHealthCheckRequest = TargetPoolsAddHealthCheckRequest
    { _tpahcrHealthChecks :: Maybe [Maybe HealthCheckReference]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAddHealthCheckRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpahcrHealthChecks'
targetPoolsAddHealthCheckRequest
    :: TargetPoolsAddHealthCheckRequest
targetPoolsAddHealthCheckRequest =
    TargetPoolsAddHealthCheckRequest
    { _tpahcrHealthChecks = Nothing
    }

-- | Health check URLs to be added to targetPool.
tpahcrHealthChecks :: Lens' TargetPoolsAddHealthCheckRequest [Maybe HealthCheckReference]
tpahcrHealthChecks
  = lens _tpahcrHealthChecks
      (\ s a -> s{_tpahcrHealthChecks = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetPoolsAddInstanceRequest' smart constructor.
newtype TargetPoolsAddInstanceRequest = TargetPoolsAddInstanceRequest
    { _tpairInstances :: Maybe [Maybe InstanceReference]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAddInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpairInstances'
targetPoolsAddInstanceRequest
    :: TargetPoolsAddInstanceRequest
targetPoolsAddInstanceRequest =
    TargetPoolsAddInstanceRequest
    { _tpairInstances = Nothing
    }

-- | URLs of the instances to be added to targetPool.
tpairInstances :: Lens' TargetPoolsAddInstanceRequest [Maybe InstanceReference]
tpairInstances
  = lens _tpairInstances
      (\ s a -> s{_tpairInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetPoolsRemoveHealthCheckRequest' smart constructor.
newtype TargetPoolsRemoveHealthCheckRequest = TargetPoolsRemoveHealthCheckRequest
    { _tprhcrHealthChecks :: Maybe [Maybe HealthCheckReference]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveHealthCheckRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tprhcrHealthChecks'
targetPoolsRemoveHealthCheckRequest
    :: TargetPoolsRemoveHealthCheckRequest
targetPoolsRemoveHealthCheckRequest =
    TargetPoolsRemoveHealthCheckRequest
    { _tprhcrHealthChecks = Nothing
    }

-- | Health check URLs to be removed from targetPool.
tprhcrHealthChecks :: Lens' TargetPoolsRemoveHealthCheckRequest [Maybe HealthCheckReference]
tprhcrHealthChecks
  = lens _tprhcrHealthChecks
      (\ s a -> s{_tprhcrHealthChecks = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetPoolsRemoveInstanceRequest' smart constructor.
newtype TargetPoolsRemoveInstanceRequest = TargetPoolsRemoveInstanceRequest
    { _tprirInstances :: Maybe [Maybe InstanceReference]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tprirInstances'
targetPoolsRemoveInstanceRequest
    :: TargetPoolsRemoveInstanceRequest
targetPoolsRemoveInstanceRequest =
    TargetPoolsRemoveInstanceRequest
    { _tprirInstances = Nothing
    }

-- | URLs of the instances to be removed from targetPool.
tprirInstances :: Lens' TargetPoolsRemoveInstanceRequest [Maybe InstanceReference]
tprirInstances
  = lens _tprirInstances
      (\ s a -> s{_tprirInstances = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetPoolsScopedList' smart constructor.
data TargetPoolsScopedList = TargetPoolsScopedList
    { _tpslWarning     :: !(Maybe TargetPoolsScopedListWarning)
    , _tpslTargetPools :: !(Maybe [Maybe TargetPool])
    }

-- | Creates a value of 'TargetPoolsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpslWarning'
--
-- * 'tpslTargetPools'
targetPoolsScopedList
    :: TargetPoolsScopedList
targetPoolsScopedList =
    TargetPoolsScopedList
    { _tpslWarning = Nothing
    , _tpslTargetPools = Nothing
    }

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
tpslWarning :: Lens' TargetPoolsScopedList (Maybe TargetPoolsScopedListWarning)
tpslWarning
  = lens _tpslWarning (\ s a -> s{_tpslWarning = a})

-- | List of target pools contained in this scope.
tpslTargetPools :: Lens' TargetPoolsScopedList [Maybe TargetPool]
tpslTargetPools
  = lens _tpslTargetPools
      (\ s a -> s{_tpslTargetPools = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetPoolsScopedListItemDataWarning' smart constructor.
data TargetPoolsScopedListItemDataWarning = TargetPoolsScopedListItemDataWarning
    { _tpslidwValue :: !(Maybe Text)
    , _tpslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpslidwValue'
--
-- * 'tpslidwKey'
targetPoolsScopedListItemDataWarning
    :: TargetPoolsScopedListItemDataWarning
targetPoolsScopedListItemDataWarning =
    TargetPoolsScopedListItemDataWarning
    { _tpslidwValue = Nothing
    , _tpslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tpslidwValue :: Lens' TargetPoolsScopedListItemDataWarning (Maybe Text)
tpslidwValue
  = lens _tpslidwValue (\ s a -> s{_tpslidwValue = a})

-- | [Output Only] A key for the warning data.
tpslidwKey :: Lens' TargetPoolsScopedListItemDataWarning (Maybe Text)
tpslidwKey
  = lens _tpslidwKey (\ s a -> s{_tpslidwKey = a})

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'targetPoolsScopedListWarning' smart constructor.
data TargetPoolsScopedListWarning = TargetPoolsScopedListWarning
    { _tpslwData    :: !(Maybe [TargetPoolsScopedListItemDataWarning])
    , _tpslwCode    :: !(Maybe TargetPoolsScopedListCodeWarning)
    , _tpslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'TargetPoolsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpslwData'
--
-- * 'tpslwCode'
--
-- * 'tpslwMessage'
targetPoolsScopedListWarning
    :: TargetPoolsScopedListWarning
targetPoolsScopedListWarning =
    TargetPoolsScopedListWarning
    { _tpslwData = Nothing
    , _tpslwCode = Nothing
    , _tpslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
tpslwData :: Lens' TargetPoolsScopedListWarning [TargetPoolsScopedListItemDataWarning]
tpslwData
  = lens _tpslwData (\ s a -> s{_tpslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
tpslwCode :: Lens' TargetPoolsScopedListWarning (Maybe TargetPoolsScopedListCodeWarning)
tpslwCode
  = lens _tpslwCode (\ s a -> s{_tpslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
tpslwMessage :: Lens' TargetPoolsScopedListWarning (Maybe Text)
tpslwMessage
  = lens _tpslwMessage (\ s a -> s{_tpslwMessage = a})

--
-- /See:/ 'targetReference' smart constructor.
newtype TargetReference = TargetReference
    { _trTarget :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trTarget'
targetReference
    :: TargetReference
targetReference =
    TargetReference
    { _trTarget = Nothing
    }

trTarget :: Lens' TargetReference (Maybe Text)
trTarget = lens _trTarget (\ s a -> s{_trTarget = a})

--
-- /See:/ 'targetVpnGateway' smart constructor.
data TargetVpnGateway = TargetVpnGateway
    { _tvgStatus            :: !(Maybe TargetVpnGatewayStatus)
    , _tvgKind              :: !Text
    , _tvgNetwork           :: !(Maybe Text)
    , _tvgSelfLink          :: !(Maybe Text)
    , _tvgName              :: !(Maybe Text)
    , _tvgCreationTimestamp :: !(Maybe Text)
    , _tvgId                :: !(Maybe Word64)
    , _tvgRegion            :: !(Maybe Text)
    , _tvgTunnels           :: !(Maybe [Text])
    , _tvgDescription       :: !(Maybe Text)
    , _tvgForwardingRules   :: !(Maybe [Text])
    }

-- | Creates a value of 'TargetVpnGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgStatus'
--
-- * 'tvgKind'
--
-- * 'tvgNetwork'
--
-- * 'tvgSelfLink'
--
-- * 'tvgName'
--
-- * 'tvgCreationTimestamp'
--
-- * 'tvgId'
--
-- * 'tvgRegion'
--
-- * 'tvgTunnels'
--
-- * 'tvgDescription'
--
-- * 'tvgForwardingRules'
targetVpnGateway
    :: TargetVpnGateway
targetVpnGateway =
    TargetVpnGateway
    { _tvgStatus = Nothing
    , _tvgKind = "compute#targetVpnGateway"
    , _tvgNetwork = Nothing
    , _tvgSelfLink = Nothing
    , _tvgName = Nothing
    , _tvgCreationTimestamp = Nothing
    , _tvgId = Nothing
    , _tvgRegion = Nothing
    , _tvgTunnels = Nothing
    , _tvgDescription = Nothing
    , _tvgForwardingRules = Nothing
    }

-- | [Output Only] The status of the VPN gateway.
tvgStatus :: Lens' TargetVpnGateway (Maybe TargetVpnGatewayStatus)
tvgStatus
  = lens _tvgStatus (\ s a -> s{_tvgStatus = a})

-- | [Output Only] Type of resource. Always compute#targetVpnGateway for
-- target VPN gateways.
tvgKind :: Lens' TargetVpnGateway Text
tvgKind = lens _tvgKind (\ s a -> s{_tvgKind = a})

-- | URL of the network to which this VPN gateway is attached. Provided by
-- the client when the VPN gateway is created.
tvgNetwork :: Lens' TargetVpnGateway (Maybe Text)
tvgNetwork
  = lens _tvgNetwork (\ s a -> s{_tvgNetwork = a})

-- | [Output Only] Server-defined URL for the resource.
tvgSelfLink :: Lens' TargetVpnGateway (Maybe Text)
tvgSelfLink
  = lens _tvgSelfLink (\ s a -> s{_tvgSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
tvgName :: Lens' TargetVpnGateway (Maybe Text)
tvgName = lens _tvgName (\ s a -> s{_tvgName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
tvgCreationTimestamp :: Lens' TargetVpnGateway (Maybe Text)
tvgCreationTimestamp
  = lens _tvgCreationTimestamp
      (\ s a -> s{_tvgCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tvgId :: Lens' TargetVpnGateway (Maybe Word64)
tvgId = lens _tvgId (\ s a -> s{_tvgId = a})

-- | [Output Only] URL of the region where the target VPN gateway resides.
tvgRegion :: Lens' TargetVpnGateway (Maybe Text)
tvgRegion
  = lens _tvgRegion (\ s a -> s{_tvgRegion = a})

-- | [Output Only] A list of URLs to VpnTunnel resources. VpnTunnels are
-- created using compute.vpntunnels.insert and associated to a VPN gateway.
tvgTunnels :: Lens' TargetVpnGateway [Text]
tvgTunnels
  = lens _tvgTunnels (\ s a -> s{_tvgTunnels = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
tvgDescription :: Lens' TargetVpnGateway (Maybe Text)
tvgDescription
  = lens _tvgDescription
      (\ s a -> s{_tvgDescription = a})

-- | [Output Only] A list of URLs to the ForwardingRule resources.
-- ForwardingRules are created using compute.forwardingRules.insert and
-- associated to a VPN gateway.
tvgForwardingRules :: Lens' TargetVpnGateway [Text]
tvgForwardingRules
  = lens _tvgForwardingRules
      (\ s a -> s{_tvgForwardingRules = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetVpnGatewayAggregatedList' smart constructor.
data TargetVpnGatewayAggregatedList = TargetVpnGatewayAggregatedList
    { _tvgalNextPageToken :: !(Maybe Text)
    , _tvgalKind          :: !Text
    , _tvgalItems         :: !(Maybe TargetVpnGatewayAggregatedListItems)
    , _tvgalSelfLink      :: !(Maybe Text)
    , _tvgalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVpnGatewayAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgalNextPageToken'
--
-- * 'tvgalKind'
--
-- * 'tvgalItems'
--
-- * 'tvgalSelfLink'
--
-- * 'tvgalId'
targetVpnGatewayAggregatedList
    :: TargetVpnGatewayAggregatedList
targetVpnGatewayAggregatedList =
    TargetVpnGatewayAggregatedList
    { _tvgalNextPageToken = Nothing
    , _tvgalKind = "compute#targetVpnGatewayAggregatedList"
    , _tvgalItems = Nothing
    , _tvgalSelfLink = Nothing
    , _tvgalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tvgalNextPageToken :: Lens' TargetVpnGatewayAggregatedList (Maybe Text)
tvgalNextPageToken
  = lens _tvgalNextPageToken
      (\ s a -> s{_tvgalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#targetVpnGateway for
-- target VPN gateways.
tvgalKind :: Lens' TargetVpnGatewayAggregatedList Text
tvgalKind
  = lens _tvgalKind (\ s a -> s{_tvgalKind = a})

-- | A map of scoped target vpn gateway lists.
tvgalItems :: Lens' TargetVpnGatewayAggregatedList (Maybe TargetVpnGatewayAggregatedListItems)
tvgalItems
  = lens _tvgalItems (\ s a -> s{_tvgalItems = a})

-- | [Output Only] Server-defined URL for the resource.
tvgalSelfLink :: Lens' TargetVpnGatewayAggregatedList (Maybe Text)
tvgalSelfLink
  = lens _tvgalSelfLink
      (\ s a -> s{_tvgalSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tvgalId :: Lens' TargetVpnGatewayAggregatedList (Maybe Text)
tvgalId = lens _tvgalId (\ s a -> s{_tvgalId = a})

-- | A map of scoped target vpn gateway lists.
--
-- /See:/ 'targetVpnGatewayAggregatedListItems' smart constructor.
data TargetVpnGatewayAggregatedListItems =
    TargetVpnGatewayAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVpnGatewayAggregatedListItems' with the minimum fields required to make a request.
--
targetVpnGatewayAggregatedListItems
    :: TargetVpnGatewayAggregatedListItems
targetVpnGatewayAggregatedListItems = TargetVpnGatewayAggregatedListItems

-- | Contains a list of TargetVpnGateway resources.
--
-- /See:/ 'targetVpnGatewayList' smart constructor.
data TargetVpnGatewayList = TargetVpnGatewayList
    { _tvglNextPageToken :: !(Maybe Text)
    , _tvglKind          :: !Text
    , _tvglItems         :: !(Maybe [Maybe TargetVpnGateway])
    , _tvglSelfLink      :: !(Maybe Text)
    , _tvglId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVpnGatewayList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvglNextPageToken'
--
-- * 'tvglKind'
--
-- * 'tvglItems'
--
-- * 'tvglSelfLink'
--
-- * 'tvglId'
targetVpnGatewayList
    :: TargetVpnGatewayList
targetVpnGatewayList =
    TargetVpnGatewayList
    { _tvglNextPageToken = Nothing
    , _tvglKind = "compute#targetVpnGatewayList"
    , _tvglItems = Nothing
    , _tvglSelfLink = Nothing
    , _tvglId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tvglNextPageToken :: Lens' TargetVpnGatewayList (Maybe Text)
tvglNextPageToken
  = lens _tvglNextPageToken
      (\ s a -> s{_tvglNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#targetVpnGateway for
-- target VPN gateways.
tvglKind :: Lens' TargetVpnGatewayList Text
tvglKind = lens _tvglKind (\ s a -> s{_tvglKind = a})

-- | [Output Only] A list of TargetVpnGateway resources.
tvglItems :: Lens' TargetVpnGatewayList [Maybe TargetVpnGateway]
tvglItems
  = lens _tvglItems (\ s a -> s{_tvglItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
tvglSelfLink :: Lens' TargetVpnGatewayList (Maybe Text)
tvglSelfLink
  = lens _tvglSelfLink (\ s a -> s{_tvglSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tvglId :: Lens' TargetVpnGatewayList (Maybe Text)
tvglId = lens _tvglId (\ s a -> s{_tvglId = a})

--
-- /See:/ 'targetVpnGatewaysScopedList' smart constructor.
data TargetVpnGatewaysScopedList = TargetVpnGatewaysScopedList
    { _tvgslTargetVpnGateways :: !(Maybe [Maybe TargetVpnGateway])
    , _tvgslWarning           :: !(Maybe TargetVpnGatewaysScopedListWarning)
    }

-- | Creates a value of 'TargetVpnGatewaysScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgslTargetVpnGateways'
--
-- * 'tvgslWarning'
targetVpnGatewaysScopedList
    :: TargetVpnGatewaysScopedList
targetVpnGatewaysScopedList =
    TargetVpnGatewaysScopedList
    { _tvgslTargetVpnGateways = Nothing
    , _tvgslWarning = Nothing
    }

-- | [Output Only] List of target vpn gateways contained in this scope.
tvgslTargetVpnGateways :: Lens' TargetVpnGatewaysScopedList [Maybe TargetVpnGateway]
tvgslTargetVpnGateways
  = lens _tvgslTargetVpnGateways
      (\ s a -> s{_tvgslTargetVpnGateways = a})
      . _Default
      . _Coerce

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
tvgslWarning :: Lens' TargetVpnGatewaysScopedList (Maybe TargetVpnGatewaysScopedListWarning)
tvgslWarning
  = lens _tvgslWarning (\ s a -> s{_tvgslWarning = a})

--
-- /See:/ 'targetVpnGatewaysScopedListItemDataWarning' smart constructor.
data TargetVpnGatewaysScopedListItemDataWarning = TargetVpnGatewaysScopedListItemDataWarning
    { _tvgslidwValue :: !(Maybe Text)
    , _tvgslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVpnGatewaysScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgslidwValue'
--
-- * 'tvgslidwKey'
targetVpnGatewaysScopedListItemDataWarning
    :: TargetVpnGatewaysScopedListItemDataWarning
targetVpnGatewaysScopedListItemDataWarning =
    TargetVpnGatewaysScopedListItemDataWarning
    { _tvgslidwValue = Nothing
    , _tvgslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tvgslidwValue :: Lens' TargetVpnGatewaysScopedListItemDataWarning (Maybe Text)
tvgslidwValue
  = lens _tvgslidwValue
      (\ s a -> s{_tvgslidwValue = a})

-- | [Output Only] A key for the warning data.
tvgslidwKey :: Lens' TargetVpnGatewaysScopedListItemDataWarning (Maybe Text)
tvgslidwKey
  = lens _tvgslidwKey (\ s a -> s{_tvgslidwKey = a})

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
--
-- /See:/ 'targetVpnGatewaysScopedListWarning' smart constructor.
data TargetVpnGatewaysScopedListWarning = TargetVpnGatewaysScopedListWarning
    { _tvgslwData    :: !(Maybe [TargetVpnGatewaysScopedListItemDataWarning])
    , _tvgslwCode    :: !(Maybe TargetVpnGatewaysScopedListCodeWarning)
    , _tvgslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'TargetVpnGatewaysScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgslwData'
--
-- * 'tvgslwCode'
--
-- * 'tvgslwMessage'
targetVpnGatewaysScopedListWarning
    :: TargetVpnGatewaysScopedListWarning
targetVpnGatewaysScopedListWarning =
    TargetVpnGatewaysScopedListWarning
    { _tvgslwData = Nothing
    , _tvgslwCode = Nothing
    , _tvgslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
tvgslwData :: Lens' TargetVpnGatewaysScopedListWarning [TargetVpnGatewaysScopedListItemDataWarning]
tvgslwData
  = lens _tvgslwData (\ s a -> s{_tvgslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
tvgslwCode :: Lens' TargetVpnGatewaysScopedListWarning (Maybe TargetVpnGatewaysScopedListCodeWarning)
tvgslwCode
  = lens _tvgslwCode (\ s a -> s{_tvgslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
tvgslwMessage :: Lens' TargetVpnGatewaysScopedListWarning (Maybe Text)
tvgslwMessage
  = lens _tvgslwMessage
      (\ s a -> s{_tvgslwMessage = a})

--
-- /See:/ 'testFailure' smart constructor.
data TestFailure = TestFailure
    { _tfPath            :: !(Maybe Text)
    , _tfExpectedService :: !(Maybe Text)
    , _tfHost            :: !(Maybe Text)
    , _tfActualService   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfPath'
--
-- * 'tfExpectedService'
--
-- * 'tfHost'
--
-- * 'tfActualService'
testFailure
    :: TestFailure
testFailure =
    TestFailure
    { _tfPath = Nothing
    , _tfExpectedService = Nothing
    , _tfHost = Nothing
    , _tfActualService = Nothing
    }

tfPath :: Lens' TestFailure (Maybe Text)
tfPath = lens _tfPath (\ s a -> s{_tfPath = a})

tfExpectedService :: Lens' TestFailure (Maybe Text)
tfExpectedService
  = lens _tfExpectedService
      (\ s a -> s{_tfExpectedService = a})

tfHost :: Lens' TestFailure (Maybe Text)
tfHost = lens _tfHost (\ s a -> s{_tfHost = a})

tfActualService :: Lens' TestFailure (Maybe Text)
tfActualService
  = lens _tfActualService
      (\ s a -> s{_tfActualService = a})

-- | A UrlMap resource. This resource defines the mapping from URL to the
-- BackendService resource, based on the \"longest-match\" of the URL\'s
-- host and path.
--
-- /See:/ 'urlMap' smart constructor.
data UrlMap = UrlMap
    { _umTests             :: !(Maybe [Maybe UrlMapTest])
    , _umKind              :: !Text
    , _umFingerprint       :: !(Maybe Word8)
    , _umDefaultService    :: !(Maybe Text)
    , _umSelfLink          :: !(Maybe Text)
    , _umName              :: !(Maybe Text)
    , _umCreationTimestamp :: !(Maybe Text)
    , _umPathMatchers      :: !(Maybe [Maybe PathMatcher])
    , _umId                :: !(Maybe Word64)
    , _umHostRules         :: !(Maybe [Maybe HostRule])
    , _umDescription       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umTests'
--
-- * 'umKind'
--
-- * 'umFingerprint'
--
-- * 'umDefaultService'
--
-- * 'umSelfLink'
--
-- * 'umName'
--
-- * 'umCreationTimestamp'
--
-- * 'umPathMatchers'
--
-- * 'umId'
--
-- * 'umHostRules'
--
-- * 'umDescription'
urlMap
    :: UrlMap
urlMap =
    UrlMap
    { _umTests = Nothing
    , _umKind = "compute#urlMap"
    , _umFingerprint = Nothing
    , _umDefaultService = Nothing
    , _umSelfLink = Nothing
    , _umName = Nothing
    , _umCreationTimestamp = Nothing
    , _umPathMatchers = Nothing
    , _umId = Nothing
    , _umHostRules = Nothing
    , _umDescription = Nothing
    }

-- | The list of expected URL mappings. Request to update this UrlMap will
-- succeed only all of the test cases pass.
umTests :: Lens' UrlMap [Maybe UrlMapTest]
umTests
  = lens _umTests (\ s a -> s{_umTests = a}) . _Default
      . _Coerce

-- | Type of the resource.
umKind :: Lens' UrlMap Text
umKind = lens _umKind (\ s a -> s{_umKind = a})

-- | Fingerprint of this resource. A hash of the contents stored in this
-- object. This field is used in optimistic locking. This field will be
-- ignored when inserting a UrlMap. An up-to-date fingerprint must be
-- provided in order to update the UrlMap.
umFingerprint :: Lens' UrlMap (Maybe Word8)
umFingerprint
  = lens _umFingerprint
      (\ s a -> s{_umFingerprint = a})

-- | The URL of the BackendService resource if none of the hostRules match.
umDefaultService :: Lens' UrlMap (Maybe Text)
umDefaultService
  = lens _umDefaultService
      (\ s a -> s{_umDefaultService = a})

-- | [Output Only] Server-defined URL for the resource.
umSelfLink :: Lens' UrlMap (Maybe Text)
umSelfLink
  = lens _umSelfLink (\ s a -> s{_umSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
umName :: Lens' UrlMap (Maybe Text)
umName = lens _umName (\ s a -> s{_umName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
umCreationTimestamp :: Lens' UrlMap (Maybe Text)
umCreationTimestamp
  = lens _umCreationTimestamp
      (\ s a -> s{_umCreationTimestamp = a})

-- | The list of named PathMatchers to use against the URL.
umPathMatchers :: Lens' UrlMap [Maybe PathMatcher]
umPathMatchers
  = lens _umPathMatchers
      (\ s a -> s{_umPathMatchers = a})
      . _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource. Set by the server.
umId :: Lens' UrlMap (Maybe Word64)
umId = lens _umId (\ s a -> s{_umId = a})

-- | The list of HostRules to use against the URL.
umHostRules :: Lens' UrlMap [Maybe HostRule]
umHostRules
  = lens _umHostRules (\ s a -> s{_umHostRules = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
umDescription :: Lens' UrlMap (Maybe Text)
umDescription
  = lens _umDescription
      (\ s a -> s{_umDescription = a})

-- | Contains a list of UrlMap resources.
--
-- /See:/ 'urlMapList' smart constructor.
data UrlMapList = UrlMapList
    { _umlNextPageToken :: !(Maybe Text)
    , _umlKind          :: !Text
    , _umlItems         :: !(Maybe [Maybe UrlMap])
    , _umlSelfLink      :: !(Maybe Text)
    , _umlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMapList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlNextPageToken'
--
-- * 'umlKind'
--
-- * 'umlItems'
--
-- * 'umlSelfLink'
--
-- * 'umlId'
urlMapList
    :: UrlMapList
urlMapList =
    UrlMapList
    { _umlNextPageToken = Nothing
    , _umlKind = "compute#urlMapList"
    , _umlItems = Nothing
    , _umlSelfLink = Nothing
    , _umlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
umlNextPageToken :: Lens' UrlMapList (Maybe Text)
umlNextPageToken
  = lens _umlNextPageToken
      (\ s a -> s{_umlNextPageToken = a})

-- | Type of resource.
umlKind :: Lens' UrlMapList Text
umlKind = lens _umlKind (\ s a -> s{_umlKind = a})

-- | A list of UrlMap resources.
umlItems :: Lens' UrlMapList [Maybe UrlMap]
umlItems
  = lens _umlItems (\ s a -> s{_umlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
umlSelfLink :: Lens' UrlMapList (Maybe Text)
umlSelfLink
  = lens _umlSelfLink (\ s a -> s{_umlSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Set by the server.
umlId :: Lens' UrlMapList (Maybe Text)
umlId = lens _umlId (\ s a -> s{_umlId = a})

--
-- /See:/ 'urlMapReference' smart constructor.
newtype UrlMapReference = UrlMapReference
    { _umrUrlMap :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMapReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umrUrlMap'
urlMapReference
    :: UrlMapReference
urlMapReference =
    UrlMapReference
    { _umrUrlMap = Nothing
    }

umrUrlMap :: Lens' UrlMapReference (Maybe Text)
umrUrlMap
  = lens _umrUrlMap (\ s a -> s{_umrUrlMap = a})

-- | Message for the expected URL mappings.
--
-- /See:/ 'urlMapTest' smart constructor.
data UrlMapTest = UrlMapTest
    { _umtPath        :: !(Maybe Text)
    , _umtService     :: !(Maybe Text)
    , _umtHost        :: !(Maybe Text)
    , _umtDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMapTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umtPath'
--
-- * 'umtService'
--
-- * 'umtHost'
--
-- * 'umtDescription'
urlMapTest
    :: UrlMapTest
urlMapTest =
    UrlMapTest
    { _umtPath = Nothing
    , _umtService = Nothing
    , _umtHost = Nothing
    , _umtDescription = Nothing
    }

-- | Path portion of the URL.
umtPath :: Lens' UrlMapTest (Maybe Text)
umtPath = lens _umtPath (\ s a -> s{_umtPath = a})

-- | Expected BackendService resource the given URL should be mapped to.
umtService :: Lens' UrlMapTest (Maybe Text)
umtService
  = lens _umtService (\ s a -> s{_umtService = a})

-- | Host portion of the URL.
umtHost :: Lens' UrlMapTest (Maybe Text)
umtHost = lens _umtHost (\ s a -> s{_umtHost = a})

-- | Description of this test case.
umtDescription :: Lens' UrlMapTest (Maybe Text)
umtDescription
  = lens _umtDescription
      (\ s a -> s{_umtDescription = a})

-- | Message representing the validation result for a UrlMap.
--
-- /See:/ 'urlMapValidationResult' smart constructor.
data UrlMapValidationResult = UrlMapValidationResult
    { _umvrLoadErrors    :: !(Maybe [Text])
    , _umvrLoadSucceeded :: !(Maybe Bool)
    , _umvrTestPassed    :: !(Maybe Bool)
    , _umvrTestFailures  :: !(Maybe [Maybe TestFailure])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMapValidationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvrLoadErrors'
--
-- * 'umvrLoadSucceeded'
--
-- * 'umvrTestPassed'
--
-- * 'umvrTestFailures'
urlMapValidationResult
    :: UrlMapValidationResult
urlMapValidationResult =
    UrlMapValidationResult
    { _umvrLoadErrors = Nothing
    , _umvrLoadSucceeded = Nothing
    , _umvrTestPassed = Nothing
    , _umvrTestFailures = Nothing
    }

umvrLoadErrors :: Lens' UrlMapValidationResult [Text]
umvrLoadErrors
  = lens _umvrLoadErrors
      (\ s a -> s{_umvrLoadErrors = a})
      . _Default
      . _Coerce

-- | Whether the given UrlMap can be successfully loaded. If false,
-- \'loadErrors\' indicates the reasons.
umvrLoadSucceeded :: Lens' UrlMapValidationResult (Maybe Bool)
umvrLoadSucceeded
  = lens _umvrLoadSucceeded
      (\ s a -> s{_umvrLoadSucceeded = a})

-- | If successfully loaded, this field indicates whether the test passed. If
-- false, \'testFailures\'s indicate the reason of failure.
umvrTestPassed :: Lens' UrlMapValidationResult (Maybe Bool)
umvrTestPassed
  = lens _umvrTestPassed
      (\ s a -> s{_umvrTestPassed = a})

umvrTestFailures :: Lens' UrlMapValidationResult [Maybe TestFailure]
umvrTestFailures
  = lens _umvrTestFailures
      (\ s a -> s{_umvrTestFailures = a})
      . _Default
      . _Coerce

--
-- /See:/ 'urlMapsValidateRequest' smart constructor.
newtype UrlMapsValidateRequest = UrlMapsValidateRequest
    { _umvrResource :: Maybe (Maybe UrlMap)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMapsValidateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvrResource'
urlMapsValidateRequest
    :: UrlMapsValidateRequest
urlMapsValidateRequest =
    UrlMapsValidateRequest
    { _umvrResource = Nothing
    }

-- | Content of the UrlMap to be validated.
umvrResource :: Lens' UrlMapsValidateRequest (Maybe (Maybe UrlMap))
umvrResource
  = lens _umvrResource (\ s a -> s{_umvrResource = a})

--
-- /See:/ 'urlMapsValidateResponse' smart constructor.
newtype UrlMapsValidateResponse = UrlMapsValidateResponse
    { _umvrResult :: Maybe (Maybe UrlMapValidationResult)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMapsValidateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvrResult'
urlMapsValidateResponse
    :: UrlMapsValidateResponse
urlMapsValidateResponse =
    UrlMapsValidateResponse
    { _umvrResult = Nothing
    }

umvrResult :: Lens' UrlMapsValidateResponse (Maybe (Maybe UrlMapValidationResult))
umvrResult
  = lens _umvrResult (\ s a -> s{_umvrResult = a})

-- | The location in Cloud Storage and naming method of the daily usage
-- report. Contains bucket_name and report_name prefix.
--
-- /See:/ 'usageExportLocation' smart constructor.
data UsageExportLocation = UsageExportLocation
    { _uelReportNamePrefix :: !(Maybe Text)
    , _uelBucketName       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageExportLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uelReportNamePrefix'
--
-- * 'uelBucketName'
usageExportLocation
    :: UsageExportLocation
usageExportLocation =
    UsageExportLocation
    { _uelReportNamePrefix = Nothing
    , _uelBucketName = Nothing
    }

-- | An optional prefix for the name of the usage report object stored in
-- bucketName. If not supplied, defaults to usage. The report is stored as
-- a CSV file named report_name_prefix_gce_YYYYMMDD.csv where YYYYMMDD is
-- the day of the usage according to Pacific Time. If you supply a prefix,
-- it should conform to Cloud Storage object naming conventions.
uelReportNamePrefix :: Lens' UsageExportLocation (Maybe Text)
uelReportNamePrefix
  = lens _uelReportNamePrefix
      (\ s a -> s{_uelReportNamePrefix = a})

-- | The name of an existing bucket in Cloud Storage where the usage report
-- object is stored. The Google Service Account is granted write access to
-- this bucket. This is just the bucket name, with no gs:\/\/ or
-- https:\/\/storage.googleapis.com\/ in front of it.
uelBucketName :: Lens' UsageExportLocation (Maybe Text)
uelBucketName
  = lens _uelBucketName
      (\ s a -> s{_uelBucketName = a})

--
-- /See:/ 'vpnTunnel' smart constructor.
data VpnTunnel = VpnTunnel
    { _vtDetailedStatus    :: !(Maybe Text)
    , _vtStatus            :: !(Maybe VpnTunnelStatus)
    , _vtKind              :: !Text
    , _vtPeerIp            :: !(Maybe Text)
    , _vtTargetVpnGateway  :: !(Maybe Text)
    , _vtSelfLink          :: !(Maybe Text)
    , _vtSharedSecret      :: !(Maybe Text)
    , _vtName              :: !(Maybe Text)
    , _vtCreationTimestamp :: !(Maybe Text)
    , _vtSharedSecretHash  :: !(Maybe Text)
    , _vtId                :: !(Maybe Word64)
    , _vtIkeVersion        :: !(Maybe Int32)
    , _vtRegion            :: !(Maybe Text)
    , _vtDescription       :: !(Maybe Text)
    }

-- | Creates a value of 'VpnTunnel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtDetailedStatus'
--
-- * 'vtStatus'
--
-- * 'vtKind'
--
-- * 'vtPeerIp'
--
-- * 'vtTargetVpnGateway'
--
-- * 'vtSelfLink'
--
-- * 'vtSharedSecret'
--
-- * 'vtName'
--
-- * 'vtCreationTimestamp'
--
-- * 'vtSharedSecretHash'
--
-- * 'vtId'
--
-- * 'vtIkeVersion'
--
-- * 'vtRegion'
--
-- * 'vtDescription'
vpnTunnel
    :: VpnTunnel
vpnTunnel =
    VpnTunnel
    { _vtDetailedStatus = Nothing
    , _vtStatus = Nothing
    , _vtKind = "compute#vpnTunnel"
    , _vtPeerIp = Nothing
    , _vtTargetVpnGateway = Nothing
    , _vtSelfLink = Nothing
    , _vtSharedSecret = Nothing
    , _vtName = Nothing
    , _vtCreationTimestamp = Nothing
    , _vtSharedSecretHash = Nothing
    , _vtId = Nothing
    , _vtIkeVersion = Nothing
    , _vtRegion = Nothing
    , _vtDescription = Nothing
    }

-- | [Output Only] Detailed status message for the VPN tunnel.
vtDetailedStatus :: Lens' VpnTunnel (Maybe Text)
vtDetailedStatus
  = lens _vtDetailedStatus
      (\ s a -> s{_vtDetailedStatus = a})

-- | [Output Only] The status of the VPN tunnel.
vtStatus :: Lens' VpnTunnel (Maybe VpnTunnelStatus)
vtStatus = lens _vtStatus (\ s a -> s{_vtStatus = a})

-- | [Output Only] Type of resource. Always compute#vpnTunnel for VPN
-- tunnels.
vtKind :: Lens' VpnTunnel Text
vtKind = lens _vtKind (\ s a -> s{_vtKind = a})

-- | IP address of the peer VPN gateway.
vtPeerIp :: Lens' VpnTunnel (Maybe Text)
vtPeerIp = lens _vtPeerIp (\ s a -> s{_vtPeerIp = a})

-- | URL of the VPN gateway to which this VPN tunnel is associated. Provided
-- by the client when the VPN tunnel is created.
vtTargetVpnGateway :: Lens' VpnTunnel (Maybe Text)
vtTargetVpnGateway
  = lens _vtTargetVpnGateway
      (\ s a -> s{_vtTargetVpnGateway = a})

-- | [Output Only] Server-defined URL for the resource.
vtSelfLink :: Lens' VpnTunnel (Maybe Text)
vtSelfLink
  = lens _vtSelfLink (\ s a -> s{_vtSelfLink = a})

-- | Shared secret used to set the secure session between the GCE VPN gateway
-- and the peer VPN gateway.
vtSharedSecret :: Lens' VpnTunnel (Maybe Text)
vtSharedSecret
  = lens _vtSharedSecret
      (\ s a -> s{_vtSharedSecret = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
vtName :: Lens' VpnTunnel (Maybe Text)
vtName = lens _vtName (\ s a -> s{_vtName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
vtCreationTimestamp :: Lens' VpnTunnel (Maybe Text)
vtCreationTimestamp
  = lens _vtCreationTimestamp
      (\ s a -> s{_vtCreationTimestamp = a})

-- | Hash of the shared secret.
vtSharedSecretHash :: Lens' VpnTunnel (Maybe Text)
vtSharedSecretHash
  = lens _vtSharedSecretHash
      (\ s a -> s{_vtSharedSecretHash = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
vtId :: Lens' VpnTunnel (Maybe Word64)
vtId = lens _vtId (\ s a -> s{_vtId = a})

-- | IKE protocol version to use when establishing the VPN tunnel with peer
-- VPN gateway. Acceptable IKE versions are 1 or 2. Default version is 2.
vtIkeVersion :: Lens' VpnTunnel (Maybe Int32)
vtIkeVersion
  = lens _vtIkeVersion (\ s a -> s{_vtIkeVersion = a})

-- | [Output Only] URL of the region where the VPN tunnel resides.
vtRegion :: Lens' VpnTunnel (Maybe Text)
vtRegion = lens _vtRegion (\ s a -> s{_vtRegion = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
vtDescription :: Lens' VpnTunnel (Maybe Text)
vtDescription
  = lens _vtDescription
      (\ s a -> s{_vtDescription = a})

--
-- /See:/ 'vpnTunnelAggregatedList' smart constructor.
data VpnTunnelAggregatedList = VpnTunnelAggregatedList
    { _vtalNextPageToken :: !(Maybe Text)
    , _vtalKind          :: !Text
    , _vtalItems         :: !(Maybe VpnTunnelAggregatedListItems)
    , _vtalSelfLink      :: !(Maybe Text)
    , _vtalId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VpnTunnelAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtalNextPageToken'
--
-- * 'vtalKind'
--
-- * 'vtalItems'
--
-- * 'vtalSelfLink'
--
-- * 'vtalId'
vpnTunnelAggregatedList
    :: VpnTunnelAggregatedList
vpnTunnelAggregatedList =
    VpnTunnelAggregatedList
    { _vtalNextPageToken = Nothing
    , _vtalKind = "compute#vpnTunnelAggregatedList"
    , _vtalItems = Nothing
    , _vtalSelfLink = Nothing
    , _vtalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
vtalNextPageToken :: Lens' VpnTunnelAggregatedList (Maybe Text)
vtalNextPageToken
  = lens _vtalNextPageToken
      (\ s a -> s{_vtalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#vpnTunnel for VPN
-- tunnels.
vtalKind :: Lens' VpnTunnelAggregatedList Text
vtalKind = lens _vtalKind (\ s a -> s{_vtalKind = a})

-- | [Output Only] A map of scoped vpn tunnel lists.
vtalItems :: Lens' VpnTunnelAggregatedList (Maybe VpnTunnelAggregatedListItems)
vtalItems
  = lens _vtalItems (\ s a -> s{_vtalItems = a})

-- | [Output Only] Server-defined URL for this resource.
vtalSelfLink :: Lens' VpnTunnelAggregatedList (Maybe Text)
vtalSelfLink
  = lens _vtalSelfLink (\ s a -> s{_vtalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
vtalId :: Lens' VpnTunnelAggregatedList (Maybe Text)
vtalId = lens _vtalId (\ s a -> s{_vtalId = a})

-- | [Output Only] A map of scoped vpn tunnel lists.
--
-- /See:/ 'vpnTunnelAggregatedListItems' smart constructor.
data VpnTunnelAggregatedListItems =
    VpnTunnelAggregatedListItems
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VpnTunnelAggregatedListItems' with the minimum fields required to make a request.
--
vpnTunnelAggregatedListItems
    :: VpnTunnelAggregatedListItems
vpnTunnelAggregatedListItems = VpnTunnelAggregatedListItems

-- | Contains a list of VpnTunnel resources.
--
-- /See:/ 'vpnTunnelList' smart constructor.
data VpnTunnelList = VpnTunnelList
    { _vtlNextPageToken :: !(Maybe Text)
    , _vtlKind          :: !Text
    , _vtlItems         :: !(Maybe [Maybe VpnTunnel])
    , _vtlSelfLink      :: !(Maybe Text)
    , _vtlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VpnTunnelList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtlNextPageToken'
--
-- * 'vtlKind'
--
-- * 'vtlItems'
--
-- * 'vtlSelfLink'
--
-- * 'vtlId'
vpnTunnelList
    :: VpnTunnelList
vpnTunnelList =
    VpnTunnelList
    { _vtlNextPageToken = Nothing
    , _vtlKind = "compute#vpnTunnelList"
    , _vtlItems = Nothing
    , _vtlSelfLink = Nothing
    , _vtlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
vtlNextPageToken :: Lens' VpnTunnelList (Maybe Text)
vtlNextPageToken
  = lens _vtlNextPageToken
      (\ s a -> s{_vtlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#vpnTunnel for VPN
-- tunnels.
vtlKind :: Lens' VpnTunnelList Text
vtlKind = lens _vtlKind (\ s a -> s{_vtlKind = a})

-- | [Output Only] A list of VpnTunnel resources.
vtlItems :: Lens' VpnTunnelList [Maybe VpnTunnel]
vtlItems
  = lens _vtlItems (\ s a -> s{_vtlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
vtlSelfLink :: Lens' VpnTunnelList (Maybe Text)
vtlSelfLink
  = lens _vtlSelfLink (\ s a -> s{_vtlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
vtlId :: Lens' VpnTunnelList (Maybe Text)
vtlId = lens _vtlId (\ s a -> s{_vtlId = a})

--
-- /See:/ 'vpnTunnelsScopedList' smart constructor.
data VpnTunnelsScopedList = VpnTunnelsScopedList
    { _vtslVpnTunnels :: !(Maybe [Maybe VpnTunnel])
    , _vtslWarning    :: !(Maybe VpnTunnelsScopedListWarning)
    }

-- | Creates a value of 'VpnTunnelsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtslVpnTunnels'
--
-- * 'vtslWarning'
vpnTunnelsScopedList
    :: VpnTunnelsScopedList
vpnTunnelsScopedList =
    VpnTunnelsScopedList
    { _vtslVpnTunnels = Nothing
    , _vtslWarning = Nothing
    }

-- | List of vpn tunnels contained in this scope.
vtslVpnTunnels :: Lens' VpnTunnelsScopedList [Maybe VpnTunnel]
vtslVpnTunnels
  = lens _vtslVpnTunnels
      (\ s a -> s{_vtslVpnTunnels = a})
      . _Default
      . _Coerce

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
vtslWarning :: Lens' VpnTunnelsScopedList (Maybe VpnTunnelsScopedListWarning)
vtslWarning
  = lens _vtslWarning (\ s a -> s{_vtslWarning = a})

--
-- /See:/ 'vpnTunnelsScopedListItemDataWarning' smart constructor.
data VpnTunnelsScopedListItemDataWarning = VpnTunnelsScopedListItemDataWarning
    { _vtslidwValue :: !(Maybe Text)
    , _vtslidwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VpnTunnelsScopedListItemDataWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtslidwValue'
--
-- * 'vtslidwKey'
vpnTunnelsScopedListItemDataWarning
    :: VpnTunnelsScopedListItemDataWarning
vpnTunnelsScopedListItemDataWarning =
    VpnTunnelsScopedListItemDataWarning
    { _vtslidwValue = Nothing
    , _vtslidwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
vtslidwValue :: Lens' VpnTunnelsScopedListItemDataWarning (Maybe Text)
vtslidwValue
  = lens _vtslidwValue (\ s a -> s{_vtslidwValue = a})

-- | [Output Only] A key for the warning data.
vtslidwKey :: Lens' VpnTunnelsScopedListItemDataWarning (Maybe Text)
vtslidwKey
  = lens _vtslidwKey (\ s a -> s{_vtslidwKey = a})

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'vpnTunnelsScopedListWarning' smart constructor.
data VpnTunnelsScopedListWarning = VpnTunnelsScopedListWarning
    { _vtslwData    :: !(Maybe [VpnTunnelsScopedListItemDataWarning])
    , _vtslwCode    :: !(Maybe VpnTunnelsScopedListCodeWarning)
    , _vtslwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'VpnTunnelsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtslwData'
--
-- * 'vtslwCode'
--
-- * 'vtslwMessage'
vpnTunnelsScopedListWarning
    :: VpnTunnelsScopedListWarning
vpnTunnelsScopedListWarning =
    VpnTunnelsScopedListWarning
    { _vtslwData = Nothing
    , _vtslwCode = Nothing
    , _vtslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
vtslwData :: Lens' VpnTunnelsScopedListWarning [VpnTunnelsScopedListItemDataWarning]
vtslwData
  = lens _vtslwData (\ s a -> s{_vtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
vtslwCode :: Lens' VpnTunnelsScopedListWarning (Maybe VpnTunnelsScopedListCodeWarning)
vtslwCode
  = lens _vtslwCode (\ s a -> s{_vtslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
vtslwMessage :: Lens' VpnTunnelsScopedListWarning (Maybe Text)
vtslwMessage
  = lens _vtslwMessage (\ s a -> s{_vtslwMessage = a})

-- | A Zone resource.
--
-- /See:/ 'zone' smart constructor.
data Zone = Zone
    { _zStatus             :: !(Maybe ZoneStatus)
    , _zMaintenanceWindows :: !(Maybe [ZoneItemMaintenanceWindows])
    , _zKind               :: !Text
    , _zSelfLink           :: !(Maybe Text)
    , _zName               :: !(Maybe Text)
    , _zCreationTimestamp  :: !(Maybe Text)
    , _zId                 :: !(Maybe Word64)
    , _zRegion             :: !(Maybe Text)
    , _zDescription        :: !(Maybe Text)
    , _zDeprecated         :: !(Maybe (Maybe DeprecationStatus))
    }

-- | Creates a value of 'Zone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zStatus'
--
-- * 'zMaintenanceWindows'
--
-- * 'zKind'
--
-- * 'zSelfLink'
--
-- * 'zName'
--
-- * 'zCreationTimestamp'
--
-- * 'zId'
--
-- * 'zRegion'
--
-- * 'zDescription'
--
-- * 'zDeprecated'
zone
    :: Zone
zone =
    Zone
    { _zStatus = Nothing
    , _zMaintenanceWindows = Nothing
    , _zKind = "compute#zone"
    , _zSelfLink = Nothing
    , _zName = Nothing
    , _zCreationTimestamp = Nothing
    , _zId = Nothing
    , _zRegion = Nothing
    , _zDescription = Nothing
    , _zDeprecated = Nothing
    }

-- | [Output Only] Status of the zone, either UP or DOWN.
zStatus :: Lens' Zone (Maybe ZoneStatus)
zStatus = lens _zStatus (\ s a -> s{_zStatus = a})

-- | [Output Only] Any scheduled maintenance windows for this zone. When the
-- zone is in a maintenance window, all resources which reside in the zone
-- will be unavailable. For more information, see Maintenance Windows
zMaintenanceWindows :: Lens' Zone [ZoneItemMaintenanceWindows]
zMaintenanceWindows
  = lens _zMaintenanceWindows
      (\ s a -> s{_zMaintenanceWindows = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always kind#zone for zones.
zKind :: Lens' Zone Text
zKind = lens _zKind (\ s a -> s{_zKind = a})

-- | [Output Only] Server-defined URL for the resource.
zSelfLink :: Lens' Zone (Maybe Text)
zSelfLink
  = lens _zSelfLink (\ s a -> s{_zSelfLink = a})

-- | [Output Only] Name of the resource.
zName :: Lens' Zone (Maybe Text)
zName = lens _zName (\ s a -> s{_zName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
zCreationTimestamp :: Lens' Zone (Maybe Text)
zCreationTimestamp
  = lens _zCreationTimestamp
      (\ s a -> s{_zCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
zId :: Lens' Zone (Maybe Word64)
zId = lens _zId (\ s a -> s{_zId = a})

-- | [Output Only] Full URL reference to the region which hosts the zone.
zRegion :: Lens' Zone (Maybe Text)
zRegion = lens _zRegion (\ s a -> s{_zRegion = a})

-- | [Output Only] Textual description of the resource.
zDescription :: Lens' Zone (Maybe Text)
zDescription
  = lens _zDescription (\ s a -> s{_zDescription = a})

-- | [Output Only] The deprecation status associated with this zone.
zDeprecated :: Lens' Zone (Maybe (Maybe DeprecationStatus))
zDeprecated
  = lens _zDeprecated (\ s a -> s{_zDeprecated = a})

--
-- /See:/ 'zoneItemMaintenanceWindows' smart constructor.
data ZoneItemMaintenanceWindows = ZoneItemMaintenanceWindows
    { _zimwBeginTime   :: !(Maybe Text)
    , _zimwName        :: !(Maybe Text)
    , _zimwEndTime     :: !(Maybe Text)
    , _zimwDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneItemMaintenanceWindows' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zimwBeginTime'
--
-- * 'zimwName'
--
-- * 'zimwEndTime'
--
-- * 'zimwDescription'
zoneItemMaintenanceWindows
    :: ZoneItemMaintenanceWindows
zoneItemMaintenanceWindows =
    ZoneItemMaintenanceWindows
    { _zimwBeginTime = Nothing
    , _zimwName = Nothing
    , _zimwEndTime = Nothing
    , _zimwDescription = Nothing
    }

-- | [Output Only] Starting time of the maintenance window, in RFC3339
-- format.
zimwBeginTime :: Lens' ZoneItemMaintenanceWindows (Maybe Text)
zimwBeginTime
  = lens _zimwBeginTime
      (\ s a -> s{_zimwBeginTime = a})

-- | [Output Only] Name of the maintenance window.
zimwName :: Lens' ZoneItemMaintenanceWindows (Maybe Text)
zimwName = lens _zimwName (\ s a -> s{_zimwName = a})

-- | [Output Only] Ending time of the maintenance window, in RFC3339 format.
zimwEndTime :: Lens' ZoneItemMaintenanceWindows (Maybe Text)
zimwEndTime
  = lens _zimwEndTime (\ s a -> s{_zimwEndTime = a})

-- | [Output Only] Textual description of the maintenance window.
zimwDescription :: Lens' ZoneItemMaintenanceWindows (Maybe Text)
zimwDescription
  = lens _zimwDescription
      (\ s a -> s{_zimwDescription = a})

-- | Contains a list of zone resources.
--
-- /See:/ 'zoneList' smart constructor.
data ZoneList = ZoneList
    { _zlNextPageToken :: !(Maybe Text)
    , _zlKind          :: !Text
    , _zlItems         :: !(Maybe [Maybe Zone])
    , _zlSelfLink      :: !(Maybe Text)
    , _zlId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlNextPageToken'
--
-- * 'zlKind'
--
-- * 'zlItems'
--
-- * 'zlSelfLink'
--
-- * 'zlId'
zoneList
    :: ZoneList
zoneList =
    ZoneList
    { _zlNextPageToken = Nothing
    , _zlKind = "compute#zoneList"
    , _zlItems = Nothing
    , _zlSelfLink = Nothing
    , _zlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
zlNextPageToken :: Lens' ZoneList (Maybe Text)
zlNextPageToken
  = lens _zlNextPageToken
      (\ s a -> s{_zlNextPageToken = a})

-- | Type of resource.
zlKind :: Lens' ZoneList Text
zlKind = lens _zlKind (\ s a -> s{_zlKind = a})

-- | [Output Only] A list of Zone resources.
zlItems :: Lens' ZoneList [Maybe Zone]
zlItems
  = lens _zlItems (\ s a -> s{_zlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
zlSelfLink :: Lens' ZoneList (Maybe Text)
zlSelfLink
  = lens _zlSelfLink (\ s a -> s{_zlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
zlId :: Lens' ZoneList (Maybe Text)
zlId = lens _zlId (\ s a -> s{_zlId = a})
