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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.RemoveResources
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove resources from the view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsRemoveResources@.
module Network.Google.Resource.ResourceViews.ZoneViews.RemoveResources
    (
    -- * REST Resource
      ZoneViewsRemoveResourcesResource

    -- * Creating a Request
    , zoneViewsRemoveResources'
    , ZoneViewsRemoveResources'

    -- * Request Lenses
    , zvrrQuotaUser
    , zvrrPrettyPrint
    , zvrrResourceView
    , zvrrProject
    , zvrrUserIP
    , zvrrZone
    , zvrrPayload
    , zvrrKey
    , zvrrOAuthToken
    , zvrrFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsRemoveResources@ method which the
-- 'ZoneViewsRemoveResources'' request conforms to.
type ZoneViewsRemoveResourcesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "removeResources" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ZoneViewsRemoveResourcesRequest
                                 :> Post '[JSON] Operation

-- | Remove resources from the view.
--
-- /See:/ 'zoneViewsRemoveResources'' smart constructor.
data ZoneViewsRemoveResources' = ZoneViewsRemoveResources'
    { _zvrrQuotaUser    :: !(Maybe Text)
    , _zvrrPrettyPrint  :: !Bool
    , _zvrrResourceView :: !Text
    , _zvrrProject      :: !Text
    , _zvrrUserIP       :: !(Maybe Text)
    , _zvrrZone         :: !Text
    , _zvrrPayload      :: !ZoneViewsRemoveResourcesRequest
    , _zvrrKey          :: !(Maybe AuthKey)
    , _zvrrOAuthToken   :: !(Maybe OAuthToken)
    , _zvrrFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsRemoveResources'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvrrQuotaUser'
--
-- * 'zvrrPrettyPrint'
--
-- * 'zvrrResourceView'
--
-- * 'zvrrProject'
--
-- * 'zvrrUserIP'
--
-- * 'zvrrZone'
--
-- * 'zvrrPayload'
--
-- * 'zvrrKey'
--
-- * 'zvrrOAuthToken'
--
-- * 'zvrrFields'
zoneViewsRemoveResources'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsRemoveResourcesRequest -- ^ 'payload'
    -> ZoneViewsRemoveResources'
zoneViewsRemoveResources' pZvrrResourceView_ pZvrrProject_ pZvrrZone_ pZvrrPayload_ =
    ZoneViewsRemoveResources'
    { _zvrrQuotaUser = Nothing
    , _zvrrPrettyPrint = True
    , _zvrrResourceView = pZvrrResourceView_
    , _zvrrProject = pZvrrProject_
    , _zvrrUserIP = Nothing
    , _zvrrZone = pZvrrZone_
    , _zvrrPayload = pZvrrPayload_
    , _zvrrKey = Nothing
    , _zvrrOAuthToken = Nothing
    , _zvrrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvrrQuotaUser :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrQuotaUser
  = lens _zvrrQuotaUser
      (\ s a -> s{_zvrrQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvrrPrettyPrint :: Lens' ZoneViewsRemoveResources' Bool
zvrrPrettyPrint
  = lens _zvrrPrettyPrint
      (\ s a -> s{_zvrrPrettyPrint = a})

-- | The name of the resource view.
zvrrResourceView :: Lens' ZoneViewsRemoveResources' Text
zvrrResourceView
  = lens _zvrrResourceView
      (\ s a -> s{_zvrrResourceView = a})

-- | The project name of the resource view.
zvrrProject :: Lens' ZoneViewsRemoveResources' Text
zvrrProject
  = lens _zvrrProject (\ s a -> s{_zvrrProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvrrUserIP :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrUserIP
  = lens _zvrrUserIP (\ s a -> s{_zvrrUserIP = a})

-- | The zone name of the resource view.
zvrrZone :: Lens' ZoneViewsRemoveResources' Text
zvrrZone = lens _zvrrZone (\ s a -> s{_zvrrZone = a})

-- | Multipart request metadata.
zvrrPayload :: Lens' ZoneViewsRemoveResources' ZoneViewsRemoveResourcesRequest
zvrrPayload
  = lens _zvrrPayload (\ s a -> s{_zvrrPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvrrKey :: Lens' ZoneViewsRemoveResources' (Maybe AuthKey)
zvrrKey = lens _zvrrKey (\ s a -> s{_zvrrKey = a})

-- | OAuth 2.0 token for the current user.
zvrrOAuthToken :: Lens' ZoneViewsRemoveResources' (Maybe OAuthToken)
zvrrOAuthToken
  = lens _zvrrOAuthToken
      (\ s a -> s{_zvrrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvrrFields :: Lens' ZoneViewsRemoveResources' (Maybe Text)
zvrrFields
  = lens _zvrrFields (\ s a -> s{_zvrrFields = a})

instance GoogleAuth ZoneViewsRemoveResources' where
        _AuthKey = zvrrKey . _Just
        _AuthToken = zvrrOAuthToken . _Just

instance GoogleRequest ZoneViewsRemoveResources'
         where
        type Rs ZoneViewsRemoveResources' = Operation
        request = requestWith resourceViewsRequest
        requestWith rq ZoneViewsRemoveResources'{..}
          = go _zvrrProject _zvrrZone _zvrrResourceView
              _zvrrQuotaUser
              (Just _zvrrPrettyPrint)
              _zvrrUserIP
              _zvrrFields
              _zvrrKey
              _zvrrOAuthToken
              (Just AltJSON)
              _zvrrPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ZoneViewsRemoveResourcesResource)
                      rq
