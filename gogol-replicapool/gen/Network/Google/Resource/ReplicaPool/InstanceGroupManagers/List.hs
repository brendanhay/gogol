{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Instance Group Manager resources contained within
-- the specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersList@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.List
    (
    -- * REST Resource
      InstanceGroupManagersListResource

    -- * Creating a Request
    , instanceGroupManagersList'
    , InstanceGroupManagersList'

    -- * Request Lenses
    , igmlQuotaUser
    , igmlPrettyPrint
    , igmlProject
    , igmlUserIP
    , igmlZone
    , igmlKey
    , igmlFilter
    , igmlPageToken
    , igmlOAuthToken
    , igmlMaxResults
    , igmlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @ReplicapoolInstanceGroupManagersList@ which the
-- 'InstanceGroupManagersList'' request conforms to.
type InstanceGroupManagersListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
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
                                 Get '[JSON] InstanceGroupManagerList

-- | Retrieves the list of Instance Group Manager resources contained within
-- the specified zone.
--
-- /See:/ 'instanceGroupManagersList'' smart constructor.
data InstanceGroupManagersList' = InstanceGroupManagersList'
    { _igmlQuotaUser   :: !(Maybe Text)
    , _igmlPrettyPrint :: !Bool
    , _igmlProject     :: !Text
    , _igmlUserIP      :: !(Maybe Text)
    , _igmlZone        :: !Text
    , _igmlKey         :: !(Maybe Key)
    , _igmlFilter      :: !(Maybe Text)
    , _igmlPageToken   :: !(Maybe Text)
    , _igmlOAuthToken  :: !(Maybe OAuthToken)
    , _igmlMaxResults  :: !Word32
    , _igmlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'igmlUserIP'
--
-- * 'igmlZone'
--
-- * 'igmlKey'
--
-- * 'igmlFilter'
--
-- * 'igmlPageToken'
--
-- * 'igmlOAuthToken'
--
-- * 'igmlMaxResults'
--
-- * 'igmlFields'
instanceGroupManagersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersList'
instanceGroupManagersList' pIgmlProject_ pIgmlZone_ =
    InstanceGroupManagersList'
    { _igmlQuotaUser = Nothing
    , _igmlPrettyPrint = True
    , _igmlProject = pIgmlProject_
    , _igmlUserIP = Nothing
    , _igmlZone = pIgmlZone_
    , _igmlKey = Nothing
    , _igmlFilter = Nothing
    , _igmlPageToken = Nothing
    , _igmlOAuthToken = Nothing
    , _igmlMaxResults = 500
    , _igmlFields = Nothing
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
igmlUserIP :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlUserIP
  = lens _igmlUserIP (\ s a -> s{_igmlUserIP = a})

-- | The name of the zone in which the instance group manager resides.
igmlZone :: Lens' InstanceGroupManagersList' Text
igmlZone = lens _igmlZone (\ s a -> s{_igmlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmlKey :: Lens' InstanceGroupManagersList' (Maybe Key)
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
igmlOAuthToken :: Lens' InstanceGroupManagersList' (Maybe OAuthToken)
igmlOAuthToken
  = lens _igmlOAuthToken
      (\ s a -> s{_igmlOAuthToken = a})

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

instance GoogleAuth InstanceGroupManagersList' where
        authKey = igmlKey . _Just
        authToken = igmlOAuthToken . _Just

instance GoogleRequest InstanceGroupManagersList'
         where
        type Rs InstanceGroupManagersList' =
             InstanceGroupManagerList
        request = requestWithRoute defReq replicaPoolURL
        requestWithRoute r u InstanceGroupManagersList'{..}
          = go _igmlProject _igmlZone _igmlFilter
              _igmlPageToken
              (Just _igmlMaxResults)
              _igmlQuotaUser
              (Just _igmlPrettyPrint)
              _igmlUserIP
              _igmlFields
              _igmlKey
              _igmlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersListResource)
                      r
                      u
