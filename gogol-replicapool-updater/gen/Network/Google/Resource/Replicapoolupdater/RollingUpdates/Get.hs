{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Replicapoolupdater.RollingUpdates.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about an update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesGet@.
module Replicapoolupdater.RollingUpdates.Get
    (
    -- * REST Resource
      RollingUpdatesGetAPI

    -- * Creating a Request
    , rollingUpdatesGet
    , RollingUpdatesGet

    -- * Request Lenses
    , rugRollingUpdate
    , rugQuotaUser
    , rugPrettyPrint
    , rugProject
    , rugUserIp
    , rugZone
    , rugKey
    , rugOauthToken
    , rugFields
    , rugAlt
    ) where

import           Network.Google.InstanceGroupsUpdater.Types
import           Network.Google.Prelude

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesGet@ which the
-- 'RollingUpdatesGet' request conforms to.
type RollingUpdatesGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               Get '[JSON] RollingUpdate

-- | Returns information about an update.
--
-- /See:/ 'rollingUpdatesGet' smart constructor.
data RollingUpdatesGet = RollingUpdatesGet
    { _rugRollingUpdate :: !Text
    , _rugQuotaUser     :: !(Maybe Text)
    , _rugPrettyPrint   :: !Bool
    , _rugProject       :: !Text
    , _rugUserIp        :: !(Maybe Text)
    , _rugZone          :: !Text
    , _rugKey           :: !(Maybe Text)
    , _rugOauthToken    :: !(Maybe Text)
    , _rugFields        :: !(Maybe Text)
    , _rugAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rugRollingUpdate'
--
-- * 'rugQuotaUser'
--
-- * 'rugPrettyPrint'
--
-- * 'rugProject'
--
-- * 'rugUserIp'
--
-- * 'rugZone'
--
-- * 'rugKey'
--
-- * 'rugOauthToken'
--
-- * 'rugFields'
--
-- * 'rugAlt'
rollingUpdatesGet
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesGet
rollingUpdatesGet pRugRollingUpdate_ pRugProject_ pRugZone_ =
    RollingUpdatesGet
    { _rugRollingUpdate = pRugRollingUpdate_
    , _rugQuotaUser = Nothing
    , _rugPrettyPrint = True
    , _rugProject = pRugProject_
    , _rugUserIp = Nothing
    , _rugZone = pRugZone_
    , _rugKey = Nothing
    , _rugOauthToken = Nothing
    , _rugFields = Nothing
    , _rugAlt = "json"
    }

-- | The name of the update.
rugRollingUpdate :: Lens' RollingUpdatesGet' Text
rugRollingUpdate
  = lens _rugRollingUpdate
      (\ s a -> s{_rugRollingUpdate = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rugQuotaUser :: Lens' RollingUpdatesGet' (Maybe Text)
rugQuotaUser
  = lens _rugQuotaUser (\ s a -> s{_rugQuotaUser = a})

-- | Returns response with indentations and line breaks.
rugPrettyPrint :: Lens' RollingUpdatesGet' Bool
rugPrettyPrint
  = lens _rugPrettyPrint
      (\ s a -> s{_rugPrettyPrint = a})

-- | The Google Developers Console project name.
rugProject :: Lens' RollingUpdatesGet' Text
rugProject
  = lens _rugProject (\ s a -> s{_rugProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rugUserIp :: Lens' RollingUpdatesGet' (Maybe Text)
rugUserIp
  = lens _rugUserIp (\ s a -> s{_rugUserIp = a})

-- | The name of the zone in which the update\'s target resides.
rugZone :: Lens' RollingUpdatesGet' Text
rugZone = lens _rugZone (\ s a -> s{_rugZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rugKey :: Lens' RollingUpdatesGet' (Maybe Text)
rugKey = lens _rugKey (\ s a -> s{_rugKey = a})

-- | OAuth 2.0 token for the current user.
rugOauthToken :: Lens' RollingUpdatesGet' (Maybe Text)
rugOauthToken
  = lens _rugOauthToken
      (\ s a -> s{_rugOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rugFields :: Lens' RollingUpdatesGet' (Maybe Text)
rugFields
  = lens _rugFields (\ s a -> s{_rugFields = a})

-- | Data format for the response.
rugAlt :: Lens' RollingUpdatesGet' Text
rugAlt = lens _rugAlt (\ s a -> s{_rugAlt = a})

instance GoogleRequest RollingUpdatesGet' where
        type Rs RollingUpdatesGet' = RollingUpdate
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u RollingUpdatesGet{..}
          = go _rugRollingUpdate _rugQuotaUser _rugPrettyPrint
              _rugProject
              _rugUserIp
              _rugZone
              _rugKey
              _rugOauthToken
              _rugFields
              _rugAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesGetAPI)
                      r
                      u
