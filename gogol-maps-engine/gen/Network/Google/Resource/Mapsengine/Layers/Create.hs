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
-- Module      : Network.Google.Resource.Mapsengine.Layers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersCreate@.
module Network.Google.Resource.Mapsengine.Layers.Create
    (
    -- * REST Resource
      LayersCreateResource

    -- * Creating a Request
    , layersCreate'
    , LayersCreate'

    -- * Request Lenses
    , lcQuotaUser
    , lcPrettyPrint
    , lcUserIp
    , lcProcess
    , lcKey
    , lcOauthToken
    , lcFields
    , lcAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersCreate@ which the
-- 'LayersCreate'' request conforms to.
type LayersCreateResource =
     "layers" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "process" Bool :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Layer

-- | Create a layer asset.
--
-- /See:/ 'layersCreate'' smart constructor.
data LayersCreate' = LayersCreate'
    { _lcQuotaUser   :: !(Maybe Text)
    , _lcPrettyPrint :: !Bool
    , _lcUserIp      :: !(Maybe Text)
    , _lcProcess     :: !(Maybe Bool)
    , _lcKey         :: !(Maybe Text)
    , _lcOauthToken  :: !(Maybe Text)
    , _lcFields      :: !(Maybe Text)
    , _lcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcQuotaUser'
--
-- * 'lcPrettyPrint'
--
-- * 'lcUserIp'
--
-- * 'lcProcess'
--
-- * 'lcKey'
--
-- * 'lcOauthToken'
--
-- * 'lcFields'
--
-- * 'lcAlt'
layersCreate'
    :: LayersCreate'
layersCreate' =
    LayersCreate'
    { _lcQuotaUser = Nothing
    , _lcPrettyPrint = True
    , _lcUserIp = Nothing
    , _lcProcess = Nothing
    , _lcKey = Nothing
    , _lcOauthToken = Nothing
    , _lcFields = Nothing
    , _lcAlt = JSON
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
lcUserIp :: Lens' LayersCreate' (Maybe Text)
lcUserIp = lens _lcUserIp (\ s a -> s{_lcUserIp = a})

-- | Whether to queue the created layer for processing.
lcProcess :: Lens' LayersCreate' (Maybe Bool)
lcProcess
  = lens _lcProcess (\ s a -> s{_lcProcess = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lcKey :: Lens' LayersCreate' (Maybe Text)
lcKey = lens _lcKey (\ s a -> s{_lcKey = a})

-- | OAuth 2.0 token for the current user.
lcOauthToken :: Lens' LayersCreate' (Maybe Text)
lcOauthToken
  = lens _lcOauthToken (\ s a -> s{_lcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lcFields :: Lens' LayersCreate' (Maybe Text)
lcFields = lens _lcFields (\ s a -> s{_lcFields = a})

-- | Data format for the response.
lcAlt :: Lens' LayersCreate' Alt
lcAlt = lens _lcAlt (\ s a -> s{_lcAlt = a})

instance GoogleRequest LayersCreate' where
        type Rs LayersCreate' = Layer
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersCreate'{..}
          = go _lcQuotaUser (Just _lcPrettyPrint) _lcUserIp
              _lcProcess
              _lcKey
              _lcOauthToken
              _lcFields
              (Just _lcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersCreateResource)
                      r
                      u
