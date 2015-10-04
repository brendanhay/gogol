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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about an update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesGet@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get
    (
    -- * REST Resource
      RollingUpdatesGetResource

    -- * Creating a Request
    , rollingUpdatesGet'
    , RollingUpdatesGet'

    -- * Request Lenses
    , rugRollingUpdate
    , rugQuotaUser
    , rugPrettyPrint
    , rugProject
    , rugUserIP
    , rugZone
    , rugKey
    , rugOAuthToken
    , rugFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesGet@ which the
-- 'RollingUpdatesGet'' request conforms to.
type RollingUpdatesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] RollingUpdate

-- | Returns information about an update.
--
-- /See:/ 'rollingUpdatesGet'' smart constructor.
data RollingUpdatesGet' = RollingUpdatesGet'
    { _rugRollingUpdate :: !Text
    , _rugQuotaUser     :: !(Maybe Text)
    , _rugPrettyPrint   :: !Bool
    , _rugProject       :: !Text
    , _rugUserIP        :: !(Maybe Text)
    , _rugZone          :: !Text
    , _rugKey           :: !(Maybe Key)
    , _rugOAuthToken    :: !(Maybe OAuthToken)
    , _rugFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rugUserIP'
--
-- * 'rugZone'
--
-- * 'rugKey'
--
-- * 'rugOAuthToken'
--
-- * 'rugFields'
rollingUpdatesGet'
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesGet'
rollingUpdatesGet' pRugRollingUpdate_ pRugProject_ pRugZone_ =
    RollingUpdatesGet'
    { _rugRollingUpdate = pRugRollingUpdate_
    , _rugQuotaUser = Nothing
    , _rugPrettyPrint = True
    , _rugProject = pRugProject_
    , _rugUserIP = Nothing
    , _rugZone = pRugZone_
    , _rugKey = Nothing
    , _rugOAuthToken = Nothing
    , _rugFields = Nothing
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
rugUserIP :: Lens' RollingUpdatesGet' (Maybe Text)
rugUserIP
  = lens _rugUserIP (\ s a -> s{_rugUserIP = a})

-- | The name of the zone in which the update\'s target resides.
rugZone :: Lens' RollingUpdatesGet' Text
rugZone = lens _rugZone (\ s a -> s{_rugZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rugKey :: Lens' RollingUpdatesGet' (Maybe Key)
rugKey = lens _rugKey (\ s a -> s{_rugKey = a})

-- | OAuth 2.0 token for the current user.
rugOAuthToken :: Lens' RollingUpdatesGet' (Maybe OAuthToken)
rugOAuthToken
  = lens _rugOAuthToken
      (\ s a -> s{_rugOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rugFields :: Lens' RollingUpdatesGet' (Maybe Text)
rugFields
  = lens _rugFields (\ s a -> s{_rugFields = a})

instance GoogleAuth RollingUpdatesGet' where
        authKey = rugKey . _Just
        authToken = rugOAuthToken . _Just

instance GoogleRequest RollingUpdatesGet' where
        type Rs RollingUpdatesGet' = RollingUpdate
        request
          = requestWithRoute defReq replicaPoolUpdaterURL
        requestWithRoute r u RollingUpdatesGet'{..}
          = go _rugProject _rugZone _rugRollingUpdate
              _rugQuotaUser
              (Just _rugPrettyPrint)
              _rugUserIP
              _rugFields
              _rugKey
              _rugOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesGetResource)
                      r
                      u
