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
-- Module      : Network.Google.Resource.MapsEngine.Layers.CancelProcessing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancel processing on a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersCancelProcessing@.
module Network.Google.Resource.MapsEngine.Layers.CancelProcessing
    (
    -- * REST Resource
      LayersCancelProcessingResource

    -- * Creating a Request
    , layersCancelProcessing'
    , LayersCancelProcessing'

    -- * Request Lenses
    , lcpQuotaUser
    , lcpPrettyPrint
    , lcpUserIP
    , lcpKey
    , lcpId
    , lcpOAuthToken
    , lcpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersCancelProcessing@ which the
-- 'LayersCancelProcessing'' request conforms to.
type LayersCancelProcessingResource =
     "layers" :>
       Capture "id" Text :>
         "cancelProcessing" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] ProcessResponse

-- | Cancel processing on a layer asset.
--
-- /See:/ 'layersCancelProcessing'' smart constructor.
data LayersCancelProcessing' = LayersCancelProcessing'
    { _lcpQuotaUser   :: !(Maybe Text)
    , _lcpPrettyPrint :: !Bool
    , _lcpUserIP      :: !(Maybe Text)
    , _lcpKey         :: !(Maybe AuthKey)
    , _lcpId          :: !Text
    , _lcpOAuthToken  :: !(Maybe OAuthToken)
    , _lcpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersCancelProcessing'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpQuotaUser'
--
-- * 'lcpPrettyPrint'
--
-- * 'lcpUserIP'
--
-- * 'lcpKey'
--
-- * 'lcpId'
--
-- * 'lcpOAuthToken'
--
-- * 'lcpFields'
layersCancelProcessing'
    :: Text -- ^ 'id'
    -> LayersCancelProcessing'
layersCancelProcessing' pLcpId_ =
    LayersCancelProcessing'
    { _lcpQuotaUser = Nothing
    , _lcpPrettyPrint = True
    , _lcpUserIP = Nothing
    , _lcpKey = Nothing
    , _lcpId = pLcpId_
    , _lcpOAuthToken = Nothing
    , _lcpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lcpQuotaUser :: Lens' LayersCancelProcessing' (Maybe Text)
lcpQuotaUser
  = lens _lcpQuotaUser (\ s a -> s{_lcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
lcpPrettyPrint :: Lens' LayersCancelProcessing' Bool
lcpPrettyPrint
  = lens _lcpPrettyPrint
      (\ s a -> s{_lcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lcpUserIP :: Lens' LayersCancelProcessing' (Maybe Text)
lcpUserIP
  = lens _lcpUserIP (\ s a -> s{_lcpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcpKey :: Lens' LayersCancelProcessing' (Maybe AuthKey)
lcpKey = lens _lcpKey (\ s a -> s{_lcpKey = a})

-- | The ID of the layer.
lcpId :: Lens' LayersCancelProcessing' Text
lcpId = lens _lcpId (\ s a -> s{_lcpId = a})

-- | OAuth 2.0 token for the current user.
lcpOAuthToken :: Lens' LayersCancelProcessing' (Maybe OAuthToken)
lcpOAuthToken
  = lens _lcpOAuthToken
      (\ s a -> s{_lcpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcpFields :: Lens' LayersCancelProcessing' (Maybe Text)
lcpFields
  = lens _lcpFields (\ s a -> s{_lcpFields = a})

instance GoogleAuth LayersCancelProcessing' where
        _AuthKey = lcpKey . _Just
        _AuthToken = lcpOAuthToken . _Just

instance GoogleRequest LayersCancelProcessing' where
        type Rs LayersCancelProcessing' = ProcessResponse
        request = requestWith mapsEngineRequest
        requestWith rq LayersCancelProcessing'{..}
          = go _lcpId _lcpQuotaUser (Just _lcpPrettyPrint)
              _lcpUserIP
              _lcpFields
              _lcpKey
              _lcpOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LayersCancelProcessingResource)
                      rq
