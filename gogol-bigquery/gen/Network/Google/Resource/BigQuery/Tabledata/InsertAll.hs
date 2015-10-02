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
-- Module      : Network.Google.Resource.BigQuery.Tabledata.InsertAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTabledataInsertAll@.
module Network.Google.Resource.BigQuery.Tabledata.InsertAll
    (
    -- * REST Resource
      TabledataInsertAllResource

    -- * Creating a Request
    , tabledataInsertAll'
    , TabledataInsertAll'

    -- * Request Lenses
    , tiaQuotaUser
    , tiaPrettyPrint
    , tiaUserIP
    , tiaTableDataInsertAllRequest
    , tiaKey
    , tiaDatasetId
    , tiaProjectId
    , tiaOAuthToken
    , tiaTableId
    , tiaFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTabledataInsertAll@ which the
-- 'TabledataInsertAll'' request conforms to.
type TabledataInsertAllResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 "insertAll" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] TableDataInsertAllRequest :>
                                   Post '[JSON] TableDataInsertAllResponse

-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ 'tabledataInsertAll'' smart constructor.
data TabledataInsertAll' = TabledataInsertAll'
    { _tiaQuotaUser                 :: !(Maybe Text)
    , _tiaPrettyPrint               :: !Bool
    , _tiaUserIP                    :: !(Maybe Text)
    , _tiaTableDataInsertAllRequest :: !TableDataInsertAllRequest
    , _tiaKey                       :: !(Maybe Key)
    , _tiaDatasetId                 :: !Text
    , _tiaProjectId                 :: !Text
    , _tiaOAuthToken                :: !(Maybe OAuthToken)
    , _tiaTableId                   :: !Text
    , _tiaFields                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TabledataInsertAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiaQuotaUser'
--
-- * 'tiaPrettyPrint'
--
-- * 'tiaUserIP'
--
-- * 'tiaTableDataInsertAllRequest'
--
-- * 'tiaKey'
--
-- * 'tiaDatasetId'
--
-- * 'tiaProjectId'
--
-- * 'tiaOAuthToken'
--
-- * 'tiaTableId'
--
-- * 'tiaFields'
tabledataInsertAll'
    :: TableDataInsertAllRequest -- ^ 'TableDataInsertAllRequest'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TabledataInsertAll'
tabledataInsertAll' pTiaTableDataInsertAllRequest_ pTiaDatasetId_ pTiaProjectId_ pTiaTableId_ =
    TabledataInsertAll'
    { _tiaQuotaUser = Nothing
    , _tiaPrettyPrint = True
    , _tiaUserIP = Nothing
    , _tiaTableDataInsertAllRequest = pTiaTableDataInsertAllRequest_
    , _tiaKey = Nothing
    , _tiaDatasetId = pTiaDatasetId_
    , _tiaProjectId = pTiaProjectId_
    , _tiaOAuthToken = Nothing
    , _tiaTableId = pTiaTableId_
    , _tiaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiaQuotaUser :: Lens' TabledataInsertAll' (Maybe Text)
tiaQuotaUser
  = lens _tiaQuotaUser (\ s a -> s{_tiaQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiaPrettyPrint :: Lens' TabledataInsertAll' Bool
tiaPrettyPrint
  = lens _tiaPrettyPrint
      (\ s a -> s{_tiaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiaUserIP :: Lens' TabledataInsertAll' (Maybe Text)
tiaUserIP
  = lens _tiaUserIP (\ s a -> s{_tiaUserIP = a})

-- | Multipart request metadata.
tiaTableDataInsertAllRequest :: Lens' TabledataInsertAll' TableDataInsertAllRequest
tiaTableDataInsertAllRequest
  = lens _tiaTableDataInsertAllRequest
      (\ s a -> s{_tiaTableDataInsertAllRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiaKey :: Lens' TabledataInsertAll' (Maybe Key)
tiaKey = lens _tiaKey (\ s a -> s{_tiaKey = a})

-- | Dataset ID of the destination table.
tiaDatasetId :: Lens' TabledataInsertAll' Text
tiaDatasetId
  = lens _tiaDatasetId (\ s a -> s{_tiaDatasetId = a})

-- | Project ID of the destination table.
tiaProjectId :: Lens' TabledataInsertAll' Text
tiaProjectId
  = lens _tiaProjectId (\ s a -> s{_tiaProjectId = a})

-- | OAuth 2.0 token for the current user.
tiaOAuthToken :: Lens' TabledataInsertAll' (Maybe OAuthToken)
tiaOAuthToken
  = lens _tiaOAuthToken
      (\ s a -> s{_tiaOAuthToken = a})

-- | Table ID of the destination table.
tiaTableId :: Lens' TabledataInsertAll' Text
tiaTableId
  = lens _tiaTableId (\ s a -> s{_tiaTableId = a})

-- | Selector specifying which fields to include in a partial response.
tiaFields :: Lens' TabledataInsertAll' (Maybe Text)
tiaFields
  = lens _tiaFields (\ s a -> s{_tiaFields = a})

instance GoogleAuth TabledataInsertAll' where
        authKey = tiaKey . _Just
        authToken = tiaOAuthToken . _Just

instance GoogleRequest TabledataInsertAll' where
        type Rs TabledataInsertAll' =
             TableDataInsertAllResponse
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TabledataInsertAll'{..}
          = go _tiaQuotaUser (Just _tiaPrettyPrint) _tiaUserIP
              _tiaKey
              _tiaDatasetId
              _tiaProjectId
              _tiaOAuthToken
              _tiaTableId
              _tiaFields
              (Just AltJSON)
              _tiaTableDataInsertAllRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TabledataInsertAllResource)
                      r
                      u
