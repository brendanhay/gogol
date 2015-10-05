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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersCreate@.
module Network.Google.Resource.MapsEngine.Layers.Create
    (
    -- * REST Resource
      LayersCreateResource

    -- * Creating a Request
    , layersCreate'
    , LayersCreate'

    -- * Request Lenses
    , lcQuotaUser
    , lcPrettyPrint
    , lcUserIP
    , lcProcess
    , lcPayload
    , lcKey
    , lcOAuthToken
    , lcFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersCreate@ which the
-- 'LayersCreate'' request conforms to.
type LayersCreateResource =
     "layers" :>
       QueryParam "process" Bool :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Layer :> Post '[JSON] Layer

-- | Create a layer asset.
--
-- /See:/ 'layersCreate'' smart constructor.
data LayersCreate' = LayersCreate'
    { _lcQuotaUser   :: !(Maybe Text)
    , _lcPrettyPrint :: !Bool
    , _lcUserIP      :: !(Maybe Text)
    , _lcProcess     :: !(Maybe Bool)
    , _lcPayload     :: !Layer
    , _lcKey         :: !(Maybe AuthKey)
    , _lcOAuthToken  :: !(Maybe OAuthToken)
    , _lcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcQuotaUser'
--
-- * 'lcPrettyPrint'
--
-- * 'lcUserIP'
--
-- * 'lcProcess'
--
-- * 'lcPayload'
--
-- * 'lcKey'
--
-- * 'lcOAuthToken'
--
-- * 'lcFields'
layersCreate'
    :: Layer -- ^ 'payload'
    -> LayersCreate'
layersCreate' pLcPayload_ =
    LayersCreate'
    { _lcQuotaUser = Nothing
    , _lcPrettyPrint = True
    , _lcUserIP = Nothing
    , _lcProcess = Nothing
    , _lcPayload = pLcPayload_
    , _lcKey = Nothing
    , _lcOAuthToken = Nothing
    , _lcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lcQuotaUser :: Lens' LayersCreate' (Maybe Text)
lcQuotaUser
  = lens _lcQuotaUser (\ s a -> s{_lcQuotaUser = a})

-- | Returns response with indentations and line breaks.
lcPrettyPrint :: Lens' LayersCreate' Bool
lcPrettyPrint
  = lens _lcPrettyPrint
      (\ s a -> s{_lcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lcUserIP :: Lens' LayersCreate' (Maybe Text)
lcUserIP = lens _lcUserIP (\ s a -> s{_lcUserIP = a})

-- | Whether to queue the created layer for processing.
lcProcess :: Lens' LayersCreate' (Maybe Bool)
lcProcess
  = lens _lcProcess (\ s a -> s{_lcProcess = a})

-- | Multipart request metadata.
lcPayload :: Lens' LayersCreate' Layer
lcPayload
  = lens _lcPayload (\ s a -> s{_lcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcKey :: Lens' LayersCreate' (Maybe AuthKey)
lcKey = lens _lcKey (\ s a -> s{_lcKey = a})

-- | OAuth 2.0 token for the current user.
lcOAuthToken :: Lens' LayersCreate' (Maybe OAuthToken)
lcOAuthToken
  = lens _lcOAuthToken (\ s a -> s{_lcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcFields :: Lens' LayersCreate' (Maybe Text)
lcFields = lens _lcFields (\ s a -> s{_lcFields = a})

instance GoogleAuth LayersCreate' where
        authKey = lcKey . _Just
        authToken = lcOAuthToken . _Just

instance GoogleRequest LayersCreate' where
        type Rs LayersCreate' = Layer
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u LayersCreate'{..}
          = go _lcProcess _lcQuotaUser (Just _lcPrettyPrint)
              _lcUserIP
              _lcFields
              _lcKey
              _lcOAuthToken
              (Just AltJSON)
              _lcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersCreateResource)
                      r
                      u
