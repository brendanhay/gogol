{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Instances.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Performs a hard reset on the instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.reset@.
module Network.Google.API.Compute.Instances.Reset
    (
    -- * REST Resource
      InstancesResetAPI

    -- * Creating a Request
    , instancesReset'
    , InstancesReset'

    -- * Request Lenses
    , insQuotaUser
    , insPrettyPrint
    , insProject
    , insUserIp
    , insZone
    , insKey
    , insOauthToken
    , insFields
    , insAlt
    , insInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instances.reset which the
-- 'InstancesReset'' request conforms to.
type InstancesResetAPI =
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
    { _insQuotaUser   :: !(Maybe Text)
    , _insPrettyPrint :: !Bool
    , _insProject     :: !Text
    , _insUserIp      :: !(Maybe Text)
    , _insZone        :: !Text
    , _insKey         :: !(Maybe Text)
    , _insOauthToken  :: !(Maybe Text)
    , _insFields      :: !(Maybe Text)
    , _insAlt         :: !Alt
    , _insInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insQuotaUser'
--
-- * 'insPrettyPrint'
--
-- * 'insProject'
--
-- * 'insUserIp'
--
-- * 'insZone'
--
-- * 'insKey'
--
-- * 'insOauthToken'
--
-- * 'insFields'
--
-- * 'insAlt'
--
-- * 'insInstance'
instancesReset'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesReset'
instancesReset' pInsProject_ pInsZone_ pInsInstance_ =
    InstancesReset'
    { _insQuotaUser = Nothing
    , _insPrettyPrint = True
    , _insProject = pInsProject_
    , _insUserIp = Nothing
    , _insZone = pInsZone_
    , _insKey = Nothing
    , _insOauthToken = Nothing
    , _insFields = Nothing
    , _insAlt = JSON
    , _insInstance = pInsInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insQuotaUser :: Lens' InstancesReset' (Maybe Text)
insQuotaUser
  = lens _insQuotaUser (\ s a -> s{_insQuotaUser = a})

-- | Returns response with indentations and line breaks.
insPrettyPrint :: Lens' InstancesReset' Bool
insPrettyPrint
  = lens _insPrettyPrint
      (\ s a -> s{_insPrettyPrint = a})

-- | Project ID for this request.
insProject :: Lens' InstancesReset' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insUserIp :: Lens' InstancesReset' (Maybe Text)
insUserIp
  = lens _insUserIp (\ s a -> s{_insUserIp = a})

-- | The name of the zone for this request.
insZone :: Lens' InstancesReset' Text
insZone = lens _insZone (\ s a -> s{_insZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insKey :: Lens' InstancesReset' (Maybe Text)
insKey = lens _insKey (\ s a -> s{_insKey = a})

-- | OAuth 2.0 token for the current user.
insOauthToken :: Lens' InstancesReset' (Maybe Text)
insOauthToken
  = lens _insOauthToken
      (\ s a -> s{_insOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
insFields :: Lens' InstancesReset' (Maybe Text)
insFields
  = lens _insFields (\ s a -> s{_insFields = a})

-- | Data format for the response.
insAlt :: Lens' InstancesReset' Alt
insAlt = lens _insAlt (\ s a -> s{_insAlt = a})

-- | Name of the instance scoping this request.
insInstance :: Lens' InstancesReset' Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesReset' where
        type Rs InstancesReset' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesReset'{..}
          = go _insQuotaUser (Just _insPrettyPrint) _insProject
              _insUserIp
              _insZone
              _insKey
              _insOauthToken
              _insFields
              (Just _insAlt)
              _insInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesResetAPI)
                      r
                      u
