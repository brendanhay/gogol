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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsPatch@.
module Network.Google.Resource.MapsEngine.RasterCollections.Patch
    (
    -- * REST Resource
      RasterCollectionsPatchResource

    -- * Creating a Request
    , rasterCollectionsPatch'
    , RasterCollectionsPatch'

    -- * Request Lenses
    , rcpQuotaUser
    , rcpPrettyPrint
    , rcpUserIP
    , rcpPayload
    , rcpKey
    , rcpId
    , rcpOAuthToken
    , rcpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsPatch@ method which the
-- 'RasterCollectionsPatch'' request conforms to.
type RasterCollectionsPatchResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RasterCollection :> Patch '[JSON] ()

-- | Mutate a raster collection asset.
--
-- /See:/ 'rasterCollectionsPatch'' smart constructor.
data RasterCollectionsPatch' = RasterCollectionsPatch'
    { _rcpQuotaUser   :: !(Maybe Text)
    , _rcpPrettyPrint :: !Bool
    , _rcpUserIP      :: !(Maybe Text)
    , _rcpPayload     :: !RasterCollection
    , _rcpKey         :: !(Maybe AuthKey)
    , _rcpId          :: !Text
    , _rcpOAuthToken  :: !(Maybe OAuthToken)
    , _rcpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpQuotaUser'
--
-- * 'rcpPrettyPrint'
--
-- * 'rcpUserIP'
--
-- * 'rcpPayload'
--
-- * 'rcpKey'
--
-- * 'rcpId'
--
-- * 'rcpOAuthToken'
--
-- * 'rcpFields'
rasterCollectionsPatch'
    :: RasterCollection -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RasterCollectionsPatch'
rasterCollectionsPatch' pRcpPayload_ pRcpId_ =
    RasterCollectionsPatch'
    { _rcpQuotaUser = Nothing
    , _rcpPrettyPrint = True
    , _rcpUserIP = Nothing
    , _rcpPayload = pRcpPayload_
    , _rcpKey = Nothing
    , _rcpId = pRcpId_
    , _rcpOAuthToken = Nothing
    , _rcpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpQuotaUser :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpQuotaUser
  = lens _rcpQuotaUser (\ s a -> s{_rcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpPrettyPrint :: Lens' RasterCollectionsPatch' Bool
rcpPrettyPrint
  = lens _rcpPrettyPrint
      (\ s a -> s{_rcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpUserIP :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpUserIP
  = lens _rcpUserIP (\ s a -> s{_rcpUserIP = a})

-- | Multipart request metadata.
rcpPayload :: Lens' RasterCollectionsPatch' RasterCollection
rcpPayload
  = lens _rcpPayload (\ s a -> s{_rcpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpKey :: Lens' RasterCollectionsPatch' (Maybe AuthKey)
rcpKey = lens _rcpKey (\ s a -> s{_rcpKey = a})

-- | The ID of the raster collection.
rcpId :: Lens' RasterCollectionsPatch' Text
rcpId = lens _rcpId (\ s a -> s{_rcpId = a})

-- | OAuth 2.0 token for the current user.
rcpOAuthToken :: Lens' RasterCollectionsPatch' (Maybe OAuthToken)
rcpOAuthToken
  = lens _rcpOAuthToken
      (\ s a -> s{_rcpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpFields :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpFields
  = lens _rcpFields (\ s a -> s{_rcpFields = a})

instance GoogleAuth RasterCollectionsPatch' where
        _AuthKey = rcpKey . _Just
        _AuthToken = rcpOAuthToken . _Just

instance GoogleRequest RasterCollectionsPatch' where
        type Rs RasterCollectionsPatch' = ()
        request = requestWith mapsEngineRequest
        requestWith rq RasterCollectionsPatch'{..}
          = go _rcpId _rcpQuotaUser (Just _rcpPrettyPrint)
              _rcpUserIP
              _rcpFields
              _rcpKey
              _rcpOAuthToken
              (Just AltJSON)
              _rcpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy RasterCollectionsPatchResource)
                      rq
