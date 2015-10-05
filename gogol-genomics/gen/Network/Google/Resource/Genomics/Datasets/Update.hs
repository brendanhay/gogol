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
-- Module      : Network.Google.Resource.Genomics.Datasets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsDatasetsUpdate@.
module Network.Google.Resource.Genomics.Datasets.Update
    (
    -- * REST Resource
      DatasetsUpdateResource

    -- * Creating a Request
    , datasetsUpdate'
    , DatasetsUpdate'

    -- * Request Lenses
    , dQuotaUser
    , dPrettyPrint
    , dUserIP
    , dPayload
    , dKey
    , dDatasetId
    , dOAuthToken
    , dFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsUpdate@ which the
-- 'DatasetsUpdate'' request conforms to.
type DatasetsUpdateResource =
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

-- | Updates a dataset.
--
-- /See:/ 'datasetsUpdate'' smart constructor.
data DatasetsUpdate' = DatasetsUpdate'
    { _dQuotaUser   :: !(Maybe Text)
    , _dPrettyPrint :: !Bool
    , _dUserIP      :: !(Maybe Text)
    , _dPayload     :: !Dataset
    , _dKey         :: !(Maybe Key)
    , _dDatasetId   :: !Text
    , _dOAuthToken  :: !(Maybe OAuthToken)
    , _dFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dQuotaUser'
--
-- * 'dPrettyPrint'
--
-- * 'dUserIP'
--
-- * 'dPayload'
--
-- * 'dKey'
--
-- * 'dDatasetId'
--
-- * 'dOAuthToken'
--
-- * 'dFields'
datasetsUpdate'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsUpdate'
datasetsUpdate' pDPayload_ pDDatasetId_ =
    DatasetsUpdate'
    { _dQuotaUser = Nothing
    , _dPrettyPrint = True
    , _dUserIP = Nothing
    , _dPayload = pDPayload_
    , _dKey = Nothing
    , _dDatasetId = pDDatasetId_
    , _dOAuthToken = Nothing
    , _dFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dQuotaUser :: Lens' DatasetsUpdate' (Maybe Text)
dQuotaUser
  = lens _dQuotaUser (\ s a -> s{_dQuotaUser = a})

-- | Returns response with indentations and line breaks.
dPrettyPrint :: Lens' DatasetsUpdate' Bool
dPrettyPrint
  = lens _dPrettyPrint (\ s a -> s{_dPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dUserIP :: Lens' DatasetsUpdate' (Maybe Text)
dUserIP = lens _dUserIP (\ s a -> s{_dUserIP = a})

-- | Multipart request metadata.
dPayload :: Lens' DatasetsUpdate' Dataset
dPayload = lens _dPayload (\ s a -> s{_dPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dKey :: Lens' DatasetsUpdate' (Maybe Key)
dKey = lens _dKey (\ s a -> s{_dKey = a})

-- | The ID of the dataset to be updated.
dDatasetId :: Lens' DatasetsUpdate' Text
dDatasetId
  = lens _dDatasetId (\ s a -> s{_dDatasetId = a})

-- | OAuth 2.0 token for the current user.
dOAuthToken :: Lens' DatasetsUpdate' (Maybe OAuthToken)
dOAuthToken
  = lens _dOAuthToken (\ s a -> s{_dOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dFields :: Lens' DatasetsUpdate' (Maybe Text)
dFields = lens _dFields (\ s a -> s{_dFields = a})

instance GoogleAuth DatasetsUpdate' where
        authKey = dKey . _Just
        authToken = dOAuthToken . _Just

instance GoogleRequest DatasetsUpdate' where
        type Rs DatasetsUpdate' = Dataset
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsUpdate'{..}
          = go _dDatasetId _dQuotaUser (Just _dPrettyPrint)
              _dUserIP
              _dFields
              _dKey
              _dOAuthToken
              (Just AltJSON)
              _dPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsUpdateResource)
                      r
                      u
