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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryDatasetsPatch@.
module Network.Google.Resource.BigQuery.Datasets.Patch
    (
    -- * REST Resource
      DatasetsPatchResource

    -- * Creating a Request
    , datasetsPatch'
    , DatasetsPatch'

    -- * Request Lenses
    , dpQuotaUser
    , dpPrettyPrint
    , dpUserIP
    , dpPayload
    , dpKey
    , dpDatasetId
    , dpProjectId
    , dpOAuthToken
    , dpFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryDatasetsPatch@ which the
-- 'DatasetsPatch'' request conforms to.
type DatasetsPatchResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Dataset :> Patch '[JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ 'datasetsPatch'' smart constructor.
data DatasetsPatch' = DatasetsPatch'
    { _dpQuotaUser   :: !(Maybe Text)
    , _dpPrettyPrint :: !Bool
    , _dpUserIP      :: !(Maybe Text)
    , _dpPayload     :: !Dataset
    , _dpKey         :: !(Maybe AuthKey)
    , _dpDatasetId   :: !Text
    , _dpProjectId   :: !Text
    , _dpOAuthToken  :: !(Maybe OAuthToken)
    , _dpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpQuotaUser'
--
-- * 'dpPrettyPrint'
--
-- * 'dpUserIP'
--
-- * 'dpPayload'
--
-- * 'dpKey'
--
-- * 'dpDatasetId'
--
-- * 'dpProjectId'
--
-- * 'dpOAuthToken'
--
-- * 'dpFields'
datasetsPatch'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsPatch'
datasetsPatch' pDpPayload_ pDpDatasetId_ pDpProjectId_ =
    DatasetsPatch'
    { _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpUserIP = Nothing
    , _dpPayload = pDpPayload_
    , _dpKey = Nothing
    , _dpDatasetId = pDpDatasetId_
    , _dpProjectId = pDpProjectId_
    , _dpOAuthToken = Nothing
    , _dpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DatasetsPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DatasetsPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIP :: Lens' DatasetsPatch' (Maybe Text)
dpUserIP = lens _dpUserIP (\ s a -> s{_dpUserIP = a})

-- | Multipart request metadata.
dpPayload :: Lens' DatasetsPatch' Dataset
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DatasetsPatch' (Maybe AuthKey)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | Dataset ID of the dataset being updated
dpDatasetId :: Lens' DatasetsPatch' Text
dpDatasetId
  = lens _dpDatasetId (\ s a -> s{_dpDatasetId = a})

-- | Project ID of the dataset being updated
dpProjectId :: Lens' DatasetsPatch' Text
dpProjectId
  = lens _dpProjectId (\ s a -> s{_dpProjectId = a})

-- | OAuth 2.0 token for the current user.
dpOAuthToken :: Lens' DatasetsPatch' (Maybe OAuthToken)
dpOAuthToken
  = lens _dpOAuthToken (\ s a -> s{_dpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DatasetsPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

instance GoogleAuth DatasetsPatch' where
        authKey = dpKey . _Just
        authToken = dpOAuthToken . _Just

instance GoogleRequest DatasetsPatch' where
        type Rs DatasetsPatch' = Dataset
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u DatasetsPatch'{..}
          = go _dpProjectId _dpDatasetId _dpQuotaUser
              (Just _dpPrettyPrint)
              _dpUserIP
              _dpFields
              _dpKey
              _dpOAuthToken
              (Just AltJSON)
              _dpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsPatchResource)
                      r
                      u
