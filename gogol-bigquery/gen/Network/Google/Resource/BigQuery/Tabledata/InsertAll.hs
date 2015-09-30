{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module BigQuery.Tabledata.InsertAll
    (
    -- * REST Resource
      TabledataInsertAllAPI

    -- * Creating a Request
    , tabledataInsertAll
    , TabledataInsertAll

    -- * Request Lenses
    , tiaQuotaUser
    , tiaPrettyPrint
    , tiaUserIp
    , tiaKey
    , tiaDatasetId
    , tiaProjectId
    , tiaOauthToken
    , tiaTableId
    , tiaFields
    , tiaAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTabledataInsertAll@ which the
-- 'TabledataInsertAll' request conforms to.
type TabledataInsertAllAPI =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 "insertAll" :>
                   Post '[JSON] TableDataInsertAllResponse

-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ 'tabledataInsertAll' smart constructor.
data TabledataInsertAll = TabledataInsertAll
    { _tiaQuotaUser   :: !(Maybe Text)
    , _tiaPrettyPrint :: !Bool
    , _tiaUserIp      :: !(Maybe Text)
    , _tiaKey         :: !(Maybe Text)
    , _tiaDatasetId   :: !Text
    , _tiaProjectId   :: !Text
    , _tiaOauthToken  :: !(Maybe Text)
    , _tiaTableId     :: !Text
    , _tiaFields      :: !(Maybe Text)
    , _tiaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TabledataInsertAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiaQuotaUser'
--
-- * 'tiaPrettyPrint'
--
-- * 'tiaUserIp'
--
-- * 'tiaKey'
--
-- * 'tiaDatasetId'
--
-- * 'tiaProjectId'
--
-- * 'tiaOauthToken'
--
-- * 'tiaTableId'
--
-- * 'tiaFields'
--
-- * 'tiaAlt'
tabledataInsertAll
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TabledataInsertAll
tabledataInsertAll pTiaDatasetId_ pTiaProjectId_ pTiaTableId_ =
    TabledataInsertAll
    { _tiaQuotaUser = Nothing
    , _tiaPrettyPrint = True
    , _tiaUserIp = Nothing
    , _tiaKey = Nothing
    , _tiaDatasetId = pTiaDatasetId_
    , _tiaProjectId = pTiaProjectId_
    , _tiaOauthToken = Nothing
    , _tiaTableId = pTiaTableId_
    , _tiaFields = Nothing
    , _tiaAlt = "json"
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
tiaUserIp :: Lens' TabledataInsertAll' (Maybe Text)
tiaUserIp
  = lens _tiaUserIp (\ s a -> s{_tiaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiaKey :: Lens' TabledataInsertAll' (Maybe Text)
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
tiaOauthToken :: Lens' TabledataInsertAll' (Maybe Text)
tiaOauthToken
  = lens _tiaOauthToken
      (\ s a -> s{_tiaOauthToken = a})

-- | Table ID of the destination table.
tiaTableId :: Lens' TabledataInsertAll' Text
tiaTableId
  = lens _tiaTableId (\ s a -> s{_tiaTableId = a})

-- | Selector specifying which fields to include in a partial response.
tiaFields :: Lens' TabledataInsertAll' (Maybe Text)
tiaFields
  = lens _tiaFields (\ s a -> s{_tiaFields = a})

-- | Data format for the response.
tiaAlt :: Lens' TabledataInsertAll' Text
tiaAlt = lens _tiaAlt (\ s a -> s{_tiaAlt = a})

instance GoogleRequest TabledataInsertAll' where
        type Rs TabledataInsertAll' =
             TableDataInsertAllResponse
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TabledataInsertAll{..}
          = go _tiaQuotaUser _tiaPrettyPrint _tiaUserIp _tiaKey
              _tiaDatasetId
              _tiaProjectId
              _tiaOauthToken
              _tiaTableId
              _tiaFields
              _tiaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TabledataInsertAllAPI)
                      r
                      u
