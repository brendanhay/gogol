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
-- Module      : Network.Google.Resource.Mapsengine.Layers.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersParentsList@.
module Network.Google.Resource.Mapsengine.Layers.Parents.List
    (
    -- * REST Resource
      LayersParentsListResource

    -- * Creating a Request
    , layersParentsList'
    , LayersParentsList'

    -- * Request Lenses
    , lplpQuotaUser
    , lplpPrettyPrint
    , lplpUserIp
    , lplpKey
    , lplpId
    , lplpPageToken
    , lplpOauthToken
    , lplpMaxResults
    , lplpFields
    , lplpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersParentsList@ which the
-- 'LayersParentsList'' request conforms to.
type LayersParentsListResource =
     "layers" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified layer.
--
-- /See:/ 'layersParentsList'' smart constructor.
data LayersParentsList' = LayersParentsList'
    { _lplpQuotaUser   :: !(Maybe Text)
    , _lplpPrettyPrint :: !Bool
    , _lplpUserIp      :: !(Maybe Text)
    , _lplpKey         :: !(Maybe Text)
    , _lplpId          :: !Text
    , _lplpPageToken   :: !(Maybe Text)
    , _lplpOauthToken  :: !(Maybe Text)
    , _lplpMaxResults  :: !(Maybe Word32)
    , _lplpFields      :: !(Maybe Text)
    , _lplpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplpQuotaUser'
--
-- * 'lplpPrettyPrint'
--
-- * 'lplpUserIp'
--
-- * 'lplpKey'
--
-- * 'lplpId'
--
-- * 'lplpPageToken'
--
-- * 'lplpOauthToken'
--
-- * 'lplpMaxResults'
--
-- * 'lplpFields'
--
-- * 'lplpAlt'
layersParentsList'
    :: Text -- ^ 'id'
    -> LayersParentsList'
layersParentsList' pLplpId_ =
    LayersParentsList'
    { _lplpQuotaUser = Nothing
    , _lplpPrettyPrint = True
    , _lplpUserIp = Nothing
    , _lplpKey = Nothing
    , _lplpId = pLplpId_
    , _lplpPageToken = Nothing
    , _lplpOauthToken = Nothing
    , _lplpMaxResults = Nothing
    , _lplpFields = Nothing
    , _lplpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lplpQuotaUser :: Lens' LayersParentsList' (Maybe Text)
lplpQuotaUser
  = lens _lplpQuotaUser
      (\ s a -> s{_lplpQuotaUser = a})

-- | Returns response with indentations and line breaks.
lplpPrettyPrint :: Lens' LayersParentsList' Bool
lplpPrettyPrint
  = lens _lplpPrettyPrint
      (\ s a -> s{_lplpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lplpUserIp :: Lens' LayersParentsList' (Maybe Text)
lplpUserIp
  = lens _lplpUserIp (\ s a -> s{_lplpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lplpKey :: Lens' LayersParentsList' (Maybe Text)
lplpKey = lens _lplpKey (\ s a -> s{_lplpKey = a})

-- | The ID of the layer whose parents will be listed.
lplpId :: Lens' LayersParentsList' Text
lplpId = lens _lplpId (\ s a -> s{_lplpId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
lplpPageToken :: Lens' LayersParentsList' (Maybe Text)
lplpPageToken
  = lens _lplpPageToken
      (\ s a -> s{_lplpPageToken = a})

-- | OAuth 2.0 token for the current user.
lplpOauthToken :: Lens' LayersParentsList' (Maybe Text)
lplpOauthToken
  = lens _lplpOauthToken
      (\ s a -> s{_lplpOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
lplpMaxResults :: Lens' LayersParentsList' (Maybe Word32)
lplpMaxResults
  = lens _lplpMaxResults
      (\ s a -> s{_lplpMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lplpFields :: Lens' LayersParentsList' (Maybe Text)
lplpFields
  = lens _lplpFields (\ s a -> s{_lplpFields = a})

-- | Data format for the response.
lplpAlt :: Lens' LayersParentsList' Alt
lplpAlt = lens _lplpAlt (\ s a -> s{_lplpAlt = a})

instance GoogleRequest LayersParentsList' where
        type Rs LayersParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersParentsList'{..}
          = go _lplpQuotaUser (Just _lplpPrettyPrint)
              _lplpUserIp
              _lplpKey
              _lplpId
              _lplpPageToken
              _lplpOauthToken
              _lplpMaxResults
              _lplpFields
              (Just _lplpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersParentsListResource)
                      r
                      u
