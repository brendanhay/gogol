{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsParentsList@.
module Mapsengine.RasterCollections.Parents.List
    (
    -- * REST Resource
      RasterCollectionsParentsListAPI

    -- * Creating a Request
    , rasterCollectionsParentsList
    , RasterCollectionsParentsList

    -- * Request Lenses
    , rcplQuotaUser
    , rcplPrettyPrint
    , rcplUserIp
    , rcplKey
    , rcplId
    , rcplPageToken
    , rcplOauthToken
    , rcplMaxResults
    , rcplFields
    , rcplAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsParentsList@ which the
-- 'RasterCollectionsParentsList' request conforms to.
type RasterCollectionsParentsListAPI =
     "rasterCollections" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified raster collection.
--
-- /See:/ 'rasterCollectionsParentsList' smart constructor.
data RasterCollectionsParentsList = RasterCollectionsParentsList
    { _rcplQuotaUser   :: !(Maybe Text)
    , _rcplPrettyPrint :: !Bool
    , _rcplUserIp      :: !(Maybe Text)
    , _rcplKey         :: !(Maybe Text)
    , _rcplId          :: !Text
    , _rcplPageToken   :: !(Maybe Text)
    , _rcplOauthToken  :: !(Maybe Text)
    , _rcplMaxResults  :: !(Maybe Word32)
    , _rcplFields      :: !(Maybe Text)
    , _rcplAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcplQuotaUser'
--
-- * 'rcplPrettyPrint'
--
-- * 'rcplUserIp'
--
-- * 'rcplKey'
--
-- * 'rcplId'
--
-- * 'rcplPageToken'
--
-- * 'rcplOauthToken'
--
-- * 'rcplMaxResults'
--
-- * 'rcplFields'
--
-- * 'rcplAlt'
rasterCollectionsParentsList
    :: Text -- ^ 'id'
    -> RasterCollectionsParentsList
rasterCollectionsParentsList pRcplId_ =
    RasterCollectionsParentsList
    { _rcplQuotaUser = Nothing
    , _rcplPrettyPrint = True
    , _rcplUserIp = Nothing
    , _rcplKey = Nothing
    , _rcplId = pRcplId_
    , _rcplPageToken = Nothing
    , _rcplOauthToken = Nothing
    , _rcplMaxResults = Nothing
    , _rcplFields = Nothing
    , _rcplAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcplQuotaUser :: Lens' RasterCollectionsParentsList' (Maybe Text)
rcplQuotaUser
  = lens _rcplQuotaUser
      (\ s a -> s{_rcplQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcplPrettyPrint :: Lens' RasterCollectionsParentsList' Bool
rcplPrettyPrint
  = lens _rcplPrettyPrint
      (\ s a -> s{_rcplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcplUserIp :: Lens' RasterCollectionsParentsList' (Maybe Text)
rcplUserIp
  = lens _rcplUserIp (\ s a -> s{_rcplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcplKey :: Lens' RasterCollectionsParentsList' (Maybe Text)
rcplKey = lens _rcplKey (\ s a -> s{_rcplKey = a})

-- | The ID of the raster collection whose parents will be listed.
rcplId :: Lens' RasterCollectionsParentsList' Text
rcplId = lens _rcplId (\ s a -> s{_rcplId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rcplPageToken :: Lens' RasterCollectionsParentsList' (Maybe Text)
rcplPageToken
  = lens _rcplPageToken
      (\ s a -> s{_rcplPageToken = a})

-- | OAuth 2.0 token for the current user.
rcplOauthToken :: Lens' RasterCollectionsParentsList' (Maybe Text)
rcplOauthToken
  = lens _rcplOauthToken
      (\ s a -> s{_rcplOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
rcplMaxResults :: Lens' RasterCollectionsParentsList' (Maybe Word32)
rcplMaxResults
  = lens _rcplMaxResults
      (\ s a -> s{_rcplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rcplFields :: Lens' RasterCollectionsParentsList' (Maybe Text)
rcplFields
  = lens _rcplFields (\ s a -> s{_rcplFields = a})

-- | Data format for the response.
rcplAlt :: Lens' RasterCollectionsParentsList' Text
rcplAlt = lens _rcplAlt (\ s a -> s{_rcplAlt = a})

instance GoogleRequest RasterCollectionsParentsList'
         where
        type Rs RasterCollectionsParentsList' =
             ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsParentsList{..}
          = go _rcplQuotaUser _rcplPrettyPrint _rcplUserIp
              _rcplKey
              _rcplId
              _rcplPageToken
              _rcplOauthToken
              _rcplMaxResults
              _rcplFields
              _rcplAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsParentsListAPI)
                      r
                      u
