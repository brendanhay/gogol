{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.RasterCollections.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.parents.list@.
module Network.Google.API.Mapsengine.RasterCollections.Parents.List
    (
    -- * REST Resource
      RasterCollectionsParentsListAPI

    -- * Creating a Request
    , rasterCollectionsParentsList'
    , RasterCollectionsParentsList'

    -- * Request Lenses
    , rasQuotaUser
    , rasPrettyPrint
    , rasUserIp
    , rasKey
    , rasId
    , rasPageToken
    , rasOauthToken
    , rasMaxResults
    , rasFields
    , rasAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasterCollections.parents.list which the
-- 'RasterCollectionsParentsList'' request conforms to.
type RasterCollectionsParentsListAPI =
     "rasterCollections" :>
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

-- | Return all parent ids of the specified raster collection.
--
-- /See:/ 'rasterCollectionsParentsList'' smart constructor.
data RasterCollectionsParentsList' = RasterCollectionsParentsList'
    { _rasQuotaUser   :: !(Maybe Text)
    , _rasPrettyPrint :: !Bool
    , _rasUserIp      :: !(Maybe Text)
    , _rasKey         :: !(Maybe Text)
    , _rasId          :: !Text
    , _rasPageToken   :: !(Maybe Text)
    , _rasOauthToken  :: !(Maybe Text)
    , _rasMaxResults  :: !(Maybe Word32)
    , _rasFields      :: !(Maybe Text)
    , _rasAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rasQuotaUser'
--
-- * 'rasPrettyPrint'
--
-- * 'rasUserIp'
--
-- * 'rasKey'
--
-- * 'rasId'
--
-- * 'rasPageToken'
--
-- * 'rasOauthToken'
--
-- * 'rasMaxResults'
--
-- * 'rasFields'
--
-- * 'rasAlt'
rasterCollectionsParentsList'
    :: Text -- ^ 'id'
    -> RasterCollectionsParentsList'
rasterCollectionsParentsList' pRasId_ =
    RasterCollectionsParentsList'
    { _rasQuotaUser = Nothing
    , _rasPrettyPrint = True
    , _rasUserIp = Nothing
    , _rasKey = Nothing
    , _rasId = pRasId_
    , _rasPageToken = Nothing
    , _rasOauthToken = Nothing
    , _rasMaxResults = Nothing
    , _rasFields = Nothing
    , _rasAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rasQuotaUser :: Lens' RasterCollectionsParentsList' (Maybe Text)
rasQuotaUser
  = lens _rasQuotaUser (\ s a -> s{_rasQuotaUser = a})

-- | Returns response with indentations and line breaks.
rasPrettyPrint :: Lens' RasterCollectionsParentsList' Bool
rasPrettyPrint
  = lens _rasPrettyPrint
      (\ s a -> s{_rasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rasUserIp :: Lens' RasterCollectionsParentsList' (Maybe Text)
rasUserIp
  = lens _rasUserIp (\ s a -> s{_rasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rasKey :: Lens' RasterCollectionsParentsList' (Maybe Text)
rasKey = lens _rasKey (\ s a -> s{_rasKey = a})

-- | The ID of the raster collection whose parents will be listed.
rasId :: Lens' RasterCollectionsParentsList' Text
rasId = lens _rasId (\ s a -> s{_rasId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rasPageToken :: Lens' RasterCollectionsParentsList' (Maybe Text)
rasPageToken
  = lens _rasPageToken (\ s a -> s{_rasPageToken = a})

-- | OAuth 2.0 token for the current user.
rasOauthToken :: Lens' RasterCollectionsParentsList' (Maybe Text)
rasOauthToken
  = lens _rasOauthToken
      (\ s a -> s{_rasOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
rasMaxResults :: Lens' RasterCollectionsParentsList' (Maybe Word32)
rasMaxResults
  = lens _rasMaxResults
      (\ s a -> s{_rasMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rasFields :: Lens' RasterCollectionsParentsList' (Maybe Text)
rasFields
  = lens _rasFields (\ s a -> s{_rasFields = a})

-- | Data format for the response.
rasAlt :: Lens' RasterCollectionsParentsList' Alt
rasAlt = lens _rasAlt (\ s a -> s{_rasAlt = a})

instance GoogleRequest RasterCollectionsParentsList'
         where
        type Rs RasterCollectionsParentsList' =
             ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsParentsList'{..}
          = go _rasQuotaUser (Just _rasPrettyPrint) _rasUserIp
              _rasKey
              _rasId
              _rasPageToken
              _rasOauthToken
              _rasMaxResults
              _rasFields
              (Just _rasAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsParentsListAPI)
                      r
                      u
