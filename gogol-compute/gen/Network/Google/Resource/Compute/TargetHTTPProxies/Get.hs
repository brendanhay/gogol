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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified TargetHttpProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesGet@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Get
    (
    -- * REST Resource
      TargetHTTPProxiesGetResource

    -- * Creating a Request
    , targetHTTPProxiesGet'
    , TargetHTTPProxiesGet'

    -- * Request Lenses
    , thttppgQuotaUser
    , thttppgPrettyPrint
    , thttppgProject
    , thttppgUserIp
    , thttppgKey
    , thttppgTargetHttpProxy
    , thttppgOauthToken
    , thttppgFields
    , thttppgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesGet@ which the
-- 'TargetHTTPProxiesGet'' request conforms to.
type TargetHTTPProxiesGetResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :>
           Capture "targetHttpProxy" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] TargetHTTPProxy

-- | Returns the specified TargetHttpProxy resource.
--
-- /See:/ 'targetHTTPProxiesGet'' smart constructor.
data TargetHTTPProxiesGet' = TargetHTTPProxiesGet'
    { _thttppgQuotaUser       :: !(Maybe Text)
    , _thttppgPrettyPrint     :: !Bool
    , _thttppgProject         :: !Text
    , _thttppgUserIp          :: !(Maybe Text)
    , _thttppgKey             :: !(Maybe Text)
    , _thttppgTargetHttpProxy :: !Text
    , _thttppgOauthToken      :: !(Maybe Text)
    , _thttppgFields          :: !(Maybe Text)
    , _thttppgAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppgQuotaUser'
--
-- * 'thttppgPrettyPrint'
--
-- * 'thttppgProject'
--
-- * 'thttppgUserIp'
--
-- * 'thttppgKey'
--
-- * 'thttppgTargetHttpProxy'
--
-- * 'thttppgOauthToken'
--
-- * 'thttppgFields'
--
-- * 'thttppgAlt'
targetHTTPProxiesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetHttpProxy'
    -> TargetHTTPProxiesGet'
targetHTTPProxiesGet' pThttppgProject_ pThttppgTargetHttpProxy_ =
    TargetHTTPProxiesGet'
    { _thttppgQuotaUser = Nothing
    , _thttppgPrettyPrint = True
    , _thttppgProject = pThttppgProject_
    , _thttppgUserIp = Nothing
    , _thttppgKey = Nothing
    , _thttppgTargetHttpProxy = pThttppgTargetHttpProxy_
    , _thttppgOauthToken = Nothing
    , _thttppgFields = Nothing
    , _thttppgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
thttppgQuotaUser :: Lens' TargetHTTPProxiesGet' (Maybe Text)
thttppgQuotaUser
  = lens _thttppgQuotaUser
      (\ s a -> s{_thttppgQuotaUser = a})

-- | Returns response with indentations and line breaks.
thttppgPrettyPrint :: Lens' TargetHTTPProxiesGet' Bool
thttppgPrettyPrint
  = lens _thttppgPrettyPrint
      (\ s a -> s{_thttppgPrettyPrint = a})

-- | Name of the project scoping this request.
thttppgProject :: Lens' TargetHTTPProxiesGet' Text
thttppgProject
  = lens _thttppgProject
      (\ s a -> s{_thttppgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
thttppgUserIp :: Lens' TargetHTTPProxiesGet' (Maybe Text)
thttppgUserIp
  = lens _thttppgUserIp
      (\ s a -> s{_thttppgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
thttppgKey :: Lens' TargetHTTPProxiesGet' (Maybe Text)
thttppgKey
  = lens _thttppgKey (\ s a -> s{_thttppgKey = a})

-- | Name of the TargetHttpProxy resource to return.
thttppgTargetHttpProxy :: Lens' TargetHTTPProxiesGet' Text
thttppgTargetHttpProxy
  = lens _thttppgTargetHttpProxy
      (\ s a -> s{_thttppgTargetHttpProxy = a})

-- | OAuth 2.0 token for the current user.
thttppgOauthToken :: Lens' TargetHTTPProxiesGet' (Maybe Text)
thttppgOauthToken
  = lens _thttppgOauthToken
      (\ s a -> s{_thttppgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
thttppgFields :: Lens' TargetHTTPProxiesGet' (Maybe Text)
thttppgFields
  = lens _thttppgFields
      (\ s a -> s{_thttppgFields = a})

-- | Data format for the response.
thttppgAlt :: Lens' TargetHTTPProxiesGet' Alt
thttppgAlt
  = lens _thttppgAlt (\ s a -> s{_thttppgAlt = a})

instance GoogleRequest TargetHTTPProxiesGet' where
        type Rs TargetHTTPProxiesGet' = TargetHTTPProxy
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetHTTPProxiesGet'{..}
          = go _thttppgQuotaUser (Just _thttppgPrettyPrint)
              _thttppgProject
              _thttppgUserIp
              _thttppgKey
              _thttppgTargetHttpProxy
              _thttppgOauthToken
              _thttppgFields
              (Just _thttppgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetHTTPProxiesGetResource)
                      r
                      u
