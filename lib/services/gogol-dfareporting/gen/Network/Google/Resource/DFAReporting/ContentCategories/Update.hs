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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.contentCategories.update@.
module Network.Google.Resource.DFAReporting.ContentCategories.Update
    (
    -- * REST Resource
      ContentCategoriesUpdateResource

    -- * Creating a Request
    , contentCategoriesUpdate
    , ContentCategoriesUpdate

    -- * Request Lenses
    , ccuXgafv
    , ccuUploadProtocol
    , ccuAccessToken
    , ccuUploadType
    , ccuProFileId
    , ccuPayload
    , ccuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.update@ method which the
-- 'ContentCategoriesUpdate' request conforms to.
type ContentCategoriesUpdateResource =
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
                             Put '[JSON] ContentCategory

-- | Updates an existing content category.
--
-- /See:/ 'contentCategoriesUpdate' smart constructor.
data ContentCategoriesUpdate =
  ContentCategoriesUpdate'
    { _ccuXgafv :: !(Maybe Xgafv)
    , _ccuUploadProtocol :: !(Maybe Text)
    , _ccuAccessToken :: !(Maybe Text)
    , _ccuUploadType :: !(Maybe Text)
    , _ccuProFileId :: !(Textual Int64)
    , _ccuPayload :: !ContentCategory
    , _ccuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentCategoriesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccuXgafv'
--
-- * 'ccuUploadProtocol'
--
-- * 'ccuAccessToken'
--
-- * 'ccuUploadType'
--
-- * 'ccuProFileId'
--
-- * 'ccuPayload'
--
-- * 'ccuCallback'
contentCategoriesUpdate
    :: Int64 -- ^ 'ccuProFileId'
    -> ContentCategory -- ^ 'ccuPayload'
    -> ContentCategoriesUpdate
contentCategoriesUpdate pCcuProFileId_ pCcuPayload_ =
  ContentCategoriesUpdate'
    { _ccuXgafv = Nothing
    , _ccuUploadProtocol = Nothing
    , _ccuAccessToken = Nothing
    , _ccuUploadType = Nothing
    , _ccuProFileId = _Coerce # pCcuProFileId_
    , _ccuPayload = pCcuPayload_
    , _ccuCallback = Nothing
    }


-- | V1 error format.
ccuXgafv :: Lens' ContentCategoriesUpdate (Maybe Xgafv)
ccuXgafv = lens _ccuXgafv (\ s a -> s{_ccuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccuUploadProtocol :: Lens' ContentCategoriesUpdate (Maybe Text)
ccuUploadProtocol
  = lens _ccuUploadProtocol
      (\ s a -> s{_ccuUploadProtocol = a})

-- | OAuth access token.
ccuAccessToken :: Lens' ContentCategoriesUpdate (Maybe Text)
ccuAccessToken
  = lens _ccuAccessToken
      (\ s a -> s{_ccuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccuUploadType :: Lens' ContentCategoriesUpdate (Maybe Text)
ccuUploadType
  = lens _ccuUploadType
      (\ s a -> s{_ccuUploadType = a})

-- | User profile ID associated with this request.
ccuProFileId :: Lens' ContentCategoriesUpdate Int64
ccuProFileId
  = lens _ccuProFileId (\ s a -> s{_ccuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ccuPayload :: Lens' ContentCategoriesUpdate ContentCategory
ccuPayload
  = lens _ccuPayload (\ s a -> s{_ccuPayload = a})

-- | JSONP
ccuCallback :: Lens' ContentCategoriesUpdate (Maybe Text)
ccuCallback
  = lens _ccuCallback (\ s a -> s{_ccuCallback = a})

instance GoogleRequest ContentCategoriesUpdate where
        type Rs ContentCategoriesUpdate = ContentCategory
        type Scopes ContentCategoriesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesUpdate'{..}
          = go _ccuProFileId _ccuXgafv _ccuUploadProtocol
              _ccuAccessToken
              _ccuUploadType
              _ccuCallback
              (Just AltJSON)
              _ccuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesUpdateResource)
                      mempty
