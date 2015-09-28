{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Layers.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.parents.list@.
module Network.Google.API.Mapsengine.Layers.Parents.List
    (
    -- * REST Resource
      LayersParentsListAPI

    -- * Creating a Request
    , layersParentsList'
    , LayersParentsList'

    -- * Request Lenses
    , lplQuotaUser
    , lplPrettyPrint
    , lplUserIp
    , lplKey
    , lplId
    , lplPageToken
    , lplOauthToken
    , lplMaxResults
    , lplFields
    , lplAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.layers.parents.list which the
-- 'LayersParentsList'' request conforms to.
type LayersParentsListAPI =
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
    { _lplQuotaUser   :: !(Maybe Text)
    , _lplPrettyPrint :: !Bool
    , _lplUserIp      :: !(Maybe Text)
    , _lplKey         :: !(Maybe Text)
    , _lplId          :: !Text
    , _lplPageToken   :: !(Maybe Text)
    , _lplOauthToken  :: !(Maybe Text)
    , _lplMaxResults  :: !(Maybe Word32)
    , _lplFields      :: !(Maybe Text)
    , _lplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplQuotaUser'
--
-- * 'lplPrettyPrint'
--
-- * 'lplUserIp'
--
-- * 'lplKey'
--
-- * 'lplId'
--
-- * 'lplPageToken'
--
-- * 'lplOauthToken'
--
-- * 'lplMaxResults'
--
-- * 'lplFields'
--
-- * 'lplAlt'
layersParentsList'
    :: Text -- ^ 'id'
    -> LayersParentsList'
layersParentsList' pLplId_ =
    LayersParentsList'
    { _lplQuotaUser = Nothing
    , _lplPrettyPrint = True
    , _lplUserIp = Nothing
    , _lplKey = Nothing
    , _lplId = pLplId_
    , _lplPageToken = Nothing
    , _lplOauthToken = Nothing
    , _lplMaxResults = Nothing
    , _lplFields = Nothing
    , _lplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lplQuotaUser :: Lens' LayersParentsList' (Maybe Text)
lplQuotaUser
  = lens _lplQuotaUser (\ s a -> s{_lplQuotaUser = a})

-- | Returns response with indentations and line breaks.
lplPrettyPrint :: Lens' LayersParentsList' Bool
lplPrettyPrint
  = lens _lplPrettyPrint
      (\ s a -> s{_lplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lplUserIp :: Lens' LayersParentsList' (Maybe Text)
lplUserIp
  = lens _lplUserIp (\ s a -> s{_lplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lplKey :: Lens' LayersParentsList' (Maybe Text)
lplKey = lens _lplKey (\ s a -> s{_lplKey = a})

-- | The ID of the layer whose parents will be listed.
lplId :: Lens' LayersParentsList' Text
lplId = lens _lplId (\ s a -> s{_lplId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
lplPageToken :: Lens' LayersParentsList' (Maybe Text)
lplPageToken
  = lens _lplPageToken (\ s a -> s{_lplPageToken = a})

-- | OAuth 2.0 token for the current user.
lplOauthToken :: Lens' LayersParentsList' (Maybe Text)
lplOauthToken
  = lens _lplOauthToken
      (\ s a -> s{_lplOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
lplMaxResults :: Lens' LayersParentsList' (Maybe Word32)
lplMaxResults
  = lens _lplMaxResults
      (\ s a -> s{_lplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lplFields :: Lens' LayersParentsList' (Maybe Text)
lplFields
  = lens _lplFields (\ s a -> s{_lplFields = a})

-- | Data format for the response.
lplAlt :: Lens' LayersParentsList' Alt
lplAlt = lens _lplAlt (\ s a -> s{_lplAlt = a})

instance GoogleRequest LayersParentsList' where
        type Rs LayersParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersParentsList'{..}
          = go _lplQuotaUser (Just _lplPrettyPrint) _lplUserIp
              _lplKey
              _lplId
              _lplPageToken
              _lplOauthToken
              _lplMaxResults
              _lplFields
              (Just _lplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersParentsListAPI)
                      r
                      u
