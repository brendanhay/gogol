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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the information of a zonal resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsGet@.
module Network.Google.Resource.ResourceViews.ZoneViews.Get
    (
    -- * REST Resource
      ZoneViewsGetResource

    -- * Creating a Request
    , zoneViewsGet'
    , ZoneViewsGet'

    -- * Request Lenses
    , zvgQuotaUser
    , zvgPrettyPrint
    , zvgResourceView
    , zvgProject
    , zvgUserIP
    , zvgZone
    , zvgKey
    , zvgOAuthToken
    , zvgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsGet@ which the
-- 'ZoneViewsGet'' request conforms to.
type ZoneViewsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ResourceView

-- | Get the information of a zonal resource view.
--
-- /See:/ 'zoneViewsGet'' smart constructor.
data ZoneViewsGet' = ZoneViewsGet'
    { _zvgQuotaUser    :: !(Maybe Text)
    , _zvgPrettyPrint  :: !Bool
    , _zvgResourceView :: !Text
    , _zvgProject      :: !Text
    , _zvgUserIP       :: !(Maybe Text)
    , _zvgZone         :: !Text
    , _zvgKey          :: !(Maybe Key)
    , _zvgOAuthToken   :: !(Maybe OAuthToken)
    , _zvgFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'zvgUserIP'
--
-- * 'zvgZone'
--
-- * 'zvgKey'
--
-- * 'zvgOAuthToken'
--
-- * 'zvgFields'
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
    , _zvgUserIP = Nothing
    , _zvgZone = pZvgZone_
    , _zvgKey = Nothing
    , _zvgOAuthToken = Nothing
    , _zvgFields = Nothing
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
zvgUserIP :: Lens' ZoneViewsGet' (Maybe Text)
zvgUserIP
  = lens _zvgUserIP (\ s a -> s{_zvgUserIP = a})

-- | The zone name of the resource view.
zvgZone :: Lens' ZoneViewsGet' Text
zvgZone = lens _zvgZone (\ s a -> s{_zvgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvgKey :: Lens' ZoneViewsGet' (Maybe Key)
zvgKey = lens _zvgKey (\ s a -> s{_zvgKey = a})

-- | OAuth 2.0 token for the current user.
zvgOAuthToken :: Lens' ZoneViewsGet' (Maybe OAuthToken)
zvgOAuthToken
  = lens _zvgOAuthToken
      (\ s a -> s{_zvgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvgFields :: Lens' ZoneViewsGet' (Maybe Text)
zvgFields
  = lens _zvgFields (\ s a -> s{_zvgFields = a})

instance GoogleAuth ZoneViewsGet' where
        authKey = zvgKey . _Just
        authToken = zvgOAuthToken . _Just

instance GoogleRequest ZoneViewsGet' where
        type Rs ZoneViewsGet' = ResourceView
        request = requestWithRoute defReq resourceViewsURL
        requestWithRoute r u ZoneViewsGet'{..}
          = go _zvgProject _zvgZone _zvgResourceView
              _zvgQuotaUser
              (Just _zvgPrettyPrint)
              _zvgUserIP
              _zvgFields
              _zvgKey
              _zvgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsGetResource)
                      r
                      u
