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
-- Module      : Network.Google.Resource.Genomics.Datasets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a dataset.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsDelete@.
module Network.Google.Resource.Genomics.Datasets.Delete
    (
    -- * REST Resource
      DatasetsDeleteResource

    -- * Creating a Request
    , datasetsDelete'
    , DatasetsDelete'

    -- * Request Lenses
    , ddXgafv
    , ddQuotaUser
    , ddPrettyPrint
    , ddUploadProtocol
    , ddPp
    , ddAccessToken
    , ddUploadType
    , ddBearerToken
    , ddKey
    , ddDatasetId
    , ddOAuthToken
    , ddFields
    , ddCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsDelete@ method which the
-- 'DatasetsDelete'' request conforms to.
type DatasetsDeleteResource =
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
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Delete '[JSON] Empty

-- | Deletes a dataset.
--
-- /See:/ 'datasetsDelete'' smart constructor.
data DatasetsDelete' = DatasetsDelete'
    { _ddXgafv          :: !(Maybe Text)
    , _ddQuotaUser      :: !(Maybe Text)
    , _ddPrettyPrint    :: !Bool
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddPp             :: !Bool
    , _ddAccessToken    :: !(Maybe Text)
    , _ddUploadType     :: !(Maybe Text)
    , _ddBearerToken    :: !(Maybe Text)
    , _ddKey            :: !(Maybe AuthKey)
    , _ddDatasetId      :: !Text
    , _ddOAuthToken     :: !(Maybe OAuthToken)
    , _ddFields         :: !(Maybe Text)
    , _ddCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddQuotaUser'
--
-- * 'ddPrettyPrint'
--
-- * 'ddUploadProtocol'
--
-- * 'ddPp'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddBearerToken'
--
-- * 'ddKey'
--
-- * 'ddDatasetId'
--
-- * 'ddOAuthToken'
--
-- * 'ddFields'
--
-- * 'ddCallback'
datasetsDelete'
    :: Text -- ^ 'datasetId'
    -> DatasetsDelete'
datasetsDelete' pDdDatasetId_ =
    DatasetsDelete'
    { _ddXgafv = Nothing
    , _ddQuotaUser = Nothing
    , _ddPrettyPrint = True
    , _ddUploadProtocol = Nothing
    , _ddPp = True
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddBearerToken = Nothing
    , _ddKey = Nothing
    , _ddDatasetId = pDdDatasetId_
    , _ddOAuthToken = Nothing
    , _ddFields = Nothing
    , _ddCallback = Nothing
    }

-- | V1 error format.
ddXgafv :: Lens' DatasetsDelete' (Maybe Text)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ddQuotaUser :: Lens' DatasetsDelete' (Maybe Text)
ddQuotaUser
  = lens _ddQuotaUser (\ s a -> s{_ddQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddPrettyPrint :: Lens' DatasetsDelete' Bool
ddPrettyPrint
  = lens _ddPrettyPrint
      (\ s a -> s{_ddPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DatasetsDelete' (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | Pretty-print response.
ddPp :: Lens' DatasetsDelete' Bool
ddPp = lens _ddPp (\ s a -> s{_ddPp = a})

-- | OAuth access token.
ddAccessToken :: Lens' DatasetsDelete' (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DatasetsDelete' (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | OAuth bearer token.
ddBearerToken :: Lens' DatasetsDelete' (Maybe Text)
ddBearerToken
  = lens _ddBearerToken
      (\ s a -> s{_ddBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DatasetsDelete' (Maybe AuthKey)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | The ID of the dataset to be deleted.
ddDatasetId :: Lens' DatasetsDelete' Text
ddDatasetId
  = lens _ddDatasetId (\ s a -> s{_ddDatasetId = a})

-- | OAuth 2.0 token for the current user.
ddOAuthToken :: Lens' DatasetsDelete' (Maybe OAuthToken)
ddOAuthToken
  = lens _ddOAuthToken (\ s a -> s{_ddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DatasetsDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

-- | JSONP
ddCallback :: Lens' DatasetsDelete' (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

instance GoogleAuth DatasetsDelete' where
        _AuthKey = ddKey . _Just
        _AuthToken = ddOAuthToken . _Just

instance GoogleRequest DatasetsDelete' where
        type Rs DatasetsDelete' = Empty
        request = requestWith genomicsRequest
        requestWith rq DatasetsDelete'{..}
          = go _ddDatasetId _ddXgafv _ddUploadProtocol
              (Just _ddPp)
              _ddAccessToken
              _ddUploadType
              _ddBearerToken
              _ddCallback
              _ddQuotaUser
              (Just _ddPrettyPrint)
              _ddFields
              _ddKey
              _ddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DatasetsDeleteResource)
                      rq
