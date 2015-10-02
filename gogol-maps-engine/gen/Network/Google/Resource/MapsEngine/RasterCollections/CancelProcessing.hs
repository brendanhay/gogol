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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.CancelProcessing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancel processing on a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsCancelProcessing@.
module Network.Google.Resource.MapsEngine.RasterCollections.CancelProcessing
    (
    -- * REST Resource
      RasterCollectionsCancelProcessingResource

    -- * Creating a Request
    , rasterCollectionsCancelProcessing'
    , RasterCollectionsCancelProcessing'

    -- * Request Lenses
    , rccpQuotaUser
    , rccpPrettyPrint
    , rccpUserIP
    , rccpKey
    , rccpId
    , rccpOAuthToken
    , rccpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsCancelProcessing@ which the
-- 'RasterCollectionsCancelProcessing'' request conforms to.
type RasterCollectionsCancelProcessingResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "cancelProcessing" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] ProcessResponse

-- | Cancel processing on a raster collection asset.
--
-- /See:/ 'rasterCollectionsCancelProcessing'' smart constructor.
data RasterCollectionsCancelProcessing' = RasterCollectionsCancelProcessing'
    { _rccpQuotaUser   :: !(Maybe Text)
    , _rccpPrettyPrint :: !Bool
    , _rccpUserIP      :: !(Maybe Text)
    , _rccpKey         :: !(Maybe Key)
    , _rccpId          :: !Text
    , _rccpOAuthToken  :: !(Maybe OAuthToken)
    , _rccpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsCancelProcessing'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccpQuotaUser'
--
-- * 'rccpPrettyPrint'
--
-- * 'rccpUserIP'
--
-- * 'rccpKey'
--
-- * 'rccpId'
--
-- * 'rccpOAuthToken'
--
-- * 'rccpFields'
rasterCollectionsCancelProcessing'
    :: Text -- ^ 'id'
    -> RasterCollectionsCancelProcessing'
rasterCollectionsCancelProcessing' pRccpId_ =
    RasterCollectionsCancelProcessing'
    { _rccpQuotaUser = Nothing
    , _rccpPrettyPrint = True
    , _rccpUserIP = Nothing
    , _rccpKey = Nothing
    , _rccpId = pRccpId_
    , _rccpOAuthToken = Nothing
    , _rccpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rccpQuotaUser :: Lens' RasterCollectionsCancelProcessing' (Maybe Text)
rccpQuotaUser
  = lens _rccpQuotaUser
      (\ s a -> s{_rccpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rccpPrettyPrint :: Lens' RasterCollectionsCancelProcessing' Bool
rccpPrettyPrint
  = lens _rccpPrettyPrint
      (\ s a -> s{_rccpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rccpUserIP :: Lens' RasterCollectionsCancelProcessing' (Maybe Text)
rccpUserIP
  = lens _rccpUserIP (\ s a -> s{_rccpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rccpKey :: Lens' RasterCollectionsCancelProcessing' (Maybe Key)
rccpKey = lens _rccpKey (\ s a -> s{_rccpKey = a})

-- | The ID of the raster collection.
rccpId :: Lens' RasterCollectionsCancelProcessing' Text
rccpId = lens _rccpId (\ s a -> s{_rccpId = a})

-- | OAuth 2.0 token for the current user.
rccpOAuthToken :: Lens' RasterCollectionsCancelProcessing' (Maybe OAuthToken)
rccpOAuthToken
  = lens _rccpOAuthToken
      (\ s a -> s{_rccpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rccpFields :: Lens' RasterCollectionsCancelProcessing' (Maybe Text)
rccpFields
  = lens _rccpFields (\ s a -> s{_rccpFields = a})

instance GoogleAuth
         RasterCollectionsCancelProcessing' where
        authKey = rccpKey . _Just
        authToken = rccpOAuthToken . _Just

instance GoogleRequest
         RasterCollectionsCancelProcessing' where
        type Rs RasterCollectionsCancelProcessing' =
             ProcessResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          RasterCollectionsCancelProcessing'{..}
          = go _rccpId _rccpQuotaUser (Just _rccpPrettyPrint)
              _rccpUserIP
              _rccpFields
              _rccpKey
              _rccpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsCancelProcessingResource)
                      r
                      u
