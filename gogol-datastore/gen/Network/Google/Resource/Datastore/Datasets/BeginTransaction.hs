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
-- Module      : Network.Google.Resource.Datastore.Datasets.BeginTransaction
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Begin a new transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsBeginTransaction@.
module Network.Google.Resource.Datastore.Datasets.BeginTransaction
    (
    -- * REST Resource
      DatasetsBeginTransactionResource

    -- * Creating a Request
    , datasetsBeginTransaction'
    , DatasetsBeginTransaction'

    -- * Request Lenses
    , dbtQuotaUser
    , dbtPrettyPrint
    , dbtBeginTransactionRequest
    , dbtUserIP
    , dbtKey
    , dbtDatasetId
    , dbtOAuthToken
    , dbtFields
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsBeginTransaction@ which the
-- 'DatasetsBeginTransaction'' request conforms to.
type DatasetsBeginTransactionResource =
     Capture "datasetId" Text :>
       "beginTransaction" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltPROTO :>
                       ReqBody '[JSON] BeginTransactionRequest :>
                         Post '[JSON] BeginTransactionResponse

-- | Begin a new transaction.
--
-- /See:/ 'datasetsBeginTransaction'' smart constructor.
data DatasetsBeginTransaction' = DatasetsBeginTransaction'
    { _dbtQuotaUser               :: !(Maybe Text)
    , _dbtPrettyPrint             :: !Bool
    , _dbtBeginTransactionRequest :: !BeginTransactionRequest
    , _dbtUserIP                  :: !(Maybe Text)
    , _dbtKey                     :: !(Maybe Key)
    , _dbtDatasetId               :: !Text
    , _dbtOAuthToken              :: !(Maybe OAuthToken)
    , _dbtFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsBeginTransaction'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbtQuotaUser'
--
-- * 'dbtPrettyPrint'
--
-- * 'dbtBeginTransactionRequest'
--
-- * 'dbtUserIP'
--
-- * 'dbtKey'
--
-- * 'dbtDatasetId'
--
-- * 'dbtOAuthToken'
--
-- * 'dbtFields'
datasetsBeginTransaction'
    :: BeginTransactionRequest -- ^ 'BeginTransactionRequest'
    -> Text -- ^ 'datasetId'
    -> DatasetsBeginTransaction'
datasetsBeginTransaction' pDbtBeginTransactionRequest_ pDbtDatasetId_ =
    DatasetsBeginTransaction'
    { _dbtQuotaUser = Nothing
    , _dbtPrettyPrint = True
    , _dbtBeginTransactionRequest = pDbtBeginTransactionRequest_
    , _dbtUserIP = Nothing
    , _dbtKey = Nothing
    , _dbtDatasetId = pDbtDatasetId_
    , _dbtOAuthToken = Nothing
    , _dbtFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dbtQuotaUser :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtQuotaUser
  = lens _dbtQuotaUser (\ s a -> s{_dbtQuotaUser = a})

-- | Returns response with indentations and line breaks.
dbtPrettyPrint :: Lens' DatasetsBeginTransaction' Bool
dbtPrettyPrint
  = lens _dbtPrettyPrint
      (\ s a -> s{_dbtPrettyPrint = a})

-- | Multipart request metadata.
dbtBeginTransactionRequest :: Lens' DatasetsBeginTransaction' BeginTransactionRequest
dbtBeginTransactionRequest
  = lens _dbtBeginTransactionRequest
      (\ s a -> s{_dbtBeginTransactionRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dbtUserIP :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtUserIP
  = lens _dbtUserIP (\ s a -> s{_dbtUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dbtKey :: Lens' DatasetsBeginTransaction' (Maybe Key)
dbtKey = lens _dbtKey (\ s a -> s{_dbtKey = a})

-- | Identifies the dataset.
dbtDatasetId :: Lens' DatasetsBeginTransaction' Text
dbtDatasetId
  = lens _dbtDatasetId (\ s a -> s{_dbtDatasetId = a})

-- | OAuth 2.0 token for the current user.
dbtOAuthToken :: Lens' DatasetsBeginTransaction' (Maybe OAuthToken)
dbtOAuthToken
  = lens _dbtOAuthToken
      (\ s a -> s{_dbtOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dbtFields :: Lens' DatasetsBeginTransaction' (Maybe Text)
dbtFields
  = lens _dbtFields (\ s a -> s{_dbtFields = a})

instance GoogleAuth DatasetsBeginTransaction' where
        authKey = dbtKey . _Just
        authToken = dbtOAuthToken . _Just

instance GoogleRequest DatasetsBeginTransaction'
         where
        type Rs DatasetsBeginTransaction' =
             BeginTransactionResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsBeginTransaction'{..}
          = go _dbtDatasetId _dbtQuotaUser
              (Just _dbtPrettyPrint)
              _dbtUserIP
              _dbtFields
              _dbtKey
              _dbtOAuthToken
              (Just AltPROTO)
              _dbtBeginTransactionRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsBeginTransactionResource)
                      r
                      u
