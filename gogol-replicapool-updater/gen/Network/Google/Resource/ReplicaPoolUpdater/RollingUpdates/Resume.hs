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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Resume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Continues an update in PAUSED state. Has no effect if invoked when the
-- state of the update is ROLLED_OUT.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesResume@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Resume
    (
    -- * REST Resource
      RollingUpdatesResumeResource

    -- * Creating a Request
    , rollingUpdatesResume'
    , RollingUpdatesResume'

    -- * Request Lenses
    , rRollingUpdate
    , rQuotaUser
    , rPrettyPrint
    , rProject
    , rUserIP
    , rZone
    , rKey
    , rOAuthToken
    , rFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesResume@ which the
-- 'RollingUpdatesResume'' request conforms to.
type RollingUpdatesResumeResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "resume" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Continues an update in PAUSED state. Has no effect if invoked when the
-- state of the update is ROLLED_OUT.
--
-- /See:/ 'rollingUpdatesResume'' smart constructor.
data RollingUpdatesResume' = RollingUpdatesResume'
    { _rRollingUpdate :: !Text
    , _rQuotaUser     :: !(Maybe Text)
    , _rPrettyPrint   :: !Bool
    , _rProject       :: !Text
    , _rUserIP        :: !(Maybe Text)
    , _rZone          :: !Text
    , _rKey           :: !(Maybe AuthKey)
    , _rOAuthToken    :: !(Maybe OAuthToken)
    , _rFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesResume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRollingUpdate'
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rProject'
--
-- * 'rUserIP'
--
-- * 'rZone'
--
-- * 'rKey'
--
-- * 'rOAuthToken'
--
-- * 'rFields'
rollingUpdatesResume'
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesResume'
rollingUpdatesResume' pRRollingUpdate_ pRProject_ pRZone_ =
    RollingUpdatesResume'
    { _rRollingUpdate = pRRollingUpdate_
    , _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rProject = pRProject_
    , _rUserIP = Nothing
    , _rZone = pRZone_
    , _rKey = Nothing
    , _rOAuthToken = Nothing
    , _rFields = Nothing
    }

-- | The name of the update.
rRollingUpdate :: Lens' RollingUpdatesResume' Text
rRollingUpdate
  = lens _rRollingUpdate
      (\ s a -> s{_rRollingUpdate = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RollingUpdatesResume' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RollingUpdatesResume' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | The Google Developers Console project name.
rProject :: Lens' RollingUpdatesResume' Text
rProject = lens _rProject (\ s a -> s{_rProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIP :: Lens' RollingUpdatesResume' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | The name of the zone in which the update\'s target resides.
rZone :: Lens' RollingUpdatesResume' Text
rZone = lens _rZone (\ s a -> s{_rZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RollingUpdatesResume' (Maybe AuthKey)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' RollingUpdatesResume' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RollingUpdatesResume' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth RollingUpdatesResume' where
        authKey = rKey . _Just
        authToken = rOAuthToken . _Just

instance GoogleRequest RollingUpdatesResume' where
        type Rs RollingUpdatesResume' = Operation
        request
          = requestWithRoute defReq replicaPoolUpdaterURL
        requestWithRoute r u RollingUpdatesResume'{..}
          = go _rProject _rZone _rRollingUpdate _rQuotaUser
              (Just _rPrettyPrint)
              _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesResumeResource)
                      r
                      u
