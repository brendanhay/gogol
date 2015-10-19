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
-- Module      : Network.Google.Resource.MapsEngine.Assets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all assets readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.assets.list@.
module Network.Google.Resource.MapsEngine.Assets.List
    (
    -- * REST Resource
      AssetsListResource

    -- * Creating a Request
    , assetsList'
    , AssetsList'

    -- * Request Lenses
    , alCreatedAfter
    , alCreatorEmail
    , alRole
    , alBbox
    , alModifiedAfter
    , alModifiedBefore
    , alPageToken
    , alProjectId
    , alType
    , alSearch
    , alMaxResults
    , alTags
    , alCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.assets.list@ method which the
-- 'AssetsList'' request conforms to.
type AssetsListResource =
     "assets" :>
       QueryParam "createdAfter" DateTime' :>
         QueryParam "creatorEmail" Text :>
           QueryParam "role" AssetsListRole :>
             QueryParam "bbox" Text :>
               QueryParam "modifiedAfter" DateTime' :>
                 QueryParam "modifiedBefore" DateTime' :>
                   QueryParam "pageToken" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "type" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" DateTime' :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] AssetsListResponse

-- | Return all assets readable by the current user.
--
-- /See:/ 'assetsList'' smart constructor.
data AssetsList' = AssetsList'
    { _alCreatedAfter   :: !(Maybe DateTime')
    , _alCreatorEmail   :: !(Maybe Text)
    , _alRole           :: !(Maybe AssetsListRole)
    , _alBbox           :: !(Maybe Text)
    , _alModifiedAfter  :: !(Maybe DateTime')
    , _alModifiedBefore :: !(Maybe DateTime')
    , _alPageToken      :: !(Maybe Text)
    , _alProjectId      :: !(Maybe Text)
    , _alType           :: !(Maybe Text)
    , _alSearch         :: !(Maybe Text)
    , _alMaxResults     :: !(Maybe Word32)
    , _alTags           :: !(Maybe Text)
    , _alCreatedBefore  :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alCreatedAfter'
--
-- * 'alCreatorEmail'
--
-- * 'alRole'
--
-- * 'alBbox'
--
-- * 'alModifiedAfter'
--
-- * 'alModifiedBefore'
--
-- * 'alPageToken'
--
-- * 'alProjectId'
--
-- * 'alType'
--
-- * 'alSearch'
--
-- * 'alMaxResults'
--
-- * 'alTags'
--
-- * 'alCreatedBefore'
assetsList'
    :: AssetsList'
assetsList' =
    AssetsList'
    { _alCreatedAfter = Nothing
    , _alCreatorEmail = Nothing
    , _alRole = Nothing
    , _alBbox = Nothing
    , _alModifiedAfter = Nothing
    , _alModifiedBefore = Nothing
    , _alPageToken = Nothing
    , _alProjectId = Nothing
    , _alType = Nothing
    , _alSearch = Nothing
    , _alMaxResults = Nothing
    , _alTags = Nothing
    , _alCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
alCreatedAfter :: Lens' AssetsList' (Maybe UTCTime)
alCreatedAfter
  = lens _alCreatedAfter
      (\ s a -> s{_alCreatedAfter = a})
      . mapping _DateTime

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
alCreatorEmail :: Lens' AssetsList' (Maybe Text)
alCreatorEmail
  = lens _alCreatorEmail
      (\ s a -> s{_alCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
alRole :: Lens' AssetsList' (Maybe AssetsListRole)
alRole = lens _alRole (\ s a -> s{_alRole = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
alBbox :: Lens' AssetsList' (Maybe Text)
alBbox = lens _alBbox (\ s a -> s{_alBbox = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
alModifiedAfter :: Lens' AssetsList' (Maybe UTCTime)
alModifiedAfter
  = lens _alModifiedAfter
      (\ s a -> s{_alModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
alModifiedBefore :: Lens' AssetsList' (Maybe UTCTime)
alModifiedBefore
  = lens _alModifiedBefore
      (\ s a -> s{_alModifiedBefore = a})
      . mapping _DateTime

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
alPageToken :: Lens' AssetsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
alProjectId :: Lens' AssetsList' (Maybe Text)
alProjectId
  = lens _alProjectId (\ s a -> s{_alProjectId = a})

-- | A comma separated list of asset types. Returned assets will have one of
-- the types from the provided list. Supported values are \'map\',
-- \'layer\', \'rasterCollection\' and \'table\'.
alType :: Lens' AssetsList' (Maybe Text)
alType = lens _alType (\ s a -> s{_alType = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
alSearch :: Lens' AssetsList' (Maybe Text)
alSearch = lens _alSearch (\ s a -> s{_alSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
alMaxResults :: Lens' AssetsList' (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
alTags :: Lens' AssetsList' (Maybe Text)
alTags = lens _alTags (\ s a -> s{_alTags = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
alCreatedBefore :: Lens' AssetsList' (Maybe UTCTime)
alCreatedBefore
  = lens _alCreatedBefore
      (\ s a -> s{_alCreatedBefore = a})
      . mapping _DateTime

instance GoogleRequest AssetsList' where
        type Rs AssetsList' = AssetsListResponse
        requestClient AssetsList'{..}
          = go _alCreatedAfter _alCreatorEmail _alRole _alBbox
              _alModifiedAfter
              _alModifiedBefore
              _alPageToken
              _alProjectId
              _alType
              _alSearch
              _alMaxResults
              _alTags
              _alCreatedBefore
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy AssetsListResource)
                      mempty
