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
-- Module      : Network.Google.Resource.Mapsengine.Layers.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersPublish@.
module Network.Google.Resource.Mapsengine.Layers.Publish
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
    , lUserIp
    , lKey
    , lId
    , lOauthToken
    , lFields
    , lAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersPublish@ which the
-- 'LayersPublish'' request conforms to.
type LayersPublishResource =
     "layers" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "force" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] PublishResponse

-- | Publish a layer asset.
--
-- /See:/ 'layersPublish'' smart constructor.
data LayersPublish' = LayersPublish'
    { _lQuotaUser   :: !(Maybe Text)
    , _lPrettyPrint :: !Bool
    , _lForce       :: !(Maybe Bool)
    , _lUserIp      :: !(Maybe Text)
    , _lKey         :: !(Maybe Text)
    , _lId          :: !Text
    , _lOauthToken  :: !(Maybe Text)
    , _lFields      :: !(Maybe Text)
    , _lAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'lUserIp'
--
-- * 'lKey'
--
-- * 'lId'
--
-- * 'lOauthToken'
--
-- * 'lFields'
--
-- * 'lAlt'
layersPublish'
    :: Text -- ^ 'id'
    -> LayersPublish'
layersPublish' pLId_ =
    LayersPublish'
    { _lQuotaUser = Nothing
    , _lPrettyPrint = True
    , _lForce = Nothing
    , _lUserIp = Nothing
    , _lKey = Nothing
    , _lId = pLId_
    , _lOauthToken = Nothing
    , _lFields = Nothing
    , _lAlt = JSON
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
lUserIp :: Lens' LayersPublish' (Maybe Text)
lUserIp = lens _lUserIp (\ s a -> s{_lUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lKey :: Lens' LayersPublish' (Maybe Text)
lKey = lens _lKey (\ s a -> s{_lKey = a})

-- | The ID of the layer.
lId :: Lens' LayersPublish' Text
lId = lens _lId (\ s a -> s{_lId = a})

-- | OAuth 2.0 token for the current user.
lOauthToken :: Lens' LayersPublish' (Maybe Text)
lOauthToken
  = lens _lOauthToken (\ s a -> s{_lOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lFields :: Lens' LayersPublish' (Maybe Text)
lFields = lens _lFields (\ s a -> s{_lFields = a})

-- | Data format for the response.
lAlt :: Lens' LayersPublish' Alt
lAlt = lens _lAlt (\ s a -> s{_lAlt = a})

instance GoogleRequest LayersPublish' where
        type Rs LayersPublish' = PublishResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersPublish'{..}
          = go _lQuotaUser (Just _lPrettyPrint) _lForce
              _lUserIp
              _lKey
              _lId
              _lOauthToken
              _lFields
              (Just _lAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersPublishResource)
                      r
                      u
