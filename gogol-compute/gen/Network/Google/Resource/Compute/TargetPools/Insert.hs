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
-- Module      : Network.Google.Resource.Compute.TargetPools.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetPool resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsInsert@.
module Network.Google.Resource.Compute.TargetPools.Insert
    (
    -- * REST Resource
      TargetPoolsInsertResource

    -- * Creating a Request
    , targetPoolsInsert'
    , TargetPoolsInsert'

    -- * Request Lenses
    , tpiQuotaUser
    , tpiPrettyPrint
    , tpiProject
    , tpiUserIp
    , tpiKey
    , tpiRegion
    , tpiOauthToken
    , tpiFields
    , tpiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsInsert@ which the
-- 'TargetPoolsInsert'' request conforms to.
type TargetPoolsInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a TargetPool resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ 'targetPoolsInsert'' smart constructor.
data TargetPoolsInsert' = TargetPoolsInsert'
    { _tpiQuotaUser   :: !(Maybe Text)
    , _tpiPrettyPrint :: !Bool
    , _tpiProject     :: !Text
    , _tpiUserIp      :: !(Maybe Text)
    , _tpiKey         :: !(Maybe Text)
    , _tpiRegion      :: !Text
    , _tpiOauthToken  :: !(Maybe Text)
    , _tpiFields      :: !(Maybe Text)
    , _tpiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpiQuotaUser'
--
-- * 'tpiPrettyPrint'
--
-- * 'tpiProject'
--
-- * 'tpiUserIp'
--
-- * 'tpiKey'
--
-- * 'tpiRegion'
--
-- * 'tpiOauthToken'
--
-- * 'tpiFields'
--
-- * 'tpiAlt'
targetPoolsInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> TargetPoolsInsert'
targetPoolsInsert' pTpiProject_ pTpiRegion_ =
    TargetPoolsInsert'
    { _tpiQuotaUser = Nothing
    , _tpiPrettyPrint = True
    , _tpiProject = pTpiProject_
    , _tpiUserIp = Nothing
    , _tpiKey = Nothing
    , _tpiRegion = pTpiRegion_
    , _tpiOauthToken = Nothing
    , _tpiFields = Nothing
    , _tpiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpiQuotaUser :: Lens' TargetPoolsInsert' (Maybe Text)
tpiQuotaUser
  = lens _tpiQuotaUser (\ s a -> s{_tpiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpiPrettyPrint :: Lens' TargetPoolsInsert' Bool
tpiPrettyPrint
  = lens _tpiPrettyPrint
      (\ s a -> s{_tpiPrettyPrint = a})

-- | Name of the project scoping this request.
tpiProject :: Lens' TargetPoolsInsert' Text
tpiProject
  = lens _tpiProject (\ s a -> s{_tpiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpiUserIp :: Lens' TargetPoolsInsert' (Maybe Text)
tpiUserIp
  = lens _tpiUserIp (\ s a -> s{_tpiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpiKey :: Lens' TargetPoolsInsert' (Maybe Text)
tpiKey = lens _tpiKey (\ s a -> s{_tpiKey = a})

-- | Name of the region scoping this request.
tpiRegion :: Lens' TargetPoolsInsert' Text
tpiRegion
  = lens _tpiRegion (\ s a -> s{_tpiRegion = a})

-- | OAuth 2.0 token for the current user.
tpiOauthToken :: Lens' TargetPoolsInsert' (Maybe Text)
tpiOauthToken
  = lens _tpiOauthToken
      (\ s a -> s{_tpiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpiFields :: Lens' TargetPoolsInsert' (Maybe Text)
tpiFields
  = lens _tpiFields (\ s a -> s{_tpiFields = a})

-- | Data format for the response.
tpiAlt :: Lens' TargetPoolsInsert' Alt
tpiAlt = lens _tpiAlt (\ s a -> s{_tpiAlt = a})

instance GoogleRequest TargetPoolsInsert' where
        type Rs TargetPoolsInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsInsert'{..}
          = go _tpiQuotaUser (Just _tpiPrettyPrint) _tpiProject
              _tpiUserIp
              _tpiKey
              _tpiRegion
              _tpiOauthToken
              _tpiFields
              (Just _tpiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsInsertResource)
                      r
                      u
