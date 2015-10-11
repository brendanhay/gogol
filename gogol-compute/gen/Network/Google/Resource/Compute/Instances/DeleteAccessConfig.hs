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
module Network.Google.Resource.Compute.Instances.DeleteAccessConfig
    (
    -- * REST Resource
      InstancesDeleteAccessConfigResource

    -- * Creating a Request
    , instancesDeleteAccessConfig'
    , InstancesDeleteAccessConfig'

    -- * Request Lenses
    , idacQuotaUser
    , idacPrettyPrint
    , idacProject
    , idacUserIP
    , idacNetworkInterface
    , idacZone
    , idacKey
    , idacOAuthToken
    , idacAccessConfig
    , idacFields
    , idacInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesDeleteAccessConfig@ method which the
-- 'InstancesDeleteAccessConfig'' request conforms to.
type InstancesDeleteAccessConfigResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "deleteAccessConfig" :>
                 QueryParam "accessConfig" Text :>
                   QueryParam "networkInterface" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON] Operation

-- | Deletes an access config from an instance\'s network interface.
--
-- /See:/ 'instancesDeleteAccessConfig'' smart constructor.
data InstancesDeleteAccessConfig' = InstancesDeleteAccessConfig'
    { _idacQuotaUser        :: !(Maybe Text)
    , _idacPrettyPrint      :: !Bool
    , _idacProject          :: !Text
    , _idacUserIP           :: !(Maybe Text)
    , _idacNetworkInterface :: !Text
    , _idacZone             :: !Text
    , _idacKey              :: !(Maybe AuthKey)
    , _idacOAuthToken       :: !(Maybe OAuthToken)
    , _idacAccessConfig     :: !Text
    , _idacFields           :: !(Maybe Text)
    , _idacInstance         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'idacUserIP'
--
-- * 'idacNetworkInterface'
--
-- * 'idacZone'
--
-- * 'idacKey'
--
-- * 'idacOAuthToken'
--
-- * 'idacAccessConfig'
--
-- * 'idacFields'
--
-- * 'idacInstance'
instancesDeleteAccessConfig'
    :: Text -- ^ 'project'
    -> Text -- ^ 'networkInterface'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'accessConfig'
    -> Text -- ^ 'instance'
    -> InstancesDeleteAccessConfig'
instancesDeleteAccessConfig' pIdacProject_ pIdacNetworkInterface_ pIdacZone_ pIdacAccessConfig_ pIdacInstance_ =
    InstancesDeleteAccessConfig'
    { _idacQuotaUser = Nothing
    , _idacPrettyPrint = True
    , _idacProject = pIdacProject_
    , _idacUserIP = Nothing
    , _idacNetworkInterface = pIdacNetworkInterface_
    , _idacZone = pIdacZone_
    , _idacKey = Nothing
    , _idacOAuthToken = Nothing
    , _idacAccessConfig = pIdacAccessConfig_
    , _idacFields = Nothing
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
idacUserIP :: Lens' InstancesDeleteAccessConfig' (Maybe Text)
idacUserIP
  = lens _idacUserIP (\ s a -> s{_idacUserIP = a})

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
idacKey :: Lens' InstancesDeleteAccessConfig' (Maybe AuthKey)
idacKey = lens _idacKey (\ s a -> s{_idacKey = a})

-- | OAuth 2.0 token for the current user.
idacOAuthToken :: Lens' InstancesDeleteAccessConfig' (Maybe OAuthToken)
idacOAuthToken
  = lens _idacOAuthToken
      (\ s a -> s{_idacOAuthToken = a})

-- | The name of the access config to delete.
idacAccessConfig :: Lens' InstancesDeleteAccessConfig' Text
idacAccessConfig
  = lens _idacAccessConfig
      (\ s a -> s{_idacAccessConfig = a})

-- | Selector specifying which fields to include in a partial response.
idacFields :: Lens' InstancesDeleteAccessConfig' (Maybe Text)
idacFields
  = lens _idacFields (\ s a -> s{_idacFields = a})

-- | The instance name for this request.
idacInstance :: Lens' InstancesDeleteAccessConfig' Text
idacInstance
  = lens _idacInstance (\ s a -> s{_idacInstance = a})

instance GoogleAuth InstancesDeleteAccessConfig'
         where
        _AuthKey = idacKey . _Just
        _AuthToken = idacOAuthToken . _Just

instance GoogleRequest InstancesDeleteAccessConfig'
         where
        type Rs InstancesDeleteAccessConfig' = Operation
        request = requestWith computeRequest
        requestWith rq InstancesDeleteAccessConfig'{..}
          = go _idacProject _idacZone _idacInstance
              (Just _idacAccessConfig)
              (Just _idacNetworkInterface)
              _idacQuotaUser
              (Just _idacPrettyPrint)
              _idacUserIP
              _idacFields
              _idacKey
              _idacOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesDeleteAccessConfigResource)
                      rq
