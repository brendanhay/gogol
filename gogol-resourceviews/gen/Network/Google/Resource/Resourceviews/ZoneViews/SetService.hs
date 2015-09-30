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
-- Module      : Network.Google.Resource.Resourceviews.ZoneViews.SetService
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the service information of a resource view or a resource.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsSetService@.
module Network.Google.Resource.Resourceviews.ZoneViews.SetService
    (
    -- * REST Resource
      ZoneViewsSetServiceResource

    -- * Creating a Request
    , zoneViewsSetService'
    , ZoneViewsSetService'

    -- * Request Lenses
    , zvssQuotaUser
    , zvssPrettyPrint
    , zvssResourceView
    , zvssProject
    , zvssUserIp
    , zvssZone
    , zvssKey
    , zvssOauthToken
    , zvssFields
    , zvssAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for @ResourceviewsZoneViewsSetService@ which the
-- 'ZoneViewsSetService'' request conforms to.
type ZoneViewsSetServiceResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "setService" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Update the service information of a resource view or a resource.
--
-- /See:/ 'zoneViewsSetService'' smart constructor.
data ZoneViewsSetService' = ZoneViewsSetService'
    { _zvssQuotaUser    :: !(Maybe Text)
    , _zvssPrettyPrint  :: !Bool
    , _zvssResourceView :: !Text
    , _zvssProject      :: !Text
    , _zvssUserIp       :: !(Maybe Text)
    , _zvssZone         :: !Text
    , _zvssKey          :: !(Maybe Text)
    , _zvssOauthToken   :: !(Maybe Text)
    , _zvssFields       :: !(Maybe Text)
    , _zvssAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsSetService'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvssQuotaUser'
--
-- * 'zvssPrettyPrint'
--
-- * 'zvssResourceView'
--
-- * 'zvssProject'
--
-- * 'zvssUserIp'
--
-- * 'zvssZone'
--
-- * 'zvssKey'
--
-- * 'zvssOauthToken'
--
-- * 'zvssFields'
--
-- * 'zvssAlt'
zoneViewsSetService'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsSetService'
zoneViewsSetService' pZvssResourceView_ pZvssProject_ pZvssZone_ =
    ZoneViewsSetService'
    { _zvssQuotaUser = Nothing
    , _zvssPrettyPrint = True
    , _zvssResourceView = pZvssResourceView_
    , _zvssProject = pZvssProject_
    , _zvssUserIp = Nothing
    , _zvssZone = pZvssZone_
    , _zvssKey = Nothing
    , _zvssOauthToken = Nothing
    , _zvssFields = Nothing
    , _zvssAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvssQuotaUser :: Lens' ZoneViewsSetService' (Maybe Text)
zvssQuotaUser
  = lens _zvssQuotaUser
      (\ s a -> s{_zvssQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvssPrettyPrint :: Lens' ZoneViewsSetService' Bool
zvssPrettyPrint
  = lens _zvssPrettyPrint
      (\ s a -> s{_zvssPrettyPrint = a})

-- | The name of the resource view.
zvssResourceView :: Lens' ZoneViewsSetService' Text
zvssResourceView
  = lens _zvssResourceView
      (\ s a -> s{_zvssResourceView = a})

-- | The project name of the resource view.
zvssProject :: Lens' ZoneViewsSetService' Text
zvssProject
  = lens _zvssProject (\ s a -> s{_zvssProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvssUserIp :: Lens' ZoneViewsSetService' (Maybe Text)
zvssUserIp
  = lens _zvssUserIp (\ s a -> s{_zvssUserIp = a})

-- | The zone name of the resource view.
zvssZone :: Lens' ZoneViewsSetService' Text
zvssZone = lens _zvssZone (\ s a -> s{_zvssZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvssKey :: Lens' ZoneViewsSetService' (Maybe Text)
zvssKey = lens _zvssKey (\ s a -> s{_zvssKey = a})

-- | OAuth 2.0 token for the current user.
zvssOauthToken :: Lens' ZoneViewsSetService' (Maybe Text)
zvssOauthToken
  = lens _zvssOauthToken
      (\ s a -> s{_zvssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvssFields :: Lens' ZoneViewsSetService' (Maybe Text)
zvssFields
  = lens _zvssFields (\ s a -> s{_zvssFields = a})

-- | Data format for the response.
zvssAlt :: Lens' ZoneViewsSetService' Alt
zvssAlt = lens _zvssAlt (\ s a -> s{_zvssAlt = a})

instance GoogleRequest ZoneViewsSetService' where
        type Rs ZoneViewsSetService' = Operation
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneViewsSetService'{..}
          = go _zvssQuotaUser (Just _zvssPrettyPrint)
              _zvssResourceView
              _zvssProject
              _zvssUserIp
              _zvssZone
              _zvssKey
              _zvssOauthToken
              _zvssFields
              (Just _zvssAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsSetServiceResource)
                      r
                      u
