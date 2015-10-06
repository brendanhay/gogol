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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance\'s serial port output.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesGetSerialPortOutput@.
module Network.Google.Resource.Compute.Instances.GetSerialPortOutput
    (
    -- * REST Resource
      InstancesGetSerialPortOutputResource

    -- * Creating a Request
    , instancesGetSerialPortOutput'
    , InstancesGetSerialPortOutput'

    -- * Request Lenses
    , igspoQuotaUser
    , igspoPrettyPrint
    , igspoProject
    , igspoUserIP
    , igspoZone
    , igspoKey
    , igspoOAuthToken
    , igspoFields
    , igspoPort
    , igspoInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesGetSerialPortOutput@ which the
-- 'InstancesGetSerialPortOutput'' request conforms to.
type InstancesGetSerialPortOutputResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "serialPort" :>
                 QueryParam "port" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] SerialPortOutput

-- | Returns the specified instance\'s serial port output.
--
-- /See:/ 'instancesGetSerialPortOutput'' smart constructor.
data InstancesGetSerialPortOutput' = InstancesGetSerialPortOutput'
    { _igspoQuotaUser   :: !(Maybe Text)
    , _igspoPrettyPrint :: !Bool
    , _igspoProject     :: !Text
    , _igspoUserIP      :: !(Maybe Text)
    , _igspoZone        :: !Text
    , _igspoKey         :: !(Maybe AuthKey)
    , _igspoOAuthToken  :: !(Maybe OAuthToken)
    , _igspoFields      :: !(Maybe Text)
    , _igspoPort        :: !Int32
    , _igspoInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesGetSerialPortOutput'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igspoQuotaUser'
--
-- * 'igspoPrettyPrint'
--
-- * 'igspoProject'
--
-- * 'igspoUserIP'
--
-- * 'igspoZone'
--
-- * 'igspoKey'
--
-- * 'igspoOAuthToken'
--
-- * 'igspoFields'
--
-- * 'igspoPort'
--
-- * 'igspoInstance'
instancesGetSerialPortOutput'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesGetSerialPortOutput'
instancesGetSerialPortOutput' pIgspoProject_ pIgspoZone_ pIgspoInstance_ =
    InstancesGetSerialPortOutput'
    { _igspoQuotaUser = Nothing
    , _igspoPrettyPrint = True
    , _igspoProject = pIgspoProject_
    , _igspoUserIP = Nothing
    , _igspoZone = pIgspoZone_
    , _igspoKey = Nothing
    , _igspoOAuthToken = Nothing
    , _igspoFields = Nothing
    , _igspoPort = 1
    , _igspoInstance = pIgspoInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igspoQuotaUser :: Lens' InstancesGetSerialPortOutput' (Maybe Text)
igspoQuotaUser
  = lens _igspoQuotaUser
      (\ s a -> s{_igspoQuotaUser = a})

-- | Returns response with indentations and line breaks.
igspoPrettyPrint :: Lens' InstancesGetSerialPortOutput' Bool
igspoPrettyPrint
  = lens _igspoPrettyPrint
      (\ s a -> s{_igspoPrettyPrint = a})

-- | Project ID for this request.
igspoProject :: Lens' InstancesGetSerialPortOutput' Text
igspoProject
  = lens _igspoProject (\ s a -> s{_igspoProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igspoUserIP :: Lens' InstancesGetSerialPortOutput' (Maybe Text)
igspoUserIP
  = lens _igspoUserIP (\ s a -> s{_igspoUserIP = a})

-- | The name of the zone for this request.
igspoZone :: Lens' InstancesGetSerialPortOutput' Text
igspoZone
  = lens _igspoZone (\ s a -> s{_igspoZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igspoKey :: Lens' InstancesGetSerialPortOutput' (Maybe AuthKey)
igspoKey = lens _igspoKey (\ s a -> s{_igspoKey = a})

-- | OAuth 2.0 token for the current user.
igspoOAuthToken :: Lens' InstancesGetSerialPortOutput' (Maybe OAuthToken)
igspoOAuthToken
  = lens _igspoOAuthToken
      (\ s a -> s{_igspoOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igspoFields :: Lens' InstancesGetSerialPortOutput' (Maybe Text)
igspoFields
  = lens _igspoFields (\ s a -> s{_igspoFields = a})

-- | Specifies which COM or serial port to retrieve data from.
igspoPort :: Lens' InstancesGetSerialPortOutput' Int32
igspoPort
  = lens _igspoPort (\ s a -> s{_igspoPort = a})

-- | Name of the instance scoping this request.
igspoInstance :: Lens' InstancesGetSerialPortOutput' Text
igspoInstance
  = lens _igspoInstance
      (\ s a -> s{_igspoInstance = a})

instance GoogleAuth InstancesGetSerialPortOutput'
         where
        _AuthKey = igspoKey . _Just
        _AuthToken = igspoOAuthToken . _Just

instance GoogleRequest InstancesGetSerialPortOutput'
         where
        type Rs InstancesGetSerialPortOutput' =
             SerialPortOutput
        request = requestWith computeRequest
        requestWith rq InstancesGetSerialPortOutput'{..}
          = go _igspoProject _igspoZone _igspoInstance
              (Just _igspoPort)
              _igspoQuotaUser
              (Just _igspoPrettyPrint)
              _igspoUserIP
              _igspoFields
              _igspoKey
              _igspoOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesGetSerialPortOutputResource)
                      rq
