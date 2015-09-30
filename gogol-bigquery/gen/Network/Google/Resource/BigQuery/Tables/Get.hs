{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Tables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified table resource by table ID. This method does not
-- return the data in the table, it only returns the table resource, which
-- describes the structure of this table.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTablesGet@.
module BigQuery.Tables.Get
    (
    -- * REST Resource
      TablesGetAPI

    -- * Creating a Request
    , tablesGet
    , TablesGet

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIp
    , tgKey
    , tgDatasetId
    , tgProjectId
    , tgOauthToken
    , tgTableId
    , tgFields
    , tgAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesGet@ which the
-- 'TablesGet' request conforms to.
type TablesGetAPI =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :> Get '[JSON] Table

-- | Gets the specified table resource by table ID. This method does not
-- return the data in the table, it only returns the table resource, which
-- describes the structure of this table.
--
-- /See:/ 'tablesGet' smart constructor.
data TablesGet = TablesGet
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgDatasetId   :: !Text
    , _tgProjectId   :: !Text
    , _tgOauthToken  :: !(Maybe Text)
    , _tgTableId     :: !Text
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgDatasetId'
--
-- * 'tgProjectId'
--
-- * 'tgOauthToken'
--
-- * 'tgTableId'
--
-- * 'tgFields'
--
-- * 'tgAlt'
tablesGet
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TablesGet
tablesGet pTgDatasetId_ pTgProjectId_ pTgTableId_ =
    TablesGet
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgDatasetId = pTgDatasetId_
    , _tgProjectId = pTgProjectId_
    , _tgOauthToken = Nothing
    , _tgTableId = pTgTableId_
    , _tgFields = Nothing
    , _tgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TablesGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TablesGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TablesGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TablesGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | Dataset ID of the requested table
tgDatasetId :: Lens' TablesGet' Text
tgDatasetId
  = lens _tgDatasetId (\ s a -> s{_tgDatasetId = a})

-- | Project ID of the requested table
tgProjectId :: Lens' TablesGet' Text
tgProjectId
  = lens _tgProjectId (\ s a -> s{_tgProjectId = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TablesGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Table ID of the requested table
tgTableId :: Lens' TablesGet' Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TablesGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TablesGet' Text
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TablesGet' where
        type Rs TablesGet' = Table
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesGet{..}
          = go _tgQuotaUser _tgPrettyPrint _tgUserIp _tgKey
              _tgDatasetId
              _tgProjectId
              _tgOauthToken
              _tgTableId
              _tgFields
              _tgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TablesGetAPI) r u
