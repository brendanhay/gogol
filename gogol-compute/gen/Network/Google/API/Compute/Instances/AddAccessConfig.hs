{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Instances.AddAccessConfig
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds an access config to an instance\'s network interface.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.addAccessConfig@.
module Network.Google.API.Compute.Instances.AddAccessConfig
    (
    -- * REST Resource
      InstancesAddAccessConfigAPI

    -- * Creating a Request
    , instancesAddAccessConfig'
    , InstancesAddAccessConfig'

    -- * Request Lenses
    , iaacQuotaUser
    , iaacPrettyPrint
    , iaacProject
    , iaacUserIp
    , iaacNetworkInterface
    , iaacZone
    , iaacKey
    , iaacOauthToken
    , iaacFields
    , iaacAlt
    , iaacInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instances.addAccessConfig which the
-- 'InstancesAddAccessConfig'' request conforms to.
type InstancesAddAccessConfigAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "addAccessConfig" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "networkInterface" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Adds an access config to an instance\'s network interface.
--
-- /See:/ 'instancesAddAccessConfig'' smart constructor.
data InstancesAddAccessConfig' = InstancesAddAccessConfig'
    { _iaacQuotaUser        :: !(Maybe Text)
    , _iaacPrettyPrint      :: !Bool
    , _iaacProject          :: !Text
    , _iaacUserIp           :: !(Maybe Text)
    , _iaacNetworkInterface :: !Text
    , _iaacZone             :: !Text
    , _iaacKey              :: !(Maybe Text)
    , _iaacOauthToken       :: !(Maybe Text)
    , _iaacFields           :: !(Maybe Text)
    , _iaacAlt              :: !Alt
    , _iaacInstance         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesAddAccessConfig'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaacQuotaUser'
--
-- * 'iaacPrettyPrint'
--
-- * 'iaacProject'
--
-- * 'iaacUserIp'
--
-- * 'iaacNetworkInterface'
--
-- * 'iaacZone'
--
-- * 'iaacKey'
--
-- * 'iaacOauthToken'
--
-- * 'iaacFields'
--
-- * 'iaacAlt'
--
-- * 'iaacInstance'
instancesAddAccessConfig'
    :: Text -- ^ 'project'
    -> Text -- ^ 'networkInterface'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesAddAccessConfig'
instancesAddAccessConfig' pIaacProject_ pIaacNetworkInterface_ pIaacZone_ pIaacInstance_ =
    InstancesAddAccessConfig'
    { _iaacQuotaUser = Nothing
    , _iaacPrettyPrint = True
    , _iaacProject = pIaacProject_
    , _iaacUserIp = Nothing
    , _iaacNetworkInterface = pIaacNetworkInterface_
    , _iaacZone = pIaacZone_
    , _iaacKey = Nothing
    , _iaacOauthToken = Nothing
    , _iaacFields = Nothing
    , _iaacAlt = JSON
    , _iaacInstance = pIaacInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iaacQuotaUser :: Lens' InstancesAddAccessConfig' (Maybe Text)
iaacQuotaUser
  = lens _iaacQuotaUser
      (\ s a -> s{_iaacQuotaUser = a})

-- | Returns response with indentations and line breaks.
iaacPrettyPrint :: Lens' InstancesAddAccessConfig' Bool
iaacPrettyPrint
  = lens _iaacPrettyPrint
      (\ s a -> s{_iaacPrettyPrint = a})

-- | Project ID for this request.
iaacProject :: Lens' InstancesAddAccessConfig' Text
iaacProject
  = lens _iaacProject (\ s a -> s{_iaacProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iaacUserIp :: Lens' InstancesAddAccessConfig' (Maybe Text)
iaacUserIp
  = lens _iaacUserIp (\ s a -> s{_iaacUserIp = a})

-- | The name of the network interface to add to this instance.
iaacNetworkInterface :: Lens' InstancesAddAccessConfig' Text
iaacNetworkInterface
  = lens _iaacNetworkInterface
      (\ s a -> s{_iaacNetworkInterface = a})

-- | The name of the zone for this request.
iaacZone :: Lens' InstancesAddAccessConfig' Text
iaacZone = lens _iaacZone (\ s a -> s{_iaacZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iaacKey :: Lens' InstancesAddAccessConfig' (Maybe Text)
iaacKey = lens _iaacKey (\ s a -> s{_iaacKey = a})

-- | OAuth 2.0 token for the current user.
iaacOauthToken :: Lens' InstancesAddAccessConfig' (Maybe Text)
iaacOauthToken
  = lens _iaacOauthToken
      (\ s a -> s{_iaacOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iaacFields :: Lens' InstancesAddAccessConfig' (Maybe Text)
iaacFields
  = lens _iaacFields (\ s a -> s{_iaacFields = a})

-- | Data format for the response.
iaacAlt :: Lens' InstancesAddAccessConfig' Alt
iaacAlt = lens _iaacAlt (\ s a -> s{_iaacAlt = a})

-- | The instance name for this request.
iaacInstance :: Lens' InstancesAddAccessConfig' Text
iaacInstance
  = lens _iaacInstance (\ s a -> s{_iaacInstance = a})

instance GoogleRequest InstancesAddAccessConfig'
         where
        type Rs InstancesAddAccessConfig' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesAddAccessConfig'{..}
          = go _iaacQuotaUser (Just _iaacPrettyPrint)
              _iaacProject
              _iaacUserIp
              (Just _iaacNetworkInterface)
              _iaacZone
              _iaacKey
              _iaacOauthToken
              _iaacFields
              (Just _iaacAlt)
              _iaacInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesAddAccessConfigAPI)
                      r
                      u
