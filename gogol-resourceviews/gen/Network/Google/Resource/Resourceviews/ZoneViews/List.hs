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
-- Module      : Network.Google.Resource.Resourceviews.ZoneViews.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List resource views.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsList@.
module Network.Google.Resource.Resourceviews.ZoneViews.List
    (
    -- * REST Resource
      ZoneViewsListResource

    -- * Creating a Request
    , zoneViewsList'
    , ZoneViewsList'

    -- * Request Lenses
    , zvlQuotaUser
    , zvlPrettyPrint
    , zvlProject
    , zvlUserIp
    , zvlZone
    , zvlKey
    , zvlPageToken
    , zvlOauthToken
    , zvlMaxResults
    , zvlFields
    , zvlAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for @ResourceviewsZoneViewsList@ which the
-- 'ZoneViewsList'' request conforms to.
type ZoneViewsListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] ZoneViewsList

-- | List resource views.
--
-- /See:/ 'zoneViewsList'' smart constructor.
data ZoneViewsList' = ZoneViewsList'
    { _zvlQuotaUser   :: !(Maybe Text)
    , _zvlPrettyPrint :: !Bool
    , _zvlProject     :: !Text
    , _zvlUserIp      :: !(Maybe Text)
    , _zvlZone        :: !Text
    , _zvlKey         :: !(Maybe Text)
    , _zvlPageToken   :: !(Maybe Text)
    , _zvlOauthToken  :: !(Maybe Text)
    , _zvlMaxResults  :: !Int32
    , _zvlFields      :: !(Maybe Text)
    , _zvlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvlQuotaUser'
--
-- * 'zvlPrettyPrint'
--
-- * 'zvlProject'
--
-- * 'zvlUserIp'
--
-- * 'zvlZone'
--
-- * 'zvlKey'
--
-- * 'zvlPageToken'
--
-- * 'zvlOauthToken'
--
-- * 'zvlMaxResults'
--
-- * 'zvlFields'
--
-- * 'zvlAlt'
zoneViewsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsList'
zoneViewsList' pZvlProject_ pZvlZone_ =
    ZoneViewsList'
    { _zvlQuotaUser = Nothing
    , _zvlPrettyPrint = True
    , _zvlProject = pZvlProject_
    , _zvlUserIp = Nothing
    , _zvlZone = pZvlZone_
    , _zvlKey = Nothing
    , _zvlPageToken = Nothing
    , _zvlOauthToken = Nothing
    , _zvlMaxResults = 5000
    , _zvlFields = Nothing
    , _zvlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvlQuotaUser :: Lens' ZoneViewsList' (Maybe Text)
zvlQuotaUser
  = lens _zvlQuotaUser (\ s a -> s{_zvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvlPrettyPrint :: Lens' ZoneViewsList' Bool
zvlPrettyPrint
  = lens _zvlPrettyPrint
      (\ s a -> s{_zvlPrettyPrint = a})

-- | The project name of the resource view.
zvlProject :: Lens' ZoneViewsList' Text
zvlProject
  = lens _zvlProject (\ s a -> s{_zvlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvlUserIp :: Lens' ZoneViewsList' (Maybe Text)
zvlUserIp
  = lens _zvlUserIp (\ s a -> s{_zvlUserIp = a})

-- | The zone name of the resource view.
zvlZone :: Lens' ZoneViewsList' Text
zvlZone = lens _zvlZone (\ s a -> s{_zvlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvlKey :: Lens' ZoneViewsList' (Maybe Text)
zvlKey = lens _zvlKey (\ s a -> s{_zvlKey = a})

-- | Specifies a nextPageToken returned by a previous list request. This
-- token can be used to request the next page of results from a previous
-- list request.
zvlPageToken :: Lens' ZoneViewsList' (Maybe Text)
zvlPageToken
  = lens _zvlPageToken (\ s a -> s{_zvlPageToken = a})

-- | OAuth 2.0 token for the current user.
zvlOauthToken :: Lens' ZoneViewsList' (Maybe Text)
zvlOauthToken
  = lens _zvlOauthToken
      (\ s a -> s{_zvlOauthToken = a})

-- | Maximum count of results to be returned. Acceptable values are 0 to
-- 5000, inclusive. (Default: 5000)
zvlMaxResults :: Lens' ZoneViewsList' Int32
zvlMaxResults
  = lens _zvlMaxResults
      (\ s a -> s{_zvlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
zvlFields :: Lens' ZoneViewsList' (Maybe Text)
zvlFields
  = lens _zvlFields (\ s a -> s{_zvlFields = a})

-- | Data format for the response.
zvlAlt :: Lens' ZoneViewsList' Alt
zvlAlt = lens _zvlAlt (\ s a -> s{_zvlAlt = a})

instance GoogleRequest ZoneViewsList' where
        type Rs ZoneViewsList' = ZoneViewsList
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsList'{..}
          = go _zvlQuotaUser (Just _zvlPrettyPrint) _zvlProject
              _zvlUserIp
              _zvlZone
              _zvlKey
              _zvlPageToken
              _zvlOauthToken
              (Just _zvlMaxResults)
              _zvlFields
              (Just _zvlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsListResource)
                      r
                      u
