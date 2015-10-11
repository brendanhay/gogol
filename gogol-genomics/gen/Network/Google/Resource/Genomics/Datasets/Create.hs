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
-- Module      : Network.Google.Resource.Genomics.Datasets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new dataset.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsCreate@.
module Network.Google.Resource.Genomics.Datasets.Create
    (
    -- * REST Resource
      DatasetsCreateResource

    -- * Creating a Request
    , datasetsCreate'
    , DatasetsCreate'

    -- * Request Lenses
    , dcXgafv
    , dcQuotaUser
    , dcPrettyPrint
    , dcUploadProtocol
    , dcPp
    , dcAccessToken
    , dcUploadType
    , dcPayload
    , dcBearerToken
    , dcKey
    , dcOAuthToken
    , dcFields
    , dcCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsCreate@ method which the
-- 'DatasetsCreate'' request conforms to.
type DatasetsCreateResource =
     "v1" :>
       "datasets" :>
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
                                   ReqBody '[JSON] Dataset :>
                                     Post '[JSON] Dataset

-- | Creates a new dataset.
--
-- /See:/ 'datasetsCreate'' smart constructor.
data DatasetsCreate' = DatasetsCreate'
    { _dcXgafv          :: !(Maybe Text)
    , _dcQuotaUser      :: !(Maybe Text)
    , _dcPrettyPrint    :: !Bool
    , _dcUploadProtocol :: !(Maybe Text)
    , _dcPp             :: !Bool
    , _dcAccessToken    :: !(Maybe Text)
    , _dcUploadType     :: !(Maybe Text)
    , _dcPayload        :: !Dataset
    , _dcBearerToken    :: !(Maybe Text)
    , _dcKey            :: !(Maybe AuthKey)
    , _dcOAuthToken     :: !(Maybe OAuthToken)
    , _dcFields         :: !(Maybe Text)
    , _dcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcXgafv'
--
-- * 'dcQuotaUser'
--
-- * 'dcPrettyPrint'
--
-- * 'dcUploadProtocol'
--
-- * 'dcPp'
--
-- * 'dcAccessToken'
--
-- * 'dcUploadType'
--
-- * 'dcPayload'
--
-- * 'dcBearerToken'
--
-- * 'dcKey'
--
-- * 'dcOAuthToken'
--
-- * 'dcFields'
--
-- * 'dcCallback'
datasetsCreate'
    :: Dataset -- ^ 'payload'
    -> DatasetsCreate'
datasetsCreate' pDcPayload_ =
    DatasetsCreate'
    { _dcXgafv = Nothing
    , _dcQuotaUser = Nothing
    , _dcPrettyPrint = True
    , _dcUploadProtocol = Nothing
    , _dcPp = True
    , _dcAccessToken = Nothing
    , _dcUploadType = Nothing
    , _dcPayload = pDcPayload_
    , _dcBearerToken = Nothing
    , _dcKey = Nothing
    , _dcOAuthToken = Nothing
    , _dcFields = Nothing
    , _dcCallback = Nothing
    }

-- | V1 error format.
dcXgafv :: Lens' DatasetsCreate' (Maybe Text)
dcXgafv = lens _dcXgafv (\ s a -> s{_dcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
dcQuotaUser :: Lens' DatasetsCreate' (Maybe Text)
dcQuotaUser
  = lens _dcQuotaUser (\ s a -> s{_dcQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcPrettyPrint :: Lens' DatasetsCreate' Bool
dcPrettyPrint
  = lens _dcPrettyPrint
      (\ s a -> s{_dcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcUploadProtocol :: Lens' DatasetsCreate' (Maybe Text)
dcUploadProtocol
  = lens _dcUploadProtocol
      (\ s a -> s{_dcUploadProtocol = a})

-- | Pretty-print response.
dcPp :: Lens' DatasetsCreate' Bool
dcPp = lens _dcPp (\ s a -> s{_dcPp = a})

-- | OAuth access token.
dcAccessToken :: Lens' DatasetsCreate' (Maybe Text)
dcAccessToken
  = lens _dcAccessToken
      (\ s a -> s{_dcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcUploadType :: Lens' DatasetsCreate' (Maybe Text)
dcUploadType
  = lens _dcUploadType (\ s a -> s{_dcUploadType = a})

-- | Multipart request metadata.
dcPayload :: Lens' DatasetsCreate' Dataset
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | OAuth bearer token.
dcBearerToken :: Lens' DatasetsCreate' (Maybe Text)
dcBearerToken
  = lens _dcBearerToken
      (\ s a -> s{_dcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcKey :: Lens' DatasetsCreate' (Maybe AuthKey)
dcKey = lens _dcKey (\ s a -> s{_dcKey = a})

-- | OAuth 2.0 token for the current user.
dcOAuthToken :: Lens' DatasetsCreate' (Maybe OAuthToken)
dcOAuthToken
  = lens _dcOAuthToken (\ s a -> s{_dcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcFields :: Lens' DatasetsCreate' (Maybe Text)
dcFields = lens _dcFields (\ s a -> s{_dcFields = a})

-- | JSONP
dcCallback :: Lens' DatasetsCreate' (Maybe Text)
dcCallback
  = lens _dcCallback (\ s a -> s{_dcCallback = a})

instance GoogleAuth DatasetsCreate' where
        _AuthKey = dcKey . _Just
        _AuthToken = dcOAuthToken . _Just

instance GoogleRequest DatasetsCreate' where
        type Rs DatasetsCreate' = Dataset
        request = requestWith genomicsRequest
        requestWith rq DatasetsCreate'{..}
          = go _dcXgafv _dcUploadProtocol (Just _dcPp)
              _dcAccessToken
              _dcUploadType
              _dcBearerToken
              _dcCallback
              _dcQuotaUser
              (Just _dcPrettyPrint)
              _dcFields
              _dcKey
              _dcOAuthToken
              (Just AltJSON)
              _dcPayload
          where go
                  = clientBuild (Proxy :: Proxy DatasetsCreateResource)
                      rq
