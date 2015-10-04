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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts and starts a new update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesInsert@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert
    (
    -- * REST Resource
      RollingUpdatesInsertResource

    -- * Creating a Request
    , rollingUpdatesInsert'
    , RollingUpdatesInsert'

    -- * Request Lenses
    , ruiQuotaUser
    , ruiPrettyPrint
    , ruiProject
    , ruiUserIP
    , ruiZone
    , ruiPayload
    , ruiKey
    , ruiOAuthToken
    , ruiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesInsert@ which the
-- 'RollingUpdatesInsert'' request conforms to.
type RollingUpdatesInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] RollingUpdate :>
                             Post '[JSON] Operation

-- | Inserts and starts a new update.
--
-- /See:/ 'rollingUpdatesInsert'' smart constructor.
data RollingUpdatesInsert' = RollingUpdatesInsert'
    { _ruiQuotaUser   :: !(Maybe Text)
    , _ruiPrettyPrint :: !Bool
    , _ruiProject     :: !Text
    , _ruiUserIP      :: !(Maybe Text)
    , _ruiZone        :: !Text
    , _ruiPayload     :: !RollingUpdate
    , _ruiKey         :: !(Maybe Key)
    , _ruiOAuthToken  :: !(Maybe OAuthToken)
    , _ruiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruiQuotaUser'
--
-- * 'ruiPrettyPrint'
--
-- * 'ruiProject'
--
-- * 'ruiUserIP'
--
-- * 'ruiZone'
--
-- * 'ruiPayload'
--
-- * 'ruiKey'
--
-- * 'ruiOAuthToken'
--
-- * 'ruiFields'
rollingUpdatesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdate -- ^ 'payload'
    -> RollingUpdatesInsert'
rollingUpdatesInsert' pRuiProject_ pRuiZone_ pRuiPayload_ =
    RollingUpdatesInsert'
    { _ruiQuotaUser = Nothing
    , _ruiPrettyPrint = True
    , _ruiProject = pRuiProject_
    , _ruiUserIP = Nothing
    , _ruiZone = pRuiZone_
    , _ruiPayload = pRuiPayload_
    , _ruiKey = Nothing
    , _ruiOAuthToken = Nothing
    , _ruiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruiQuotaUser :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiQuotaUser
  = lens _ruiQuotaUser (\ s a -> s{_ruiQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruiPrettyPrint :: Lens' RollingUpdatesInsert' Bool
ruiPrettyPrint
  = lens _ruiPrettyPrint
      (\ s a -> s{_ruiPrettyPrint = a})

-- | The Google Developers Console project name.
ruiProject :: Lens' RollingUpdatesInsert' Text
ruiProject
  = lens _ruiProject (\ s a -> s{_ruiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruiUserIP :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiUserIP
  = lens _ruiUserIP (\ s a -> s{_ruiUserIP = a})

-- | The name of the zone in which the update\'s target resides.
ruiZone :: Lens' RollingUpdatesInsert' Text
ruiZone = lens _ruiZone (\ s a -> s{_ruiZone = a})

-- | Multipart request metadata.
ruiPayload :: Lens' RollingUpdatesInsert' RollingUpdate
ruiPayload
  = lens _ruiPayload (\ s a -> s{_ruiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruiKey :: Lens' RollingUpdatesInsert' (Maybe Key)
ruiKey = lens _ruiKey (\ s a -> s{_ruiKey = a})

-- | OAuth 2.0 token for the current user.
ruiOAuthToken :: Lens' RollingUpdatesInsert' (Maybe OAuthToken)
ruiOAuthToken
  = lens _ruiOAuthToken
      (\ s a -> s{_ruiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruiFields :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiFields
  = lens _ruiFields (\ s a -> s{_ruiFields = a})

instance GoogleAuth RollingUpdatesInsert' where
        authKey = ruiKey . _Just
        authToken = ruiOAuthToken . _Just

instance GoogleRequest RollingUpdatesInsert' where
        type Rs RollingUpdatesInsert' = Operation
        request
          = requestWithRoute defReq replicaPoolUpdaterURL
        requestWithRoute r u RollingUpdatesInsert'{..}
          = go _ruiProject _ruiZone _ruiQuotaUser
              (Just _ruiPrettyPrint)
              _ruiUserIP
              _ruiFields
              _ruiKey
              _ruiOAuthToken
              (Just AltJSON)
              _ruiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesInsertResource)
                      r
                      u
