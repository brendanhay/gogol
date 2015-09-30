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
-- Module      : Network.Google.Resource.Replicapoolupdater.ZoneOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the specified zone-specific operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterZoneOperationsGet@.
module Network.Google.Resource.Replicapoolupdater.ZoneOperations.Get
    (
    -- * REST Resource
      ZoneOperationsGetResource

    -- * Creating a Request
    , zoneOperationsGet'
    , ZoneOperationsGet'

    -- * Request Lenses
    , zogQuotaUser
    , zogPrettyPrint
    , zogProject
    , zogOperation
    , zogUserIp
    , zogZone
    , zogKey
    , zogOauthToken
    , zogFields
    , zogAlt
    ) where

import           Network.Google.InstanceGroupsUpdater.Types
import           Network.Google.Prelude

-- | A resource alias for @ReplicapoolupdaterZoneOperationsGet@ which the
-- 'ZoneOperationsGet'' request conforms to.
type ZoneOperationsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Operation

-- | Retrieves the specified zone-specific operation resource.
--
-- /See:/ 'zoneOperationsGet'' smart constructor.
data ZoneOperationsGet' = ZoneOperationsGet'
    { _zogQuotaUser   :: !(Maybe Text)
    , _zogPrettyPrint :: !Bool
    , _zogProject     :: !Text
    , _zogOperation   :: !Text
    , _zogUserIp      :: !(Maybe Text)
    , _zogZone        :: !Text
    , _zogKey         :: !(Maybe Text)
    , _zogOauthToken  :: !(Maybe Text)
    , _zogFields      :: !(Maybe Text)
    , _zogAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zogQuotaUser'
--
-- * 'zogPrettyPrint'
--
-- * 'zogProject'
--
-- * 'zogOperation'
--
-- * 'zogUserIp'
--
-- * 'zogZone'
--
-- * 'zogKey'
--
-- * 'zogOauthToken'
--
-- * 'zogFields'
--
-- * 'zogAlt'
zoneOperationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'zone'
    -> ZoneOperationsGet'
zoneOperationsGet' pZogProject_ pZogOperation_ pZogZone_ =
    ZoneOperationsGet'
    { _zogQuotaUser = Nothing
    , _zogPrettyPrint = True
    , _zogProject = pZogProject_
    , _zogOperation = pZogOperation_
    , _zogUserIp = Nothing
    , _zogZone = pZogZone_
    , _zogKey = Nothing
    , _zogOauthToken = Nothing
    , _zogFields = Nothing
    , _zogAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zogQuotaUser :: Lens' ZoneOperationsGet' (Maybe Text)
zogQuotaUser
  = lens _zogQuotaUser (\ s a -> s{_zogQuotaUser = a})

-- | Returns response with indentations and line breaks.
zogPrettyPrint :: Lens' ZoneOperationsGet' Bool
zogPrettyPrint
  = lens _zogPrettyPrint
      (\ s a -> s{_zogPrettyPrint = a})

-- | Name of the project scoping this request.
zogProject :: Lens' ZoneOperationsGet' Text
zogProject
  = lens _zogProject (\ s a -> s{_zogProject = a})

-- | Name of the operation resource to return.
zogOperation :: Lens' ZoneOperationsGet' Text
zogOperation
  = lens _zogOperation (\ s a -> s{_zogOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zogUserIp :: Lens' ZoneOperationsGet' (Maybe Text)
zogUserIp
  = lens _zogUserIp (\ s a -> s{_zogUserIp = a})

-- | Name of the zone scoping this request.
zogZone :: Lens' ZoneOperationsGet' Text
zogZone = lens _zogZone (\ s a -> s{_zogZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zogKey :: Lens' ZoneOperationsGet' (Maybe Text)
zogKey = lens _zogKey (\ s a -> s{_zogKey = a})

-- | OAuth 2.0 token for the current user.
zogOauthToken :: Lens' ZoneOperationsGet' (Maybe Text)
zogOauthToken
  = lens _zogOauthToken
      (\ s a -> s{_zogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zogFields :: Lens' ZoneOperationsGet' (Maybe Text)
zogFields
  = lens _zogFields (\ s a -> s{_zogFields = a})

-- | Data format for the response.
zogAlt :: Lens' ZoneOperationsGet' Alt
zogAlt = lens _zogAlt (\ s a -> s{_zogAlt = a})

instance GoogleRequest ZoneOperationsGet' where
        type Rs ZoneOperationsGet' = Operation
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u ZoneOperationsGet'{..}
          = go _zogQuotaUser (Just _zogPrettyPrint) _zogProject
              _zogOperation
              _zogUserIp
              _zogZone
              _zogKey
              _zogOauthToken
              _zogFields
              (Just _zogAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneOperationsGetResource)
                      r
                      u
