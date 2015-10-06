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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPublish@.
module Network.Google.Resource.MapsEngine.Layers.Publish
    (
    -- * REST Resource
      LayersPublishResource

    -- * Creating a Request
    , layersPublish'
    , LayersPublish'

    -- * Request Lenses
    , lQuotaUser
    , lPrettyPrint
    , lForce
    , lUserIP
    , lKey
    , lId
    , lOAuthToken
    , lFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPublish@ which the
-- 'LayersPublish'' request conforms to.
type LayersPublishResource =
     "layers" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "force" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] PublishResponse

-- | Publish a layer asset.
--
-- /See:/ 'layersPublish'' smart constructor.
data LayersPublish' = LayersPublish'
    { _lQuotaUser   :: !(Maybe Text)
    , _lPrettyPrint :: !Bool
    , _lForce       :: !(Maybe Bool)
    , _lUserIP      :: !(Maybe Text)
    , _lKey         :: !(Maybe AuthKey)
    , _lId          :: !Text
    , _lOAuthToken  :: !(Maybe OAuthToken)
    , _lFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lQuotaUser'
--
-- * 'lPrettyPrint'
--
-- * 'lForce'
--
-- * 'lUserIP'
--
-- * 'lKey'
--
-- * 'lId'
--
-- * 'lOAuthToken'
--
-- * 'lFields'
layersPublish'
    :: Text -- ^ 'id'
    -> LayersPublish'
layersPublish' pLId_ =
    LayersPublish'
    { _lQuotaUser = Nothing
    , _lPrettyPrint = True
    , _lForce = Nothing
    , _lUserIP = Nothing
    , _lKey = Nothing
    , _lId = pLId_
    , _lOAuthToken = Nothing
    , _lFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lQuotaUser :: Lens' LayersPublish' (Maybe Text)
lQuotaUser
  = lens _lQuotaUser (\ s a -> s{_lQuotaUser = a})

-- | Returns response with indentations and line breaks.
lPrettyPrint :: Lens' LayersPublish' Bool
lPrettyPrint
  = lens _lPrettyPrint (\ s a -> s{_lPrettyPrint = a})

-- | If set to true, the API will allow publication of the layer even if
-- it\'s out of date. If not true, you\'ll need to reprocess any
-- out-of-date layer before publishing.
lForce :: Lens' LayersPublish' (Maybe Bool)
lForce = lens _lForce (\ s a -> s{_lForce = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lUserIP :: Lens' LayersPublish' (Maybe Text)
lUserIP = lens _lUserIP (\ s a -> s{_lUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lKey :: Lens' LayersPublish' (Maybe AuthKey)
lKey = lens _lKey (\ s a -> s{_lKey = a})

-- | The ID of the layer.
lId :: Lens' LayersPublish' Text
lId = lens _lId (\ s a -> s{_lId = a})

-- | OAuth 2.0 token for the current user.
lOAuthToken :: Lens' LayersPublish' (Maybe OAuthToken)
lOAuthToken
  = lens _lOAuthToken (\ s a -> s{_lOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lFields :: Lens' LayersPublish' (Maybe Text)
lFields = lens _lFields (\ s a -> s{_lFields = a})

instance GoogleAuth LayersPublish' where
        authKey = lKey . _Just
        authToken = lOAuthToken . _Just

instance GoogleRequest LayersPublish' where
        type Rs LayersPublish' = PublishResponse
        request = requestWith mapsEngineRequest
        requestWith rq LayersPublish'{..}
          = go _lId _lForce _lQuotaUser (Just _lPrettyPrint)
              _lUserIP
              _lFields
              _lKey
              _lOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy LayersPublishResource)
                      rq
