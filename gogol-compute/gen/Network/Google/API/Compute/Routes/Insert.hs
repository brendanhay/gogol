{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Routes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a route resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routes.insert@.
module Network.Google.API.Compute.Routes.Insert
    (
    -- * REST Resource
      RoutesInsertAPI

    -- * Creating a Request
    , routesInsert'
    , RoutesInsert'

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riProject
    , riUserIp
    , riKey
    , riOauthToken
    , riFields
    , riAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.routes.insert which the
-- 'RoutesInsert'' request conforms to.
type RoutesInsertAPI =
     Capture "project" Text :>
       "global" :>
         "routes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a route resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'routesInsert'' smart constructor.
data RoutesInsert' = RoutesInsert'
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riProject     :: !Text
    , _riUserIp      :: !(Maybe Text)
    , _riKey         :: !(Maybe Text)
    , _riOauthToken  :: !(Maybe Text)
    , _riFields      :: !(Maybe Text)
    , _riAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riProject'
--
-- * 'riUserIp'
--
-- * 'riKey'
--
-- * 'riOauthToken'
--
-- * 'riFields'
--
-- * 'riAlt'
routesInsert'
    :: Text -- ^ 'project'
    -> RoutesInsert'
routesInsert' pRiProject_ =
    RoutesInsert'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riProject = pRiProject_
    , _riUserIp = Nothing
    , _riKey = Nothing
    , _riOauthToken = Nothing
    , _riFields = Nothing
    , _riAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
riQuotaUser :: Lens' RoutesInsert' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' RoutesInsert' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | Name of the project scoping this request.
riProject :: Lens' RoutesInsert' Text
riProject
  = lens _riProject (\ s a -> s{_riProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
riUserIp :: Lens' RoutesInsert' (Maybe Text)
riUserIp = lens _riUserIp (\ s a -> s{_riUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' RoutesInsert' (Maybe Text)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOauthToken :: Lens' RoutesInsert' (Maybe Text)
riOauthToken
  = lens _riOauthToken (\ s a -> s{_riOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' RoutesInsert' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

-- | Data format for the response.
riAlt :: Lens' RoutesInsert' Alt
riAlt = lens _riAlt (\ s a -> s{_riAlt = a})

instance GoogleRequest RoutesInsert' where
        type Rs RoutesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RoutesInsert'{..}
          = go _riQuotaUser (Just _riPrettyPrint) _riProject
              _riUserIp
              _riKey
              _riOauthToken
              _riFields
              (Just _riAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoutesInsertAPI) r
                      u
