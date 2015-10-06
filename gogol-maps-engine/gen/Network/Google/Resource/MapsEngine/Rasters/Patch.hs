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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersPatch@.
module Network.Google.Resource.MapsEngine.Rasters.Patch
    (
    -- * REST Resource
      RastersPatchResource

    -- * Creating a Request
    , rastersPatch'
    , RastersPatch'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIP
    , rPayload
    , rKey
    , rId
    , rOAuthToken
    , rFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersPatch@ which the
-- 'RastersPatch'' request conforms to.
type RastersPatchResource =
     "rasters" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Raster :> Patch '[JSON] ()

-- | Mutate a raster asset.
--
-- /See:/ 'rastersPatch'' smart constructor.
data RastersPatch' = RastersPatch'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIP      :: !(Maybe Text)
    , _rPayload     :: !Raster
    , _rKey         :: !(Maybe AuthKey)
    , _rId          :: !Text
    , _rOAuthToken  :: !(Maybe OAuthToken)
    , _rFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIP'
--
-- * 'rPayload'
--
-- * 'rKey'
--
-- * 'rId'
--
-- * 'rOAuthToken'
--
-- * 'rFields'
rastersPatch'
    :: Raster -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RastersPatch'
rastersPatch' pRPayload_ pRId_ =
    RastersPatch'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIP = Nothing
    , _rPayload = pRPayload_
    , _rKey = Nothing
    , _rId = pRId_
    , _rOAuthToken = Nothing
    , _rFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RastersPatch' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RastersPatch' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIP :: Lens' RastersPatch' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | Multipart request metadata.
rPayload :: Lens' RastersPatch' Raster
rPayload = lens _rPayload (\ s a -> s{_rPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RastersPatch' (Maybe AuthKey)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The ID of the raster.
rId :: Lens' RastersPatch' Text
rId = lens _rId (\ s a -> s{_rId = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' RastersPatch' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RastersPatch' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth RastersPatch' where
        _AuthKey = rKey . _Just
        _AuthToken = rOAuthToken . _Just

instance GoogleRequest RastersPatch' where
        type Rs RastersPatch' = ()
        request = requestWith mapsEngineRequest
        requestWith rq RastersPatch'{..}
          = go _rId _rQuotaUser (Just _rPrettyPrint) _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
              _rPayload
          where go
                  = clientBuild (Proxy :: Proxy RastersPatchResource)
                      rq
