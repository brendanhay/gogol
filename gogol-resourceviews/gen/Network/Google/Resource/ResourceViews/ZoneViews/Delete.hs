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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsDelete@.
module Network.Google.Resource.ResourceViews.ZoneViews.Delete
    (
    -- * REST Resource
      ZoneViewsDeleteResource

    -- * Creating a Request
    , zoneViewsDelete'
    , ZoneViewsDelete'

    -- * Request Lenses
    , zvdQuotaUser
    , zvdPrettyPrint
    , zvdResourceView
    , zvdProject
    , zvdUserIP
    , zvdZone
    , zvdKey
    , zvdOAuthToken
    , zvdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsDelete@ which the
-- 'ZoneViewsDelete'' request conforms to.
type ZoneViewsDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Delete a resource view.
--
-- /See:/ 'zoneViewsDelete'' smart constructor.
data ZoneViewsDelete' = ZoneViewsDelete'
    { _zvdQuotaUser    :: !(Maybe Text)
    , _zvdPrettyPrint  :: !Bool
    , _zvdResourceView :: !Text
    , _zvdProject      :: !Text
    , _zvdUserIP       :: !(Maybe Text)
    , _zvdZone         :: !Text
    , _zvdKey          :: !(Maybe AuthKey)
    , _zvdOAuthToken   :: !(Maybe OAuthToken)
    , _zvdFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvdQuotaUser'
--
-- * 'zvdPrettyPrint'
--
-- * 'zvdResourceView'
--
-- * 'zvdProject'
--
-- * 'zvdUserIP'
--
-- * 'zvdZone'
--
-- * 'zvdKey'
--
-- * 'zvdOAuthToken'
--
-- * 'zvdFields'
zoneViewsDelete'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsDelete'
zoneViewsDelete' pZvdResourceView_ pZvdProject_ pZvdZone_ =
    ZoneViewsDelete'
    { _zvdQuotaUser = Nothing
    , _zvdPrettyPrint = True
    , _zvdResourceView = pZvdResourceView_
    , _zvdProject = pZvdProject_
    , _zvdUserIP = Nothing
    , _zvdZone = pZvdZone_
    , _zvdKey = Nothing
    , _zvdOAuthToken = Nothing
    , _zvdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zvdQuotaUser :: Lens' ZoneViewsDelete' (Maybe Text)
zvdQuotaUser
  = lens _zvdQuotaUser (\ s a -> s{_zvdQuotaUser = a})

-- | Returns response with indentations and line breaks.
zvdPrettyPrint :: Lens' ZoneViewsDelete' Bool
zvdPrettyPrint
  = lens _zvdPrettyPrint
      (\ s a -> s{_zvdPrettyPrint = a})

-- | The name of the resource view.
zvdResourceView :: Lens' ZoneViewsDelete' Text
zvdResourceView
  = lens _zvdResourceView
      (\ s a -> s{_zvdResourceView = a})

-- | The project name of the resource view.
zvdProject :: Lens' ZoneViewsDelete' Text
zvdProject
  = lens _zvdProject (\ s a -> s{_zvdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zvdUserIP :: Lens' ZoneViewsDelete' (Maybe Text)
zvdUserIP
  = lens _zvdUserIP (\ s a -> s{_zvdUserIP = a})

-- | The zone name of the resource view.
zvdZone :: Lens' ZoneViewsDelete' Text
zvdZone = lens _zvdZone (\ s a -> s{_zvdZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zvdKey :: Lens' ZoneViewsDelete' (Maybe AuthKey)
zvdKey = lens _zvdKey (\ s a -> s{_zvdKey = a})

-- | OAuth 2.0 token for the current user.
zvdOAuthToken :: Lens' ZoneViewsDelete' (Maybe OAuthToken)
zvdOAuthToken
  = lens _zvdOAuthToken
      (\ s a -> s{_zvdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zvdFields :: Lens' ZoneViewsDelete' (Maybe Text)
zvdFields
  = lens _zvdFields (\ s a -> s{_zvdFields = a})

instance GoogleAuth ZoneViewsDelete' where
        _AuthKey = zvdKey . _Just
        _AuthToken = zvdOAuthToken . _Just

instance GoogleRequest ZoneViewsDelete' where
        type Rs ZoneViewsDelete' = Operation
        request = requestWith resourceViewsRequest
        requestWith rq ZoneViewsDelete'{..}
          = go _zvdProject _zvdZone _zvdResourceView
              _zvdQuotaUser
              (Just _zvdPrettyPrint)
              _zvdUserIP
              _zvdFields
              _zvdKey
              _zvdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ZoneViewsDeleteResource)
                      rq
