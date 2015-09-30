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
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.CancelProcessing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancel processing on a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsCancelProcessing@.
module Network.Google.Resource.Mapsengine.RasterCollections.CancelProcessing
    (
    -- * REST Resource
      RasterCollectionsCancelProcessingResource

    -- * Creating a Request
    , rasterCollectionsCancelProcessing'
    , RasterCollectionsCancelProcessing'

    -- * Request Lenses
    , rccpQuotaUser
    , rccpPrettyPrint
    , rccpUserIp
    , rccpKey
    , rccpId
    , rccpOauthToken
    , rccpFields
    , rccpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsCancelProcessing@ which the
-- 'RasterCollectionsCancelProcessing'' request conforms to.
type RasterCollectionsCancelProcessingResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "cancelProcessing" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ProcessResponse

-- | Cancel processing on a raster collection asset.
--
-- /See:/ 'rasterCollectionsCancelProcessing'' smart constructor.
data RasterCollectionsCancelProcessing' = RasterCollectionsCancelProcessing'
    { _rccpQuotaUser   :: !(Maybe Text)
    , _rccpPrettyPrint :: !Bool
    , _rccpUserIp      :: !(Maybe Text)
    , _rccpKey         :: !(Maybe Text)
    , _rccpId          :: !Text
    , _rccpOauthToken  :: !(Maybe Text)
    , _rccpFields      :: !(Maybe Text)
    , _rccpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsCancelProcessing'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccpQuotaUser'
--
-- * 'rccpPrettyPrint'
--
-- * 'rccpUserIp'
--
-- * 'rccpKey'
--
-- * 'rccpId'
--
-- * 'rccpOauthToken'
--
-- * 'rccpFields'
--
-- * 'rccpAlt'
rasterCollectionsCancelProcessing'
    :: Text -- ^ 'id'
    -> RasterCollectionsCancelProcessing'
rasterCollectionsCancelProcessing' pRccpId_ =
    RasterCollectionsCancelProcessing'
    { _rccpQuotaUser = Nothing
    , _rccpPrettyPrint = True
    , _rccpUserIp = Nothing
    , _rccpKey = Nothing
    , _rccpId = pRccpId_
    , _rccpOauthToken = Nothing
    , _rccpFields = Nothing
    , _rccpAlt = JSON
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
rccpUserIp :: Lens' RasterCollectionsCancelProcessing' (Maybe Text)
rccpUserIp
  = lens _rccpUserIp (\ s a -> s{_rccpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rccpKey :: Lens' RasterCollectionsCancelProcessing' (Maybe Text)
rccpKey = lens _rccpKey (\ s a -> s{_rccpKey = a})

-- | The ID of the raster collection.
rccpId :: Lens' RasterCollectionsCancelProcessing' Text
rccpId = lens _rccpId (\ s a -> s{_rccpId = a})

-- | OAuth 2.0 token for the current user.
rccpOauthToken :: Lens' RasterCollectionsCancelProcessing' (Maybe Text)
rccpOauthToken
  = lens _rccpOauthToken
      (\ s a -> s{_rccpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rccpFields :: Lens' RasterCollectionsCancelProcessing' (Maybe Text)
rccpFields
  = lens _rccpFields (\ s a -> s{_rccpFields = a})

-- | Data format for the response.
rccpAlt :: Lens' RasterCollectionsCancelProcessing' Alt
rccpAlt = lens _rccpAlt (\ s a -> s{_rccpAlt = a})

instance GoogleRequest
         RasterCollectionsCancelProcessing' where
        type Rs RasterCollectionsCancelProcessing' =
             ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsCancelProcessing'{..}
          = go _rccpQuotaUser (Just _rccpPrettyPrint)
              _rccpUserIp
              _rccpKey
              _rccpId
              _rccpOauthToken
              _rccpFields
              (Just _rccpAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsCancelProcessingResource)
                      r
                      u
