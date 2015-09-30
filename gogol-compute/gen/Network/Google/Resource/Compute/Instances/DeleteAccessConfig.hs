{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.DeleteAccessConfig
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an access config from an instance\'s network interface.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesDeleteAccessConfig@.
module Compute.Instances.DeleteAccessConfig
    (
    -- * REST Resource
      InstancesDeleteAccessConfigAPI

    -- * Creating a Request
    , instancesDeleteAccessConfig
    , InstancesDeleteAccessConfig

    -- * Request Lenses
    , idacQuotaUser
    , idacPrettyPrint
    , idacProject
    , idacUserIp
    , idacNetworkInterface
    , idacZone
    , idacKey
    , idacOauthToken
    , idacAccessConfig
    , idacFields
    , idacAlt
    , idacInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesDeleteAccessConfig@ which the
-- 'InstancesDeleteAccessConfig' request conforms to.
type InstancesDeleteAccessConfigAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "deleteAccessConfig" :>
                 QueryParam "networkInterface" Text :>
                   QueryParam "accessConfig" Text :>
                     Post '[JSON] Operation

-- | Deletes an access config from an instance\'s network interface.
--
-- /See:/ 'instancesDeleteAccessConfig' smart constructor.
data InstancesDeleteAccessConfig = InstancesDeleteAccessConfig
    { _idacQuotaUser        :: !(Maybe Text)
    , _idacPrettyPrint      :: !Bool
    , _idacProject          :: !Text
    , _idacUserIp           :: !(Maybe Text)
    , _idacNetworkInterface :: !Text
    , _idacZone             :: !Text
    , _idacKey              :: !(Maybe Text)
    , _idacOauthToken       :: !(Maybe Text)
    , _idacAccessConfig     :: !Text
    , _idacFields           :: !(Maybe Text)
    , _idacAlt              :: !Text
    , _idacInstance         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDeleteAccessConfig'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idacQuotaUser'
--
-- * 'idacPrettyPrint'
--
-- * 'idacProject'
--
-- * 'idacUserIp'
--
-- * 'idacNetworkInterface'
--
-- * 'idacZone'
--
-- * 'idacKey'
--
-- * 'idacOauthToken'
--
-- * 'idacAccessConfig'
--
-- * 'idacFields'
--
-- * 'idacAlt'
--
-- * 'idacInstance'
instancesDeleteAccessConfig
    :: Text -- ^ 'project'
    -> Text -- ^ 'networkInterface'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'accessConfig'
    -> Text -- ^ 'instance'
    -> InstancesDeleteAccessConfig
instancesDeleteAccessConfig pIdacProject_ pIdacNetworkInterface_ pIdacZone_ pIdacAccessConfig_ pIdacInstance_ =
    InstancesDeleteAccessConfig
    { _idacQuotaUser = Nothing
    , _idacPrettyPrint = True
    , _idacProject = pIdacProject_
    , _idacUserIp = Nothing
    , _idacNetworkInterface = pIdacNetworkInterface_
    , _idacZone = pIdacZone_
    , _idacKey = Nothing
    , _idacOauthToken = Nothing
    , _idacAccessConfig = pIdacAccessConfig_
    , _idacFields = Nothing
    , _idacAlt = "json"
    , _idacInstance = pIdacInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
idacQuotaUser :: Lens' InstancesDeleteAccessConfig' (Maybe Text)
idacQuotaUser
  = lens _idacQuotaUser
      (\ s a -> s{_idacQuotaUser = a})

-- | Returns response with indentations and line breaks.
idacPrettyPrint :: Lens' InstancesDeleteAccessConfig' Bool
idacPrettyPrint
  = lens _idacPrettyPrint
      (\ s a -> s{_idacPrettyPrint = a})

-- | Project ID for this request.
idacProject :: Lens' InstancesDeleteAccessConfig' Text
idacProject
  = lens _idacProject (\ s a -> s{_idacProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
idacUserIp :: Lens' InstancesDeleteAccessConfig' (Maybe Text)
idacUserIp
  = lens _idacUserIp (\ s a -> s{_idacUserIp = a})

-- | The name of the network interface.
idacNetworkInterface :: Lens' InstancesDeleteAccessConfig' Text
idacNetworkInterface
  = lens _idacNetworkInterface
      (\ s a -> s{_idacNetworkInterface = a})

-- | The name of the zone for this request.
idacZone :: Lens' InstancesDeleteAccessConfig' Text
idacZone = lens _idacZone (\ s a -> s{_idacZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idacKey :: Lens' InstancesDeleteAccessConfig' (Maybe Text)
idacKey = lens _idacKey (\ s a -> s{_idacKey = a})

-- | OAuth 2.0 token for the current user.
idacOauthToken :: Lens' InstancesDeleteAccessConfig' (Maybe Text)
idacOauthToken
  = lens _idacOauthToken
      (\ s a -> s{_idacOauthToken = a})

-- | The name of the access config to delete.
idacAccessConfig :: Lens' InstancesDeleteAccessConfig' Text
idacAccessConfig
  = lens _idacAccessConfig
      (\ s a -> s{_idacAccessConfig = a})

-- | Selector specifying which fields to include in a partial response.
idacFields :: Lens' InstancesDeleteAccessConfig' (Maybe Text)
idacFields
  = lens _idacFields (\ s a -> s{_idacFields = a})

-- | Data format for the response.
idacAlt :: Lens' InstancesDeleteAccessConfig' Text
idacAlt = lens _idacAlt (\ s a -> s{_idacAlt = a})

-- | The instance name for this request.
idacInstance :: Lens' InstancesDeleteAccessConfig' Text
idacInstance
  = lens _idacInstance (\ s a -> s{_idacInstance = a})

instance GoogleRequest InstancesDeleteAccessConfig'
         where
        type Rs InstancesDeleteAccessConfig' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesDeleteAccessConfig{..}
          = go _idacQuotaUser _idacPrettyPrint _idacProject
              _idacUserIp
              (Just _idacNetworkInterface)
              _idacZone
              _idacKey
              _idacOauthToken
              (Just _idacAccessConfig)
              _idacFields
              _idacAlt
              _idacInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesDeleteAccessConfigAPI)
                      r
                      u
