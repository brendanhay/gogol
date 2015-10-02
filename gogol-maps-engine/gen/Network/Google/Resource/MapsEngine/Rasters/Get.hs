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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a single raster.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersGet@.
module Network.Google.Resource.MapsEngine.Rasters.Get
    (
    -- * REST Resource
      RastersGetResource

    -- * Creating a Request
    , rastersGet'
    , RastersGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIP
    , rgKey
    , rgId
    , rgOAuthToken
    , rgFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersGet@ which the
-- 'RastersGet'' request conforms to.
type RastersGetResource =
     "rasters" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Raster

-- | Return metadata for a single raster.
--
-- /See:/ 'rastersGet'' smart constructor.
data RastersGet' = RastersGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgUserIP      :: !(Maybe Text)
    , _rgKey         :: !(Maybe Key)
    , _rgId          :: !Text
    , _rgOAuthToken  :: !(Maybe OAuthToken)
    , _rgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIP'
--
-- * 'rgKey'
--
-- * 'rgId'
--
-- * 'rgOAuthToken'
--
-- * 'rgFields'
rastersGet'
    :: Text -- ^ 'id'
    -> RastersGet'
rastersGet' pRgId_ =
    RastersGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIP = Nothing
    , _rgKey = Nothing
    , _rgId = pRgId_
    , _rgOAuthToken = Nothing
    , _rgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' RastersGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' RastersGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIP :: Lens' RastersGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RastersGet' (Maybe Key)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The ID of the raster.
rgId :: Lens' RastersGet' Text
rgId = lens _rgId (\ s a -> s{_rgId = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' RastersGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' RastersGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

instance GoogleAuth RastersGet' where
        authKey = rgKey . _Just
        authToken = rgOAuthToken . _Just

instance GoogleRequest RastersGet' where
        type Rs RastersGet' = Raster
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RastersGet'{..}
          = go _rgId _rgQuotaUser (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy RastersGetResource)
                      r
                      u
