{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Datasets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsUpdate@.
module Network.Google.Resource.BigQuery.Datasets.Update
    (
    -- * REST Resource
      DatasetsUpdateResource

    -- * Creating a Request
    , datasetsUpdate'
    , DatasetsUpdate'

    -- * Request Lenses
    , duQuotaUser
    , duPrettyPrint
    , duUserIP
    , duPayload
    , duKey
    , duDatasetId
    , duProjectId
    , duOAuthToken
    , duFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsUpdate@ which the
-- 'DatasetsUpdate'' request conforms to.
type DatasetsUpdateResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Dataset :> Put '[JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ 'datasetsUpdate'' smart constructor.
data DatasetsUpdate' = DatasetsUpdate'
    { _duQuotaUser   :: !(Maybe Text)
    , _duPrettyPrint :: !Bool
    , _duUserIP      :: !(Maybe Text)
    , _duPayload     :: !Dataset
    , _duKey         :: !(Maybe Key)
    , _duDatasetId   :: !Text
    , _duProjectId   :: !Text
    , _duOAuthToken  :: !(Maybe OAuthToken)
    , _duFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duQuotaUser'
--
-- * 'duPrettyPrint'
--
-- * 'duUserIP'
--
-- * 'duPayload'
--
-- * 'duKey'
--
-- * 'duDatasetId'
--
-- * 'duProjectId'
--
-- * 'duOAuthToken'
--
-- * 'duFields'
datasetsUpdate'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsUpdate'
datasetsUpdate' pDuPayload_ pDuDatasetId_ pDuProjectId_ =
    DatasetsUpdate'
    { _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duUserIP = Nothing
    , _duPayload = pDuPayload_
    , _duKey = Nothing
    , _duDatasetId = pDuDatasetId_
    , _duProjectId = pDuProjectId_
    , _duOAuthToken = Nothing
    , _duFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
duQuotaUser :: Lens' DatasetsUpdate' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DatasetsUpdate' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
duUserIP :: Lens' DatasetsUpdate' (Maybe Text)
duUserIP = lens _duUserIP (\ s a -> s{_duUserIP = a})

-- | Multipart request metadata.
duPayload :: Lens' DatasetsUpdate' Dataset
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DatasetsUpdate' (Maybe Key)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | Dataset ID of the dataset being updated
duDatasetId :: Lens' DatasetsUpdate' Text
duDatasetId
  = lens _duDatasetId (\ s a -> s{_duDatasetId = a})

-- | Project ID of the dataset being updated
duProjectId :: Lens' DatasetsUpdate' Text
duProjectId
  = lens _duProjectId (\ s a -> s{_duProjectId = a})

-- | OAuth 2.0 token for the current user.
duOAuthToken :: Lens' DatasetsUpdate' (Maybe OAuthToken)
duOAuthToken
  = lens _duOAuthToken (\ s a -> s{_duOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DatasetsUpdate' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

instance GoogleAuth DatasetsUpdate' where
        authKey = duKey . _Just
        authToken = duOAuthToken . _Just

instance GoogleRequest DatasetsUpdate' where
        type Rs DatasetsUpdate' = Dataset
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsUpdate'{..}
          = go _duProjectId _duDatasetId _duQuotaUser
              (Just _duPrettyPrint)
              _duUserIP
              _duFields
              _duKey
              _duOAuthToken
              (Just AltJSON)
              _duPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsUpdateResource)
                      r
                      u
