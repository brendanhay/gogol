{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Replicapoolupdater.RollingUpdates.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists recent updates for a given managed instance group, in reverse
-- chronological order and paginated format.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.list@.
module Network.Google.API.Replicapoolupdater.RollingUpdates.List
    (
    -- * REST Resource
      RollingUpdatesListAPI

    -- * Creating a Request
    , rollingUpdatesList'
    , RollingUpdatesList'

    -- * Request Lenses
    , rulQuotaUser
    , rulPrettyPrint
    , rulProject
    , rulUserIp
    , rulZone
    , rulKey
    , rulFilter
    , rulPageToken
    , rulOauthToken
    , rulMaxResults
    , rulFields
    , rulAlt
    ) where

import           Network.Google.InstanceGroups.Updater.Types
import           Network.Google.Prelude

-- | A resource alias for replicapoolupdater.rollingUpdates.list which the
-- 'RollingUpdatesList'' request conforms to.
type RollingUpdatesListAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] RollingUpdateList

-- | Lists recent updates for a given managed instance group, in reverse
-- chronological order and paginated format.
--
-- /See:/ 'rollingUpdatesList'' smart constructor.
data RollingUpdatesList' = RollingUpdatesList'
    { _rulQuotaUser   :: !(Maybe Text)
    , _rulPrettyPrint :: !Bool
    , _rulProject     :: !Text
    , _rulUserIp      :: !(Maybe Text)
    , _rulZone        :: !Text
    , _rulKey         :: !(Maybe Text)
    , _rulFilter      :: !(Maybe Text)
    , _rulPageToken   :: !(Maybe Text)
    , _rulOauthToken  :: !(Maybe Text)
    , _rulMaxResults  :: !Word32
    , _rulFields      :: !(Maybe Text)
    , _rulAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'rulUserIp'
--
-- * 'rulZone'
--
-- * 'rulKey'
--
-- * 'rulFilter'
--
-- * 'rulPageToken'
--
-- * 'rulOauthToken'
--
-- * 'rulMaxResults'
--
-- * 'rulFields'
--
-- * 'rulAlt'
rollingUpdatesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesList'
rollingUpdatesList' pRulProject_ pRulZone_ =
    RollingUpdatesList'
    { _rulQuotaUser = Nothing
    , _rulPrettyPrint = True
    , _rulProject = pRulProject_
    , _rulUserIp = Nothing
    , _rulZone = pRulZone_
    , _rulKey = Nothing
    , _rulFilter = Nothing
    , _rulPageToken = Nothing
    , _rulOauthToken = Nothing
    , _rulMaxResults = 500
    , _rulFields = Nothing
    , _rulAlt = JSON
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
rulUserIp :: Lens' RollingUpdatesList' (Maybe Text)
rulUserIp
  = lens _rulUserIp (\ s a -> s{_rulUserIp = a})

-- | The name of the zone in which the update\'s target resides.
rulZone :: Lens' RollingUpdatesList' Text
rulZone = lens _rulZone (\ s a -> s{_rulZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rulKey :: Lens' RollingUpdatesList' (Maybe Text)
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
rulOauthToken :: Lens' RollingUpdatesList' (Maybe Text)
rulOauthToken
  = lens _rulOauthToken
      (\ s a -> s{_rulOauthToken = a})

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

-- | Data format for the response.
rulAlt :: Lens' RollingUpdatesList' Alt
rulAlt = lens _rulAlt (\ s a -> s{_rulAlt = a})

instance GoogleRequest RollingUpdatesList' where
        type Rs RollingUpdatesList' = RollingUpdateList
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u RollingUpdatesList'{..}
          = go _rulQuotaUser (Just _rulPrettyPrint) _rulProject
              _rulUserIp
              _rulZone
              _rulKey
              _rulFilter
              _rulPageToken
              _rulOauthToken
              (Just _rulMaxResults)
              _rulFields
              (Just _rulAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesListAPI)
                      r
                      u
