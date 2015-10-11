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
-- Module      : Network.Google.Resource.BigQuery.TableData.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTableDataList@.
module Network.Google.Resource.BigQuery.TableData.List
    (
    -- * REST Resource
      TableDataListResource

    -- * Creating a Request
    , tableDataList'
    , TableDataList'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIP
    , tKey
    , tDatasetId
    , tPageToken
    , tProjectId
    , tOAuthToken
    , tTableId
    , tStartIndex
    , tMaxResults
    , tFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTableDataList@ method which the
-- 'TableDataList'' request conforms to.
type TableDataListResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 "data" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "startIndex" Word64 :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   Header "Authorization" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] TableDataList

-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ 'tableDataList'' smart constructor.
data TableDataList' = TableDataList'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIP      :: !(Maybe Text)
    , _tKey         :: !(Maybe AuthKey)
    , _tDatasetId   :: !Text
    , _tPageToken   :: !(Maybe Text)
    , _tProjectId   :: !Text
    , _tOAuthToken  :: !(Maybe OAuthToken)
    , _tTableId     :: !Text
    , _tStartIndex  :: !(Maybe Word64)
    , _tMaxResults  :: !(Maybe Word32)
    , _tFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIP'
--
-- * 'tKey'
--
-- * 'tDatasetId'
--
-- * 'tPageToken'
--
-- * 'tProjectId'
--
-- * 'tOAuthToken'
--
-- * 'tTableId'
--
-- * 'tStartIndex'
--
-- * 'tMaxResults'
--
-- * 'tFields'
tableDataList'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TableDataList'
tableDataList' pTDatasetId_ pTProjectId_ pTTableId_ =
    TableDataList'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIP = Nothing
    , _tKey = Nothing
    , _tDatasetId = pTDatasetId_
    , _tPageToken = Nothing
    , _tProjectId = pTProjectId_
    , _tOAuthToken = Nothing
    , _tTableId = pTTableId_
    , _tStartIndex = Nothing
    , _tMaxResults = Nothing
    , _tFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TableDataList' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TableDataList' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIP :: Lens' TableDataList' (Maybe Text)
tUserIP = lens _tUserIP (\ s a -> s{_tUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TableDataList' (Maybe AuthKey)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | Dataset ID of the table to read
tDatasetId :: Lens' TableDataList' Text
tDatasetId
  = lens _tDatasetId (\ s a -> s{_tDatasetId = a})

-- | A token used for paging results. Providing this token instead of the
-- startIndex parameter can help you retrieve stable results when an
-- underlying table is changing.
tPageToken :: Lens' TableDataList' (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | Project ID of the table to read
tProjectId :: Lens' TableDataList' Text
tProjectId
  = lens _tProjectId (\ s a -> s{_tProjectId = a})

-- | OAuth 2.0 token for the current user.
tOAuthToken :: Lens' TableDataList' (Maybe OAuthToken)
tOAuthToken
  = lens _tOAuthToken (\ s a -> s{_tOAuthToken = a})

-- | Table ID of the table to read
tTableId :: Lens' TableDataList' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Zero-based index of the starting row to read
tStartIndex :: Lens' TableDataList' (Maybe Word64)
tStartIndex
  = lens _tStartIndex (\ s a -> s{_tStartIndex = a})

-- | Maximum number of results to return
tMaxResults :: Lens' TableDataList' (Maybe Word32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TableDataList' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

instance GoogleAuth TableDataList' where
        _AuthKey = tKey . _Just
        _AuthToken = tOAuthToken . _Just

instance GoogleRequest TableDataList' where
        type Rs TableDataList' = TableDataList
        request = requestWith bigQueryRequest
        requestWith rq TableDataList'{..}
          = go _tProjectId _tDatasetId _tTableId _tPageToken
              _tStartIndex
              _tMaxResults
              _tQuotaUser
              (Just _tPrettyPrint)
              _tUserIP
              _tFields
              _tKey
              _tOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TableDataListResource)
                      rq
