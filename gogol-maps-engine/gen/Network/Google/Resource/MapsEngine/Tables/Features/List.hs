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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all features readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.features.list@.
module Network.Google.Resource.MapsEngine.Tables.Features.List
    (
    -- * REST Resource
      TablesFeaturesListResource

    -- * Creating a Request
    , tablesFeaturesList
    , TablesFeaturesList

    -- * Request Lenses
    , tflInclude
    , tflWhere
    , tflOrderBy
    , tflVersion
    , tflId
    , tflLimit
    , tflPageToken
    , tflSelect
    , tflIntersects
    , tflMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.features.list@ method which the
-- 'TablesFeaturesList' request conforms to.
type TablesFeaturesListResource =
     "mapsengine" :>
       "v1" :>
         "tables" :>
           Capture "id" Text :>
             "features" :>
               QueryParam "include" Text :>
                 QueryParam "where" Text :>
                   QueryParam "orderBy" Text :>
                     QueryParam "version" TablesFeaturesListVersion :>
                       QueryParam "limit" Word32 :>
                         QueryParam "pageToken" Text :>
                           QueryParam "select" Text :>
                             QueryParam "intersects" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] FeaturesListResponse

-- | Return all features readable by the current user.
--
-- /See:/ 'tablesFeaturesList' smart constructor.
data TablesFeaturesList = TablesFeaturesList
    { _tflInclude    :: !(Maybe Text)
    , _tflWhere      :: !(Maybe Text)
    , _tflOrderBy    :: !(Maybe Text)
    , _tflVersion    :: !(Maybe TablesFeaturesListVersion)
    , _tflId         :: !Text
    , _tflLimit      :: !(Maybe Word32)
    , _tflPageToken  :: !(Maybe Text)
    , _tflSelect     :: !(Maybe Text)
    , _tflIntersects :: !(Maybe Text)
    , _tflMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tflInclude'
--
-- * 'tflWhere'
--
-- * 'tflOrderBy'
--
-- * 'tflVersion'
--
-- * 'tflId'
--
-- * 'tflLimit'
--
-- * 'tflPageToken'
--
-- * 'tflSelect'
--
-- * 'tflIntersects'
--
-- * 'tflMaxResults'
tablesFeaturesList
    :: Text -- ^ 'tflId'
    -> TablesFeaturesList
tablesFeaturesList pTflId_ =
    TablesFeaturesList
    { _tflInclude = Nothing
    , _tflWhere = Nothing
    , _tflOrderBy = Nothing
    , _tflVersion = Nothing
    , _tflId = pTflId_
    , _tflLimit = Nothing
    , _tflPageToken = Nothing
    , _tflSelect = Nothing
    , _tflIntersects = Nothing
    , _tflMaxResults = Nothing
    }

-- | A comma separated list of optional data to include. Optional data
-- available: schema.
tflInclude :: Lens' TablesFeaturesList (Maybe Text)
tflInclude
  = lens _tflInclude (\ s a -> s{_tflInclude = a})

-- | An SQL-like predicate used to filter results.
tflWhere :: Lens' TablesFeaturesList (Maybe Text)
tflWhere = lens _tflWhere (\ s a -> s{_tflWhere = a})

-- | An SQL-like order by clause used to sort results. If this parameter is
-- not included, the order of features is undefined.
tflOrderBy :: Lens' TablesFeaturesList (Maybe Text)
tflOrderBy
  = lens _tflOrderBy (\ s a -> s{_tflOrderBy = a})

-- | The table version to access. See Accessing Public Data for information.
tflVersion :: Lens' TablesFeaturesList (Maybe TablesFeaturesListVersion)
tflVersion
  = lens _tflVersion (\ s a -> s{_tflVersion = a})

-- | The ID of the table to which these features belong.
tflId :: Lens' TablesFeaturesList Text
tflId = lens _tflId (\ s a -> s{_tflId = a})

-- | The total number of features to return from the query, irrespective of
-- the number of pages.
tflLimit :: Lens' TablesFeaturesList (Maybe Word32)
tflLimit = lens _tflLimit (\ s a -> s{_tflLimit = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tflPageToken :: Lens' TablesFeaturesList (Maybe Text)
tflPageToken
  = lens _tflPageToken (\ s a -> s{_tflPageToken = a})

-- | A SQL-like projection clause used to specify returned properties. If
-- this parameter is not included, all properties are returned.
tflSelect :: Lens' TablesFeaturesList (Maybe Text)
tflSelect
  = lens _tflSelect (\ s a -> s{_tflSelect = a})

-- | A geometry literal that specifies the spatial restriction of the query.
tflIntersects :: Lens' TablesFeaturesList (Maybe Text)
tflIntersects
  = lens _tflIntersects
      (\ s a -> s{_tflIntersects = a})

-- | The maximum number of items to include in the response, used for paging.
-- The maximum supported value is 1000.
tflMaxResults :: Lens' TablesFeaturesList (Maybe Word32)
tflMaxResults
  = lens _tflMaxResults
      (\ s a -> s{_tflMaxResults = a})

instance GoogleRequest TablesFeaturesList where
        type Rs TablesFeaturesList = FeaturesListResponse
        requestClient TablesFeaturesList{..}
          = go _tflId _tflInclude _tflWhere _tflOrderBy
              _tflVersion
              _tflLimit
              _tflPageToken
              _tflSelect
              _tflIntersects
              _tflMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesFeaturesListResource)
                      mempty
