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
    , tpgUserIp
    , tpgKey
    , tpgRegion
    , tpgOauthToken
    , tpgFields
    , tpgAlt
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] TargetPool

-- | Returns the specified TargetPool resource.
--
-- /See:/ 'targetPoolsGet'' smart constructor.
data TargetPoolsGet' = TargetPoolsGet'
    { _tpgQuotaUser   :: !(Maybe Text)
    , _tpgPrettyPrint :: !Bool
    , _tpgProject     :: !Text
    , _tpgTargetPool  :: !Text
    , _tpgUserIp      :: !(Maybe Text)
    , _tpgKey         :: !(Maybe Text)
    , _tpgRegion      :: !Text
    , _tpgOauthToken  :: !(Maybe Text)
    , _tpgFields      :: !(Maybe Text)
    , _tpgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'tpgUserIp'
--
-- * 'tpgKey'
--
-- * 'tpgRegion'
--
-- * 'tpgOauthToken'
--
-- * 'tpgFields'
--
-- * 'tpgAlt'
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
    , _tpgUserIp = Nothing
    , _tpgKey = Nothing
    , _tpgRegion = pTpgRegion_
    , _tpgOauthToken = Nothing
    , _tpgFields = Nothing
    , _tpgAlt = JSON
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
tpgUserIp :: Lens' TargetPoolsGet' (Maybe Text)
tpgUserIp
  = lens _tpgUserIp (\ s a -> s{_tpgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpgKey :: Lens' TargetPoolsGet' (Maybe Text)
tpgKey = lens _tpgKey (\ s a -> s{_tpgKey = a})

-- | Name of the region scoping this request.
tpgRegion :: Lens' TargetPoolsGet' Text
tpgRegion
  = lens _tpgRegion (\ s a -> s{_tpgRegion = a})

-- | OAuth 2.0 token for the current user.
tpgOauthToken :: Lens' TargetPoolsGet' (Maybe Text)
tpgOauthToken
  = lens _tpgOauthToken
      (\ s a -> s{_tpgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpgFields :: Lens' TargetPoolsGet' (Maybe Text)
tpgFields
  = lens _tpgFields (\ s a -> s{_tpgFields = a})

-- | Data format for the response.
tpgAlt :: Lens' TargetPoolsGet' Alt
tpgAlt = lens _tpgAlt (\ s a -> s{_tpgAlt = a})

instance GoogleRequest TargetPoolsGet' where
        type Rs TargetPoolsGet' = TargetPool
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsGet'{..}
          = go _tpgQuotaUser (Just _tpgPrettyPrint) _tpgProject
              _tpgTargetPool
              _tpgUserIp
              _tpgKey
              _tpgRegion
              _tpgOauthToken
              _tpgFields
              (Just _tpgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsGetResource)
                      r
                      u
