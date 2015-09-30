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
-- Module      : Network.Google.Resource.Resourceviews.ZoneViews.AddResources
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add resources to the view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsAddResources@.
module Network.Google.Resource.Resourceviews.ZoneViews.AddResources
    (
    -- * REST Resource
      ZoneViewsAddResourcesResource

    -- * Creating a Request
    , zoneViewsAddResources'
    , ZoneViewsAddResources'

    -- * Request Lenses
    , zvarQuotaUser
    , zvarPrettyPrint
    , zvarResourceView
    , zvarProject
    , zvarUserIp
    , zvarZone
    , zvarKey
    , zvarOauthToken
    , zvarFields
    , zvarAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for @ResourceviewsZoneViewsAddResources@ which the
-- 'ZoneViewsAddResources'' request conforms to.
type ZoneViewsAddResourcesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "addResources" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Add resources to the view.
--
-- /See:/ 'zoneViewsAddResources'' smart constructor.
data ZoneViewsAddResources' = ZoneViewsAddResources'
    { _zvarQuotaUser    :: !(Maybe Text)
    , _zvarPrettyPrint  :: !Bool
    , _zvarResourceView :: !Text
    , _zvarProject      :: !Text
    , _zvarUserIp       :: !(Maybe Text)
    , _zvarZone         :: !Text
    , _zvarKey          :: !(Maybe Text)
    , _zvarOauthToken   :: !(Maybe Text)
    , _zvarFields       :: !(Maybe Text)
    , _zvarAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsAddResources'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvarQuotaUser'
--
-- * 'zvarPrettyPrint'
--
-- * 'zvarResourceView'
--
-- * 'zvarProject'
--
-- * 'zvarUserIp'
--
-- * 'zvarZone'
--
-- * 'zvarKey'
--
-- * 'zvarOauthToken'
--
-- * 'zvarFields'
--
-- * 'zvarAlt'
zoneViewsAddResources'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsAddResources'
zoneViewsAddResources' pZvarResourceView_ pZvarProject_ pZvarZone_ =
    ZoneViewsAddResources'
    { _zvarQuotaUser = Nothing
    , _zvarPrettyPrint = True
    , _zvarResourceView = pZvarResourceView_
    , _zvarProject = pZvarProject_
    , _zvarUserIp = Nothing
    , _zvarZone = pZvarZone_
    , _zvarKey = Nothing
    , _zvarOauthToken = Nothing
    , _zvarFields = Nothing
    , _zvarAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvarQuotaUser :: Lens' ZoneViewsAddResources' (Maybe Text)
zvarQuotaUser
  = lens _zvarQuotaUser
      (\ s a -> s{_zvarQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvarPrettyPrint :: Lens' ZoneViewsAddResources' Bool
zvarPrettyPrint
  = lens _zvarPrettyPrint
      (\ s a -> s{_zvarPrettyPrint = a})

-- | The name of the resource view.
zvarResourceView :: Lens' ZoneViewsAddResources' Text
zvarResourceView
  = lens _zvarResourceView
      (\ s a -> s{_zvarResourceView = a})

-- | The project name of the resource view.
zvarProject :: Lens' ZoneViewsAddResources' Text
zvarProject
  = lens _zvarProject (\ s a -> s{_zvarProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvarUserIp :: Lens' ZoneViewsAddResources' (Maybe Text)
zvarUserIp
  = lens _zvarUserIp (\ s a -> s{_zvarUserIp = a})

-- | The zone name of the resource view.
zvarZone :: Lens' ZoneViewsAddResources' Text
zvarZone = lens _zvarZone (\ s a -> s{_zvarZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvarKey :: Lens' ZoneViewsAddResources' (Maybe Text)
zvarKey = lens _zvarKey (\ s a -> s{_zvarKey = a})

-- | OAuth 2.0 token for the current user.
zvarOauthToken :: Lens' ZoneViewsAddResources' (Maybe Text)
zvarOauthToken
  = lens _zvarOauthToken
      (\ s a -> s{_zvarOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvarFields :: Lens' ZoneViewsAddResources' (Maybe Text)
zvarFields
  = lens _zvarFields (\ s a -> s{_zvarFields = a})

-- | Data format for the response.
zvarAlt :: Lens' ZoneViewsAddResources' Alt
zvarAlt = lens _zvarAlt (\ s a -> s{_zvarAlt = a})

instance GoogleRequest ZoneViewsAddResources' where
        type Rs ZoneViewsAddResources' = Operation
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsAddResources'{..}
          = go _zvarQuotaUser (Just _zvarPrettyPrint)
              _zvarResourceView
              _zvarProject
              _zvarUserIp
              _zvarZone
              _zvarKey
              _zvarOauthToken
              _zvarFields
              (Just _zvarAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsAddResourcesResource)
                      r
                      u
