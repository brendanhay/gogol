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
-- Module      : Network.Google.Resource.Compute.Routes.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified route resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRoutesDelete@.
module Network.Google.Resource.Compute.Routes.Delete
    (
    -- * REST Resource
      RoutesDeleteResource

    -- * Creating a Request
    , routesDelete'
    , RoutesDelete'

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdProject
    , rdUserIP
    , rdRoute
    , rdKey
    , rdOAuthToken
    , rdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRoutesDelete@ which the
-- 'RoutesDelete'' request conforms to.
type RoutesDeleteResource =
     Capture "project" Text :>
       "global" :>
         "routes" :>
           Capture "route" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified route resource.
--
-- /See:/ 'routesDelete'' smart constructor.
data RoutesDelete' = RoutesDelete'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdProject     :: !Text
    , _rdUserIP      :: !(Maybe Text)
    , _rdRoute       :: !Text
    , _rdKey         :: !(Maybe Key)
    , _rdOAuthToken  :: !(Maybe OAuthToken)
    , _rdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdProject'
--
-- * 'rdUserIP'
--
-- * 'rdRoute'
--
-- * 'rdKey'
--
-- * 'rdOAuthToken'
--
-- * 'rdFields'
routesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'route'
    -> RoutesDelete'
routesDelete' pRdProject_ pRdRoute_ =
    RoutesDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdProject = pRdProject_
    , _rdUserIP = Nothing
    , _rdRoute = pRdRoute_
    , _rdKey = Nothing
    , _rdOAuthToken = Nothing
    , _rdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdQuotaUser :: Lens' RoutesDelete' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' RoutesDelete' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

-- | Name of the project scoping this request.
rdProject :: Lens' RoutesDelete' Text
rdProject
  = lens _rdProject (\ s a -> s{_rdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIP :: Lens' RoutesDelete' (Maybe Text)
rdUserIP = lens _rdUserIP (\ s a -> s{_rdUserIP = a})

-- | Name of the route resource to delete.
rdRoute :: Lens' RoutesDelete' Text
rdRoute = lens _rdRoute (\ s a -> s{_rdRoute = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RoutesDelete' (Maybe Key)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | OAuth 2.0 token for the current user.
rdOAuthToken :: Lens' RoutesDelete' (Maybe OAuthToken)
rdOAuthToken
  = lens _rdOAuthToken (\ s a -> s{_rdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RoutesDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

instance GoogleAuth RoutesDelete' where
        authKey = rdKey . _Just
        authToken = rdOAuthToken . _Just

instance GoogleRequest RoutesDelete' where
        type Rs RoutesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RoutesDelete'{..}
          = go _rdProject _rdRoute _rdQuotaUser
              (Just _rdPrettyPrint)
              _rdUserIP
              _rdFields
              _rdKey
              _rdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoutesDeleteResource)
                      r
                      u
