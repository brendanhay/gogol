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
-- Module      : Network.Google.Resource.Genomics.Datasets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a dataset by ID.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsGet@.
module Network.Google.Resource.Genomics.Datasets.Get
    (
    -- * REST Resource
      DatasetsGetResource

    -- * Creating a Request
    , datasetsGet'
    , DatasetsGet'

    -- * Request Lenses
    , dgXgafv
    , dgQuotaUser
    , dgPrettyPrint
    , dgUploadProtocol
    , dgPp
    , dgAccessToken
    , dgUploadType
    , dgBearerToken
    , dgKey
    , dgDatasetId
    , dgOAuthToken
    , dgFields
    , dgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsGet@ method which the
-- 'DatasetsGet'' request conforms to.
type DatasetsGetResource =
     "v1" :>
       "datasets" :>
         Capture "datasetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Dataset

-- | Gets a dataset by ID.
--
-- /See:/ 'datasetsGet'' smart constructor.
data DatasetsGet' = DatasetsGet'
    { _dgXgafv          :: !(Maybe Text)
    , _dgQuotaUser      :: !(Maybe Text)
    , _dgPrettyPrint    :: !Bool
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgPp             :: !Bool
    , _dgAccessToken    :: !(Maybe Text)
    , _dgUploadType     :: !(Maybe Text)
    , _dgBearerToken    :: !(Maybe Text)
    , _dgKey            :: !(Maybe AuthKey)
    , _dgDatasetId      :: !Text
    , _dgOAuthToken     :: !(Maybe OAuthToken)
    , _dgFields         :: !(Maybe Text)
    , _dgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgUploadProtocol'
--
-- * 'dgPp'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgBearerToken'
--
-- * 'dgKey'
--
-- * 'dgDatasetId'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
--
-- * 'dgCallback'
datasetsGet'
    :: Text -- ^ 'datasetId'
    -> DatasetsGet'
datasetsGet' pDgDatasetId_ =
    DatasetsGet'
    { _dgXgafv = Nothing
    , _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgUploadProtocol = Nothing
    , _dgPp = True
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgBearerToken = Nothing
    , _dgKey = Nothing
    , _dgDatasetId = pDgDatasetId_
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
    , _dgCallback = Nothing
    }

-- | V1 error format.
dgXgafv :: Lens' DatasetsGet' (Maybe Text)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
dgQuotaUser :: Lens' DatasetsGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DatasetsGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DatasetsGet' (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | Pretty-print response.
dgPp :: Lens' DatasetsGet' Bool
dgPp = lens _dgPp (\ s a -> s{_dgPp = a})

-- | OAuth access token.
dgAccessToken :: Lens' DatasetsGet' (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DatasetsGet' (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | OAuth bearer token.
dgBearerToken :: Lens' DatasetsGet' (Maybe Text)
dgBearerToken
  = lens _dgBearerToken
      (\ s a -> s{_dgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DatasetsGet' (Maybe AuthKey)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | The ID of the dataset.
dgDatasetId :: Lens' DatasetsGet' Text
dgDatasetId
  = lens _dgDatasetId (\ s a -> s{_dgDatasetId = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DatasetsGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DatasetsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | JSONP
dgCallback :: Lens' DatasetsGet' (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

instance GoogleAuth DatasetsGet' where
        _AuthKey = dgKey . _Just
        _AuthToken = dgOAuthToken . _Just

instance GoogleRequest DatasetsGet' where
        type Rs DatasetsGet' = Dataset
        request = requestWith genomicsRequest
        requestWith rq DatasetsGet'{..}
          = go _dgDatasetId _dgXgafv _dgUploadProtocol
              (Just _dgPp)
              _dgAccessToken
              _dgUploadType
              _dgBearerToken
              _dgCallback
              _dgQuotaUser
              (Just _dgPrettyPrint)
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DatasetsGetResource) rq
