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
    , rccUserIP
    , rccPayload
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
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RasterCollection :>
                       Post '[JSON] RasterCollection

-- | Create a raster collection asset.
--
-- /See:/ 'rasterCollectionsCreate'' smart constructor.
data RasterCollectionsCreate' = RasterCollectionsCreate'
    { _rccQuotaUser   :: !(Maybe Text)
    , _rccPrettyPrint :: !Bool
    , _rccUserIP      :: !(Maybe Text)
    , _rccPayload     :: !RasterCollection
    , _rccKey         :: !(Maybe AuthKey)
    , _rccOAuthToken  :: !(Maybe OAuthToken)
    , _rccFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccQuotaUser'
--
-- * 'rccPrettyPrint'
--
-- * 'rccUserIP'
--
-- * 'rccPayload'
--
-- * 'rccKey'
--
-- * 'rccOAuthToken'
--
-- * 'rccFields'
rasterCollectionsCreate'
    :: RasterCollection -- ^ 'payload'
    -> RasterCollectionsCreate'
rasterCollectionsCreate' pRccPayload_ =
    RasterCollectionsCreate'
    { _rccQuotaUser = Nothing
    , _rccPrettyPrint = True
    , _rccUserIP = Nothing
    , _rccPayload = pRccPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rccUserIP :: Lens' RasterCollectionsCreate' (Maybe Text)
rccUserIP
  = lens _rccUserIP (\ s a -> s{_rccUserIP = a})

-- | Multipart request metadata.
rccPayload :: Lens' RasterCollectionsCreate' RasterCollection
rccPayload
  = lens _rccPayload (\ s a -> s{_rccPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rccKey :: Lens' RasterCollectionsCreate' (Maybe AuthKey)
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
        _AuthKey = rccKey . _Just
        _AuthToken = rccOAuthToken . _Just

instance GoogleRequest RasterCollectionsCreate' where
        type Rs RasterCollectionsCreate' = RasterCollection
        request = requestWith mapsEngineRequest
        requestWith rq RasterCollectionsCreate'{..}
          = go _rccQuotaUser (Just _rccPrettyPrint) _rccUserIP
              _rccFields
              _rccKey
              _rccOAuthToken
              (Just AltJSON)
              _rccPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy RasterCollectionsCreateResource)
                      rq
