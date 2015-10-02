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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsCreate@.
module Network.Google.Resource.MapsEngine.RasterCollections.Create
    (
    -- * REST Resource
      RasterCollectionsCreateResource

    -- * Creating a Request
    , rasterCollectionsCreate'
    , RasterCollectionsCreate'

    -- * Request Lenses
    , rccQuotaUser
    , rccPrettyPrint
    , rccRasterCollection
    , rccUserIP
    , rccKey
    , rccOAuthToken
    , rccFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsCreate@ which the
-- 'RasterCollectionsCreate'' request conforms to.
type RasterCollectionsCreateResource =
     "rasterCollections" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RasterCollection :>
                       Post '[JSON] RasterCollection

-- | Create a raster collection asset.
--
-- /See:/ 'rasterCollectionsCreate'' smart constructor.
data RasterCollectionsCreate' = RasterCollectionsCreate'
    { _rccQuotaUser        :: !(Maybe Text)
    , _rccPrettyPrint      :: !Bool
    , _rccRasterCollection :: !RasterCollection
    , _rccUserIP           :: !(Maybe Text)
    , _rccKey              :: !(Maybe Key)
    , _rccOAuthToken       :: !(Maybe OAuthToken)
    , _rccFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccQuotaUser'
--
-- * 'rccPrettyPrint'
--
-- * 'rccRasterCollection'
--
-- * 'rccUserIP'
--
-- * 'rccKey'
--
-- * 'rccOAuthToken'
--
-- * 'rccFields'
rasterCollectionsCreate'
    :: RasterCollection -- ^ 'RasterCollection'
    -> RasterCollectionsCreate'
rasterCollectionsCreate' pRccRasterCollection_ =
    RasterCollectionsCreate'
    { _rccQuotaUser = Nothing
    , _rccPrettyPrint = True
    , _rccRasterCollection = pRccRasterCollection_
    , _rccUserIP = Nothing
    , _rccKey = Nothing
    , _rccOAuthToken = Nothing
    , _rccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rccQuotaUser :: Lens' RasterCollectionsCreate' (Maybe Text)
rccQuotaUser
  = lens _rccQuotaUser (\ s a -> s{_rccQuotaUser = a})

-- | Returns response with indentations and line breaks.
rccPrettyPrint :: Lens' RasterCollectionsCreate' Bool
rccPrettyPrint
  = lens _rccPrettyPrint
      (\ s a -> s{_rccPrettyPrint = a})

-- | Multipart request metadata.
rccRasterCollection :: Lens' RasterCollectionsCreate' RasterCollection
rccRasterCollection
  = lens _rccRasterCollection
      (\ s a -> s{_rccRasterCollection = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rccUserIP :: Lens' RasterCollectionsCreate' (Maybe Text)
rccUserIP
  = lens _rccUserIP (\ s a -> s{_rccUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rccKey :: Lens' RasterCollectionsCreate' (Maybe Key)
rccKey = lens _rccKey (\ s a -> s{_rccKey = a})

-- | OAuth 2.0 token for the current user.
rccOAuthToken :: Lens' RasterCollectionsCreate' (Maybe OAuthToken)
rccOAuthToken
  = lens _rccOAuthToken
      (\ s a -> s{_rccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rccFields :: Lens' RasterCollectionsCreate' (Maybe Text)
rccFields
  = lens _rccFields (\ s a -> s{_rccFields = a})

instance GoogleAuth RasterCollectionsCreate' where
        authKey = rccKey . _Just
        authToken = rccOAuthToken . _Just

instance GoogleRequest RasterCollectionsCreate' where
        type Rs RasterCollectionsCreate' = RasterCollection
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RasterCollectionsCreate'{..}
          = go _rccQuotaUser (Just _rccPrettyPrint) _rccUserIP
              _rccKey
              _rccOAuthToken
              _rccFields
              (Just AltJSON)
              _rccRasterCollection
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsCreateResource)
                      r
                      u
