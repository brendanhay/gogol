{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Replicapool.InstanceGroupManagers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Instance Group Manager resources contained within
-- the specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.list@.
module Network.Google.API.Replicapool.InstanceGroupManagers.List
    (
    -- * REST Resource
      InstanceGroupManagersListAPI

    -- * Creating a Request
    , instanceGroupManagersList'
    , InstanceGroupManagersList'

    -- * Request Lenses
    , igmlQuotaUser
    , igmlPrettyPrint
    , igmlProject
    , igmlUserIp
    , igmlZone
    , igmlKey
    , igmlFilter
    , igmlPageToken
    , igmlOauthToken
    , igmlMaxResults
    , igmlFields
    , igmlAlt
    ) where

import           Network.Google.InstanceGroups.Manager.Types
import           Network.Google.Prelude

-- | A resource alias for replicapool.instanceGroupManagers.list which the
-- 'InstanceGroupManagersList'' request conforms to.
type InstanceGroupManagersListAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
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
                                 Get '[JSON] InstanceGroupManagerList

-- | Retrieves the list of Instance Group Manager resources contained within
-- the specified zone.
--
-- /See:/ 'instanceGroupManagersList'' smart constructor.
data InstanceGroupManagersList' = InstanceGroupManagersList'
    { _igmlQuotaUser   :: !(Maybe Text)
    , _igmlPrettyPrint :: !Bool
    , _igmlProject     :: !Text
    , _igmlUserIp      :: !(Maybe Text)
    , _igmlZone        :: !Text
    , _igmlKey         :: !(Maybe Text)
    , _igmlFilter      :: !(Maybe Text)
    , _igmlPageToken   :: !(Maybe Text)
    , _igmlOauthToken  :: !(Maybe Text)
    , _igmlMaxResults  :: !Word32
    , _igmlFields      :: !(Maybe Text)
    , _igmlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlQuotaUser'
--
-- * 'igmlPrettyPrint'
--
-- * 'igmlProject'
--
-- * 'igmlUserIp'
--
-- * 'igmlZone'
--
-- * 'igmlKey'
--
-- * 'igmlFilter'
--
-- * 'igmlPageToken'
--
-- * 'igmlOauthToken'
--
-- * 'igmlMaxResults'
--
-- * 'igmlFields'
--
-- * 'igmlAlt'
instanceGroupManagersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersList'
instanceGroupManagersList' pIgmlProject_ pIgmlZone_ =
    InstanceGroupManagersList'
    { _igmlQuotaUser = Nothing
    , _igmlPrettyPrint = True
    , _igmlProject = pIgmlProject_
    , _igmlUserIp = Nothing
    , _igmlZone = pIgmlZone_
    , _igmlKey = Nothing
    , _igmlFilter = Nothing
    , _igmlPageToken = Nothing
    , _igmlOauthToken = Nothing
    , _igmlMaxResults = 500
    , _igmlFields = Nothing
    , _igmlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmlQuotaUser :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlQuotaUser
  = lens _igmlQuotaUser
      (\ s a -> s{_igmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmlPrettyPrint :: Lens' InstanceGroupManagersList' Bool
igmlPrettyPrint
  = lens _igmlPrettyPrint
      (\ s a -> s{_igmlPrettyPrint = a})

-- | The Google Developers Console project name.
igmlProject :: Lens' InstanceGroupManagersList' Text
igmlProject
  = lens _igmlProject (\ s a -> s{_igmlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmlUserIp :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlUserIp
  = lens _igmlUserIp (\ s a -> s{_igmlUserIp = a})

-- | The name of the zone in which the instance group manager resides.
igmlZone :: Lens' InstanceGroupManagersList' Text
igmlZone = lens _igmlZone (\ s a -> s{_igmlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmlKey :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlKey = lens _igmlKey (\ s a -> s{_igmlKey = a})

-- | Optional. Filter expression for filtering listed resources.
igmlFilter :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlFilter
  = lens _igmlFilter (\ s a -> s{_igmlFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
igmlPageToken :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlPageToken
  = lens _igmlPageToken
      (\ s a -> s{_igmlPageToken = a})

-- | OAuth 2.0 token for the current user.
igmlOauthToken :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlOauthToken
  = lens _igmlOauthToken
      (\ s a -> s{_igmlOauthToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
igmlMaxResults :: Lens' InstanceGroupManagersList' Word32
igmlMaxResults
  = lens _igmlMaxResults
      (\ s a -> s{_igmlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
igmlFields :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlFields
  = lens _igmlFields (\ s a -> s{_igmlFields = a})

-- | Data format for the response.
igmlAlt :: Lens' InstanceGroupManagersList' Alt
igmlAlt = lens _igmlAlt (\ s a -> s{_igmlAlt = a})

instance GoogleRequest InstanceGroupManagersList'
         where
        type Rs InstanceGroupManagersList' =
             InstanceGroupManagerList
        request
          = requestWithRoute defReq instanceGroupsManagerURL
        requestWithRoute r u InstanceGroupManagersList'{..}
          = go _igmlQuotaUser (Just _igmlPrettyPrint)
              _igmlProject
              _igmlUserIp
              _igmlZone
              _igmlKey
              _igmlFilter
              _igmlPageToken
              _igmlOauthToken
              (Just _igmlMaxResults)
              _igmlFields
              (Just _igmlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersListAPI)
                      r
                      u
