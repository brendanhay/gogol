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
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Rasters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all rasters within a raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsRastersList@.
module Network.Google.Resource.Mapsengine.RasterCollections.Rasters.List
    (
    -- * REST Resource
      RasterCollectionsRastersListResource

    -- * Creating a Request
    , rasterCollectionsRastersList'
    , RasterCollectionsRastersList'

    -- * Request Lenses
    , rcrlCreatedAfter
    , rcrlQuotaUser
    , rcrlPrettyPrint
    , rcrlUserIp
    , rcrlCreatorEmail
    , rcrlRole
    , rcrlKey
    , rcrlBbox
    , rcrlId
    , rcrlModifiedAfter
    , rcrlModifiedBefore
    , rcrlPageToken
    , rcrlOauthToken
    , rcrlSearch
    , rcrlMaxResults
    , rcrlTags
    , rcrlFields
    , rcrlCreatedBefore
    , rcrlAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsRastersList@ which the
-- 'RasterCollectionsRastersList'' request conforms to.
type RasterCollectionsRastersListResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "rasters" :>
           QueryParam "createdAfter" UTCTime :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "creatorEmail" Text :>
                     QueryParam "role"
                       MapsengineRasterCollectionsRastersListRole
                       :>
                       QueryParam "key" Text :>
                         QueryParam "bbox" Text :>
                           QueryParam "modifiedAfter" UTCTime :>
                             QueryParam "modifiedBefore" UTCTime :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "search" Text :>
                                     QueryParam "maxResults" Word32 :>
                                       QueryParam "tags" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "createdBefore" UTCTime :>
                                             QueryParam "alt" Alt :>
                                               Get '[JSON]
                                                 RasterCollectionsRastersListResponse

-- | Return all rasters within a raster collection.
--
-- /See:/ 'rasterCollectionsRastersList'' smart constructor.
data RasterCollectionsRastersList' = RasterCollectionsRastersList'
    { _rcrlCreatedAfter   :: !(Maybe UTCTime)
    , _rcrlQuotaUser      :: !(Maybe Text)
    , _rcrlPrettyPrint    :: !Bool
    , _rcrlUserIp         :: !(Maybe Text)
    , _rcrlCreatorEmail   :: !(Maybe Text)
    , _rcrlRole           :: !(Maybe MapsengineRasterCollectionsRastersListRole)
    , _rcrlKey            :: !(Maybe Text)
    , _rcrlBbox           :: !(Maybe Text)
    , _rcrlId             :: !Text
    , _rcrlModifiedAfter  :: !(Maybe UTCTime)
    , _rcrlModifiedBefore :: !(Maybe UTCTime)
    , _rcrlPageToken      :: !(Maybe Text)
    , _rcrlOauthToken     :: !(Maybe Text)
    , _rcrlSearch         :: !(Maybe Text)
    , _rcrlMaxResults     :: !(Maybe Word32)
    , _rcrlTags           :: !(Maybe Text)
    , _rcrlFields         :: !(Maybe Text)
    , _rcrlCreatedBefore  :: !(Maybe UTCTime)
    , _rcrlAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrlCreatedAfter'
--
-- * 'rcrlQuotaUser'
--
-- * 'rcrlPrettyPrint'
--
-- * 'rcrlUserIp'
--
-- * 'rcrlCreatorEmail'
--
-- * 'rcrlRole'
--
-- * 'rcrlKey'
--
-- * 'rcrlBbox'
--
-- * 'rcrlId'
--
-- * 'rcrlModifiedAfter'
--
-- * 'rcrlModifiedBefore'
--
-- * 'rcrlPageToken'
--
-- * 'rcrlOauthToken'
--
-- * 'rcrlSearch'
--
-- * 'rcrlMaxResults'
--
-- * 'rcrlTags'
--
-- * 'rcrlFields'
--
-- * 'rcrlCreatedBefore'
--
-- * 'rcrlAlt'
rasterCollectionsRastersList'
    :: Text -- ^ 'id'
    -> RasterCollectionsRastersList'
rasterCollectionsRastersList' pRcrlId_ =
    RasterCollectionsRastersList'
    { _rcrlCreatedAfter = Nothing
    , _rcrlQuotaUser = Nothing
    , _rcrlPrettyPrint = True
    , _rcrlUserIp = Nothing
    , _rcrlCreatorEmail = Nothing
    , _rcrlRole = Nothing
    , _rcrlKey = Nothing
    , _rcrlBbox = Nothing
    , _rcrlId = pRcrlId_
    , _rcrlModifiedAfter = Nothing
    , _rcrlModifiedBefore = Nothing
    , _rcrlPageToken = Nothing
    , _rcrlOauthToken = Nothing
    , _rcrlSearch = Nothing
    , _rcrlMaxResults = Nothing
    , _rcrlTags = Nothing
    , _rcrlFields = Nothing
    , _rcrlCreatedBefore = Nothing
    , _rcrlAlt = JSON
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
rcrlCreatedAfter :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlCreatedAfter
  = lens _rcrlCreatedAfter
      (\ s a -> s{_rcrlCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcrlQuotaUser :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlQuotaUser
  = lens _rcrlQuotaUser
      (\ s a -> s{_rcrlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcrlPrettyPrint :: Lens' RasterCollectionsRastersList' Bool
rcrlPrettyPrint
  = lens _rcrlPrettyPrint
      (\ s a -> s{_rcrlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcrlUserIp :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlUserIp
  = lens _rcrlUserIp (\ s a -> s{_rcrlUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
rcrlCreatorEmail :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlCreatorEmail
  = lens _rcrlCreatorEmail
      (\ s a -> s{_rcrlCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
rcrlRole :: Lens' RasterCollectionsRastersList' (Maybe MapsengineRasterCollectionsRastersListRole)
rcrlRole = lens _rcrlRole (\ s a -> s{_rcrlRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcrlKey :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlKey = lens _rcrlKey (\ s a -> s{_rcrlKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
rcrlBbox :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlBbox = lens _rcrlBbox (\ s a -> s{_rcrlBbox = a})

-- | The ID of the raster collection to which these rasters belong.
rcrlId :: Lens' RasterCollectionsRastersList' Text
rcrlId = lens _rcrlId (\ s a -> s{_rcrlId = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
rcrlModifiedAfter :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlModifiedAfter
  = lens _rcrlModifiedAfter
      (\ s a -> s{_rcrlModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
rcrlModifiedBefore :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlModifiedBefore
  = lens _rcrlModifiedBefore
      (\ s a -> s{_rcrlModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rcrlPageToken :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlPageToken
  = lens _rcrlPageToken
      (\ s a -> s{_rcrlPageToken = a})

-- | OAuth 2.0 token for the current user.
rcrlOauthToken :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlOauthToken
  = lens _rcrlOauthToken
      (\ s a -> s{_rcrlOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
rcrlSearch :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlSearch
  = lens _rcrlSearch (\ s a -> s{_rcrlSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
rcrlMaxResults :: Lens' RasterCollectionsRastersList' (Maybe Word32)
rcrlMaxResults
  = lens _rcrlMaxResults
      (\ s a -> s{_rcrlMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
rcrlTags :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlTags = lens _rcrlTags (\ s a -> s{_rcrlTags = a})

-- | Selector specifying which fields to include in a partial response.
rcrlFields :: Lens' RasterCollectionsRastersList' (Maybe Text)
rcrlFields
  = lens _rcrlFields (\ s a -> s{_rcrlFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
rcrlCreatedBefore :: Lens' RasterCollectionsRastersList' (Maybe UTCTime)
rcrlCreatedBefore
  = lens _rcrlCreatedBefore
      (\ s a -> s{_rcrlCreatedBefore = a})

-- | Data format for the response.
rcrlAlt :: Lens' RasterCollectionsRastersList' Alt
rcrlAlt = lens _rcrlAlt (\ s a -> s{_rcrlAlt = a})

instance GoogleRequest RasterCollectionsRastersList'
         where
        type Rs RasterCollectionsRastersList' =
             RasterCollectionsRastersListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsRastersList'{..}
          = go _rcrlCreatedAfter _rcrlQuotaUser
              (Just _rcrlPrettyPrint)
              _rcrlUserIp
              _rcrlCreatorEmail
              _rcrlRole
              _rcrlKey
              _rcrlBbox
              _rcrlId
              _rcrlModifiedAfter
              _rcrlModifiedBefore
              _rcrlPageToken
              _rcrlOauthToken
              _rcrlSearch
              _rcrlMaxResults
              _rcrlTags
              _rcrlFields
              _rcrlCreatedBefore
              (Just _rcrlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsRastersListResource)
                      r
                      u
