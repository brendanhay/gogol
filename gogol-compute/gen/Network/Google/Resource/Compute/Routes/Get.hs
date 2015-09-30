{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Compute.Routes.Get
    (
    -- * REST Resource
      RoutesGetAPI

    -- * Creating a Request
    , routesGet
    , RoutesGet

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgProject
    , rgUserIp
    , rgRoute
    , rgKey
    , rgOauthToken
    , rgFields
    , rgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRoutesGet@ which the
-- 'RoutesGet' request conforms to.
type RoutesGetAPI =
     Capture "project" Text :>
       "global" :>
         "routes" :> Capture "route" Text :> Get '[JSON] Route

-- | Returns the specified route resource.
--
-- /See:/ 'routesGet' smart constructor.
data RoutesGet = RoutesGet
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgProject     :: !Text
    , _rgUserIp      :: !(Maybe Text)
    , _rgRoute       :: !Text
    , _rgKey         :: !(Maybe Text)
    , _rgOauthToken  :: !(Maybe Text)
    , _rgFields      :: !(Maybe Text)
    , _rgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgProject'
--
-- * 'rgUserIp'
--
-- * 'rgRoute'
--
-- * 'rgKey'
--
-- * 'rgOauthToken'
--
-- * 'rgFields'
--
-- * 'rgAlt'
routesGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'route'
    -> RoutesGet
routesGet pRgProject_ pRgRoute_ =
    RoutesGet
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgProject = pRgProject_
    , _rgUserIp = Nothing
    , _rgRoute = pRgRoute_
    , _rgKey = Nothing
    , _rgOauthToken = Nothing
    , _rgFields = Nothing
    , _rgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' RoutesGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' RoutesGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | Name of the project scoping this request.
rgProject :: Lens' RoutesGet' Text
rgProject
  = lens _rgProject (\ s a -> s{_rgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' RoutesGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | Name of the route resource to return.
rgRoute :: Lens' RoutesGet' Text
rgRoute = lens _rgRoute (\ s a -> s{_rgRoute = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RoutesGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' RoutesGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' RoutesGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' RoutesGet' Text
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

instance GoogleRequest RoutesGet' where
        type Rs RoutesGet' = Route
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RoutesGet{..}
          = go _rgQuotaUser _rgPrettyPrint _rgProject _rgUserIp
              _rgRoute
              _rgKey
              _rgOauthToken
              _rgFields
              _rgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RoutesGetAPI) r u
