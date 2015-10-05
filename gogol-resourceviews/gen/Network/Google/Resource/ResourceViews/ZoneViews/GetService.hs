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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.GetService
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the service information of a resource view or a resource.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsGetService@.
module Network.Google.Resource.ResourceViews.ZoneViews.GetService
    (
    -- * REST Resource
      ZoneViewsGetServiceResource

    -- * Creating a Request
    , zoneViewsGetService'
    , ZoneViewsGetService'

    -- * Request Lenses
    , zvgsQuotaUser
    , zvgsPrettyPrint
    , zvgsResourceView
    , zvgsResourceName
    , zvgsProject
    , zvgsUserIP
    , zvgsZone
    , zvgsKey
    , zvgsOAuthToken
    , zvgsFields
    ) where

import Network.Google.Prelude
import Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsGetService@ which the
-- 'ZoneViewsGetService'' request conforms to.
type ZoneViewsGetServiceResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "getService" :>
                 QueryParam "resourceName" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] ZoneViewsGetServiceResponse

-- | Get the service information of a resource view or a resource.
--
-- /See:/ 'zoneViewsGetService'' smart constructor.
data ZoneViewsGetService' = ZoneViewsGetService'
    { _zvgsQuotaUser :: !(Maybe Text)
    , _zvgsPrettyPrint :: !Bool
    , _zvgsResourceView :: !Text
    , _zvgsResourceName :: !(Maybe Text)
    , _zvgsProject :: !Text
    , _zvgsUserIP :: !(Maybe Text)
    , _zvgsZone :: !Text
    , _zvgsKey :: !(Maybe Key)
    , _zvgsOAuthToken :: !(Maybe OAuthToken)
    , _zvgsFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsGetService'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvgsQuotaUser'
--
-- * 'zvgsPrettyPrint'
--
-- * 'zvgsResourceView'
--
-- * 'zvgsResourceName'
--
-- * 'zvgsProject'
--
-- * 'zvgsUserIP'
--
-- * 'zvgsZone'
--
-- * 'zvgsKey'
--
-- * 'zvgsOAuthToken'
--
-- * 'zvgsFields'
zoneViewsGetService'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsGetService'
zoneViewsGetService' pZvgsResourceView_ pZvgsProject_ pZvgsZone_ = 
    ZoneViewsGetService'
    { _zvgsQuotaUser = Nothing
    , _zvgsPrettyPrint = True
    , _zvgsResourceView = pZvgsResourceView_
    , _zvgsResourceName = Nothing
    , _zvgsProject = pZvgsProject_
    , _zvgsUserIP = Nothing
    , _zvgsZone = pZvgsZone_
    , _zvgsKey = Nothing
    , _zvgsOAuthToken = Nothing
    , _zvgsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvgsQuotaUser :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsQuotaUser
  = lens _zvgsQuotaUser
      (\ s a -> s{_zvgsQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvgsPrettyPrint :: Lens' ZoneViewsGetService' Bool
zvgsPrettyPrint
  = lens _zvgsPrettyPrint
      (\ s a -> s{_zvgsPrettyPrint = a})

-- | The name of the resource view.
zvgsResourceView :: Lens' ZoneViewsGetService' Text
zvgsResourceView
  = lens _zvgsResourceView
      (\ s a -> s{_zvgsResourceView = a})

-- | The name of the resource if user wants to get the service information of
-- the resource.
zvgsResourceName :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsResourceName
  = lens _zvgsResourceName
      (\ s a -> s{_zvgsResourceName = a})

-- | The project name of the resource view.
zvgsProject :: Lens' ZoneViewsGetService' Text
zvgsProject
  = lens _zvgsProject (\ s a -> s{_zvgsProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvgsUserIP :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsUserIP
  = lens _zvgsUserIP (\ s a -> s{_zvgsUserIP = a})

-- | The zone name of the resource view.
zvgsZone :: Lens' ZoneViewsGetService' Text
zvgsZone = lens _zvgsZone (\ s a -> s{_zvgsZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvgsKey :: Lens' ZoneViewsGetService' (Maybe Key)
zvgsKey = lens _zvgsKey (\ s a -> s{_zvgsKey = a})

-- | OAuth 2.0 token for the current user.
zvgsOAuthToken :: Lens' ZoneViewsGetService' (Maybe OAuthToken)
zvgsOAuthToken
  = lens _zvgsOAuthToken
      (\ s a -> s{_zvgsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvgsFields :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsFields
  = lens _zvgsFields (\ s a -> s{_zvgsFields = a})

instance GoogleAuth ZoneViewsGetService' where
        authKey = zvgsKey . _Just
        authToken = zvgsOAuthToken . _Just

instance GoogleRequest ZoneViewsGetService' where
        type Rs ZoneViewsGetService' =
             ZoneViewsGetServiceResponse
        request = requestWithRoute defReq resourceViewsURL
        requestWithRoute r u ZoneViewsGetService'{..}
          = go _zvgsProject _zvgsZone _zvgsResourceView
              _zvgsResourceName
              _zvgsQuotaUser
              (Just _zvgsPrettyPrint)
              _zvgsUserIP
              _zvgsFields
              _zvgsKey
              _zvgsOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsGetServiceResource)
                      r
                      u
