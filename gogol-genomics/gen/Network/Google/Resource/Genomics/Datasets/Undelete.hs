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
-- Module      : Network.Google.Resource.Genomics.Datasets.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. This operation is only possible for a week after the deletion
-- occurred.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsUndelete@.
module Network.Google.Resource.Genomics.Datasets.Undelete
    (
    -- * REST Resource
      DatasetsUndeleteResource

    -- * Creating a Request
    , datasetsUndelete'
    , DatasetsUndelete'

    -- * Request Lenses
    , duXgafv
    , duQuotaUser
    , duPrettyPrint
    , duUploadProtocol
    , duPp
    , duAccessToken
    , duUploadType
    , duPayload
    , duBearerToken
    , duKey
    , duDatasetId
    , duOAuthToken
    , duFields
    , duCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsUndelete@ method which the
-- 'DatasetsUndelete'' request conforms to.
type DatasetsUndeleteResource =
     "v1" :>
       "datasets" :>
         CaptureMode "datasetId" "undelete" Text :>
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
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] UndeleteDatasetRequest :>
                                       Post '[JSON] Dataset

-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. This operation is only possible for a week after the deletion
-- occurred.
--
-- /See:/ 'datasetsUndelete'' smart constructor.
data DatasetsUndelete' = DatasetsUndelete'
    { _duXgafv          :: !(Maybe Text)
    , _duQuotaUser      :: !(Maybe Text)
    , _duPrettyPrint    :: !Bool
    , _duUploadProtocol :: !(Maybe Text)
    , _duPp             :: !Bool
    , _duAccessToken    :: !(Maybe Text)
    , _duUploadType     :: !(Maybe Text)
    , _duPayload        :: !UndeleteDatasetRequest
    , _duBearerToken    :: !(Maybe Text)
    , _duKey            :: !(Maybe AuthKey)
    , _duDatasetId      :: !Text
    , _duOAuthToken     :: !(Maybe OAuthToken)
    , _duFields         :: !(Maybe Text)
    , _duCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duXgafv'
--
-- * 'duQuotaUser'
--
-- * 'duPrettyPrint'
--
-- * 'duUploadProtocol'
--
-- * 'duPp'
--
-- * 'duAccessToken'
--
-- * 'duUploadType'
--
-- * 'duPayload'
--
-- * 'duBearerToken'
--
-- * 'duKey'
--
-- * 'duDatasetId'
--
-- * 'duOAuthToken'
--
-- * 'duFields'
--
-- * 'duCallback'
datasetsUndelete'
    :: UndeleteDatasetRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsUndelete'
datasetsUndelete' pDuPayload_ pDuDatasetId_ =
    DatasetsUndelete'
    { _duXgafv = Nothing
    , _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duUploadProtocol = Nothing
    , _duPp = True
    , _duAccessToken = Nothing
    , _duUploadType = Nothing
    , _duPayload = pDuPayload_
    , _duBearerToken = Nothing
    , _duKey = Nothing
    , _duDatasetId = pDuDatasetId_
    , _duOAuthToken = Nothing
    , _duFields = Nothing
    , _duCallback = Nothing
    }

-- | V1 error format.
duXgafv :: Lens' DatasetsUndelete' (Maybe Text)
duXgafv = lens _duXgafv (\ s a -> s{_duXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
duQuotaUser :: Lens' DatasetsUndelete' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DatasetsUndelete' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
duUploadProtocol :: Lens' DatasetsUndelete' (Maybe Text)
duUploadProtocol
  = lens _duUploadProtocol
      (\ s a -> s{_duUploadProtocol = a})

-- | Pretty-print response.
duPp :: Lens' DatasetsUndelete' Bool
duPp = lens _duPp (\ s a -> s{_duPp = a})

-- | OAuth access token.
duAccessToken :: Lens' DatasetsUndelete' (Maybe Text)
duAccessToken
  = lens _duAccessToken
      (\ s a -> s{_duAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
duUploadType :: Lens' DatasetsUndelete' (Maybe Text)
duUploadType
  = lens _duUploadType (\ s a -> s{_duUploadType = a})

-- | Multipart request metadata.
duPayload :: Lens' DatasetsUndelete' UndeleteDatasetRequest
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | OAuth bearer token.
duBearerToken :: Lens' DatasetsUndelete' (Maybe Text)
duBearerToken
  = lens _duBearerToken
      (\ s a -> s{_duBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DatasetsUndelete' (Maybe AuthKey)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | The ID of the dataset to be undeleted.
duDatasetId :: Lens' DatasetsUndelete' Text
duDatasetId
  = lens _duDatasetId (\ s a -> s{_duDatasetId = a})

-- | OAuth 2.0 token for the current user.
duOAuthToken :: Lens' DatasetsUndelete' (Maybe OAuthToken)
duOAuthToken
  = lens _duOAuthToken (\ s a -> s{_duOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DatasetsUndelete' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

-- | JSONP
duCallback :: Lens' DatasetsUndelete' (Maybe Text)
duCallback
  = lens _duCallback (\ s a -> s{_duCallback = a})

instance GoogleAuth DatasetsUndelete' where
        _AuthKey = duKey . _Just
        _AuthToken = duOAuthToken . _Just

instance GoogleRequest DatasetsUndelete' where
        type Rs DatasetsUndelete' = Dataset
        request = requestWith genomicsRequest
        requestWith rq DatasetsUndelete'{..}
          = go _duDatasetId _duXgafv _duUploadProtocol
              (Just _duPp)
              _duAccessToken
              _duUploadType
              _duBearerToken
              _duCallback
              _duQuotaUser
              (Just _duPrettyPrint)
              _duFields
              _duKey
              _duOAuthToken
              (Just AltJSON)
              _duPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatasetsUndeleteResource)
                      rq
