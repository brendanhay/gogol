{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Autoscaler.Autoscalers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.autoscalers.get@.
module Network.Google.API.Autoscaler.Autoscalers.Get
    (
    -- * REST Resource
      AutoscalersGetAPI

    -- * Creating a Request
    , autoscalersGet'
    , AutoscalersGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agProject
    , agUserIp
    , agZone
    , agKey
    , agAutoscaler
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.Compute.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for autoscaler.autoscalers.get which the
-- 'AutoscalersGet'' request conforms to.
type AutoscalersGetAPI =
     "projects" :>
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

-- | Gets the specified Autoscaler resource.
--
-- /See:/ 'autoscalersGet'' smart constructor.
data AutoscalersGet' = AutoscalersGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agProject     :: !Text
    , _agUserIp      :: !(Maybe Text)
    , _agZone        :: !Text
    , _agKey         :: !(Maybe Text)
    , _agAutoscaler  :: !Text
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agProject'
--
-- * 'agUserIp'
--
-- * 'agZone'
--
-- * 'agKey'
--
-- * 'agAutoscaler'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
autoscalersGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersGet'
autoscalersGet' pAgProject_ pAgZone_ pAgAutoscaler_ =
    AutoscalersGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agProject = pAgProject_
    , _agUserIp = Nothing
    , _agZone = pAgZone_
    , _agKey = Nothing
    , _agAutoscaler = pAgAutoscaler_
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AutoscalersGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AutoscalersGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | Project ID of Autoscaler resource.
agProject :: Lens' AutoscalersGet' Text
agProject
  = lens _agProject (\ s a -> s{_agProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' AutoscalersGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | Zone name of Autoscaler resource.
agZone :: Lens' AutoscalersGet' Text
agZone = lens _agZone (\ s a -> s{_agZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AutoscalersGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | Name of the Autoscaler resource.
agAutoscaler :: Lens' AutoscalersGet' Text
agAutoscaler
  = lens _agAutoscaler (\ s a -> s{_agAutoscaler = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AutoscalersGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AutoscalersGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AutoscalersGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AutoscalersGet' where
        type Rs AutoscalersGet' = Autoscaler
        request
          = requestWithRoute defReq computeAutoscalerURL
        requestWithRoute r u AutoscalersGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agProject
              _agUserIp
              _agZone
              _agKey
              _agAutoscaler
              _agOauthToken
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AutoscalersGetAPI)
                      r
                      u
