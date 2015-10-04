{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified TargetPool resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsGet@.
module Network.Google.Resource.Compute.TargetPools.Get
    (
    -- * REST Resource
      TargetPoolsGetResource

    -- * Creating a Request
    , targetPoolsGet'
    , TargetPoolsGet'

    -- * Request Lenses
    , tpgQuotaUser
    , tpgPrettyPrint
    , tpgProject
    , tpgTargetPool
    , tpgUserIP
    , tpgKey
    , tpgRegion
    , tpgOAuthToken
    , tpgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsGet@ which the
-- 'TargetPoolsGet'' request conforms to.
type TargetPoolsGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] TargetPool

-- | Returns the specified TargetPool resource.
--
-- /See:/ 'targetPoolsGet'' smart constructor.
data TargetPoolsGet' = TargetPoolsGet'
    { _tpgQuotaUser   :: !(Maybe Text)
    , _tpgPrettyPrint :: !Bool
    , _tpgProject     :: !Text
    , _tpgTargetPool  :: !Text
    , _tpgUserIP      :: !(Maybe Text)
    , _tpgKey         :: !(Maybe Key)
    , _tpgRegion      :: !Text
    , _tpgOAuthToken  :: !(Maybe OAuthToken)
    , _tpgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpgQuotaUser'
--
-- * 'tpgPrettyPrint'
--
-- * 'tpgProject'
--
-- * 'tpgTargetPool'
--
-- * 'tpgUserIP'
--
-- * 'tpgKey'
--
-- * 'tpgRegion'
--
-- * 'tpgOAuthToken'
--
-- * 'tpgFields'
targetPoolsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsGet'
targetPoolsGet' pTpgProject_ pTpgTargetPool_ pTpgRegion_ =
    TargetPoolsGet'
    { _tpgQuotaUser = Nothing
    , _tpgPrettyPrint = True
    , _tpgProject = pTpgProject_
    , _tpgTargetPool = pTpgTargetPool_
    , _tpgUserIP = Nothing
    , _tpgKey = Nothing
    , _tpgRegion = pTpgRegion_
    , _tpgOAuthToken = Nothing
    , _tpgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpgQuotaUser :: Lens' TargetPoolsGet' (Maybe Text)
tpgQuotaUser
  = lens _tpgQuotaUser (\ s a -> s{_tpgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpgPrettyPrint :: Lens' TargetPoolsGet' Bool
tpgPrettyPrint
  = lens _tpgPrettyPrint
      (\ s a -> s{_tpgPrettyPrint = a})

-- | Name of the project scoping this request.
tpgProject :: Lens' TargetPoolsGet' Text
tpgProject
  = lens _tpgProject (\ s a -> s{_tpgProject = a})

-- | Name of the TargetPool resource to return.
tpgTargetPool :: Lens' TargetPoolsGet' Text
tpgTargetPool
  = lens _tpgTargetPool
      (\ s a -> s{_tpgTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpgUserIP :: Lens' TargetPoolsGet' (Maybe Text)
tpgUserIP
  = lens _tpgUserIP (\ s a -> s{_tpgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpgKey :: Lens' TargetPoolsGet' (Maybe Key)
tpgKey = lens _tpgKey (\ s a -> s{_tpgKey = a})

-- | Name of the region scoping this request.
tpgRegion :: Lens' TargetPoolsGet' Text
tpgRegion
  = lens _tpgRegion (\ s a -> s{_tpgRegion = a})

-- | OAuth 2.0 token for the current user.
tpgOAuthToken :: Lens' TargetPoolsGet' (Maybe OAuthToken)
tpgOAuthToken
  = lens _tpgOAuthToken
      (\ s a -> s{_tpgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpgFields :: Lens' TargetPoolsGet' (Maybe Text)
tpgFields
  = lens _tpgFields (\ s a -> s{_tpgFields = a})

instance GoogleAuth TargetPoolsGet' where
        authKey = tpgKey . _Just
        authToken = tpgOAuthToken . _Just

instance GoogleRequest TargetPoolsGet' where
        type Rs TargetPoolsGet' = TargetPool
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsGet'{..}
          = go _tpgProject _tpgRegion _tpgTargetPool
              _tpgQuotaUser
              (Just _tpgPrettyPrint)
              _tpgUserIP
              _tpgFields
              _tpgKey
              _tpgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsGetResource)
                      r
                      u
