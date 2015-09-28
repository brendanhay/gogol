{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Resourceviews.ZoneViews.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the information of a zonal resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.get@.
module Network.Google.API.Resourceviews.ZoneViews.Get
    (
    -- * REST Resource
      ZoneViewsGetAPI

    -- * Creating a Request
    , zoneViewsGet'
    , ZoneViewsGet'

    -- * Request Lenses
    , zvgQuotaUser
    , zvgPrettyPrint
    , zvgResourceView
    , zvgProject
    , zvgUserIp
    , zvgZone
    , zvgKey
    , zvgOauthToken
    , zvgFields
    , zvgAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for resourceviews.zoneViews.get which the
-- 'ZoneViewsGet'' request conforms to.
type ZoneViewsGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] ResourceView

-- | Get the information of a zonal resource view.
--
-- /See:/ 'zoneViewsGet'' smart constructor.
data ZoneViewsGet' = ZoneViewsGet'
    { _zvgQuotaUser    :: !(Maybe Text)
    , _zvgPrettyPrint  :: !Bool
    , _zvgResourceView :: !Text
    , _zvgProject      :: !Text
    , _zvgUserIp       :: !(Maybe Text)
    , _zvgZone         :: !Text
    , _zvgKey          :: !(Maybe Text)
    , _zvgOauthToken   :: !(Maybe Text)
    , _zvgFields       :: !(Maybe Text)
    , _zvgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvgQuotaUser'
--
-- * 'zvgPrettyPrint'
--
-- * 'zvgResourceView'
--
-- * 'zvgProject'
--
-- * 'zvgUserIp'
--
-- * 'zvgZone'
--
-- * 'zvgKey'
--
-- * 'zvgOauthToken'
--
-- * 'zvgFields'
--
-- * 'zvgAlt'
zoneViewsGet'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsGet'
zoneViewsGet' pZvgResourceView_ pZvgProject_ pZvgZone_ =
    ZoneViewsGet'
    { _zvgQuotaUser = Nothing
    , _zvgPrettyPrint = True
    , _zvgResourceView = pZvgResourceView_
    , _zvgProject = pZvgProject_
    , _zvgUserIp = Nothing
    , _zvgZone = pZvgZone_
    , _zvgKey = Nothing
    , _zvgOauthToken = Nothing
    , _zvgFields = Nothing
    , _zvgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvgQuotaUser :: Lens' ZoneViewsGet' (Maybe Text)
zvgQuotaUser
  = lens _zvgQuotaUser (\ s a -> s{_zvgQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvgPrettyPrint :: Lens' ZoneViewsGet' Bool
zvgPrettyPrint
  = lens _zvgPrettyPrint
      (\ s a -> s{_zvgPrettyPrint = a})

-- | The name of the resource view.
zvgResourceView :: Lens' ZoneViewsGet' Text
zvgResourceView
  = lens _zvgResourceView
      (\ s a -> s{_zvgResourceView = a})

-- | The project name of the resource view.
zvgProject :: Lens' ZoneViewsGet' Text
zvgProject
  = lens _zvgProject (\ s a -> s{_zvgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvgUserIp :: Lens' ZoneViewsGet' (Maybe Text)
zvgUserIp
  = lens _zvgUserIp (\ s a -> s{_zvgUserIp = a})

-- | The zone name of the resource view.
zvgZone :: Lens' ZoneViewsGet' Text
zvgZone = lens _zvgZone (\ s a -> s{_zvgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvgKey :: Lens' ZoneViewsGet' (Maybe Text)
zvgKey = lens _zvgKey (\ s a -> s{_zvgKey = a})

-- | OAuth 2.0 token for the current user.
zvgOauthToken :: Lens' ZoneViewsGet' (Maybe Text)
zvgOauthToken
  = lens _zvgOauthToken
      (\ s a -> s{_zvgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvgFields :: Lens' ZoneViewsGet' (Maybe Text)
zvgFields
  = lens _zvgFields (\ s a -> s{_zvgFields = a})

-- | Data format for the response.
zvgAlt :: Lens' ZoneViewsGet' Alt
zvgAlt = lens _zvgAlt (\ s a -> s{_zvgAlt = a})

instance GoogleRequest ZoneViewsGet' where
        type Rs ZoneViewsGet' = ResourceView
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsGet'{..}
          = go _zvgQuotaUser (Just _zvgPrettyPrint)
              _zvgResourceView
              _zvgProject
              _zvgUserIp
              _zvgZone
              _zvgKey
              _zvgOauthToken
              _zvgFields
              (Just _zvgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ZoneViewsGetAPI) r
                      u
