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
-- Module      : Network.Google.Resource.DLP.InfoTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the sensitive information types that the DLP API
-- supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference
-- to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.infoTypes.list@.
module Network.Google.Resource.DLP.InfoTypes.List
    (
    -- * REST Resource
      InfoTypesListResource

    -- * Creating a Request
    , infoTypesList
    , InfoTypesList

    -- * Request Lenses
    , itlXgafv
    , itlLanguageCode
    , itlUploadProtocol
    , itlAccessToken
    , itlUploadType
    , itlFilter
    , itlCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.infoTypes.list@ method which the
-- 'InfoTypesList' request conforms to.
type InfoTypesListResource =
     "v2" :>
       "infoTypes" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GooglePrivacyDlpV2ListInfoTypesResponse

-- | Returns a list of the sensitive information types that the DLP API
-- supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference
-- to learn more.
--
-- /See:/ 'infoTypesList' smart constructor.
data InfoTypesList =
  InfoTypesList'
    { _itlXgafv          :: !(Maybe Xgafv)
    , _itlLanguageCode   :: !(Maybe Text)
    , _itlUploadProtocol :: !(Maybe Text)
    , _itlAccessToken    :: !(Maybe Text)
    , _itlUploadType     :: !(Maybe Text)
    , _itlFilter         :: !(Maybe Text)
    , _itlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InfoTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlXgafv'
--
-- * 'itlLanguageCode'
--
-- * 'itlUploadProtocol'
--
-- * 'itlAccessToken'
--
-- * 'itlUploadType'
--
-- * 'itlFilter'
--
-- * 'itlCallback'
infoTypesList
    :: InfoTypesList
infoTypesList =
  InfoTypesList'
    { _itlXgafv = Nothing
    , _itlLanguageCode = Nothing
    , _itlUploadProtocol = Nothing
    , _itlAccessToken = Nothing
    , _itlUploadType = Nothing
    , _itlFilter = Nothing
    , _itlCallback = Nothing
    }

-- | V1 error format.
itlXgafv :: Lens' InfoTypesList (Maybe Xgafv)
itlXgafv = lens _itlXgafv (\ s a -> s{_itlXgafv = a})

-- | Optional BCP-47 language code for localized infoType friendly names. If
-- omitted, or if localized strings are not available, en-US strings will
-- be returned.
itlLanguageCode :: Lens' InfoTypesList (Maybe Text)
itlLanguageCode
  = lens _itlLanguageCode
      (\ s a -> s{_itlLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
itlUploadProtocol :: Lens' InfoTypesList (Maybe Text)
itlUploadProtocol
  = lens _itlUploadProtocol
      (\ s a -> s{_itlUploadProtocol = a})

-- | OAuth access token.
itlAccessToken :: Lens' InfoTypesList (Maybe Text)
itlAccessToken
  = lens _itlAccessToken
      (\ s a -> s{_itlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
itlUploadType :: Lens' InfoTypesList (Maybe Text)
itlUploadType
  = lens _itlUploadType
      (\ s a -> s{_itlUploadType = a})

-- | Optional filter to only return infoTypes supported by certain parts of
-- the API. Defaults to supported_by=INSPECT.
itlFilter :: Lens' InfoTypesList (Maybe Text)
itlFilter
  = lens _itlFilter (\ s a -> s{_itlFilter = a})

-- | JSONP
itlCallback :: Lens' InfoTypesList (Maybe Text)
itlCallback
  = lens _itlCallback (\ s a -> s{_itlCallback = a})

instance GoogleRequest InfoTypesList where
        type Rs InfoTypesList =
             GooglePrivacyDlpV2ListInfoTypesResponse
        type Scopes InfoTypesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient InfoTypesList'{..}
          = go _itlXgafv _itlLanguageCode _itlUploadProtocol
              _itlAccessToken
              _itlUploadType
              _itlFilter
              _itlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient (Proxy :: Proxy InfoTypesListResource)
                      mempty
