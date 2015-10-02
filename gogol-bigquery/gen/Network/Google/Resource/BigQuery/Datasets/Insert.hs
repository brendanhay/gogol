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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new empty dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsInsert@.
module Network.Google.Resource.BigQuery.Datasets.Insert
    (
    -- * REST Resource
      DatasetsInsertResource

    -- * Creating a Request
    , datasetsInsert'
    , DatasetsInsert'

    -- * Request Lenses
    , diQuotaUser
    , diPrettyPrint
    , diDataset
    , diUserIP
    , diKey
    , diProjectId
    , diOAuthToken
    , diFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsInsert@ which the
-- 'DatasetsInsert'' request conforms to.
type DatasetsInsertResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Dataset :> Post '[JSON] Dataset

-- | Creates a new empty dataset.
--
-- /See:/ 'datasetsInsert'' smart constructor.
data DatasetsInsert' = DatasetsInsert'
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diDataset     :: !Dataset
    , _diUserIP      :: !(Maybe Text)
    , _diKey         :: !(Maybe Key)
    , _diProjectId   :: !Text
    , _diOAuthToken  :: !(Maybe OAuthToken)
    , _diFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diQuotaUser'
--
-- * 'diPrettyPrint'
--
-- * 'diDataset'
--
-- * 'diUserIP'
--
-- * 'diKey'
--
-- * 'diProjectId'
--
-- * 'diOAuthToken'
--
-- * 'diFields'
datasetsInsert'
    :: Dataset -- ^ 'Dataset'
    -> Text -- ^ 'projectId'
    -> DatasetsInsert'
datasetsInsert' pDiDataset_ pDiProjectId_ =
    DatasetsInsert'
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diDataset = pDiDataset_
    , _diUserIP = Nothing
    , _diKey = Nothing
    , _diProjectId = pDiProjectId_
    , _diOAuthToken = Nothing
    , _diFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
diQuotaUser :: Lens' DatasetsInsert' (Maybe Text)
diQuotaUser
  = lens _diQuotaUser (\ s a -> s{_diQuotaUser = a})

-- | Returns response with indentations and line breaks.
diPrettyPrint :: Lens' DatasetsInsert' Bool
diPrettyPrint
  = lens _diPrettyPrint
      (\ s a -> s{_diPrettyPrint = a})

-- | Multipart request metadata.
diDataset :: Lens' DatasetsInsert' Dataset
diDataset
  = lens _diDataset (\ s a -> s{_diDataset = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
diUserIP :: Lens' DatasetsInsert' (Maybe Text)
diUserIP = lens _diUserIP (\ s a -> s{_diUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DatasetsInsert' (Maybe Key)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | Project ID of the new dataset
diProjectId :: Lens' DatasetsInsert' Text
diProjectId
  = lens _diProjectId (\ s a -> s{_diProjectId = a})

-- | OAuth 2.0 token for the current user.
diOAuthToken :: Lens' DatasetsInsert' (Maybe OAuthToken)
diOAuthToken
  = lens _diOAuthToken (\ s a -> s{_diOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DatasetsInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

instance GoogleAuth DatasetsInsert' where
        authKey = diKey . _Just
        authToken = diOAuthToken . _Just

instance GoogleRequest DatasetsInsert' where
        type Rs DatasetsInsert' = Dataset
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsInsert'{..}
          = go _diQuotaUser (Just _diPrettyPrint) _diUserIP
              _diKey
              _diProjectId
              _diOAuthToken
              _diFields
              (Just AltJSON)
              _diDataset
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsInsertResource)
                      r
                      u
