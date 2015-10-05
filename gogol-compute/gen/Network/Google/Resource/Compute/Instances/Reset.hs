{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Performs a hard reset on the instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesReset@.
module Network.Google.Resource.Compute.Instances.Reset
    (
    -- * REST Resource
      InstancesResetResource

    -- * Creating a Request
    , instancesReset'
    , InstancesReset'

    -- * Request Lenses
    , irrQuotaUser
    , irrPrettyPrint
    , irrProject
    , irrUserIP
    , irrZone
    , irrKey
    , irrOAuthToken
    , irrFields
    , irrInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesReset@ which the
-- 'InstancesReset'' request conforms to.
type InstancesResetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "reset" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Performs a hard reset on the instance.
--
-- /See:/ 'instancesReset'' smart constructor.
data InstancesReset' = InstancesReset'
    { _irrQuotaUser   :: !(Maybe Text)
    , _irrPrettyPrint :: !Bool
    , _irrProject     :: !Text
    , _irrUserIP      :: !(Maybe Text)
    , _irrZone        :: !Text
    , _irrKey         :: !(Maybe Key)
    , _irrOAuthToken  :: !(Maybe OAuthToken)
    , _irrFields      :: !(Maybe Text)
    , _irrInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrQuotaUser'
--
-- * 'irrPrettyPrint'
--
-- * 'irrProject'
--
-- * 'irrUserIP'
--
-- * 'irrZone'
--
-- * 'irrKey'
--
-- * 'irrOAuthToken'
--
-- * 'irrFields'
--
-- * 'irrInstance'
instancesReset'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesReset'
instancesReset' pIrrProject_ pIrrZone_ pIrrInstance_ =
    InstancesReset'
    { _irrQuotaUser = Nothing
    , _irrPrettyPrint = True
    , _irrProject = pIrrProject_
    , _irrUserIP = Nothing
    , _irrZone = pIrrZone_
    , _irrKey = Nothing
    , _irrOAuthToken = Nothing
    , _irrFields = Nothing
    , _irrInstance = pIrrInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
irrQuotaUser :: Lens' InstancesReset' (Maybe Text)
irrQuotaUser
  = lens _irrQuotaUser (\ s a -> s{_irrQuotaUser = a})

-- | Returns response with indentations and line breaks.
irrPrettyPrint :: Lens' InstancesReset' Bool
irrPrettyPrint
  = lens _irrPrettyPrint
      (\ s a -> s{_irrPrettyPrint = a})

-- | Project ID for this request.
irrProject :: Lens' InstancesReset' Text
irrProject
  = lens _irrProject (\ s a -> s{_irrProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
irrUserIP :: Lens' InstancesReset' (Maybe Text)
irrUserIP
  = lens _irrUserIP (\ s a -> s{_irrUserIP = a})

-- | The name of the zone for this request.
irrZone :: Lens' InstancesReset' Text
irrZone = lens _irrZone (\ s a -> s{_irrZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irrKey :: Lens' InstancesReset' (Maybe Key)
irrKey = lens _irrKey (\ s a -> s{_irrKey = a})

-- | OAuth 2.0 token for the current user.
irrOAuthToken :: Lens' InstancesReset' (Maybe OAuthToken)
irrOAuthToken
  = lens _irrOAuthToken
      (\ s a -> s{_irrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
irrFields :: Lens' InstancesReset' (Maybe Text)
irrFields
  = lens _irrFields (\ s a -> s{_irrFields = a})

-- | Name of the instance scoping this request.
irrInstance :: Lens' InstancesReset' Text
irrInstance
  = lens _irrInstance (\ s a -> s{_irrInstance = a})

instance GoogleAuth InstancesReset' where
        authKey = irrKey . _Just
        authToken = irrOAuthToken . _Just

instance GoogleRequest InstancesReset' where
        type Rs InstancesReset' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesReset'{..}
          = go _irrProject _irrZone _irrInstance _irrQuotaUser
              (Just _irrPrettyPrint)
              _irrUserIP
              _irrFields
              _irrKey
              _irrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesResetResource)
                      r
                      u
