{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsGet@.
module Network.Google.Resource.MapsEngine.RasterCollections.Get
    (
    -- * REST Resource
      RasterCollectionsGetResource

    -- * Creating a Request
    , rasterCollectionsGet'
    , RasterCollectionsGet'

    -- * Request Lenses
    , rcgQuotaUser
    , rcgPrettyPrint
    , rcgUserIP
    , rcgKey
    , rcgId
    , rcgOAuthToken
    , rcgFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsGet@ which the
-- 'RasterCollectionsGet'' request conforms to.
type RasterCollectionsGetResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] RasterCollection

-- | Return metadata for a particular raster collection.
--
-- /See:/ 'rasterCollectionsGet'' smart constructor.
data RasterCollectionsGet' = RasterCollectionsGet'
    { _rcgQuotaUser   :: !(Maybe Text)
    , _rcgPrettyPrint :: !Bool
    , _rcgUserIP      :: !(Maybe Text)
    , _rcgKey         :: !(Maybe Key)
    , _rcgId          :: !Text
    , _rcgOAuthToken  :: !(Maybe OAuthToken)
    , _rcgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcgQuotaUser'
--
-- * 'rcgPrettyPrint'
--
-- * 'rcgUserIP'
--
-- * 'rcgKey'
--
-- * 'rcgId'
--
-- * 'rcgOAuthToken'
--
-- * 'rcgFields'
rasterCollectionsGet'
    :: Text -- ^ 'id'
    -> RasterCollectionsGet'
rasterCollectionsGet' pRcgId_ =
    RasterCollectionsGet'
    { _rcgQuotaUser = Nothing
    , _rcgPrettyPrint = True
    , _rcgUserIP = Nothing
    , _rcgKey = Nothing
    , _rcgId = pRcgId_
    , _rcgOAuthToken = Nothing
    , _rcgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcgQuotaUser :: Lens' RasterCollectionsGet' (Maybe Text)
rcgQuotaUser
  = lens _rcgQuotaUser (\ s a -> s{_rcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcgPrettyPrint :: Lens' RasterCollectionsGet' Bool
rcgPrettyPrint
  = lens _rcgPrettyPrint
      (\ s a -> s{_rcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcgUserIP :: Lens' RasterCollectionsGet' (Maybe Text)
rcgUserIP
  = lens _rcgUserIP (\ s a -> s{_rcgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcgKey :: Lens' RasterCollectionsGet' (Maybe Key)
rcgKey = lens _rcgKey (\ s a -> s{_rcgKey = a})

-- | The ID of the raster collection.
rcgId :: Lens' RasterCollectionsGet' Text
rcgId = lens _rcgId (\ s a -> s{_rcgId = a})

-- | OAuth 2.0 token for the current user.
rcgOAuthToken :: Lens' RasterCollectionsGet' (Maybe OAuthToken)
rcgOAuthToken
  = lens _rcgOAuthToken
      (\ s a -> s{_rcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcgFields :: Lens' RasterCollectionsGet' (Maybe Text)
rcgFields
  = lens _rcgFields (\ s a -> s{_rcgFields = a})

instance GoogleAuth RasterCollectionsGet' where
        authKey = rcgKey . _Just
        authToken = rcgOAuthToken . _Just

instance GoogleRequest RasterCollectionsGet' where
        type Rs RasterCollectionsGet' = RasterCollection
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RasterCollectionsGet'{..}
          = go _rcgId _rcgQuotaUser (Just _rcgPrettyPrint)
              _rcgUserIP
              _rcgFields
              _rcgKey
              _rcgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsGetResource)
                      r
                      u
