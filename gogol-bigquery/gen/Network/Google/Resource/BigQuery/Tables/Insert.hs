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
-- Module      : Network.Google.Resource.BigQuery.Tables.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new, empty table in the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTablesInsert@.
module Network.Google.Resource.BigQuery.Tables.Insert
    (
    -- * REST Resource
      TablesInsertResource

    -- * Creating a Request
    , tablesInsert'
    , TablesInsert'

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIp
    , tiKey
    , tiDatasetId
    , tiProjectId
    , tiOauthToken
    , tiFields
    , tiAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesInsert@ which the
-- 'TablesInsert'' request conforms to.
type TablesInsertResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Table

-- | Creates a new, empty table in the dataset.
--
-- /See:/ 'tablesInsert'' smart constructor.
data TablesInsert' = TablesInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIp      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Text)
    , _tiDatasetId   :: !Text
    , _tiProjectId   :: !Text
    , _tiOauthToken  :: !(Maybe Text)
    , _tiFields      :: !(Maybe Text)
    , _tiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIp'
--
-- * 'tiKey'
--
-- * 'tiDatasetId'
--
-- * 'tiProjectId'
--
-- * 'tiOauthToken'
--
-- * 'tiFields'
--
-- * 'tiAlt'
tablesInsert'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> TablesInsert'
tablesInsert' pTiDatasetId_ pTiProjectId_ =
    TablesInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIp = Nothing
    , _tiKey = Nothing
    , _tiDatasetId = pTiDatasetId_
    , _tiProjectId = pTiProjectId_
    , _tiOauthToken = Nothing
    , _tiFields = Nothing
    , _tiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TablesInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TablesInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIp :: Lens' TablesInsert' (Maybe Text)
tiUserIp = lens _tiUserIp (\ s a -> s{_tiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TablesInsert' (Maybe Text)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | Dataset ID of the new table
tiDatasetId :: Lens' TablesInsert' Text
tiDatasetId
  = lens _tiDatasetId (\ s a -> s{_tiDatasetId = a})

-- | Project ID of the new table
tiProjectId :: Lens' TablesInsert' Text
tiProjectId
  = lens _tiProjectId (\ s a -> s{_tiProjectId = a})

-- | OAuth 2.0 token for the current user.
tiOauthToken :: Lens' TablesInsert' (Maybe Text)
tiOauthToken
  = lens _tiOauthToken (\ s a -> s{_tiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TablesInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Data format for the response.
tiAlt :: Lens' TablesInsert' Alt
tiAlt = lens _tiAlt (\ s a -> s{_tiAlt = a})

instance GoogleRequest TablesInsert' where
        type Rs TablesInsert' = Table
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesInsert'{..}
          = go _tiQuotaUser (Just _tiPrettyPrint) _tiUserIp
              _tiKey
              _tiDatasetId
              _tiProjectId
              _tiOauthToken
              _tiFields
              (Just _tiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesInsertResource)
                      r
                      u
