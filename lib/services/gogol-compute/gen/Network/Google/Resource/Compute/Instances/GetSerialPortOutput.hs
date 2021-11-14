{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.GetSerialPortOutput
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the last 1 MB of serial port output from the specified instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.getSerialPortOutput@.
module Network.Google.Resource.Compute.Instances.GetSerialPortOutput
    (
    -- * REST Resource
      InstancesGetSerialPortOutputResource

    -- * Creating a Request
    , instancesGetSerialPortOutput
    , InstancesGetSerialPortOutput

    -- * Request Lenses
    , igspoProject
    , igspoStart
    , igspoZone
    , igspoPort
    , igspoInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.getSerialPortOutput@ method which the
-- 'InstancesGetSerialPortOutput' request conforms to.
type InstancesGetSerialPortOutputResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "serialPort" :>
                       QueryParam "start" (Textual Int64) :>
                         QueryParam "port" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SerialPortOutput

-- | Returns the last 1 MB of serial port output from the specified instance.
--
-- /See:/ 'instancesGetSerialPortOutput' smart constructor.
data InstancesGetSerialPortOutput =
  InstancesGetSerialPortOutput'
    { _igspoProject :: !Text
    , _igspoStart :: !(Maybe (Textual Int64))
    , _igspoZone :: !Text
    , _igspoPort :: !(Textual Int32)
    , _igspoInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesGetSerialPortOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igspoProject'
--
-- * 'igspoStart'
--
-- * 'igspoZone'
--
-- * 'igspoPort'
--
-- * 'igspoInstance'
instancesGetSerialPortOutput
    :: Text -- ^ 'igspoProject'
    -> Text -- ^ 'igspoZone'
    -> Text -- ^ 'igspoInstance'
    -> InstancesGetSerialPortOutput
instancesGetSerialPortOutput pIgspoProject_ pIgspoZone_ pIgspoInstance_ =
  InstancesGetSerialPortOutput'
    { _igspoProject = pIgspoProject_
    , _igspoStart = Nothing
    , _igspoZone = pIgspoZone_
    , _igspoPort = 1
    , _igspoInstance = pIgspoInstance_
    }


-- | Project ID for this request.
igspoProject :: Lens' InstancesGetSerialPortOutput Text
igspoProject
  = lens _igspoProject (\ s a -> s{_igspoProject = a})

-- | Specifies the starting byte position of the output to return. To start
-- with the first byte of output to the specified port, omit this field or
-- set it to \`0\`. If the output for that byte position is available, this
-- field matches the \`start\` parameter sent with the request. If the
-- amount of serial console output exceeds the size of the buffer (1 MB),
-- the oldest output is discarded and is no longer available. If the
-- requested start position refers to discarded output, the start position
-- is adjusted to the oldest output still available, and the adjusted start
-- position is returned as the \`start\` property value. You can also
-- provide a negative start position, which translates to the most recent
-- number of bytes written to the serial port. For example, -3 is
-- interpreted as the most recent 3 bytes written to the serial console.
igspoStart :: Lens' InstancesGetSerialPortOutput (Maybe Int64)
igspoStart
  = lens _igspoStart (\ s a -> s{_igspoStart = a}) .
      mapping _Coerce

-- | The name of the zone for this request.
igspoZone :: Lens' InstancesGetSerialPortOutput Text
igspoZone
  = lens _igspoZone (\ s a -> s{_igspoZone = a})

-- | Specifies which COM or serial port to retrieve data from.
igspoPort :: Lens' InstancesGetSerialPortOutput Int32
igspoPort
  = lens _igspoPort (\ s a -> s{_igspoPort = a}) .
      _Coerce

-- | Name of the instance for this request.
igspoInstance :: Lens' InstancesGetSerialPortOutput Text
igspoInstance
  = lens _igspoInstance
      (\ s a -> s{_igspoInstance = a})

instance GoogleRequest InstancesGetSerialPortOutput
         where
        type Rs InstancesGetSerialPortOutput =
             SerialPortOutput
        type Scopes InstancesGetSerialPortOutput =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesGetSerialPortOutput'{..}
          = go _igspoProject _igspoZone _igspoInstance
              _igspoStart
              (Just _igspoPort)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesGetSerialPortOutputResource)
                      mempty
