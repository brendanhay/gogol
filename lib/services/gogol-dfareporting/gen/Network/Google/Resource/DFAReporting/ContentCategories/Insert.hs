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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.contentCategories.insert@.
module Network.Google.Resource.DFAReporting.ContentCategories.Insert
    (
    -- * REST Resource
      ContentCategoriesInsertResource

    -- * Creating a Request
    , contentCategoriesInsert
    , ContentCategoriesInsert

    -- * Request Lenses
    , cciXgafv
    , cciUploadProtocol
    , cciAccessToken
    , cciUploadType
    , cciProFileId
    , cciPayload
    , cciCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.insert@ method which the
-- 'ContentCategoriesInsert' request conforms to.
type ContentCategoriesInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ContentCategory :>
                             Post '[JSON] ContentCategory

-- | Inserts a new content category.
--
-- /See:/ 'contentCategoriesInsert' smart constructor.
data ContentCategoriesInsert =
  ContentCategoriesInsert'
    { _cciXgafv :: !(Maybe Xgafv)
    , _cciUploadProtocol :: !(Maybe Text)
    , _cciAccessToken :: !(Maybe Text)
    , _cciUploadType :: !(Maybe Text)
    , _cciProFileId :: !(Textual Int64)
    , _cciPayload :: !ContentCategory
    , _cciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentCategoriesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cciXgafv'
--
-- * 'cciUploadProtocol'
--
-- * 'cciAccessToken'
--
-- * 'cciUploadType'
--
-- * 'cciProFileId'
--
-- * 'cciPayload'
--
-- * 'cciCallback'
contentCategoriesInsert
    :: Int64 -- ^ 'cciProFileId'
    -> ContentCategory -- ^ 'cciPayload'
    -> ContentCategoriesInsert
contentCategoriesInsert pCciProFileId_ pCciPayload_ =
  ContentCategoriesInsert'
    { _cciXgafv = Nothing
    , _cciUploadProtocol = Nothing
    , _cciAccessToken = Nothing
    , _cciUploadType = Nothing
    , _cciProFileId = _Coerce # pCciProFileId_
    , _cciPayload = pCciPayload_
    , _cciCallback = Nothing
    }


-- | V1 error format.
cciXgafv :: Lens' ContentCategoriesInsert (Maybe Xgafv)
cciXgafv = lens _cciXgafv (\ s a -> s{_cciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cciUploadProtocol :: Lens' ContentCategoriesInsert (Maybe Text)
cciUploadProtocol
  = lens _cciUploadProtocol
      (\ s a -> s{_cciUploadProtocol = a})

-- | OAuth access token.
cciAccessToken :: Lens' ContentCategoriesInsert (Maybe Text)
cciAccessToken
  = lens _cciAccessToken
      (\ s a -> s{_cciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cciUploadType :: Lens' ContentCategoriesInsert (Maybe Text)
cciUploadType
  = lens _cciUploadType
      (\ s a -> s{_cciUploadType = a})

-- | User profile ID associated with this request.
cciProFileId :: Lens' ContentCategoriesInsert Int64
cciProFileId
  = lens _cciProFileId (\ s a -> s{_cciProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cciPayload :: Lens' ContentCategoriesInsert ContentCategory
cciPayload
  = lens _cciPayload (\ s a -> s{_cciPayload = a})

-- | JSONP
cciCallback :: Lens' ContentCategoriesInsert (Maybe Text)
cciCallback
  = lens _cciCallback (\ s a -> s{_cciCallback = a})

instance GoogleRequest ContentCategoriesInsert where
        type Rs ContentCategoriesInsert = ContentCategory
        type Scopes ContentCategoriesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesInsert'{..}
          = go _cciProFileId _cciXgafv _cciUploadProtocol
              _cciAccessToken
              _cciUploadType
              _cciCallback
              (Just AltJSON)
              _cciPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesInsertResource)
                      mempty
