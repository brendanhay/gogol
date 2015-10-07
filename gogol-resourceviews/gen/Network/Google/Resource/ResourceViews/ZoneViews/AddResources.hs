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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.AddResources
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add resources to the view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsAddResources@.
module Network.Google.Resource.ResourceViews.ZoneViews.AddResources
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
    , zvarUserIP
    , zvarZone
    , zvarPayload
    , zvarKey
    , zvarOAuthToken
    , zvarFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsAddResources@ method which the
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
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ZoneViewsAddResourcesRequest :>
                                 Post '[JSON] Operation

-- | Add resources to the view.
--
-- /See:/ 'zoneViewsAddResources'' smart constructor.
data ZoneViewsAddResources' = ZoneViewsAddResources'
    { _zvarQuotaUser    :: !(Maybe Text)
    , _zvarPrettyPrint  :: !Bool
    , _zvarResourceView :: !Text
    , _zvarProject      :: !Text
    , _zvarUserIP       :: !(Maybe Text)
    , _zvarZone         :: !Text
    , _zvarPayload      :: !ZoneViewsAddResourcesRequest
    , _zvarKey          :: !(Maybe AuthKey)
    , _zvarOAuthToken   :: !(Maybe OAuthToken)
    , _zvarFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'zvarUserIP'
--
-- * 'zvarZone'
--
-- * 'zvarPayload'
--
-- * 'zvarKey'
--
-- * 'zvarOAuthToken'
--
-- * 'zvarFields'
zoneViewsAddResources'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsAddResourcesRequest -- ^ 'payload'
    -> ZoneViewsAddResources'
zoneViewsAddResources' pZvarResourceView_ pZvarProject_ pZvarZone_ pZvarPayload_ =
    ZoneViewsAddResources'
    { _zvarQuotaUser = Nothing
    , _zvarPrettyPrint = True
    , _zvarResourceView = pZvarResourceView_
    , _zvarProject = pZvarProject_
    , _zvarUserIP = Nothing
    , _zvarZone = pZvarZone_
    , _zvarPayload = pZvarPayload_
    , _zvarKey = Nothing
    , _zvarOAuthToken = Nothing
    , _zvarFields = Nothing
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
zvarUserIP :: Lens' ZoneViewsAddResources' (Maybe Text)
zvarUserIP
  = lens _zvarUserIP (\ s a -> s{_zvarUserIP = a})

-- | The zone name of the resource view.
zvarZone :: Lens' ZoneViewsAddResources' Text
zvarZone = lens _zvarZone (\ s a -> s{_zvarZone = a})

-- | Multipart request metadata.
zvarPayload :: Lens' ZoneViewsAddResources' ZoneViewsAddResourcesRequest
zvarPayload
  = lens _zvarPayload (\ s a -> s{_zvarPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvarKey :: Lens' ZoneViewsAddResources' (Maybe AuthKey)
zvarKey = lens _zvarKey (\ s a -> s{_zvarKey = a})

-- | OAuth 2.0 token for the current user.
zvarOAuthToken :: Lens' ZoneViewsAddResources' (Maybe OAuthToken)
zvarOAuthToken
  = lens _zvarOAuthToken
      (\ s a -> s{_zvarOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvarFields :: Lens' ZoneViewsAddResources' (Maybe Text)
zvarFields
  = lens _zvarFields (\ s a -> s{_zvarFields = a})

instance GoogleAuth ZoneViewsAddResources' where
        _AuthKey = zvarKey . _Just
        _AuthToken = zvarOAuthToken . _Just

instance GoogleRequest ZoneViewsAddResources' where
        type Rs ZoneViewsAddResources' = Operation
        request = requestWith resourceViewsRequest
        requestWith rq ZoneViewsAddResources'{..}
          = go _zvarProject _zvarZone _zvarResourceView
              _zvarQuotaUser
              (Just _zvarPrettyPrint)
              _zvarUserIP
              _zvarFields
              _zvarKey
              _zvarOAuthToken
              (Just AltJSON)
              _zvarPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ZoneViewsAddResourcesResource)
                      rq
