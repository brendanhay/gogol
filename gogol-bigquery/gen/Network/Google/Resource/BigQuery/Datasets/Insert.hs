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
    , diUserIP
    , diPayload
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Dataset :> Post '[JSON] Dataset

-- | Creates a new empty dataset.
--
-- /See:/ 'datasetsInsert'' smart constructor.
data DatasetsInsert' = DatasetsInsert'
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diUserIP      :: !(Maybe Text)
    , _diPayload     :: !Dataset
    , _diKey         :: !(Maybe AuthKey)
    , _diProjectId   :: !Text
    , _diOAuthToken  :: !(Maybe OAuthToken)
    , _diFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diQuotaUser'
--
-- * 'diPrettyPrint'
--
-- * 'diUserIP'
--
-- * 'diPayload'
--
-- * 'diKey'
--
-- * 'diProjectId'
--
-- * 'diOAuthToken'
--
-- * 'diFields'
datasetsInsert'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> DatasetsInsert'
datasetsInsert' pDiPayload_ pDiProjectId_ =
    DatasetsInsert'
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diUserIP = Nothing
    , _diPayload = pDiPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
diUserIP :: Lens' DatasetsInsert' (Maybe Text)
diUserIP = lens _diUserIP (\ s a -> s{_diUserIP = a})

-- | Multipart request metadata.
diPayload :: Lens' DatasetsInsert' Dataset
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DatasetsInsert' (Maybe AuthKey)
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
        request = requestWith bigQueryRequest
        requestWith rq DatasetsInsert'{..}
          = go _diProjectId _diQuotaUser (Just _diPrettyPrint)
              _diUserIP
              _diFields
              _diKey
              _diOAuthToken
              (Just AltJSON)
              _diPayload
          where go
                  = clientBuild (Proxy :: Proxy DatasetsInsertResource)
                      rq
