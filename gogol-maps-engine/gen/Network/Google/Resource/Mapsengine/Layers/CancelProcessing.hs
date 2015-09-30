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
-- Module      : Network.Google.Resource.Mapsengine.Layers.CancelProcessing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancel processing on a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersCancelProcessing@.
module Network.Google.Resource.Mapsengine.Layers.CancelProcessing
    (
    -- * REST Resource
      LayersCancelProcessingResource

    -- * Creating a Request
    , layersCancelProcessing'
    , LayersCancelProcessing'

    -- * Request Lenses
    , lcpQuotaUser
    , lcpPrettyPrint
    , lcpUserIp
    , lcpKey
    , lcpId
    , lcpOauthToken
    , lcpFields
    , lcpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersCancelProcessing@ which the
-- 'LayersCancelProcessing'' request conforms to.
type LayersCancelProcessingResource =
     "layers" :>
       Capture "id" Text :>
         "cancelProcessing" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ProcessResponse

-- | Cancel processing on a layer asset.
--
-- /See:/ 'layersCancelProcessing'' smart constructor.
data LayersCancelProcessing' = LayersCancelProcessing'
    { _lcpQuotaUser   :: !(Maybe Text)
    , _lcpPrettyPrint :: !Bool
    , _lcpUserIp      :: !(Maybe Text)
    , _lcpKey         :: !(Maybe Text)
    , _lcpId          :: !Text
    , _lcpOauthToken  :: !(Maybe Text)
    , _lcpFields      :: !(Maybe Text)
    , _lcpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersCancelProcessing'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpQuotaUser'
--
-- * 'lcpPrettyPrint'
--
-- * 'lcpUserIp'
--
-- * 'lcpKey'
--
-- * 'lcpId'
--
-- * 'lcpOauthToken'
--
-- * 'lcpFields'
--
-- * 'lcpAlt'
layersCancelProcessing'
    :: Text -- ^ 'id'
    -> LayersCancelProcessing'
layersCancelProcessing' pLcpId_ =
    LayersCancelProcessing'
    { _lcpQuotaUser = Nothing
    , _lcpPrettyPrint = True
    , _lcpUserIp = Nothing
    , _lcpKey = Nothing
    , _lcpId = pLcpId_
    , _lcpOauthToken = Nothing
    , _lcpFields = Nothing
    , _lcpAlt = JSON
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
lcpUserIp :: Lens' LayersCancelProcessing' (Maybe Text)
lcpUserIp
  = lens _lcpUserIp (\ s a -> s{_lcpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcpKey :: Lens' LayersCancelProcessing' (Maybe Text)
lcpKey = lens _lcpKey (\ s a -> s{_lcpKey = a})

-- | The ID of the layer.
lcpId :: Lens' LayersCancelProcessing' Text
lcpId = lens _lcpId (\ s a -> s{_lcpId = a})

-- | OAuth 2.0 token for the current user.
lcpOauthToken :: Lens' LayersCancelProcessing' (Maybe Text)
lcpOauthToken
  = lens _lcpOauthToken
      (\ s a -> s{_lcpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcpFields :: Lens' LayersCancelProcessing' (Maybe Text)
lcpFields
  = lens _lcpFields (\ s a -> s{_lcpFields = a})

-- | Data format for the response.
lcpAlt :: Lens' LayersCancelProcessing' Alt
lcpAlt = lens _lcpAlt (\ s a -> s{_lcpAlt = a})

instance GoogleRequest LayersCancelProcessing' where
        type Rs LayersCancelProcessing' = ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersCancelProcessing'{..}
          = go _lcpQuotaUser (Just _lcpPrettyPrint) _lcpUserIp
              _lcpKey
              _lcpId
              _lcpOauthToken
              _lcpFields
              (Just _lcpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersCancelProcessingResource)
                      r
                      u
