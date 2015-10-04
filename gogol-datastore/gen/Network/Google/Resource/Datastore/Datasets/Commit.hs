{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Datastore.Datasets.Commit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsCommit@.
module Network.Google.Resource.Datastore.Datasets.Commit
    (
    -- * REST Resource
      DatasetsCommitResource

    -- * Creating a Request
    , datasetsCommit'
    , DatasetsCommit'

    -- * Request Lenses
    , dcQuotaUser
    , dcPrettyPrint
    , dcUserIP
    , dcPayload
    , dcKey
    , dcDatasetId
    , dcOAuthToken
    , dcFields
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsCommit@ which the
-- 'DatasetsCommit'' request conforms to.
type DatasetsCommitResource =
     Capture "datasetId" Text :>
       "commit" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltPROTO :>
                       ReqBody '[OctetStream] CommitRequest :>
                         Post '[JSON] CommitResponse

-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ 'datasetsCommit'' smart constructor.
data DatasetsCommit' = DatasetsCommit'
    { _dcQuotaUser   :: !(Maybe Text)
    , _dcPrettyPrint :: !Bool
    , _dcUserIP      :: !(Maybe Text)
    , _dcPayload     :: !CommitRequest
    , _dcKey         :: !(Maybe Key)
    , _dcDatasetId   :: !Text
    , _dcOAuthToken  :: !(Maybe OAuthToken)
    , _dcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsCommit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcQuotaUser'
--
-- * 'dcPrettyPrint'
--
-- * 'dcUserIP'
--
-- * 'dcPayload'
--
-- * 'dcKey'
--
-- * 'dcDatasetId'
--
-- * 'dcOAuthToken'
--
-- * 'dcFields'
datasetsCommit'
    :: CommitRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsCommit'
datasetsCommit' pDcPayload_ pDcDatasetId_ =
    DatasetsCommit'
    { _dcQuotaUser = Nothing
    , _dcPrettyPrint = True
    , _dcUserIP = Nothing
    , _dcPayload = pDcPayload_
    , _dcKey = Nothing
    , _dcDatasetId = pDcDatasetId_
    , _dcOAuthToken = Nothing
    , _dcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dcQuotaUser :: Lens' DatasetsCommit' (Maybe Text)
dcQuotaUser
  = lens _dcQuotaUser (\ s a -> s{_dcQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcPrettyPrint :: Lens' DatasetsCommit' Bool
dcPrettyPrint
  = lens _dcPrettyPrint
      (\ s a -> s{_dcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dcUserIP :: Lens' DatasetsCommit' (Maybe Text)
dcUserIP = lens _dcUserIP (\ s a -> s{_dcUserIP = a})

-- | Multipart request metadata.
dcPayload :: Lens' DatasetsCommit' CommitRequest
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcKey :: Lens' DatasetsCommit' (Maybe Key)
dcKey = lens _dcKey (\ s a -> s{_dcKey = a})

-- | Identifies the dataset.
dcDatasetId :: Lens' DatasetsCommit' Text
dcDatasetId
  = lens _dcDatasetId (\ s a -> s{_dcDatasetId = a})

-- | OAuth 2.0 token for the current user.
dcOAuthToken :: Lens' DatasetsCommit' (Maybe OAuthToken)
dcOAuthToken
  = lens _dcOAuthToken (\ s a -> s{_dcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcFields :: Lens' DatasetsCommit' (Maybe Text)
dcFields = lens _dcFields (\ s a -> s{_dcFields = a})

instance GoogleAuth DatasetsCommit' where
        authKey = dcKey . _Just
        authToken = dcOAuthToken . _Just

instance GoogleRequest DatasetsCommit' where
        type Rs DatasetsCommit' = CommitResponse
        request = requestWithRoute defReq datastoreURL
        requestWithRoute r u DatasetsCommit'{..}
          = go _dcDatasetId _dcQuotaUser (Just _dcPrettyPrint)
              _dcUserIP
              _dcFields
              _dcKey
              _dcOAuthToken
              (Just AltPROTO)
              _dcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsCommitResource)
                      r
                      u
