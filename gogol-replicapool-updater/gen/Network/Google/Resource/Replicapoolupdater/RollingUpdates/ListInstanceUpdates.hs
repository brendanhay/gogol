{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Replicapoolupdater.RollingUpdates.ListInstanceUpdates
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the current status for each instance within a given update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesListInstanceUpdates@.
module Replicapoolupdater.RollingUpdates.ListInstanceUpdates
    (
    -- * REST Resource
      RollingUpdatesListInstanceUpdatesAPI

    -- * Creating a Request
    , rollingUpdatesListInstanceUpdates
    , RollingUpdatesListInstanceUpdates

    -- * Request Lenses
    , ruliuRollingUpdate
    , ruliuQuotaUser
    , ruliuPrettyPrint
    , ruliuProject
    , ruliuUserIp
    , ruliuZone
    , ruliuKey
    , ruliuFilter
    , ruliuPageToken
    , ruliuOauthToken
    , ruliuMaxResults
    , ruliuFields
    , ruliuAlt
    ) where

import           Network.Google.InstanceGroupsUpdater.Types
import           Network.Google.Prelude

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesListInstanceUpdates@ which the
-- 'RollingUpdatesListInstanceUpdates' request conforms to.
type RollingUpdatesListInstanceUpdatesAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "instanceUpdates" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       Get '[JSON] InstanceUpdateList

-- | Lists the current status for each instance within a given update.
--
-- /See:/ 'rollingUpdatesListInstanceUpdates' smart constructor.
data RollingUpdatesListInstanceUpdates = RollingUpdatesListInstanceUpdates
    { _ruliuRollingUpdate :: !Text
    , _ruliuQuotaUser     :: !(Maybe Text)
    , _ruliuPrettyPrint   :: !Bool
    , _ruliuProject       :: !Text
    , _ruliuUserIp        :: !(Maybe Text)
    , _ruliuZone          :: !Text
    , _ruliuKey           :: !(Maybe Text)
    , _ruliuFilter        :: !(Maybe Text)
    , _ruliuPageToken     :: !(Maybe Text)
    , _ruliuOauthToken    :: !(Maybe Text)
    , _ruliuMaxResults    :: !Word32
    , _ruliuFields        :: !(Maybe Text)
    , _ruliuAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesListInstanceUpdates'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruliuRollingUpdate'
--
-- * 'ruliuQuotaUser'
--
-- * 'ruliuPrettyPrint'
--
-- * 'ruliuProject'
--
-- * 'ruliuUserIp'
--
-- * 'ruliuZone'
--
-- * 'ruliuKey'
--
-- * 'ruliuFilter'
--
-- * 'ruliuPageToken'
--
-- * 'ruliuOauthToken'
--
-- * 'ruliuMaxResults'
--
-- * 'ruliuFields'
--
-- * 'ruliuAlt'
rollingUpdatesListInstanceUpdates
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesListInstanceUpdates
rollingUpdatesListInstanceUpdates pRuliuRollingUpdate_ pRuliuProject_ pRuliuZone_ =
    RollingUpdatesListInstanceUpdates
    { _ruliuRollingUpdate = pRuliuRollingUpdate_
    , _ruliuQuotaUser = Nothing
    , _ruliuPrettyPrint = True
    , _ruliuProject = pRuliuProject_
    , _ruliuUserIp = Nothing
    , _ruliuZone = pRuliuZone_
    , _ruliuKey = Nothing
    , _ruliuFilter = Nothing
    , _ruliuPageToken = Nothing
    , _ruliuOauthToken = Nothing
    , _ruliuMaxResults = 500
    , _ruliuFields = Nothing
    , _ruliuAlt = "json"
    }

-- | The name of the update.
ruliuRollingUpdate :: Lens' RollingUpdatesListInstanceUpdates' Text
ruliuRollingUpdate
  = lens _ruliuRollingUpdate
      (\ s a -> s{_ruliuRollingUpdate = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruliuQuotaUser :: Lens' RollingUpdatesListInstanceUpdates' (Maybe Text)
ruliuQuotaUser
  = lens _ruliuQuotaUser
      (\ s a -> s{_ruliuQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruliuPrettyPrint :: Lens' RollingUpdatesListInstanceUpdates' Bool
ruliuPrettyPrint
  = lens _ruliuPrettyPrint
      (\ s a -> s{_ruliuPrettyPrint = a})

-- | The Google Developers Console project name.
ruliuProject :: Lens' RollingUpdatesListInstanceUpdates' Text
ruliuProject
  = lens _ruliuProject (\ s a -> s{_ruliuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruliuUserIp :: Lens' RollingUpdatesListInstanceUpdates' (Maybe Text)
ruliuUserIp
  = lens _ruliuUserIp (\ s a -> s{_ruliuUserIp = a})

-- | The name of the zone in which the update\'s target resides.
ruliuZone :: Lens' RollingUpdatesListInstanceUpdates' Text
ruliuZone
  = lens _ruliuZone (\ s a -> s{_ruliuZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruliuKey :: Lens' RollingUpdatesListInstanceUpdates' (Maybe Text)
ruliuKey = lens _ruliuKey (\ s a -> s{_ruliuKey = a})

-- | Optional. Filter expression for filtering listed resources.
ruliuFilter :: Lens' RollingUpdatesListInstanceUpdates' (Maybe Text)
ruliuFilter
  = lens _ruliuFilter (\ s a -> s{_ruliuFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
ruliuPageToken :: Lens' RollingUpdatesListInstanceUpdates' (Maybe Text)
ruliuPageToken
  = lens _ruliuPageToken
      (\ s a -> s{_ruliuPageToken = a})

-- | OAuth 2.0 token for the current user.
ruliuOauthToken :: Lens' RollingUpdatesListInstanceUpdates' (Maybe Text)
ruliuOauthToken
  = lens _ruliuOauthToken
      (\ s a -> s{_ruliuOauthToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
ruliuMaxResults :: Lens' RollingUpdatesListInstanceUpdates' Word32
ruliuMaxResults
  = lens _ruliuMaxResults
      (\ s a -> s{_ruliuMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ruliuFields :: Lens' RollingUpdatesListInstanceUpdates' (Maybe Text)
ruliuFields
  = lens _ruliuFields (\ s a -> s{_ruliuFields = a})

-- | Data format for the response.
ruliuAlt :: Lens' RollingUpdatesListInstanceUpdates' Text
ruliuAlt = lens _ruliuAlt (\ s a -> s{_ruliuAlt = a})

instance GoogleRequest
         RollingUpdatesListInstanceUpdates' where
        type Rs RollingUpdatesListInstanceUpdates' =
             InstanceUpdateList
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u
          RollingUpdatesListInstanceUpdates{..}
          = go _ruliuRollingUpdate _ruliuQuotaUser
              _ruliuPrettyPrint
              _ruliuProject
              _ruliuUserIp
              _ruliuZone
              _ruliuKey
              _ruliuFilter
              _ruliuPageToken
              _ruliuOauthToken
              (Just _ruliuMaxResults)
              _ruliuFields
              _ruliuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesListInstanceUpdatesAPI)
                      r
                      u
