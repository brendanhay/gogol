{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists recent updates for a given managed instance group, in reverse
-- chronological order and paginated format.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesList@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List
    (
    -- * REST Resource
      RollingUpdatesListResource

    -- * Creating a Request
    , rollingUpdatesList'
    , RollingUpdatesList'

    -- * Request Lenses
    , rulQuotaUser
    , rulPrettyPrint
    , rulProject
    , rulUserIP
    , rulZone
    , rulKey
    , rulFilter
    , rulPageToken
    , rulOAuthToken
    , rulMaxResults
    , rulFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesList@ which the
-- 'RollingUpdatesList'' request conforms to.
type RollingUpdatesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] RollingUpdateList

-- | Lists recent updates for a given managed instance group, in reverse
-- chronological order and paginated format.
--
-- /See:/ 'rollingUpdatesList'' smart constructor.
data RollingUpdatesList' = RollingUpdatesList'
    { _rulQuotaUser   :: !(Maybe Text)
    , _rulPrettyPrint :: !Bool
    , _rulProject     :: !Text
    , _rulUserIP      :: !(Maybe Text)
    , _rulZone        :: !Text
    , _rulKey         :: !(Maybe Key)
    , _rulFilter      :: !(Maybe Text)
    , _rulPageToken   :: !(Maybe Text)
    , _rulOAuthToken  :: !(Maybe OAuthToken)
    , _rulMaxResults  :: !Word32
    , _rulFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rulQuotaUser'
--
-- * 'rulPrettyPrint'
--
-- * 'rulProject'
--
-- * 'rulUserIP'
--
-- * 'rulZone'
--
-- * 'rulKey'
--
-- * 'rulFilter'
--
-- * 'rulPageToken'
--
-- * 'rulOAuthToken'
--
-- * 'rulMaxResults'
--
-- * 'rulFields'
rollingUpdatesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesList'
rollingUpdatesList' pRulProject_ pRulZone_ =
    RollingUpdatesList'
    { _rulQuotaUser = Nothing
    , _rulPrettyPrint = True
    , _rulProject = pRulProject_
    , _rulUserIP = Nothing
    , _rulZone = pRulZone_
    , _rulKey = Nothing
    , _rulFilter = Nothing
    , _rulPageToken = Nothing
    , _rulOAuthToken = Nothing
    , _rulMaxResults = 500
    , _rulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rulQuotaUser :: Lens' RollingUpdatesList' (Maybe Text)
rulQuotaUser
  = lens _rulQuotaUser (\ s a -> s{_rulQuotaUser = a})

-- | Returns response with indentations and line breaks.
rulPrettyPrint :: Lens' RollingUpdatesList' Bool
rulPrettyPrint
  = lens _rulPrettyPrint
      (\ s a -> s{_rulPrettyPrint = a})

-- | The Google Developers Console project name.
rulProject :: Lens' RollingUpdatesList' Text
rulProject
  = lens _rulProject (\ s a -> s{_rulProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rulUserIP :: Lens' RollingUpdatesList' (Maybe Text)
rulUserIP
  = lens _rulUserIP (\ s a -> s{_rulUserIP = a})

-- | The name of the zone in which the update\'s target resides.
rulZone :: Lens' RollingUpdatesList' Text
rulZone = lens _rulZone (\ s a -> s{_rulZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rulKey :: Lens' RollingUpdatesList' (Maybe Key)
rulKey = lens _rulKey (\ s a -> s{_rulKey = a})

-- | Optional. Filter expression for filtering listed resources.
rulFilter :: Lens' RollingUpdatesList' (Maybe Text)
rulFilter
  = lens _rulFilter (\ s a -> s{_rulFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
rulPageToken :: Lens' RollingUpdatesList' (Maybe Text)
rulPageToken
  = lens _rulPageToken (\ s a -> s{_rulPageToken = a})

-- | OAuth 2.0 token for the current user.
rulOAuthToken :: Lens' RollingUpdatesList' (Maybe OAuthToken)
rulOAuthToken
  = lens _rulOAuthToken
      (\ s a -> s{_rulOAuthToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
rulMaxResults :: Lens' RollingUpdatesList' Word32
rulMaxResults
  = lens _rulMaxResults
      (\ s a -> s{_rulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rulFields :: Lens' RollingUpdatesList' (Maybe Text)
rulFields
  = lens _rulFields (\ s a -> s{_rulFields = a})

instance GoogleAuth RollingUpdatesList' where
        authKey = rulKey . _Just
        authToken = rulOAuthToken . _Just

instance GoogleRequest RollingUpdatesList' where
        type Rs RollingUpdatesList' = RollingUpdateList
        request
          = requestWithRoute defReq replicaPoolUpdaterURL
        requestWithRoute r u RollingUpdatesList'{..}
          = go _rulProject _rulZone _rulFilter _rulPageToken
              (Just _rulMaxResults)
              _rulQuotaUser
              (Just _rulPrettyPrint)
              _rulUserIP
              _rulFields
              _rulKey
              _rulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesListResource)
                      r
                      u
