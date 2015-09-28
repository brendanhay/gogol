{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Routes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of route resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routes.list@.
module Network.Google.API.Compute.Routes.List
    (
    -- * REST Resource
      RoutesListAPI

    -- * Creating a Request
    , routesList'
    , RoutesList'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rProject
    , rUserIp
    , rKey
    , rFilter
    , rPageToken
    , rOauthToken
    , rMaxResults
    , rFields
    , rAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.routes.list which the
-- 'RoutesList'' request conforms to.
type RoutesListAPI =
     Capture "project" Text :>
       "global" :>
         "routes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] RouteList

-- | Retrieves the list of route resources available to the specified
-- project.
--
-- /See:/ 'routesList'' smart constructor.
data RoutesList' = RoutesList'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rProject     :: !Text
    , _rUserIp      :: !(Maybe Text)
    , _rKey         :: !(Maybe Text)
    , _rFilter      :: !(Maybe Text)
    , _rPageToken   :: !(Maybe Text)
    , _rOauthToken  :: !(Maybe Text)
    , _rMaxResults  :: !Word32
    , _rFields      :: !(Maybe Text)
    , _rAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rProject'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rFilter'
--
-- * 'rPageToken'
--
-- * 'rOauthToken'
--
-- * 'rMaxResults'
--
-- * 'rFields'
--
-- * 'rAlt'
routesList'
    :: Text -- ^ 'project'
    -> RoutesList'
routesList' pRProject_ =
    RoutesList'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rProject = pRProject_
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rFilter = Nothing
    , _rPageToken = Nothing
    , _rOauthToken = Nothing
    , _rMaxResults = 500
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RoutesList' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RoutesList' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | Name of the project scoping this request.
rProject :: Lens' RoutesList' Text
rProject = lens _rProject (\ s a -> s{_rProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RoutesList' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RoutesList' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
rFilter :: Lens' RoutesList' (Maybe Text)
rFilter = lens _rFilter (\ s a -> s{_rFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
rPageToken :: Lens' RoutesList' (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RoutesList' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Maximum count of results to be returned.
rMaxResults :: Lens' RoutesList' Word32
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RoutesList' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RoutesList' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RoutesList' where
        type Rs RoutesList' = RouteList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RoutesList'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rProject
              _rUserIp
              _rKey
              _rFilter
              _rPageToken
              _rOauthToken
              (Just _rMaxResults)
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoutesListAPI) r u
