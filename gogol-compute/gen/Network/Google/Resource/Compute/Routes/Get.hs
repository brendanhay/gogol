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
-- Module      : Network.Google.Resource.Compute.Routes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified route resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRoutesGet@.
module Network.Google.Resource.Compute.Routes.Get
    (
    -- * REST Resource
      RoutesGetResource

    -- * Creating a Request
    , routesGet'
    , RoutesGet'

    -- * Request Lenses
    , rouQuotaUser
    , rouPrettyPrint
    , rouProject
    , rouUserIP
    , rouRoute
    , rouKey
    , rouOAuthToken
    , rouFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRoutesGet@ which the
-- 'RoutesGet'' request conforms to.
type RoutesGetResource =
     Capture "project" Text :>
       "global" :>
         "routes" :>
           Capture "route" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Route

-- | Returns the specified route resource.
--
-- /See:/ 'routesGet'' smart constructor.
data RoutesGet' = RoutesGet'
    { _rouQuotaUser   :: !(Maybe Text)
    , _rouPrettyPrint :: !Bool
    , _rouProject     :: !Text
    , _rouUserIP      :: !(Maybe Text)
    , _rouRoute       :: !Text
    , _rouKey         :: !(Maybe Key)
    , _rouOAuthToken  :: !(Maybe OAuthToken)
    , _rouFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rouQuotaUser'
--
-- * 'rouPrettyPrint'
--
-- * 'rouProject'
--
-- * 'rouUserIP'
--
-- * 'rouRoute'
--
-- * 'rouKey'
--
-- * 'rouOAuthToken'
--
-- * 'rouFields'
routesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'route'
    -> RoutesGet'
routesGet' pRouProject_ pRouRoute_ =
    RoutesGet'
    { _rouQuotaUser = Nothing
    , _rouPrettyPrint = True
    , _rouProject = pRouProject_
    , _rouUserIP = Nothing
    , _rouRoute = pRouRoute_
    , _rouKey = Nothing
    , _rouOAuthToken = Nothing
    , _rouFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rouQuotaUser :: Lens' RoutesGet' (Maybe Text)
rouQuotaUser
  = lens _rouQuotaUser (\ s a -> s{_rouQuotaUser = a})

-- | Returns response with indentations and line breaks.
rouPrettyPrint :: Lens' RoutesGet' Bool
rouPrettyPrint
  = lens _rouPrettyPrint
      (\ s a -> s{_rouPrettyPrint = a})

-- | Name of the project scoping this request.
rouProject :: Lens' RoutesGet' Text
rouProject
  = lens _rouProject (\ s a -> s{_rouProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rouUserIP :: Lens' RoutesGet' (Maybe Text)
rouUserIP
  = lens _rouUserIP (\ s a -> s{_rouUserIP = a})

-- | Name of the route resource to return.
rouRoute :: Lens' RoutesGet' Text
rouRoute = lens _rouRoute (\ s a -> s{_rouRoute = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rouKey :: Lens' RoutesGet' (Maybe Key)
rouKey = lens _rouKey (\ s a -> s{_rouKey = a})

-- | OAuth 2.0 token for the current user.
rouOAuthToken :: Lens' RoutesGet' (Maybe OAuthToken)
rouOAuthToken
  = lens _rouOAuthToken
      (\ s a -> s{_rouOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rouFields :: Lens' RoutesGet' (Maybe Text)
rouFields
  = lens _rouFields (\ s a -> s{_rouFields = a})

instance GoogleAuth RoutesGet' where
        authKey = rouKey . _Just
        authToken = rouOAuthToken . _Just

instance GoogleRequest RoutesGet' where
        type Rs RoutesGet' = Route
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RoutesGet'{..}
          = go _rouQuotaUser (Just _rouPrettyPrint) _rouProject
              _rouUserIP
              _rouRoute
              _rouKey
              _rouOAuthToken
              _rouFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy RoutesGetResource)
                      r
                      u
