{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsInsert@.
module Network.Google.Resource.ResourceViews.ZoneViews.Insert
    (
    -- * REST Resource
      ZoneViewsInsertResource

    -- * Creating a Request
    , zoneViewsInsert'
    , ZoneViewsInsert'

    -- * Request Lenses
    , zviQuotaUser
    , zviPrettyPrint
    , zviProject
    , zviUserIP
    , zviZone
    , zviPayload
    , zviKey
    , zviOAuthToken
    , zviFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsInsert@ which the
-- 'ZoneViewsInsert'' request conforms to.
type ZoneViewsInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ResourceView :>
                             Post '[JSON] Operation

-- | Create a resource view.
--
-- /See:/ 'zoneViewsInsert'' smart constructor.
data ZoneViewsInsert' = ZoneViewsInsert'
    { _zviQuotaUser   :: !(Maybe Text)
    , _zviPrettyPrint :: !Bool
    , _zviProject     :: !Text
    , _zviUserIP      :: !(Maybe Text)
    , _zviZone        :: !Text
    , _zviPayload     :: !ResourceView
    , _zviKey         :: !(Maybe Key)
    , _zviOAuthToken  :: !(Maybe OAuthToken)
    , _zviFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'zviUserIP'
--
-- * 'zviZone'
--
-- * 'zviPayload'
--
-- * 'zviKey'
--
-- * 'zviOAuthToken'
--
-- * 'zviFields'
zoneViewsInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ResourceView -- ^ 'payload'
    -> ZoneViewsInsert'
zoneViewsInsert' pZviProject_ pZviZone_ pZviPayload_ =
    ZoneViewsInsert'
    { _zviQuotaUser = Nothing
    , _zviPrettyPrint = True
    , _zviProject = pZviProject_
    , _zviUserIP = Nothing
    , _zviZone = pZviZone_
    , _zviPayload = pZviPayload_
    , _zviKey = Nothing
    , _zviOAuthToken = Nothing
    , _zviFields = Nothing
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
zviUserIP :: Lens' ZoneViewsInsert' (Maybe Text)
zviUserIP
  = lens _zviUserIP (\ s a -> s{_zviUserIP = a})

-- | The zone name of the resource view.
zviZone :: Lens' ZoneViewsInsert' Text
zviZone = lens _zviZone (\ s a -> s{_zviZone = a})

-- | Multipart request metadata.
zviPayload :: Lens' ZoneViewsInsert' ResourceView
zviPayload
  = lens _zviPayload (\ s a -> s{_zviPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zviKey :: Lens' ZoneViewsInsert' (Maybe Key)
zviKey = lens _zviKey (\ s a -> s{_zviKey = a})

-- | OAuth 2.0 token for the current user.
zviOAuthToken :: Lens' ZoneViewsInsert' (Maybe OAuthToken)
zviOAuthToken
  = lens _zviOAuthToken
      (\ s a -> s{_zviOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zviFields :: Lens' ZoneViewsInsert' (Maybe Text)
zviFields
  = lens _zviFields (\ s a -> s{_zviFields = a})

instance GoogleAuth ZoneViewsInsert' where
        authKey = zviKey . _Just
        authToken = zviOAuthToken . _Just

instance GoogleRequest ZoneViewsInsert' where
        type Rs ZoneViewsInsert' = Operation
        request = requestWithRoute defReq resourceViewsURL
        requestWithRoute r u ZoneViewsInsert'{..}
          = go _zviProject _zviZone _zviQuotaUser
              (Just _zviPrettyPrint)
              _zviUserIP
              _zviFields
              _zviKey
              _zviOAuthToken
              (Just AltJSON)
              _zviPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneViewsInsertResource)
                      r
                      u
