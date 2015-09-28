{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Autoscalers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified autoscaler resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.delete@.
module Network.Google.API.Compute.Autoscalers.Delete
    (
    -- * REST Resource
      AutoscalersDeleteAPI

    -- * Creating a Request
    , autoscalersDelete'
    , AutoscalersDelete'

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adProject
    , adUserIp
    , adZone
    , adKey
    , adAutoscaler
    , adOauthToken
    , adFields
    , adAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.autoscalers.delete which the
-- 'AutoscalersDelete'' request conforms to.
type AutoscalersDeleteAPI =
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
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified autoscaler resource.
--
-- /See:/ 'autoscalersDelete'' smart constructor.
data AutoscalersDelete' = AutoscalersDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adPrettyPrint :: !Bool
    , _adProject     :: !Text
    , _adUserIp      :: !(Maybe Text)
    , _adZone        :: !Text
    , _adKey         :: !(Maybe Text)
    , _adAutoscaler  :: !Text
    , _adOauthToken  :: !(Maybe Text)
    , _adFields      :: !(Maybe Text)
    , _adAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adProject'
--
-- * 'adUserIp'
--
-- * 'adZone'
--
-- * 'adKey'
--
-- * 'adAutoscaler'
--
-- * 'adOauthToken'
--
-- * 'adFields'
--
-- * 'adAlt'
autoscalersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersDelete'
autoscalersDelete' pAdProject_ pAdZone_ pAdAutoscaler_ =
    AutoscalersDelete'
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adProject = pAdProject_
    , _adUserIp = Nothing
    , _adZone = pAdZone_
    , _adKey = Nothing
    , _adAutoscaler = pAdAutoscaler_
    , _adOauthToken = Nothing
    , _adFields = Nothing
    , _adAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' AutoscalersDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' AutoscalersDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | Name of the project scoping this request.
adProject :: Lens' AutoscalersDelete' Text
adProject
  = lens _adProject (\ s a -> s{_adProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIp :: Lens' AutoscalersDelete' (Maybe Text)
adUserIp = lens _adUserIp (\ s a -> s{_adUserIp = a})

-- | Name of the zone scoping this request.
adZone :: Lens' AutoscalersDelete' Text
adZone = lens _adZone (\ s a -> s{_adZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AutoscalersDelete' (Maybe Text)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | Name of the persistent autoscaler resource to delete.
adAutoscaler :: Lens' AutoscalersDelete' Text
adAutoscaler
  = lens _adAutoscaler (\ s a -> s{_adAutoscaler = a})

-- | OAuth 2.0 token for the current user.
adOauthToken :: Lens' AutoscalersDelete' (Maybe Text)
adOauthToken
  = lens _adOauthToken (\ s a -> s{_adOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AutoscalersDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

-- | Data format for the response.
adAlt :: Lens' AutoscalersDelete' Alt
adAlt = lens _adAlt (\ s a -> s{_adAlt = a})

instance GoogleRequest AutoscalersDelete' where
        type Rs AutoscalersDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersDelete'{..}
          = go _adQuotaUser (Just _adPrettyPrint) _adProject
              _adUserIp
              _adZone
              _adKey
              _adAutoscaler
              _adOauthToken
              _adFields
              (Just _adAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersDeleteAPI)
                      r
                      u
