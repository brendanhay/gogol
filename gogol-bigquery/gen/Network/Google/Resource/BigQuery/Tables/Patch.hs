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
-- Module      : Network.Google.Resource.BigQuery.Tables.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource. This method supports
-- patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTablesPatch@.
module Network.Google.Resource.BigQuery.Tables.Patch
    (
    -- * REST Resource
      TablesPatchResource

    -- * Creating a Request
    , tablesPatch'
    , TablesPatch'

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpUserIP
    , tpKey
    , tpDatasetId
    , tpProjectId
    , tpOAuthToken
    , tpTableId
    , tpTable
    , tpFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesPatch@ which the
-- 'TablesPatch'' request conforms to.
type TablesPatchResource =
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
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Table :> Patch '[JSON] Table

-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource. This method supports
-- patch semantics.
--
-- /See:/ 'tablesPatch'' smart constructor.
data TablesPatch' = TablesPatch'
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpUserIP      :: !(Maybe Text)
    , _tpKey         :: !(Maybe Key)
    , _tpDatasetId   :: !Text
    , _tpProjectId   :: !Text
    , _tpOAuthToken  :: !(Maybe OAuthToken)
    , _tpTableId     :: !Text
    , _tpTable       :: !Table
    , _tpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpUserIP'
--
-- * 'tpKey'
--
-- * 'tpDatasetId'
--
-- * 'tpProjectId'
--
-- * 'tpOAuthToken'
--
-- * 'tpTableId'
--
-- * 'tpTable'
--
-- * 'tpFields'
tablesPatch'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> Table -- ^ 'Table'
    -> TablesPatch'
tablesPatch' pTpDatasetId_ pTpProjectId_ pTpTableId_ pTpTable_ =
    TablesPatch'
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpUserIP = Nothing
    , _tpKey = Nothing
    , _tpDatasetId = pTpDatasetId_
    , _tpProjectId = pTpProjectId_
    , _tpOAuthToken = Nothing
    , _tpTableId = pTpTableId_
    , _tpTable = pTpTable_
    , _tpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TablesPatch' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TablesPatch' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIP :: Lens' TablesPatch' (Maybe Text)
tpUserIP = lens _tpUserIP (\ s a -> s{_tpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TablesPatch' (Maybe Key)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | Dataset ID of the table to update
tpDatasetId :: Lens' TablesPatch' Text
tpDatasetId
  = lens _tpDatasetId (\ s a -> s{_tpDatasetId = a})

-- | Project ID of the table to update
tpProjectId :: Lens' TablesPatch' Text
tpProjectId
  = lens _tpProjectId (\ s a -> s{_tpProjectId = a})

-- | OAuth 2.0 token for the current user.
tpOAuthToken :: Lens' TablesPatch' (Maybe OAuthToken)
tpOAuthToken
  = lens _tpOAuthToken (\ s a -> s{_tpOAuthToken = a})

-- | Table ID of the table to update
tpTableId :: Lens' TablesPatch' Text
tpTableId
  = lens _tpTableId (\ s a -> s{_tpTableId = a})

-- | Multipart request metadata.
tpTable :: Lens' TablesPatch' Table
tpTable = lens _tpTable (\ s a -> s{_tpTable = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TablesPatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

instance GoogleAuth TablesPatch' where
        authKey = tpKey . _Just
        authToken = tpOAuthToken . _Just

instance GoogleRequest TablesPatch' where
        type Rs TablesPatch' = Table
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesPatch'{..}
          = go _tpProjectId _tpDatasetId _tpTableId
              _tpQuotaUser
              (Just _tpPrettyPrint)
              _tpUserIP
              _tpFields
              _tpKey
              _tpOAuthToken
              (Just AltJSON)
              _tpTable
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPatchResource)
                      r
                      u
