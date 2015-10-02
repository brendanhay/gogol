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
module Network.Google.Resource.BigQuery.Tables.Delete
    (
    -- * REST Resource
      TablesDeleteResource

    -- * Creating a Request
    , tablesDelete'
    , TablesDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIP
    , tdKey
    , tdDatasetId
    , tdProjectId
    , tdOAuthToken
    , tdTableId
    , tdFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesDelete@ which the
-- 'TablesDelete'' request conforms to.
type TablesDeleteResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the table specified by tableId from the dataset. If the table
-- contains data, all the data will be deleted.
--
-- /See:/ 'tablesDelete'' smart constructor.
data TablesDelete' = TablesDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIP      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Key)
    , _tdDatasetId   :: !Text
    , _tdProjectId   :: !Text
    , _tdOAuthToken  :: !(Maybe OAuthToken)
    , _tdTableId     :: !Text
    , _tdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIP'
--
-- * 'tdKey'
--
-- * 'tdDatasetId'
--
-- * 'tdProjectId'
--
-- * 'tdOAuthToken'
--
-- * 'tdTableId'
--
-- * 'tdFields'
tablesDelete'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TablesDelete'
tablesDelete' pTdDatasetId_ pTdProjectId_ pTdTableId_ =
    TablesDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIP = Nothing
    , _tdKey = Nothing
    , _tdDatasetId = pTdDatasetId_
    , _tdProjectId = pTdProjectId_
    , _tdOAuthToken = Nothing
    , _tdTableId = pTdTableId_
    , _tdFields = Nothing
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
tdUserIP :: Lens' TablesDelete' (Maybe Text)
tdUserIP = lens _tdUserIP (\ s a -> s{_tdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TablesDelete' (Maybe Key)
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
tdOAuthToken :: Lens' TablesDelete' (Maybe OAuthToken)
tdOAuthToken
  = lens _tdOAuthToken (\ s a -> s{_tdOAuthToken = a})

-- | Table ID of the table to delete
tdTableId :: Lens' TablesDelete' Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TablesDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

instance GoogleAuth TablesDelete' where
        authKey = tdKey . _Just
        authToken = tdOAuthToken . _Just

instance GoogleRequest TablesDelete' where
        type Rs TablesDelete' = ()
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesDelete'{..}
          = go _tdProjectId _tdDatasetId _tdTableId
              _tdQuotaUser
              (Just _tdPrettyPrint)
              _tdUserIP
              _tdFields
              _tdKey
              _tdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesDeleteResource)
                      r
                      u
