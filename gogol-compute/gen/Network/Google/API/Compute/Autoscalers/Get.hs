{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Autoscalers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified autoscaler resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.get@.
module Network.Google.API.Compute.Autoscalers.Get
    (
    -- * REST Resource
      AutoscalersGetAPI

    -- * Creating a Request
    , autoscalersGet'
    , AutoscalersGet'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aProject
    , aUserIp
    , aZone
    , aKey
    , aAutoscaler
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.autoscalers.get which the
-- 'AutoscalersGet'' request conforms to.
type AutoscalersGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             Capture "autoscaler" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Autoscaler

-- | Returns the specified autoscaler resource.
--
-- /See:/ 'autoscalersGet'' smart constructor.
data AutoscalersGet' = AutoscalersGet'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aProject     :: !Text
    , _aUserIp      :: !(Maybe Text)
    , _aZone        :: !Text
    , _aKey         :: !(Maybe Text)
    , _aAutoscaler  :: !Text
    , _aOauthToken  :: !(Maybe Text)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aProject'
--
-- * 'aUserIp'
--
-- * 'aZone'
--
-- * 'aKey'
--
-- * 'aAutoscaler'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
autoscalersGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersGet'
autoscalersGet' pAProject_ pAZone_ pAAutoscaler_ =
    AutoscalersGet'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aProject = pAProject_
    , _aUserIp = Nothing
    , _aZone = pAZone_
    , _aKey = Nothing
    , _aAutoscaler = pAAutoscaler_
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AutoscalersGet' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AutoscalersGet' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | Name of the project scoping this request.
aProject :: Lens' AutoscalersGet' Text
aProject = lens _aProject (\ s a -> s{_aProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AutoscalersGet' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | Name of the zone scoping this request.
aZone :: Lens' AutoscalersGet' Text
aZone = lens _aZone (\ s a -> s{_aZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AutoscalersGet' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | Name of the persistent autoscaler resource to return.
aAutoscaler :: Lens' AutoscalersGet' Text
aAutoscaler
  = lens _aAutoscaler (\ s a -> s{_aAutoscaler = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AutoscalersGet' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AutoscalersGet' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AutoscalersGet' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AutoscalersGet' where
        type Rs AutoscalersGet' = Autoscaler
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersGet'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aProject
              _aUserIp
              _aZone
              _aKey
              _aAutoscaler
              _aOauthToken
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AutoscalersGetAPI)
                      r
                      u
