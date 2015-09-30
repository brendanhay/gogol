{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , igspoUserIp
    , igspoZone
    , igspoKey
    , igspoOauthToken
    , igspoFields
    , igspoAlt
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
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               QueryParam "port" Int32 :>
                                 Get '[JSON] SerialPortOutput

-- | Returns the specified instance\'s serial port output.
--
-- /See:/ 'instancesGetSerialPortOutput'' smart constructor.
data InstancesGetSerialPortOutput' = InstancesGetSerialPortOutput'
    { _igspoQuotaUser   :: !(Maybe Text)
    , _igspoPrettyPrint :: !Bool
    , _igspoProject     :: !Text
    , _igspoUserIp      :: !(Maybe Text)
    , _igspoZone        :: !Text
    , _igspoKey         :: !(Maybe Text)
    , _igspoOauthToken  :: !(Maybe Text)
    , _igspoFields      :: !(Maybe Text)
    , _igspoAlt         :: !Alt
    , _igspoPort        :: !Int32
    , _igspoInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'igspoUserIp'
--
-- * 'igspoZone'
--
-- * 'igspoKey'
--
-- * 'igspoOauthToken'
--
-- * 'igspoFields'
--
-- * 'igspoAlt'
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
    , _igspoUserIp = Nothing
    , _igspoZone = pIgspoZone_
    , _igspoKey = Nothing
    , _igspoOauthToken = Nothing
    , _igspoFields = Nothing
    , _igspoAlt = JSON
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
igspoUserIp :: Lens' InstancesGetSerialPortOutput' (Maybe Text)
igspoUserIp
  = lens _igspoUserIp (\ s a -> s{_igspoUserIp = a})

-- | The name of the zone for this request.
igspoZone :: Lens' InstancesGetSerialPortOutput' Text
igspoZone
  = lens _igspoZone (\ s a -> s{_igspoZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igspoKey :: Lens' InstancesGetSerialPortOutput' (Maybe Text)
igspoKey = lens _igspoKey (\ s a -> s{_igspoKey = a})

-- | OAuth 2.0 token for the current user.
igspoOauthToken :: Lens' InstancesGetSerialPortOutput' (Maybe Text)
igspoOauthToken
  = lens _igspoOauthToken
      (\ s a -> s{_igspoOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igspoFields :: Lens' InstancesGetSerialPortOutput' (Maybe Text)
igspoFields
  = lens _igspoFields (\ s a -> s{_igspoFields = a})

-- | Data format for the response.
igspoAlt :: Lens' InstancesGetSerialPortOutput' Alt
igspoAlt = lens _igspoAlt (\ s a -> s{_igspoAlt = a})

-- | Specifies which COM or serial port to retrieve data from.
igspoPort :: Lens' InstancesGetSerialPortOutput' Int32
igspoPort
  = lens _igspoPort (\ s a -> s{_igspoPort = a})

-- | Name of the instance scoping this request.
igspoInstance :: Lens' InstancesGetSerialPortOutput' Text
igspoInstance
  = lens _igspoInstance
      (\ s a -> s{_igspoInstance = a})

instance GoogleRequest InstancesGetSerialPortOutput'
         where
        type Rs InstancesGetSerialPortOutput' =
             SerialPortOutput
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstancesGetSerialPortOutput'{..}
          = go _igspoQuotaUser (Just _igspoPrettyPrint)
              _igspoProject
              _igspoUserIp
              _igspoZone
              _igspoKey
              _igspoOauthToken
              _igspoFields
              (Just _igspoAlt)
              (Just _igspoPort)
              _igspoInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesGetSerialPortOutputResource)
                      r
                      u
