{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Resourceviews.ZoneViews.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.insert@.
module Network.Google.API.Resourceviews.ZoneViews.Insert
    (
    -- * REST Resource
      ZoneViewsInsertAPI

    -- * Creating a Request
    , zoneViewsInsert'
    , ZoneViewsInsert'

    -- * Request Lenses
    , zviQuotaUser
    , zviPrettyPrint
    , zviProject
    , zviUserIp
    , zviZone
    , zviKey
    , zviOauthToken
    , zviFields
    , zviAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for resourceviews.zoneViews.insert which the
-- 'ZoneViewsInsert'' request conforms to.
type ZoneViewsInsertAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Create a resource view.
--
-- /See:/ 'zoneViewsInsert'' smart constructor.
data ZoneViewsInsert' = ZoneViewsInsert'
    { _zviQuotaUser   :: !(Maybe Text)
    , _zviPrettyPrint :: !Bool
    , _zviProject     :: !Text
    , _zviUserIp      :: !(Maybe Text)
    , _zviZone        :: !Text
    , _zviKey         :: !(Maybe Text)
    , _zviOauthToken  :: !(Maybe Text)
    , _zviFields      :: !(Maybe Text)
    , _zviAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zviQuotaUser'
--
-- * 'zviPrettyPrint'
--
-- * 'zviProject'
--
-- * 'zviUserIp'
--
-- * 'zviZone'
--
-- * 'zviKey'
--
-- * 'zviOauthToken'
--
-- * 'zviFields'
--
-- * 'zviAlt'
zoneViewsInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsInsert'
zoneViewsInsert' pZviProject_ pZviZone_ =
    ZoneViewsInsert'
    { _zviQuotaUser = Nothing
    , _zviPrettyPrint = True
    , _zviProject = pZviProject_
    , _zviUserIp = Nothing
    , _zviZone = pZviZone_
    , _zviKey = Nothing
    , _zviOauthToken = Nothing
    , _zviFields = Nothing
    , _zviAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zviQuotaUser :: Lens' ZoneViewsInsert' (Maybe Text)
zviQuotaUser
  = lens _zviQuotaUser (\ s a -> s{_zviQuotaUser = a})

-- | Returns response with indentations and line breaks.
zviPrettyPrint :: Lens' ZoneViewsInsert' Bool
zviPrettyPrint
  = lens _zviPrettyPrint
      (\ s a -> s{_zviPrettyPrint = a})

-- | The project name of the resource view.
zviProject :: Lens' ZoneViewsInsert' Text
zviProject
  = lens _zviProject (\ s a -> s{_zviProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zviUserIp :: Lens' ZoneViewsInsert' (Maybe Text)
zviUserIp
  = lens _zviUserIp (\ s a -> s{_zviUserIp = a})

-- | The zone name of the resource view.
zviZone :: Lens' ZoneViewsInsert' Text
zviZone = lens _zviZone (\ s a -> s{_zviZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zviKey :: Lens' ZoneViewsInsert' (Maybe Text)
zviKey = lens _zviKey (\ s a -> s{_zviKey = a})

-- | OAuth 2.0 token for the current user.
zviOauthToken :: Lens' ZoneViewsInsert' (Maybe Text)
zviOauthToken
  = lens _zviOauthToken
      (\ s a -> s{_zviOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zviFields :: Lens' ZoneViewsInsert' (Maybe Text)
zviFields
  = lens _zviFields (\ s a -> s{_zviFields = a})

-- | Data format for the response.
zviAlt :: Lens' ZoneViewsInsert' Alt
zviAlt = lens _zviAlt (\ s a -> s{_zviAlt = a})

instance GoogleRequest ZoneViewsInsert' where
        type Rs ZoneViewsInsert' = Operation
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsInsert'{..}
          = go _zviQuotaUser (Just _zviPrettyPrint) _zviProject
              _zviUserIp
              _zviZone
              _zviKey
              _zviOauthToken
              _zviFields
              (Just _zviAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ZoneViewsInsertAPI)
                      r
                      u
