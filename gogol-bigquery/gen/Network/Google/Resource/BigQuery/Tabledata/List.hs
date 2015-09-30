{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Tabledata.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTabledataList@.
module BigQuery.Tabledata.List
    (
    -- * REST Resource
      TabledataListAPI

    -- * Creating a Request
    , tabledataList
    , TabledataList

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tDatasetId
    , tPageToken
    , tProjectId
    , tOauthToken
    , tTableId
    , tStartIndex
    , tMaxResults
    , tFields
    , tAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTabledataList@ which the
-- 'TabledataList' request conforms to.
type TabledataListAPI =
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
                         Get '[JSON] TableDataList

-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ 'tabledataList' smart constructor.
data TabledataList = TabledataList
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tDatasetId   :: !Text
    , _tPageToken   :: !(Maybe Text)
    , _tProjectId   :: !Text
    , _tOauthToken  :: !(Maybe Text)
    , _tTableId     :: !Text
    , _tStartIndex  :: !(Maybe Word64)
    , _tMaxResults  :: !(Maybe Word32)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TabledataList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tDatasetId'
--
-- * 'tPageToken'
--
-- * 'tProjectId'
--
-- * 'tOauthToken'
--
-- * 'tTableId'
--
-- * 'tStartIndex'
--
-- * 'tMaxResults'
--
-- * 'tFields'
--
-- * 'tAlt'
tabledataList
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TabledataList
tabledataList pTDatasetId_ pTProjectId_ pTTableId_ =
    TabledataList
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tDatasetId = pTDatasetId_
    , _tPageToken = Nothing
    , _tProjectId = pTProjectId_
    , _tOauthToken = Nothing
    , _tTableId = pTTableId_
    , _tStartIndex = Nothing
    , _tMaxResults = Nothing
    , _tFields = Nothing
    , _tAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TabledataList' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TabledataList' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TabledataList' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TabledataList' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | Dataset ID of the table to read
tDatasetId :: Lens' TabledataList' Text
tDatasetId
  = lens _tDatasetId (\ s a -> s{_tDatasetId = a})

-- | Page token, returned by a previous call, identifying the result set
tPageToken :: Lens' TabledataList' (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | Project ID of the table to read
tProjectId :: Lens' TabledataList' Text
tProjectId
  = lens _tProjectId (\ s a -> s{_tProjectId = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TabledataList' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Table ID of the table to read
tTableId :: Lens' TabledataList' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Zero-based index of the starting row to read
tStartIndex :: Lens' TabledataList' (Maybe Word64)
tStartIndex
  = lens _tStartIndex (\ s a -> s{_tStartIndex = a})

-- | Maximum number of results to return
tMaxResults :: Lens' TabledataList' (Maybe Word32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TabledataList' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TabledataList' Text
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TabledataList' where
        type Rs TabledataList' = TableDataList
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TabledataList{..}
          = go _tQuotaUser _tPrettyPrint _tUserIp _tKey
              _tDatasetId
              _tPageToken
              _tProjectId
              _tOauthToken
              _tTableId
              _tStartIndex
              _tMaxResults
              _tFields
              _tAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TabledataListAPI) r
                      u
