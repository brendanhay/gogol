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
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTablesGet@.
module Network.Google.Resource.BigQuery.Tables.Get
    (
    -- * REST Resource
      TablesGetResource

    -- * Creating a Request
    , tablesGet'
    , TablesGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIP
    , tgKey
    , tgDatasetId
    , tgProjectId
    , tgOAuthToken
    , tgTableId
    , tgFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTablesGet@ method which the
-- 'TablesGet'' request conforms to.
type TablesGetResource =
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
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Gets the specified table resource by table ID. This method does not
-- return the data in the table, it only returns the table resource, which
-- describes the structure of this table.
--
-- /See:/ 'tablesGet'' smart constructor.
data TablesGet' = TablesGet'
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIP      :: !(Maybe Text)
    , _tgKey         :: !(Maybe AuthKey)
    , _tgDatasetId   :: !Text
    , _tgProjectId   :: !Text
    , _tgOAuthToken  :: !(Maybe OAuthToken)
    , _tgTableId     :: !Text
    , _tgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIP'
--
-- * 'tgKey'
--
-- * 'tgDatasetId'
--
-- * 'tgProjectId'
--
-- * 'tgOAuthToken'
--
-- * 'tgTableId'
--
-- * 'tgFields'
tablesGet'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TablesGet'
tablesGet' pTgDatasetId_ pTgProjectId_ pTgTableId_ =
    TablesGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIP = Nothing
    , _tgKey = Nothing
    , _tgDatasetId = pTgDatasetId_
    , _tgProjectId = pTgProjectId_
    , _tgOAuthToken = Nothing
    , _tgTableId = pTgTableId_
    , _tgFields = Nothing
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
tgUserIP :: Lens' TablesGet' (Maybe Text)
tgUserIP = lens _tgUserIP (\ s a -> s{_tgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TablesGet' (Maybe AuthKey)
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
tgOAuthToken :: Lens' TablesGet' (Maybe OAuthToken)
tgOAuthToken
  = lens _tgOAuthToken (\ s a -> s{_tgOAuthToken = a})

-- | Table ID of the requested table
tgTableId :: Lens' TablesGet' Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TablesGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

instance GoogleAuth TablesGet' where
        _AuthKey = tgKey . _Just
        _AuthToken = tgOAuthToken . _Just

instance GoogleRequest TablesGet' where
        type Rs TablesGet' = Table
        request = requestWith bigQueryRequest
        requestWith rq TablesGet'{..}
          = go _tgProjectId _tgDatasetId _tgTableId
              _tgQuotaUser
              (Just _tgPrettyPrint)
              _tgUserIP
              _tgFields
              _tgKey
              _tgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TablesGetResource) rq
