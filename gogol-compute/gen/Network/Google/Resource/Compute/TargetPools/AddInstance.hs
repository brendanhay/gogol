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
-- Module      : Network.Google.Resource.Compute.TargetPools.AddInstance
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds instance url to targetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsAddInstance@.
module Network.Google.Resource.Compute.TargetPools.AddInstance
    (
    -- * REST Resource
      TargetPoolsAddInstanceResource

    -- * Creating a Request
    , targetPoolsAddInstance'
    , TargetPoolsAddInstance'

    -- * Request Lenses
    , tpaiQuotaUser
    , tpaiPrettyPrint
    , tpaiProject
    , tpaiTargetPool
    , tpaiUserIp
    , tpaiKey
    , tpaiRegion
    , tpaiOauthToken
    , tpaiFields
    , tpaiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsAddInstance@ which the
-- 'TargetPoolsAddInstance'' request conforms to.
type TargetPoolsAddInstanceResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "addInstance" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Adds instance url to targetPool.
--
-- /See:/ 'targetPoolsAddInstance'' smart constructor.
data TargetPoolsAddInstance' = TargetPoolsAddInstance'
    { _tpaiQuotaUser   :: !(Maybe Text)
    , _tpaiPrettyPrint :: !Bool
    , _tpaiProject     :: !Text
    , _tpaiTargetPool  :: !Text
    , _tpaiUserIp      :: !(Maybe Text)
    , _tpaiKey         :: !(Maybe Text)
    , _tpaiRegion      :: !Text
    , _tpaiOauthToken  :: !(Maybe Text)
    , _tpaiFields      :: !(Maybe Text)
    , _tpaiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAddInstance'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpaiQuotaUser'
--
-- * 'tpaiPrettyPrint'
--
-- * 'tpaiProject'
--
-- * 'tpaiTargetPool'
--
-- * 'tpaiUserIp'
--
-- * 'tpaiKey'
--
-- * 'tpaiRegion'
--
-- * 'tpaiOauthToken'
--
-- * 'tpaiFields'
--
-- * 'tpaiAlt'
targetPoolsAddInstance'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsAddInstance'
targetPoolsAddInstance' pTpaiProject_ pTpaiTargetPool_ pTpaiRegion_ =
    TargetPoolsAddInstance'
    { _tpaiQuotaUser = Nothing
    , _tpaiPrettyPrint = True
    , _tpaiProject = pTpaiProject_
    , _tpaiTargetPool = pTpaiTargetPool_
    , _tpaiUserIp = Nothing
    , _tpaiKey = Nothing
    , _tpaiRegion = pTpaiRegion_
    , _tpaiOauthToken = Nothing
    , _tpaiFields = Nothing
    , _tpaiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpaiQuotaUser :: Lens' TargetPoolsAddInstance' (Maybe Text)
tpaiQuotaUser
  = lens _tpaiQuotaUser
      (\ s a -> s{_tpaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpaiPrettyPrint :: Lens' TargetPoolsAddInstance' Bool
tpaiPrettyPrint
  = lens _tpaiPrettyPrint
      (\ s a -> s{_tpaiPrettyPrint = a})

tpaiProject :: Lens' TargetPoolsAddInstance' Text
tpaiProject
  = lens _tpaiProject (\ s a -> s{_tpaiProject = a})

-- | Name of the TargetPool resource to which instance_url is to be added.
tpaiTargetPool :: Lens' TargetPoolsAddInstance' Text
tpaiTargetPool
  = lens _tpaiTargetPool
      (\ s a -> s{_tpaiTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpaiUserIp :: Lens' TargetPoolsAddInstance' (Maybe Text)
tpaiUserIp
  = lens _tpaiUserIp (\ s a -> s{_tpaiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpaiKey :: Lens' TargetPoolsAddInstance' (Maybe Text)
tpaiKey = lens _tpaiKey (\ s a -> s{_tpaiKey = a})

-- | Name of the region scoping this request.
tpaiRegion :: Lens' TargetPoolsAddInstance' Text
tpaiRegion
  = lens _tpaiRegion (\ s a -> s{_tpaiRegion = a})

-- | OAuth 2.0 token for the current user.
tpaiOauthToken :: Lens' TargetPoolsAddInstance' (Maybe Text)
tpaiOauthToken
  = lens _tpaiOauthToken
      (\ s a -> s{_tpaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpaiFields :: Lens' TargetPoolsAddInstance' (Maybe Text)
tpaiFields
  = lens _tpaiFields (\ s a -> s{_tpaiFields = a})

-- | Data format for the response.
tpaiAlt :: Lens' TargetPoolsAddInstance' Alt
tpaiAlt = lens _tpaiAlt (\ s a -> s{_tpaiAlt = a})

instance GoogleRequest TargetPoolsAddInstance' where
        type Rs TargetPoolsAddInstance' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsAddInstance'{..}
          = go _tpaiQuotaUser (Just _tpaiPrettyPrint)
              _tpaiProject
              _tpaiTargetPool
              _tpaiUserIp
              _tpaiKey
              _tpaiRegion
              _tpaiOauthToken
              _tpaiFields
              (Just _tpaiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsAddInstanceResource)
                      r
                      u
