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
-- Module      : Network.Google.Resource.BigQuery.TableData.InsertAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTableDataInsertAll@.
module Network.Google.Resource.BigQuery.TableData.InsertAll
    (
    -- * REST Resource
      TableDataInsertAllResource

    -- * Creating a Request
    , tableDataInsertAll'
    , TableDataInsertAll'

    -- * Request Lenses
    , tdiaQuotaUser
    , tdiaPrettyPrint
    , tdiaUserIP
    , tdiaPayload
    , tdiaKey
    , tdiaDatasetId
    , tdiaProjectId
    , tdiaOAuthToken
    , tdiaTableId
    , tdiaFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTableDataInsertAll@ method which the
-- 'TableDataInsertAll'' request conforms to.
type TableDataInsertAllResource =
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
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] TableDataInsertAllRequest :>
                                   Post '[JSON] TableDataInsertAllResponse

-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ 'tableDataInsertAll'' smart constructor.
data TableDataInsertAll' = TableDataInsertAll'
    { _tdiaQuotaUser   :: !(Maybe Text)
    , _tdiaPrettyPrint :: !Bool
    , _tdiaUserIP      :: !(Maybe Text)
    , _tdiaPayload     :: !TableDataInsertAllRequest
    , _tdiaKey         :: !(Maybe AuthKey)
    , _tdiaDatasetId   :: !Text
    , _tdiaProjectId   :: !Text
    , _tdiaOAuthToken  :: !(Maybe OAuthToken)
    , _tdiaTableId     :: !Text
    , _tdiaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataInsertAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiaQuotaUser'
--
-- * 'tdiaPrettyPrint'
--
-- * 'tdiaUserIP'
--
-- * 'tdiaPayload'
--
-- * 'tdiaKey'
--
-- * 'tdiaDatasetId'
--
-- * 'tdiaProjectId'
--
-- * 'tdiaOAuthToken'
--
-- * 'tdiaTableId'
--
-- * 'tdiaFields'
tableDataInsertAll'
    :: TableDataInsertAllRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TableDataInsertAll'
tableDataInsertAll' pTdiaPayload_ pTdiaDatasetId_ pTdiaProjectId_ pTdiaTableId_ =
    TableDataInsertAll'
    { _tdiaQuotaUser = Nothing
    , _tdiaPrettyPrint = True
    , _tdiaUserIP = Nothing
    , _tdiaPayload = pTdiaPayload_
    , _tdiaKey = Nothing
    , _tdiaDatasetId = pTdiaDatasetId_
    , _tdiaProjectId = pTdiaProjectId_
    , _tdiaOAuthToken = Nothing
    , _tdiaTableId = pTdiaTableId_
    , _tdiaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdiaQuotaUser :: Lens' TableDataInsertAll' (Maybe Text)
tdiaQuotaUser
  = lens _tdiaQuotaUser
      (\ s a -> s{_tdiaQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdiaPrettyPrint :: Lens' TableDataInsertAll' Bool
tdiaPrettyPrint
  = lens _tdiaPrettyPrint
      (\ s a -> s{_tdiaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdiaUserIP :: Lens' TableDataInsertAll' (Maybe Text)
tdiaUserIP
  = lens _tdiaUserIP (\ s a -> s{_tdiaUserIP = a})

-- | Multipart request metadata.
tdiaPayload :: Lens' TableDataInsertAll' TableDataInsertAllRequest
tdiaPayload
  = lens _tdiaPayload (\ s a -> s{_tdiaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdiaKey :: Lens' TableDataInsertAll' (Maybe AuthKey)
tdiaKey = lens _tdiaKey (\ s a -> s{_tdiaKey = a})

-- | Dataset ID of the destination table.
tdiaDatasetId :: Lens' TableDataInsertAll' Text
tdiaDatasetId
  = lens _tdiaDatasetId
      (\ s a -> s{_tdiaDatasetId = a})

-- | Project ID of the destination table.
tdiaProjectId :: Lens' TableDataInsertAll' Text
tdiaProjectId
  = lens _tdiaProjectId
      (\ s a -> s{_tdiaProjectId = a})

-- | OAuth 2.0 token for the current user.
tdiaOAuthToken :: Lens' TableDataInsertAll' (Maybe OAuthToken)
tdiaOAuthToken
  = lens _tdiaOAuthToken
      (\ s a -> s{_tdiaOAuthToken = a})

-- | Table ID of the destination table.
tdiaTableId :: Lens' TableDataInsertAll' Text
tdiaTableId
  = lens _tdiaTableId (\ s a -> s{_tdiaTableId = a})

-- | Selector specifying which fields to include in a partial response.
tdiaFields :: Lens' TableDataInsertAll' (Maybe Text)
tdiaFields
  = lens _tdiaFields (\ s a -> s{_tdiaFields = a})

instance GoogleAuth TableDataInsertAll' where
        _AuthKey = tdiaKey . _Just
        _AuthToken = tdiaOAuthToken . _Just

instance GoogleRequest TableDataInsertAll' where
        type Rs TableDataInsertAll' =
             TableDataInsertAllResponse
        request = requestWith bigQueryRequest
        requestWith rq TableDataInsertAll'{..}
          = go _tdiaProjectId _tdiaDatasetId _tdiaTableId
              _tdiaQuotaUser
              (Just _tdiaPrettyPrint)
              _tdiaUserIP
              _tdiaFields
              _tdiaKey
              _tdiaOAuthToken
              (Just AltJSON)
              _tdiaPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TableDataInsertAllResource)
                      rq
