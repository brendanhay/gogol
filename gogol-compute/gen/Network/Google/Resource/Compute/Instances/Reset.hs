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
    , irrUserIp
    , irrZone
    , irrKey
    , irrOauthToken
    , irrFields
    , irrAlt
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
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Performs a hard reset on the instance.
--
-- /See:/ 'instancesReset'' smart constructor.
data InstancesReset' = InstancesReset'
    { _irrQuotaUser   :: !(Maybe Text)
    , _irrPrettyPrint :: !Bool
    , _irrProject     :: !Text
    , _irrUserIp      :: !(Maybe Text)
    , _irrZone        :: !Text
    , _irrKey         :: !(Maybe Text)
    , _irrOauthToken  :: !(Maybe Text)
    , _irrFields      :: !(Maybe Text)
    , _irrAlt         :: !Alt
    , _irrInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'irrUserIp'
--
-- * 'irrZone'
--
-- * 'irrKey'
--
-- * 'irrOauthToken'
--
-- * 'irrFields'
--
-- * 'irrAlt'
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
    , _irrUserIp = Nothing
    , _irrZone = pIrrZone_
    , _irrKey = Nothing
    , _irrOauthToken = Nothing
    , _irrFields = Nothing
    , _irrAlt = JSON
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
irrUserIp :: Lens' InstancesReset' (Maybe Text)
irrUserIp
  = lens _irrUserIp (\ s a -> s{_irrUserIp = a})

-- | The name of the zone for this request.
irrZone :: Lens' InstancesReset' Text
irrZone = lens _irrZone (\ s a -> s{_irrZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irrKey :: Lens' InstancesReset' (Maybe Text)
irrKey = lens _irrKey (\ s a -> s{_irrKey = a})

-- | OAuth 2.0 token for the current user.
irrOauthToken :: Lens' InstancesReset' (Maybe Text)
irrOauthToken
  = lens _irrOauthToken
      (\ s a -> s{_irrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
irrFields :: Lens' InstancesReset' (Maybe Text)
irrFields
  = lens _irrFields (\ s a -> s{_irrFields = a})

-- | Data format for the response.
irrAlt :: Lens' InstancesReset' Alt
irrAlt = lens _irrAlt (\ s a -> s{_irrAlt = a})

-- | Name of the instance scoping this request.
irrInstance :: Lens' InstancesReset' Text
irrInstance
  = lens _irrInstance (\ s a -> s{_irrInstance = a})

instance GoogleRequest InstancesReset' where
        type Rs InstancesReset' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesReset'{..}
          = go _irrQuotaUser (Just _irrPrettyPrint) _irrProject
              _irrUserIp
              _irrZone
              _irrKey
              _irrOauthToken
              _irrFields
              (Just _irrAlt)
              _irrInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesResetResource)
                      r
                      u
