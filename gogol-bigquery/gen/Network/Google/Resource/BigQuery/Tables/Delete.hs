{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Tables.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the table specified by tableId from the dataset. If the table
-- contains data, all the data will be deleted.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTablesDelete@.
module BigQuery.Tables.Delete
    (
    -- * REST Resource
      TablesDeleteAPI

    -- * Creating a Request
    , tablesDelete
    , TablesDelete

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIp
    , tdKey
    , tdDatasetId
    , tdProjectId
    , tdOauthToken
    , tdTableId
    , tdFields
    , tdAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesDelete@ which the
-- 'TablesDelete' request conforms to.
type TablesDeleteAPI =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :> Delete '[JSON] ()

-- | Deletes the table specified by tableId from the dataset. If the table
-- contains data, all the data will be deleted.
--
-- /See:/ 'tablesDelete' smart constructor.
data TablesDelete = TablesDelete
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdDatasetId   :: !Text
    , _tdProjectId   :: !Text
    , _tdOauthToken  :: !(Maybe Text)
    , _tdTableId     :: !Text
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdDatasetId'
--
-- * 'tdProjectId'
--
-- * 'tdOauthToken'
--
-- * 'tdTableId'
--
-- * 'tdFields'
--
-- * 'tdAlt'
tablesDelete
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TablesDelete
tablesDelete pTdDatasetId_ pTdProjectId_ pTdTableId_ =
    TablesDelete
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdDatasetId = pTdDatasetId_
    , _tdProjectId = pTdProjectId_
    , _tdOauthToken = Nothing
    , _tdTableId = pTdTableId_
    , _tdFields = Nothing
    , _tdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TablesDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TablesDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TablesDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TablesDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | Dataset ID of the table to delete
tdDatasetId :: Lens' TablesDelete' Text
tdDatasetId
  = lens _tdDatasetId (\ s a -> s{_tdDatasetId = a})

-- | Project ID of the table to delete
tdProjectId :: Lens' TablesDelete' Text
tdProjectId
  = lens _tdProjectId (\ s a -> s{_tdProjectId = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TablesDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Table ID of the table to delete
tdTableId :: Lens' TablesDelete' Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TablesDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TablesDelete' Text
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TablesDelete' where
        type Rs TablesDelete' = ()
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesDelete{..}
          = go _tdQuotaUser _tdPrettyPrint _tdUserIp _tdKey
              _tdDatasetId
              _tdProjectId
              _tdOauthToken
              _tdTableId
              _tdFields
              _tdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TablesDeleteAPI) r
                      u
