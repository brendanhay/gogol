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
-- Module      : Network.Google.Resource.MapsEngine.Layers.UnPublish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unpublish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersUnPublish@.
module Network.Google.Resource.MapsEngine.Layers.UnPublish
    (
    -- * REST Resource
      LayersUnPublishResource

    -- * Creating a Request
    , layersUnPublish'
    , LayersUnPublish'

    -- * Request Lenses
    , lupQuotaUser
    , lupPrettyPrint
    , lupUserIP
    , lupKey
    , lupId
    , lupOAuthToken
    , lupFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersUnPublish@ which the
-- 'LayersUnPublish'' request conforms to.
type LayersUnPublishResource =
     "layers" :>
       Capture "id" Text :>
         "unpublish" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] PublishResponse

-- | Unpublish a layer asset.
--
-- /See:/ 'layersUnPublish'' smart constructor.
data LayersUnPublish' = LayersUnPublish'
    { _lupQuotaUser   :: !(Maybe Text)
    , _lupPrettyPrint :: !Bool
    , _lupUserIP      :: !(Maybe Text)
    , _lupKey         :: !(Maybe AuthKey)
    , _lupId          :: !Text
    , _lupOAuthToken  :: !(Maybe OAuthToken)
    , _lupFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersUnPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lupQuotaUser'
--
-- * 'lupPrettyPrint'
--
-- * 'lupUserIP'
--
-- * 'lupKey'
--
-- * 'lupId'
--
-- * 'lupOAuthToken'
--
-- * 'lupFields'
layersUnPublish'
    :: Text -- ^ 'id'
    -> LayersUnPublish'
layersUnPublish' pLupId_ =
    LayersUnPublish'
    { _lupQuotaUser = Nothing
    , _lupPrettyPrint = True
    , _lupUserIP = Nothing
    , _lupKey = Nothing
    , _lupId = pLupId_
    , _lupOAuthToken = Nothing
    , _lupFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lupQuotaUser :: Lens' LayersUnPublish' (Maybe Text)
lupQuotaUser
  = lens _lupQuotaUser (\ s a -> s{_lupQuotaUser = a})

-- | Returns response with indentations and line breaks.
lupPrettyPrint :: Lens' LayersUnPublish' Bool
lupPrettyPrint
  = lens _lupPrettyPrint
      (\ s a -> s{_lupPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lupUserIP :: Lens' LayersUnPublish' (Maybe Text)
lupUserIP
  = lens _lupUserIP (\ s a -> s{_lupUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lupKey :: Lens' LayersUnPublish' (Maybe AuthKey)
lupKey = lens _lupKey (\ s a -> s{_lupKey = a})

-- | The ID of the layer.
lupId :: Lens' LayersUnPublish' Text
lupId = lens _lupId (\ s a -> s{_lupId = a})

-- | OAuth 2.0 token for the current user.
lupOAuthToken :: Lens' LayersUnPublish' (Maybe OAuthToken)
lupOAuthToken
  = lens _lupOAuthToken
      (\ s a -> s{_lupOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lupFields :: Lens' LayersUnPublish' (Maybe Text)
lupFields
  = lens _lupFields (\ s a -> s{_lupFields = a})

instance GoogleAuth LayersUnPublish' where
        authKey = lupKey . _Just
        authToken = lupOAuthToken . _Just

instance GoogleRequest LayersUnPublish' where
        type Rs LayersUnPublish' = PublishResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u LayersUnPublish'{..}
          = go _lupId _lupQuotaUser (Just _lupPrettyPrint)
              _lupUserIP
              _lupFields
              _lupKey
              _lupOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersUnPublishResource)
                      r
                      u
