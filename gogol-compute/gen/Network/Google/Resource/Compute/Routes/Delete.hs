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
    , rdUserIp
    , rdRoute
    , rdKey
    , rdOauthToken
    , rdFields
    , rdAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified route resource.
--
-- /See:/ 'routesDelete'' smart constructor.
data RoutesDelete' = RoutesDelete'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdProject     :: !Text
    , _rdUserIp      :: !(Maybe Text)
    , _rdRoute       :: !Text
    , _rdKey         :: !(Maybe Text)
    , _rdOauthToken  :: !(Maybe Text)
    , _rdFields      :: !(Maybe Text)
    , _rdAlt         :: !Alt
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
-- * 'rdUserIp'
--
-- * 'rdRoute'
--
-- * 'rdKey'
--
-- * 'rdOauthToken'
--
-- * 'rdFields'
--
-- * 'rdAlt'
routesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'route'
    -> RoutesDelete'
routesDelete' pRdProject_ pRdRoute_ =
    RoutesDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdProject = pRdProject_
    , _rdUserIp = Nothing
    , _rdRoute = pRdRoute_
    , _rdKey = Nothing
    , _rdOauthToken = Nothing
    , _rdFields = Nothing
    , _rdAlt = JSON
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
rdUserIp :: Lens' RoutesDelete' (Maybe Text)
rdUserIp = lens _rdUserIp (\ s a -> s{_rdUserIp = a})

-- | Name of the route resource to delete.
rdRoute :: Lens' RoutesDelete' Text
rdRoute = lens _rdRoute (\ s a -> s{_rdRoute = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RoutesDelete' (Maybe Text)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | OAuth 2.0 token for the current user.
rdOauthToken :: Lens' RoutesDelete' (Maybe Text)
rdOauthToken
  = lens _rdOauthToken (\ s a -> s{_rdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RoutesDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

-- | Data format for the response.
rdAlt :: Lens' RoutesDelete' Alt
rdAlt = lens _rdAlt (\ s a -> s{_rdAlt = a})

instance GoogleRequest RoutesDelete' where
        type Rs RoutesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RoutesDelete'{..}
          = go _rdQuotaUser (Just _rdPrettyPrint) _rdProject
              _rdUserIp
              _rdRoute
              _rdKey
              _rdOauthToken
              _rdFields
              (Just _rdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoutesDeleteResource)
                      r
                      u
